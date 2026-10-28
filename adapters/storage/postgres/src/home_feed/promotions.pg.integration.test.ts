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
});
