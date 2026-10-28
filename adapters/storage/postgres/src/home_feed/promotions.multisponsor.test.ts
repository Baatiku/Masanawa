import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import {readFileSync} from 'node:fs';
import type {Pool} from 'pg';
import {PgStatusPromotions} from './promotions.js';

// Embedded PostgreSQL exercises real constraints, writes and rollback, but not
// simultaneous independent connections. Hosted multi-connection race tests
// remain a separate requirement before financial admission.
const migration=(file:string)=>readFileSync(new URL(file,import.meta.url),'utf8');
const tenant='boost-matrix';
const exposure={visibleFraction:0.9,foreground:true,engaged:true};
let db:PGlite;
let promotions:PgStatusPromotions;
const query=(sql:string,params?:unknown[])=>db.query(sql,params as never);

async function addUser(id:string,purchased=20){
 await query(`INSERT INTO identity.users VALUES($1,$2,'active')`,[tenant,id]);
 await query(`INSERT INTO talks.public_profiles VALUES($1,$2,$2,'Eligible user')`,[tenant,id]);
 await query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb)
  VALUES($1,'human',$2,$3)`,[tenant,id,purchased]);
}

async function boost(sponsor:string,postId:string,views:number,key:string){
 const quoted=await promotions.quote({tenantId:tenant,sponsorId:sponsor,postId,targetViews:views});
 return promotions.confirm(tenant,sponsor,quoted.quoteId,key);
}

async function view(viewer:string,postId:string,referral?:string){
 const challenge=await promotions.beginView(tenant,viewer,postId,referral);
 await query(`UPDATE feed.view_challenges SET started_at=
  statement_timestamp()-interval '7 seconds' WHERE tenant_id=$1 AND id=$2`,
 [tenant,challenge.challengeId]);
 return promotions.finishView(tenant,viewer,challenge.challengeId,exposure);
}

async function sponsorBalance(id:string){
 const r=await query(`SELECT purchased_mb::int AS purchased,
  reserved_purchased_mb::int AS reserved FROM gb_wallet.accounts
  WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2`,[tenant,id]);
 return r.rows[0];
}

describe('SPE-A13/A14/B15/B17/E09/E10: overlapping sponsors and editorial safety',()=>{
 beforeAll(async()=>{
  db=new PGlite();
  await db.exec(`CREATE SCHEMA identity; CREATE SCHEMA talks;
   CREATE TABLE identity.users(tenant_id text,user_id text,state text);
   CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,display_name text);
   CREATE TABLE talks.safety_preferences(tenant_id text,viewer_user_id text,subject_user_id text,blocked boolean);
   CREATE SCHEMA feed;`);
  await db.exec(migration('../../../../../packages/feed/migrations/0001_feed.sql'));
  await db.exec(migration('../../../../../packages/feed/migrations/0006_human_public_status.sql'));
  await db.exec(migration('../../../../../packages/commerce/migrations/0200_gb_wallet_foundation.sql'));
  await db.exec(migration('../../../../../packages/feed/migrations/0007_paid_promotions.sql'));
  await db.exec(migration('../../../../../packages/feed/migrations/0008_paid_media_deletion_outbox.sql'));
  await db.exec(migration('../../../../../packages/feed/migrations/0009_view_challenge_abuse_index.sql'));
  for(const name of ['0010_promotion_rejection_appeals.sql',
   '0011_promotion_budget_immutability.sql','0012_reviewed_paid_post_edits.sql',
   '0013_campaign_drafts_and_expiry.sql','0014_paid_image_uploads.sql','0015_paid_policy_review_evidence.sql','0016_extension_quotes_and_reports.sql'])
   await db.exec(migration('../../../../../packages/feed/migrations/'+name));
  promotions=new PgStatusPromotions(
   {query,connect:async()=>({query,release:()=>undefined})} as unknown as Pool,
   'multi-sponsor-test-key-with-more-than-thirty-two-bytes',
   'https://masanawa.example.test');
  for(const name of ['firstsponsor','secondsponsor','publisher','sharer','viewer1','viewer2',
   'viewer3','viewer4','viewer5'])await addUser(name);
 });
 afterAll(async()=>db?.close());

 it('charges one sponsor per view, expires the original campaign link, and keeps Masana editorial',async()=>{
  const post=await query(`INSERT INTO feed.posts
   (tenant_id,author_masana_id,kind,body,idempotency_key,published_by)
   VALUES($1,'masana-1','text','An approved editorial post','editorial-fixture','editor')
   RETURNING id`,[tenant]);
  const postId=String((post.rows[0] as {id:string}).id);
  const first=await boost('firstsponsor',postId,2,'masana-boost-first-01');
  const second=await boost('secondsponsor',postId,2,'masana-boost-second-01');
  const sharing=await promotions.share(tenant,'sharer',postId);
  const referral=new URL(sharing.url).searchParams.get('r')!;
  expect(sharing.earnable).toBe(true);
  for(const viewer of ['viewer1','viewer2','viewer3','viewer4'])
   expect(await view(viewer,postId,referral)).toMatchObject({qualified:true,payable:true});
  const charges=await query(`SELECT campaign_id::text AS campaign_id,
   count(*)::int AS views,sum(sharer_half_mb)::int AS sharer_half_mb
   FROM feed.promotion_view_charges WHERE tenant_id=$1 AND campaign_id IN ($2,$3)
   GROUP BY campaign_id ORDER BY campaign_id`,[tenant,first.id,second.id]);
  // Links are tied to their original funded campaign; once that campaign
  // completes, a surviving boost can still pay for an organic exposure but
  // must not settle a stale referral token against its own balance.
  expect(charges.rows).toEqual(expect.arrayContaining([
   {campaign_id:first.id,views:2,sharer_half_mb:2},
   {campaign_id:second.id,views:2,sharer_half_mb:1},
  ]));
  expect(await sponsorBalance('firstsponsor')).toEqual({purchased:18,reserved:0});
  expect(await sponsorBalance('secondsponsor')).toEqual({purchased:18,reserved:0});
  expect((await query(`SELECT state,paid_disabled_at,paid_purge_at FROM feed.posts
   WHERE tenant_id=$1 AND id=$2`,[tenant,postId])).rows[0]).toEqual({
   state:'published',paid_disabled_at:null,paid_purge_at:null});
  expect(await view('viewer5',postId)).toMatchObject({qualified:true,payable:false});
 });

 it('never makes the human post author a payable viewer of another sponsor\'s boost',async()=>{
  const quote=await promotions.quote({tenantId:tenant,sponsorId:'publisher',
   body:'Funded and independently reviewed',targetViews:1});
  const original=await promotions.confirm(tenant,'publisher',quote.quoteId,'owner-view-primary-01');
  await promotions.review(tenant,'independenteditor',original.id,true);
  const other=await boost('secondsponsor',original.postId,2,'owner-view-booster-01');
  const before=await sponsorBalance('secondsponsor');
  expect(await view('publisher',original.postId)).toMatchObject({qualified:false,
   selfView:true,payable:false});
  expect(await sponsorBalance('secondsponsor')).toEqual(before);
  const charges=await query(`SELECT count(*)::int AS charges FROM feed.promotion_view_charges
   WHERE tenant_id=$1 AND campaign_id=$2`,[tenant,other.id]);
  expect(charges.rows[0]).toEqual({charges:0});
 });

 it('does not let a booster drain a different sponsor on the same Masana post',async()=>{
  const posted=await query(`INSERT INTO feed.posts
   (tenant_id,author_masana_id,kind,body,idempotency_key,published_by)
   VALUES($1,'masana-2','text','Second editorial item','editorial-two','editor')
   RETURNING id`,[tenant]);
  const postId=String((posted.rows[0] as {id:string}).id);
  const own=await boost('firstsponsor',postId,1,'own-boost-exclusion-01');
  const peer=await boost('secondsponsor',postId,1,'peer-boost-exclusion-01');
  const beforeFirst=await sponsorBalance('firstsponsor');
  const beforeSecond=await sponsorBalance('secondsponsor');
  expect(await view('firstsponsor',postId)).toMatchObject({qualified:true,payable:false});
  expect(await sponsorBalance('firstsponsor')).toEqual(beforeFirst);
  expect(await sponsorBalance('secondsponsor')).toEqual(beforeSecond);
  const unpaid=await query(`SELECT count(*)::int AS n FROM feed.promotion_view_charges
   WHERE tenant_id=$1 AND campaign_id IN ($2,$3)`,[tenant,own.id,peer.id]);
  expect(unpaid.rows[0]).toEqual({n:0});
  expect(await view('viewer5',postId)).toMatchObject({qualified:true,payable:true});
  const paid=await query(`SELECT count(*)::int AS n FROM feed.promotion_view_charges
   WHERE tenant_id=$1 AND campaign_id IN ($2,$3)`,[tenant,own.id,peer.id]);
  expect(paid.rows[0]).toEqual({n:1});
 });

 it('pausing one sponsor cannot disable a human post while another funded boost is active',async()=>{
  const quote=await promotions.quote({tenantId:tenant,sponsorId:'publisher',
   body:'Two independently reserved budgets',targetViews:1});
  const original=await promotions.confirm(tenant,'publisher',quote.quoteId,'paused-primary-01');
  await promotions.review(tenant,'independenteditor',original.id,true);
  const second=await boost('firstsponsor',original.postId,2,'paused-boost-01');
  await promotions.pause(tenant,'publisher',original.id);
  expect((await query(`SELECT state,paid_purge_at FROM feed.posts WHERE tenant_id=$1 AND id=$2`,
   [tenant,original.postId])).rows[0]).toEqual({state:'published',paid_purge_at:null});
  await promotions.cancel(tenant,'firstsponsor',second.id);
  const hidden=await query(`SELECT state,EXTRACT(EPOCH FROM
   (paid_purge_at-paid_disabled_at))::int AS grace_seconds FROM feed.posts
   WHERE tenant_id=$1 AND id=$2`,[tenant,original.postId]);
  expect(hidden.rows[0]).toEqual({state:'hidden',grace_seconds:259200});
 });

 it('cannot republish a hidden post without live budget-grace authorization',async()=>{
  const quote=await promotions.quote({tenantId:tenant,sponsorId:'publisher',
   body:'Moderation and expiry must outrank a sponsor resume',targetViews:2});
  const campaign=await promotions.confirm(tenant,'publisher',quote.quoteId,
   'resume-safety-primary-01');
  await promotions.review(tenant,'independenteditor',campaign.id,true);
  await promotions.pause(tenant,'publisher',campaign.id);
  await query(`UPDATE feed.posts SET paid_purge_at=NULL
   WHERE tenant_id=$1 AND id=$2`,[tenant,campaign.postId]);
  await expect(promotions.resume(tenant,'publisher',campaign.id))
   .rejects.toMatchObject({code:'post_not_resumable'});
  expect((await query(`SELECT state FROM feed.posts WHERE tenant_id=$1 AND id=$2`,
   [tenant,campaign.postId])).rows[0]).toEqual({state:'hidden'});
  await query(`UPDATE feed.posts SET paid_purge_at=statement_timestamp()-interval '1 second'
   WHERE tenant_id=$1 AND id=$2`,[tenant,campaign.postId]);
  await expect(promotions.resume(tenant,'publisher',campaign.id))
   .rejects.toMatchObject({code:'post_not_resumable'});
  expect((await query(`SELECT state FROM feed.promotion_campaigns WHERE tenant_id=$1 AND id=$2`,
   [tenant,campaign.id])).rows[0]).toEqual({state:'paused'});
 });
});
