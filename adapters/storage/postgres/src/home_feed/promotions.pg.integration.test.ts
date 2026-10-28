import {randomUUID} from 'node:crypto';
import {readFileSync} from 'node:fs';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {Pool} from 'pg';
import {PgStatusPromotions} from './promotions.js';

/** Real PostgreSQL isolation, not the single-connection PGlite simulation.
 * Run only on a disposable PG test instance; never a production database. */
const dsn=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!dsn)('SPE-A08 PostgreSQL race and reserve acceptance',()=>{
 const name='spe_a_race_'+randomUUID().replaceAll('-','').slice(0,16);
 let admin:Pool,db:Pool,service:PgStatusPromotions;
 const tenant='race_tenant';
 const sql=(file:string)=>readFileSync(new URL(file,import.meta.url),'utf8');
 beforeAll(async()=>{
  admin=new Pool({connectionString:dsn!});
  await admin.query('CREATE DATABASE "'+name+'"');
  const child=new URL(dsn!);child.pathname='/'+name;
  db=new Pool({connectionString:child.toString(),max:6});
  await db.query(`CREATE SCHEMA identity; CREATE SCHEMA talks; CREATE SCHEMA feed;
   CREATE TABLE identity.users(tenant_id text,user_id text,state text);
   CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,display_name text);`);
  for(const file of [
   '../../../../../packages/feed/migrations/0001_feed.sql',
   '../../../../../packages/feed/migrations/0006_human_public_status.sql',
   '../../../../../packages/commerce/migrations/0200_gb_wallet_foundation.sql',
   '../../../../../packages/feed/migrations/0007_paid_promotions.sql',
   '../../../../../packages/feed/migrations/0008_paid_media_deletion_outbox.sql',
   '../../../../../packages/feed/migrations/0009_view_challenge_abuse_index.sql',
   '../../../../../packages/feed/migrations/0010_promotion_rejection_appeals.sql',
   '../../../../../packages/feed/migrations/0011_promotion_budget_immutability.sql',
   '../../../../../packages/feed/migrations/0012_reviewed_paid_post_edits.sql',
   '../../../../../packages/feed/migrations/0013_campaign_drafts_and_expiry.sql',
  ])await db.query(sql(file));
  service=new PgStatusPromotions(db,'race-test-secret-with-40-characters-minimum','https://status.example.org');
  for(const id of ['publisher','viewer_a','viewer_b']){
   await db.query(`INSERT INTO identity.users VALUES($1,$2,'active')`,[tenant,id]);
   await db.query(`INSERT INTO talks.public_profiles VALUES($1,$2,$2,$2)`,[tenant,id]);
   await db.query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb)
      VALUES($1,'human',$2,20)`,[tenant,id]);
  }
 },90_000);
 afterAll(async()=>{
  await db?.end();
  if(admin){
   await admin.query('DROP DATABASE IF EXISTS "'+name+'" WITH (FORCE)');
   await admin.end();
  }
 },30_000);
 it('never charges two concurrent last views to one reserved MB',async()=>{
  const q=await service.quote({tenantId:tenant,sponsorId:'publisher',body:'One view only',targetViews:1});
  const campaign=await service.confirm(tenant,'publisher',q.quoteId,'race-original-001');
  await service.review(tenant,'independent_editor',campaign.id,true);
  const a=await service.beginView(tenant,'viewer_a',campaign.postId);
  const b=await service.beginView(tenant,'viewer_b',campaign.postId);
  await db.query(`UPDATE feed.view_challenges SET started_at=statement_timestamp()-interval '10 seconds'
   WHERE tenant_id=$1 AND id=ANY($2::uuid[])`,[tenant,[a.challengeId,b.challengeId]]);
  const results=await Promise.allSettled([
   service.finishView(tenant,'viewer_a',a.challengeId,
    {visibleFraction:0.8,foreground:true,engaged:true}),
   service.finishView(tenant,'viewer_b',b.challengeId,
    {visibleFraction:0.8,foreground:true,engaged:true}),
  ]);
  expect(results.some(x=>x.status==='fulfilled'&&x.value.payable===true)).toBe(true);
  const spent=await db.query(`SELECT purchased_mb::int AS balance,
    reserved_purchased_mb::int AS held FROM gb_wallet.accounts
    WHERE tenant_id=$1 AND account_id='publisher'`,[tenant]);
  expect(spent.rows[0]).toMatchObject({balance:19,held:0});
  const charges=await db.query(`SELECT count(*)::int AS n FROM feed.promotion_view_charges
   WHERE tenant_id=$1 AND campaign_id=$2`,[tenant,campaign.id]);
  expect(charges.rows[0].n).toBe(1);
  const campaignRow=await db.query(`SELECT state,delivered_views,remaining_views
   FROM feed.promotion_campaigns WHERE tenant_id=$1 AND id=$2`,[tenant,campaign.id]);
  expect(campaignRow.rows[0]).toMatchObject({state:'completed',delivered_views:1,remaining_views:0});
 });

 it('makes simultaneous lost-response confirmations exactly once under distinct PG connections',async()=>{
  const before=await db.query(`SELECT purchased_mb::int AS purchased,
   reserved_purchased_mb::int AS reserved FROM gb_wallet.accounts
   WHERE tenant_id=$1 AND account_id='publisher'`,[tenant]);
  const q=await service.quote({tenantId:tenant,sponsorId:'publisher',
   body:'Duplicate confirms are not duplicate charges',targetViews:3});
  const key='race-concurrent-confirm-original-001';
  const results=await Promise.allSettled([
   service.confirm(tenant,'publisher',q.quoteId,key),
   service.confirm(tenant,'publisher',q.quoteId,key),
  ]);
  expect(results.every(x=>x.status==='fulfilled')).toBe(true);
  const confirmed=results.filter((x):x is PromiseFulfilledResult<
   Awaited<ReturnType<PgStatusPromotions['confirm']>>>=>x.status==='fulfilled')
   .map(x=>x.value);
  expect(confirmed).toHaveLength(2);
  expect(confirmed[0]!.id).toBe(confirmed[1]!.id);
  const campaigns=await db.query(`SELECT count(*)::int AS count
   FROM feed.promotion_campaigns WHERE tenant_id=$1 AND quote_id=$2`,[tenant,q.quoteId]);
  expect(campaigns.rows[0].count).toBe(1);
  const after=await db.query(`SELECT purchased_mb::int AS purchased,
   reserved_purchased_mb::int AS reserved FROM gb_wallet.accounts
   WHERE tenant_id=$1 AND account_id='publisher'`,[tenant]);
  expect(after.rows[0]).toEqual({
   purchased:before.rows[0].purchased,reserved:before.rows[0].reserved+3});
  expect((await service.receipt(tenant,'publisher',q.quoteId)).campaign?.id)
   .toBe(confirmed[0]!.id);
  await service.cancel(tenant,'publisher',confirmed[0]!.id);
  const afterCancel=await db.query(`SELECT purchased_mb::int AS purchased,
   reserved_purchased_mb::int AS reserved FROM gb_wallet.accounts
   WHERE tenant_id=$1 AND account_id='publisher'`,[tenant]);
  expect(afterCancel.rows[0]).toEqual(before.rows[0]);
 });
 it('serializes a racing cancel and last payable view and refunds only unused MB',async()=>{
  const q=await service.quote({tenantId:tenant,sponsorId:'publisher',
   body:'Cancel under live view pressure',targetViews:2});
  const c=await service.confirm(tenant,'publisher',q.quoteId,'race-cancel-view-001');
  await service.review(tenant,'independent_editor',c.id,true);
  const challenge=await service.beginView(tenant,'viewer_a',c.postId);
  await db.query(`UPDATE feed.view_challenges SET started_at=statement_timestamp()-interval '9 seconds'
   WHERE tenant_id=$1 AND id=$2`,[tenant,challenge.challengeId]);
  const balanceBefore=await db.query(`SELECT purchased_mb::int AS purchased
   FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id='publisher'`,[tenant]);
  const races=await Promise.allSettled([
   service.finishView(tenant,'viewer_a',challenge.challengeId,
    {visibleFraction:0.8,foreground:true,engaged:true}),
   service.cancel(tenant,'publisher',c.id),
  ]);
  expect(races.some(x=>x.status==='fulfilled')).toBe(true);
  const ledger=await db.query(`SELECT count(*)::int AS charged
   FROM feed.promotion_view_charges WHERE tenant_id=$1 AND campaign_id=$2`,[tenant,c.id]);
  const charged=ledger.rows[0].charged as number;
  expect(charged).toBeGreaterThanOrEqual(0);
  expect(charged).toBeLessThanOrEqual(1);
  const balance=await db.query(`SELECT purchased_mb::int AS purchased,
   reserved_purchased_mb::int AS reserved FROM gb_wallet.accounts
   WHERE tenant_id=$1 AND account_id='publisher'`,[tenant]);
  expect(balance.rows[0]).toEqual({purchased:balanceBefore.rows[0].purchased-charged,
   reserved:0});
  const state=await db.query(`SELECT state,delivered_views,remaining_views
   FROM feed.promotion_campaigns WHERE tenant_id=$1 AND id=$2`,[tenant,c.id]);
  expect(state.rows[0]).toMatchObject({state:'cancelled',delivered_views:charged,
   remaining_views:2-charged});
 });
 it('recovers rejected confirmation and refund by original quote, never another account',async()=>{
  const before=await db.query(`SELECT reserved_purchased_mb::int AS reserved
   FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id='publisher'`,[tenant]);
  const q=await service.quote({tenantId:tenant,sponsorId:'publisher',
   body:'Rejected advert with original operation',targetViews:4});
  const key='race-reject-receipt-001';
  const c=await service.confirm(tenant,'publisher',q.quoteId,key);
  expect((await service.receipt(tenant,'publisher',q.quoteId)).campaign)
   .toMatchObject({id:c.id,state:'pending_review'});
  await expect(service.receipt(tenant,'viewer_a',q.quoteId))
   .rejects.toMatchObject({code:'quote_not_found'});
  await service.review(tenant,'independent_editor',c.id,false,'Unverified assertions');
  const replay=await service.confirm(tenant,'publisher',q.quoteId,key);
  expect(replay).toMatchObject({id:c.id,state:'rejected'});
  expect((await service.receipt(tenant,'publisher',q.quoteId)).campaign)
   .toMatchObject({id:c.id,state:'rejected'});
  await expect(service.review(tenant,'independent_editor',c.id,true))
   .rejects.toMatchObject({code:'campaign_not_pending'});
  const after=await db.query(`SELECT reserved_purchased_mb::int AS reserved
   FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id='publisher'`,[tenant]);
  expect(after.rows[0].reserved).toBe(before.rows[0].reserved);
  const audit=await db.query(`SELECT action,details FROM feed.promotion_audit
   WHERE tenant_id=$1 AND campaign_id=$2 ORDER BY id`,[tenant,c.id]);
  expect(audit.rows.map(x=>x.action)).toContain('rejected');
 });

});
