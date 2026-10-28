import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createHash} from 'node:crypto';
import {PGlite} from '@electric-sql/pglite';
import {readFileSync} from 'node:fs';
import type {Pool} from 'pg';
import {PgStatusPromotions,qualifiedViewAllocation} from './promotions.js';

describe('SPE-E01 exact integer half-MB allocation acceptance',()=>{
 it('allocates 10,000 funded views, including 1,500 organic and 8,500 referred, with no lost half-MB',()=>{
  let platformHalfMb=0,sharerHalfMb=0;
  for(let view=0;view<10000;view++){
   const allocated=qualifiedViewAllocation(view>=1500);
   expect(allocated.platformHalfMb+allocated.sharerHalfMb).toBe(2);
   platformHalfMb+=allocated.platformHalfMb;
   sharerHalfMb+=allocated.sharerHalfMb;
  }
  expect({chargedMb:10000,sharerLiabilityMb:sharerHalfMb/2,
   platformAllocationMb:platformHalfMb/2}).toEqual({
    chargedMb:10000,sharerLiabilityMb:4250,platformAllocationMb:5750});
  expect(platformHalfMb+sharerHalfMb).toBe(20000);
 });

 it('retains odd referrals as half-MB across campaigns, not rounded away per campaign',()=>{
  const campaigns=[
   [true,true,true,false], // 3 referred = 1.5 MB liability
   [false,true,true],      // 2 referred = 1 MB liability
  ];
  const totals=campaigns.map(views=>views.reduce((sum,referred)=>{
   const allocation=qualifiedViewAllocation(referred);
   return {platformHalfMb:sum.platformHalfMb+allocation.platformHalfMb,
    sharerHalfMb:sum.sharerHalfMb+allocation.sharerHalfMb};
  },{platformHalfMb:0,sharerHalfMb:0}));
  expect(totals).toEqual([
   {platformHalfMb:5,sharerHalfMb:3},
   {platformHalfMb:4,sharerHalfMb:2},
  ]);
  const pendingHalfMb=totals.reduce((n,group)=>n+group.sharerHalfMb,0);
  expect({pendingHalfMb,redeemableWholeMbIfSettled:Math.floor(pendingHalfMb/2),
   fractionalCarryHalfMb:pendingHalfMb%2}).toEqual({
    pendingHalfMb:5,redeemableWholeMbIfSettled:2,fractionalCarryHalfMb:1});
 });
});

const sql=(file:string)=>readFileSync(new URL(file,import.meta.url),'utf8');
let db:PGlite,service:PgStatusPromotions;
const t='tenanta';
const query=(statement:string,params?:unknown[])=>db.query(statement,params as never);
async function account(user:string,balance=20){
 await query(`INSERT INTO identity.users VALUES($1,$2,'active')`,[t,user]);
 await query(`INSERT INTO talks.public_profiles VALUES($1,$2,$2,'Named user')`,[t,user]);
 await query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb,welcome_mb)
  VALUES($1,'human',$2,$3,500)`,[t,user,balance]);
}
async function balance(user:string){
 const r=await query(`SELECT purchased_mb::int AS purchased,
  reserved_purchased_mb::int AS reserved,welcome_mb::int AS welcome
  FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_id=$2`,[t,user]);
 return r.rows[0] as {purchased:number;reserved:number;welcome:number};
}
describe('SPE funded campaign SQL constraints, immutable charges and expiry',()=>{
 beforeAll(async()=>{
  db=new PGlite();
  await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA talks;
   CREATE TABLE identity.users(tenant_id text,user_id text,state text);
   CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,display_name text);
   CREATE SCHEMA feed;`);
  await db.exec(sql('../../../../../packages/feed/migrations/0001_feed.sql'));
  await db.exec(sql('../../../../../packages/feed/migrations/0006_human_public_status.sql'));
  await db.exec(sql('../../../../../packages/commerce/migrations/0200_gb_wallet_foundation.sql'));
  await db.exec(sql('../../../../../packages/feed/migrations/0007_paid_promotions.sql'));
  await db.exec(sql('../../../../../packages/feed/migrations/0008_paid_media_deletion_outbox.sql'));
  await db.exec(sql('../../../../../packages/feed/migrations/0009_view_challenge_abuse_index.sql'));
  await db.exec(sql('../../../../../packages/feed/migrations/0010_promotion_rejection_appeals.sql'));
  await db.exec(sql('../../../../../packages/feed/migrations/0011_promotion_budget_immutability.sql'));
  await db.exec(sql('../../../../../packages/feed/migrations/0012_reviewed_paid_post_edits.sql'));
  await db.exec(sql('../../../../../packages/feed/migrations/0013_campaign_drafts_and_expiry.sql'));
  // Embedded PG SQL simulation; not a multi-connection PostgreSQL race test.
  const pool={query,connect:async()=>({query,release:()=>undefined})} as unknown as Pool;
  service=new PgStatusPromotions(pool,'test-secret-with-forty-plus-characters-of-entropy',
    'https://status.example.test');
  await account('publisher');await account('sharer');await account('viewerone');
  await account('viewertwo');await account('booster',10);
 });
 afterAll(async()=>{await db?.close();});

 it('reserves purchased MB without welcome grants; distinct editor approves; original key is idempotent',async()=>{
  const q=await service.quote({tenantId:t,sponsorId:'publisher',body:'Support learning',targetViews:5});
  expect(q).toMatchObject({targetViews:5,totalMb:5,eligibleMb:20,insufficientMb:false});
  const c=await service.confirm(t,'publisher',q.quoteId,'promotion-original-001');
  expect(c.state).toBe('pending_review');
  expect(await balance('publisher')).toEqual({purchased:20,reserved:5,welcome:500});
  expect(await service.confirm(t,'publisher',q.quoteId,'promotion-original-001')).toEqual(c);
  await expect(service.review(t,'publisher',c.id,true))
    .rejects.toMatchObject({code:'separate_reviewer_required'});
  await service.review(t,'distincteditor',c.id,true);
  expect(((await query(`SELECT state FROM feed.posts WHERE id=$1`,[c.postId])).rows[0] as {state:string}|undefined)?.state)
    .toBe('published');
 });

 it('records one qualified view charge and one pending half-MB referral, without replay',async()=>{
  const c=(await service.mine(t,'publisher')).campaigns[0]!;
  const link=await service.share(t,'sharer',c.postId);
  expect(link.earnable).toBe(true);
  const token=new URL(link.url).searchParams.get('r')!;
  const ch=await service.beginView(t,'viewerone',c.postId,token);
  await expect(service.finishView(t,'viewerone',ch.challengeId,
    {visibleFraction:0.9,foreground:true,engaged:true}))
    .rejects.toMatchObject({code:'view_dwell_too_short'});
  await query(`UPDATE feed.view_challenges SET started_at=statement_timestamp()-interval '7 seconds'
    WHERE id=$1`,[ch.challengeId]);
  expect(await service.finishView(t,'viewerone',ch.challengeId,
    {visibleFraction:0.8,foreground:true,engaged:true}))
    .toMatchObject({qualified:true,payable:true,verifiedViews:1});
  expect(await balance('publisher')).toEqual({purchased:19,reserved:4,welcome:500});
  expect(await service.finishView(t,'viewerone',ch.challengeId,
    {visibleFraction:0.8,foreground:true,engaged:true}))
    .toMatchObject({qualified:false,duplicate:true});
  const charged=await query(`SELECT platform_half_mb,sharer_half_mb,sharer_id
    FROM feed.promotion_view_charges`);
  expect(charged.rows).toEqual([{platform_half_mb:1,sharer_half_mb:1,sharer_id:'sharer'}]);
  expect((await service.mine(t,'sharer')).sharingEarnings[0]).toMatchObject({pendingHalfMb:1});
  expect(await service.adminOverview(t,'independent_editor')).toMatchObject({
   billedQualifiedViews:1,referredQualifiedViews:1,
   pendingSharerHalfMb:1,allocatedPlatformHalfMb:1});
  await expect(query(`DELETE FROM feed.promotion_view_charges`)).rejects.toThrow();
 });

 it('bounds signed-in viewer challenge spam without rate-limiting a shared IP',async()=>{
  const post=(await service.mine(t,'publisher')).campaigns[0]!.postId;
  const first=await query(`SELECT viewer_digest FROM feed.view_challenges
    WHERE tenant_id=$1 AND post_id=$2 LIMIT 1`,[t,post]);
  const digest=(first.rows[0] as {viewer_digest:string}).viewer_digest;
  await query(`INSERT INTO feed.view_challenges(tenant_id,post_id,viewer_digest)
    SELECT $1,$2,$3 FROM generate_series(1,99)`,[t,post,digest]);
  await expect(service.beginView(t,'viewerone',post)).rejects.toMatchObject({
    code:'view_challenge_rate_limited',status:429,statusCode:429});
  // Another authenticated account is independent even on a shared carrier IP.
  await expect(service.beginView(t,'viewertwo',post)).resolves.toMatchObject({
    minimumDwellSeconds:6});
 });

 it('boosts canonical content without transferring ownership, then enforces exactly 72h grace',async()=>{
  const c=(await service.mine(t,'publisher')).campaigns[0]!;
  const q=await service.quote({tenantId:t,sponsorId:'booster',postId:c.postId,targetViews:2});
  const boost=await service.confirm(t,'booster',q.quoteId,'boost-original-0001');
  expect(boost).toMatchObject({state:'active',kind:'boost'});
  await expect(service.deleteOwnPost(t,'booster',c.postId))
    .rejects.toMatchObject({code:'post_not_owned'});
  const cancelledBoost=await service.cancel(t,'booster',boost.id);
  expect(cancelledBoost).toMatchObject({state:'cancelled',reservedMb:0,
   refundedUnusedMb:2,spentMb:0});
  const cancelledOriginal=await service.cancel(t,'publisher',c.id);
  expect(cancelledOriginal).toMatchObject({state:'cancelled',reservedMb:0,
   refundedUnusedMb:4,spentMb:1});
  expect((await service.mine(t,'booster')).campaigns.find(x=>x.id===boost.id))
   .toMatchObject({state:'cancelled',reservedMb:0,refundedUnusedMb:2});
  const hidden=await query(`SELECT state,EXTRACT(EPOCH FROM
    (paid_purge_at-paid_disabled_at))::int AS seconds FROM feed.posts WHERE id=$1`,[c.postId]);
  expect(hidden.rows[0]).toMatchObject({state:'hidden',seconds:72*60*60});
  const reboost=await service.quote({tenantId:t,sponsorId:'publisher',postId:c.postId,targetViews:1});
  await service.confirm(t,'publisher',reboost.quoteId,'reboost-original-0001');
  expect(((await query(`SELECT state FROM feed.posts WHERE id=$1`,[c.postId])).rows[0] as {state:string}|undefined)?.state)
    .toBe('published');
  await query(`UPDATE feed.posts SET state='hidden',paid_disabled_at=now()-interval '73 hours',
    paid_purge_at=now()-interval '1 hour' WHERE id=$1`,[c.postId]);
  await expect(service.quote({tenantId:t,sponsorId:'publisher',postId:c.postId,targetViews:1}))
    .rejects.toMatchObject({code:'post_not_boostable'});
  expect((await service.purgeExpired()).purged).toBe(1);
  expect((await query(`SELECT state,body FROM feed.posts WHERE id=$1`,[c.postId])).rows[0])
    .toMatchObject({state:'removed',body:''});
 });

 it('queues tenant-scoped paid content, gives rejection reasons and refunds unused budget',async()=>{
  const q=await service.quote({tenantId:t,sponsorId:'publisher',
   body:'Review this learning offer',targetViews:3});
  const c=await service.confirm(t,'publisher',q.quoteId,'review-safety-0001');
  const before=await service.adminQueue(t,'trusted_reviewer');
  expect(before.pending).toContainEqual(expect.objectContaining({
   campaignId:c.id,authorId:'publisher',sponsorId:'publisher',
   body:'Review this learning offer',targetViews:3}));
  expect(await service.adminOverview(t,'trusted_reviewer'))
   .toMatchObject({pendingReview:1,rewardSettlementEnabled:false,
    fundingQualification:'not_qualified'});
  await expect(service.review(t,'trusted_reviewer',c.id,false))
   .rejects.toMatchObject({code:'invalid_review_reason'});
  await expect(service.review(t,'trusted_reviewer',c.id,false,'  '))
   .rejects.toMatchObject({code:'invalid_review_reason'});
  const beforeBalance=await balance('publisher');
  const rejected=await service.review(t,'trusted_reviewer',c.id,false,
   'Misleading educational claims');
  expect(rejected).toMatchObject({state:'rejected',reason:'Misleading educational claims'});
  expect((await balance('publisher')).reserved).toBe((beforeBalance as {reserved:number}).reserved-3);
  expect((await service.adminQueue(t,'trusted_reviewer')).pending)
   .not.toContainEqual(expect.objectContaining({campaignId:c.id}));
  expect((await service.mine(t,'publisher')).campaigns.find(x=>x.id===c.id))
   .toMatchObject({reservedMb:0,refundedUnusedMb:3,
    reviewReason:'Misleading educational claims'});
  expect((await service.receipt(t,'publisher',q.quoteId)).campaign)
   .toMatchObject({state:'rejected',reservedMb:0,refundedUnusedMb:3,
    reviewReason:'Misleading educational claims'});
  const audit=await query(`SELECT details FROM feed.promotion_audit WHERE tenant_id=$1
   AND campaign_id=$2 AND action='rejected'`,[t,c.id]);
  expect(audit.rows[0]).toMatchObject({details:{reason:'Misleading educational claims'}});
 });

 it('permanently removes unsafe human content, refunds all boosters and revokes referral',async()=>{
  const q=await service.quote({tenantId:t,sponsorId:'publisher',
   body:'Remove an unsafe offer',targetViews:3});
  const c=await service.confirm(t,'publisher',q.quoteId,'takedown-safety-0001');
  await service.review(t,'independent_editor',c.id,true);
  const b=await service.quote({tenantId:t,sponsorId:'booster',postId:c.postId,targetViews:2});
  await service.confirm(t,'booster',b.quoteId,'takedown-boost-0001');
  const link=await service.share(t,'sharer',c.postId);
  expect(link.earnable).toBe(true);
  await expect(service.adminTakedown(t,'publisher',c.postId,'Not allowed'))
   .rejects.toMatchObject({code:'separate_reviewer_required'});
  const beforeOwner=await balance('publisher'),beforeBooster=await balance('booster');
  expect(await service.adminTakedown(t,'independent_editor',c.postId,
   'Verified harmful advertising')).toMatchObject({state:'removed',refundedMb:5});
  expect((await balance('publisher')).reserved).toBe((beforeOwner as {reserved:number}).reserved-3);
  expect((await balance('booster')).reserved).toBe((beforeBooster as {reserved:number}).reserved-2);
  expect((await query(`SELECT state,body,cardinality(media_ids) AS media_count
   FROM feed.posts WHERE tenant_id=$1 AND id=$2`,[t,c.postId])).rows[0])
   .toMatchObject({state:'removed',body:'',media_count:0});
  expect((await query(`SELECT count(*)::int AS active FROM feed.share_links
   WHERE tenant_id=$1 AND post_id=$2 AND revoked_at IS NULL`,[t,c.postId])).rows[0])
   .toMatchObject({active:0});
  expect(await service.adminTakedown(t,'independent_editor',c.postId,
   'Verified harmful advertising')).toMatchObject({alreadyRemoved:true});
  await expect(service.beginView(t,'viewertwo',c.postId))
   .rejects.toMatchObject({code:'post_not_found'});
 });

 it('enqueues private objects atomically before wiping expired paid source',async()=>{
  const quote=await service.quote({tenantId:t,sponsorId:'publisher',
    body:'One archived image fixture',targetViews:2});
  const campaign=await service.confirm(t,'publisher',quote.quoteId,'media-cleanup-001');
  const media=await query(`INSERT INTO feed.paid_post_media_objects
    (tenant_id,post_id,media_id,object_key,review_state)
    VALUES($1,$2,gen_random_uuid(),'private/paid/media-cleanup-fixture.png','approved')
    RETURNING media_id`,[t,campaign.postId]);
  const mediaId=String((media.rows[0] as {media_id:string}).media_id);
  await service.deleteOwnPost(t,'publisher',campaign.postId);
  const [job]=await service.claimMediaDeletions();
  expect(job).toMatchObject({tenantId:t,postId:campaign.postId,mediaId,
    objectKey:'private/paid/media-cleanup-fixture.png'});
  expect((await query(`SELECT state,body FROM feed.posts WHERE id=$1`,
    [campaign.postId])).rows[0]).toMatchObject({state:'removed',body:''});
  await service.settleMediaDeletion(job!,false);
  expect((await query(`SELECT completed_at FROM feed.paid_media_deletion_outbox
    WHERE media_id=$1`,[mediaId])).rows[0]).toMatchObject({completed_at:null});
 });
 it('lets sponsor pause and resume within retention and exposes private audit updates',async()=>{
  const quote=await service.quote({tenantId:t,sponsorId:'publisher',
    body:'Sponsor pause control',targetViews:3});
  const campaign=await service.confirm(t,'publisher',quote.quoteId,'pause-test-original-001');
  await service.review(t,'independent_editor',campaign.id,true);
  expect((await service.pause(t,'publisher',campaign.id)).state).toBe('paused');
  const hidden=await query(`SELECT state,paid_purge_at FROM feed.posts WHERE id=$1`,
    [campaign.postId]);
  expect(hidden.rows[0]).toMatchObject({state:'hidden'});
  expect((await service.resume(t,'publisher',campaign.id)).state).toBe('active');
  const visible=await query(`SELECT state,paid_purge_at FROM feed.posts WHERE id=$1`,
    [campaign.postId]);
  expect(visible.rows[0]).toMatchObject({state:'published',paid_purge_at:null});
  expect((await service.mine(t,'publisher')).lifecycleNotifications)
    .toEqual(expect.arrayContaining([expect.objectContaining({kind:'paused'}),
      expect.objectContaining({kind:'resumed'})]));
  await expect(service.pause(t,'sharer',campaign.id))
    .rejects.toMatchObject({code:'campaign_not_found'});
 });

 it('rejects hidden post sharing and refuses a pending challenge after visibility changes',async()=>{
  const q=await service.quote({tenantId:t,sponsorId:'publisher',
    body:'A reviewed public offer may become hidden',targetViews:3});
  const c=await service.confirm(t,'publisher',q.quoteId,'private-race-001');
  await service.review(t,'distincteditor',c.id,true);
  const link=await service.share(t,'sharer',c.postId);
  expect(link.earnable).toBe(true);
  const token=new URL(link.url).searchParams.get('r')!;
  const ch=await service.beginView(t,'viewertwo',c.postId,token);
  await query(`UPDATE feed.view_challenges
    SET started_at=statement_timestamp()-interval '7 seconds' WHERE id=$1`,[ch.challengeId]);
  await query(`UPDATE feed.posts SET state='hidden' WHERE id=$1`,[c.postId]);
  await expect(service.share(t,'sharer',c.postId))
    .rejects.toMatchObject({code:'post_not_found'});
  await expect(service.beginView(t,'viewerone',c.postId,token))
    .rejects.toMatchObject({code:'post_not_found'});
  await expect(service.finishView(t,'viewertwo',ch.challengeId,
    {visibleFraction:1,foreground:true,engaged:true}))
    .rejects.toMatchObject({code:'post_unavailable'});
  expect((await query(`SELECT count(*)::int AS n FROM feed.promotion_view_charges
    WHERE campaign_id=$1`,[c.id])).rows[0]).toMatchObject({n:0});
  await query(`UPDATE feed.posts SET state='published' WHERE id=$1`,[c.postId]);
  expect(await service.finishView(t,'viewertwo',ch.challengeId,
    {visibleFraction:1,foreground:true,engaged:true}))
    .toMatchObject({qualified:true,payable:true});
 });

 it('attributes only the first qualified forwarded link, never later replay',async()=>{
  const q=await service.quote({tenantId:t,sponsorId:'publisher',
    body:'Two independent sharers, one real viewer',targetViews:3});
  const c=await service.confirm(t,'publisher',q.quoteId,'first-link-qualify-001');
  await service.review(t,'distincteditor',c.id,true);
  const first=await service.share(t,'sharer',c.postId);
  const second=await service.share(t,'booster',c.postId);
  const ch1=await service.beginView(t,'viewertwo',c.postId,
    new URL(first.url).searchParams.get('r')!);
  const ch2=await service.beginView(t,'viewertwo',c.postId,
    new URL(second.url).searchParams.get('r')!);
  await query(`UPDATE feed.view_challenges SET started_at=
    statement_timestamp()-interval '7 seconds' WHERE id IN ($1,$2)`,
    [ch1.challengeId,ch2.challengeId]);
  expect(await service.finishView(t,'viewertwo',ch1.challengeId,
    {visibleFraction:0.8,foreground:true,engaged:true}))
    .toMatchObject({qualified:true,payable:true});
  expect(await service.finishView(t,'viewertwo',ch2.challengeId,
    {visibleFraction:0.8,foreground:true,engaged:true}))
    .toMatchObject({qualified:false,duplicate:true});
  const receipts=await query(`SELECT c.sharer_id,c.sharer_half_mb FROM
    feed.promotion_view_charges c WHERE c.campaign_id=$1`,[c.id]);
  expect(receipts.rows).toEqual([{sharer_id:'sharer',sharer_half_mb:1}]);
 });
 it('stops new or in-flight suspended sharer rewards without rejecting unrelated viewers',async()=>{
  await account('guardedpublisher',5);
  await account('guardedsharer',1);
  await account('guardedviewera',1);
  await account('guardedviewerb',1);
  await account('guardedviewerc',1);
  const q=await service.quote({tenantId:t,sponsorId:'guardedpublisher',
   body:'Never reward a suspended or frozen sharer',targetViews:3});
  const c=await service.confirm(t,'guardedpublisher',q.quoteId,'guarded-sharer-001');
  await service.review(t,'distincteditor',c.id,true);
  const shared=await service.share(t,'guardedsharer',c.postId);
  expect(shared.earnable).toBe(true);
  const token=new URL(shared.url).searchParams.get('r')!;
  const pending=await service.beginView(t,'guardedviewera',c.postId,token);
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '7 seconds' WHERE id=$1`,[pending.challengeId]);
  // A link that was sound at challenge issue must not pay after suspension.
  await query(`UPDATE identity.users SET state='disabled'
   WHERE tenant_id=$1 AND user_id='guardedsharer'`,[t]);
  expect(await service.finishView(t,'guardedviewera',pending.challengeId,
   {visibleFraction:0.9,foreground:true,engaged:true}))
   .toMatchObject({qualified:true,payable:true});
  expect(await service.share(t,'guardedsharer',c.postId)).toEqual({
   url:`https://status.example.test/status/${c.postId}`,earnable:false});
  await query(`UPDATE identity.users SET state='active'
   WHERE tenant_id=$1 AND user_id='guardedsharer'`,[t]);
  await query(`UPDATE gb_wallet.accounts SET frozen=true
   WHERE tenant_id=$1 AND account_id='guardedsharer'`,[t]);
  expect(await service.share(t,'guardedsharer',c.postId)).toMatchObject({earnable:false});
  const frozen=await service.beginView(t,'guardedviewerb',c.postId,token);
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '7 seconds' WHERE id=$1`,[frozen.challengeId]);
  expect(await service.finishView(t,'guardedviewerb',frozen.challengeId,
   {visibleFraction:0.9,foreground:true,engaged:true}))
   .toMatchObject({qualified:true,payable:true});
  expect((await query(`SELECT sharer_id,platform_half_mb,sharer_half_mb
   FROM feed.promotion_view_charges WHERE campaign_id=$1 ORDER BY view_id`,[c.id])).rows)
   .toEqual([
    {sharer_id:null,platform_half_mb:2,sharer_half_mb:0},
    {sharer_id:null,platform_half_mb:2,sharer_half_mb:0},
   ]);
  expect((await service.mine(t,'guardedsharer')).sharingEarnings
   .filter(x=>x.postId===c.postId)).toEqual([]);
  // Sharing cannot require a purchased-MB Wallet row: a newly signed-up
  // eligible human can legitimately earn pending MB before ever recharging.
  await query(`INSERT INTO identity.users VALUES($1,'walletlesssharer','active')`,[t]);
  await query(`INSERT INTO talks.public_profiles VALUES
   ($1,'walletlesssharer','walletlesssharer','New user')`,[t]);
  const walletless=await service.share(t,'walletlesssharer',c.postId);
  expect(walletless.earnable).toBe(true);
  const third=await service.beginView(t,'guardedviewerc',c.postId,
   new URL(walletless.url).searchParams.get('r')!);
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '7 seconds' WHERE id=$1`,[third.challengeId]);
  expect(await service.finishView(t,'guardedviewerc',third.challengeId,
   {visibleFraction:0.9,foreground:true,engaged:true}))
   .toMatchObject({qualified:true,payable:true});
  expect((await service.mine(t,'walletlesssharer')).sharingEarnings[0])
   .toMatchObject({pendingHalfMb:1});
 });
 it('persists five odd referred charges across two real campaigns as five pending half-MB',async()=>{
  await account('mathpublisher',10);
  const ids:string[]=[],posts:string[]=[];
  for(const [index,views] of [3,2].entries()){
   const quote=await service.quote({tenantId:t,sponsorId:'mathpublisher',
    body:`Arithmetic campaign ${index}`,targetViews:views});
   const campaign=await service.confirm(t,'mathpublisher',quote.quoteId,
    `math-arithmetic-campaign-${index}`);
   await service.review(t,'independent_editor',campaign.id,true);
   ids.push(campaign.id);
   posts.push(campaign.postId);
   const referral=await service.share(t,'sharer',campaign.postId);
   expect(referral.earnable).toBe(true);
   const token=new URL(referral.url).searchParams.get('r')!;
   for(let i=0;i<views;i++){
    const viewer=`arithmeticviewer${index}${i}`;
    await account(viewer);
    const challenge=await service.beginView(t,viewer,campaign.postId,token);
    await query(`UPDATE feed.view_challenges SET started_at=statement_timestamp()-interval '7 seconds'
     WHERE id=$1`,[challenge.challengeId]);
    expect(await service.finishView(t,viewer,challenge.challengeId,
     {visibleFraction:0.9,foreground:true,engaged:true}))
      .toMatchObject({qualified:true,payable:true});
   }
  }
  const charges=await query(`SELECT campaign_id::text AS id,
   count(*)::int AS views,sum(sharer_half_mb)::int AS sharer_half_mb,
   sum(platform_half_mb)::int AS platform_half_mb
   FROM feed.promotion_view_charges WHERE tenant_id=$1 AND campaign_id=ANY($2::uuid[])
   GROUP BY campaign_id ORDER BY views DESC`,[t,ids]);
  const rows=charges.rows as Array<{id:string;views:number;
   sharer_half_mb:number;platform_half_mb:number}>;
  expect(rows).toEqual([
   {id:ids[0],views:3,sharer_half_mb:3,platform_half_mb:3},
   {id:ids[1],views:2,sharer_half_mb:2,platform_half_mb:2},
  ]);
  const pendingHalfMb=rows.reduce((sum,row)=>sum+row.sharer_half_mb,0);
  expect({pendingHalfMb,wholeMb:Math.floor(pendingHalfMb/2),
   carryHalfMb:pendingHalfMb%2}).toEqual({pendingHalfMb:5,wholeMb:2,carryHalfMb:1});
  const earn=(await service.mine(t,'sharer')).sharingEarnings;
  expect(earn.filter(x=>posts.includes(String(x.postId)))
   .map(x=>x.pendingHalfMb).sort()).toEqual([2,3]);
 });

 it('credits the original forwarded sharer, independently issued links, and no revoked rewards',async()=>{
  const q=await service.quote({tenantId:t,sponsorId:'publisher',
    body:'Attribution stays with the original signer',targetViews:4});
  const c=await service.confirm(t,'publisher',q.quoteId,'forwarded-links-001');
  await service.review(t,'distincteditor',c.id,true);
  const original=await service.share(t,'sharer',c.postId);
  const independentlyShared=await service.share(t,'booster',c.postId);
  const firstToken=new URL(original.url).searchParams.get('r')!;
  const secondToken=new URL(independentlyShared.url).searchParams.get('r')!;
  expect(firstToken).not.toBe(secondToken);
  const qualify=async(viewer:string,forwardedToken:string)=>{
   await account(viewer);
   const challenge=await service.beginView(t,viewer,c.postId,forwardedToken);
   await query(`UPDATE feed.view_challenges SET started_at=
    statement_timestamp()-interval '7 seconds' WHERE id=$1`,[challenge.challengeId]);
   return service.finishView(t,viewer,challenge.challengeId,
    {visibleFraction:0.9,foreground:true,engaged:true});
  };
  expect(await qualify('forwardviewera',firstToken))
    .toMatchObject({qualified:true,payable:true});
  expect(await qualify('forwardviewerb',secondToken))
    .toMatchObject({qualified:true,payable:true});
  // Revoking a token does not prevent a legitimate organic view, but cannot
  // create a commission. A malformed forwarded token follows the same rule.
  await query(`UPDATE feed.share_links SET revoked_at=statement_timestamp()
    WHERE tenant_id=$1 AND post_id=$2 AND token_sha256=$3`,
    [t,c.postId,createHash('sha256').update(firstToken).digest('hex')]);
  expect(await qualify('forwardviewerc',firstToken))
    .toMatchObject({qualified:true,payable:true});
  expect(await qualify('forwardviewerd','malformed!'))
    .toMatchObject({qualified:true,payable:true});
  const split=await query(`SELECT coalesce(sharer_id,'organic') AS credited_to,
    count(*)::int AS views,sum(sharer_half_mb)::int AS sharer_half_mb
    FROM feed.promotion_view_charges WHERE tenant_id=$1 AND campaign_id=$2
    GROUP BY credited_to ORDER BY credited_to`,[t,c.id]);
  expect(split.rows).toEqual([
   {credited_to:'booster',views:1,sharer_half_mb:1},
   {credited_to:'organic',views:2,sharer_half_mb:0},
   {credited_to:'sharer',views:1,sharer_half_mb:1},
  ]);
  await expect(service.share(t,'sharer',c.postId))
    .rejects.toMatchObject({code:'post_not_found'});
 });

 it('keeps an organic first exposure organic after app relaunch and a later forwarded link',async()=>{
  const q=await service.quote({tenantId:t,sponsorId:'publisher',
   body:'Organic first, future tracking never wins',targetViews:3});
  const c=await service.confirm(t,'publisher',q.quoteId,'organic-first-replay-001');
  await service.review(t,'distincteditor',c.id,true);
  const first=await service.beginView(t,'viewertwo',c.postId);
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '7 seconds' WHERE id=$1`,[first.challengeId]);
  expect(await service.finishView(t,'viewertwo',first.challengeId,
   {visibleFraction:0.75,foreground:true,engaged:true}))
   .toMatchObject({qualified:true,payable:true,verifiedViews:1});
  const forwarded=await service.share(t,'sharer',c.postId);
  const other=await service.share(t,'booster',c.postId);
  for(const url of [forwarded.url,other.url]){
   // A new signed session or a second app/browser visit still resolves to
   // this viewer's stable authenticated digest, never a second paid view.
   const reopened=await service.beginView(t,'viewertwo',c.postId,
    new URL(url).searchParams.get('r')!);
   await query(`UPDATE feed.view_challenges SET started_at=
    statement_timestamp()-interval '7 seconds' WHERE id=$1`,[reopened.challengeId]);
   expect(await service.finishView(t,'viewertwo',reopened.challengeId,
    {visibleFraction:0.75,foreground:true,engaged:true}))
    .toMatchObject({qualified:false,duplicate:true});
  }
  expect((await query(`SELECT count(*)::int AS n FROM feed.qualified_views
   WHERE post_id=$1`,[c.postId])).rows[0]).toMatchObject({n:1});
  expect((await query(`SELECT platform_half_mb,sharer_half_mb FROM
   feed.promotion_view_charges WHERE campaign_id=$1`,[c.id])).rows)
   .toEqual([{platform_half_mb:2,sharer_half_mb:0}]);
  expect((await service.mine(t,'sharer')).sharingEarnings
   .filter(x=>x.postId===c.postId)).toEqual([]);
 });

 it('denies owner self-referral rebates and rejects unqualified or expired challenges',async()=>{
  await account('fraudmatrixowner',10);
  const q=await service.quote({tenantId:t,sponsorId:'fraudmatrixowner',
   body:'No self-rebate, scanners or rapid bot credit',targetViews:4});
  const c=await service.confirm(t,'fraudmatrixowner',q.quoteId,'owner-referral-abuse-001');
  await service.review(t,'distincteditor',c.id,true);
  expect(await service.share(t,'fraudmatrixowner',c.postId)).toEqual({
   url:`https://status.example.test/status/${c.postId}`,earnable:false});
  const link=await service.share(t,'sharer',c.postId);
  const token=new URL(link.url).searchParams.get('r')!;
  const self=await service.beginView(t,'sharer',c.postId,token);
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '7 seconds' WHERE id=$1`,[self.challengeId]);
  expect(await service.finishView(t,'sharer',self.challengeId,
   {visibleFraction:0.75,foreground:true,engaged:true}))
   .toMatchObject({qualified:true,payable:true});
  expect((await query(`SELECT sharer_id,sharer_half_mb FROM
   feed.promotion_view_charges WHERE campaign_id=$1`,[c.id])).rows)
   .toEqual([{sharer_id:null,sharer_half_mb:0}]);
  const bot=await service.beginView(t,'viewertwo',c.postId,token);
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '7 seconds' WHERE id=$1`,[bot.challengeId]);
  for(const visibility of [
   {visibleFraction:0.49,foreground:true,engaged:true},
   {visibleFraction:1,foreground:false,engaged:true},
   {visibleFraction:1,foreground:true,engaged:false},
  ])await expect(service.finishView(t,'viewertwo',bot.challengeId,visibility))
   .rejects.toMatchObject({code:'view_not_qualified'});
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '301 seconds' WHERE id=$1`,[bot.challengeId]);
  await expect(service.finishView(t,'viewertwo',bot.challengeId,
   {visibleFraction:1,foreground:true,engaged:true}))
   .rejects.toMatchObject({code:'view_challenge_expired'});
  expect((await query(`SELECT count(*)::int AS n FROM feed.qualified_views
   WHERE post_id=$1`,[c.postId])).rows[0]).toMatchObject({n:1});
  expect((await query(`SELECT remaining_views AS remaining FROM
   feed.promotion_campaigns WHERE id=$1`,[c.id])).rows[0]).toMatchObject({remaining:3});
 });

 it('invalidates a signed link after challenge start without denying a distinct organic visitor',async()=>{
  const q=await service.quote({tenantId:t,sponsorId:'publisher',
   body:'A reviewed link can be revoked while in foreground',targetViews:2});
  const c=await service.confirm(t,'publisher',q.quoteId,'late-link-revocation-001');
  await service.review(t,'distincteditor',c.id,true);
  const link=await service.share(t,'sharer',c.postId);
  const token=new URL(link.url).searchParams.get('r')!;
  const ch=await service.beginView(t,'viewertwo',c.postId,token);
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '7 seconds' WHERE id=$1`,[ch.challengeId]);
  await query(`UPDATE feed.share_links SET revoked_at=statement_timestamp()
   WHERE tenant_id=$1 AND post_id=$2 AND token_sha256=$3`,
   [t,c.postId,createHash('sha256').update(token).digest('hex')]);
  expect(await service.finishView(t,'viewertwo',ch.challengeId,
   {visibleFraction:0.8,foreground:true,engaged:true}))
   .toMatchObject({qualified:true,payable:true});
  expect((await query(`SELECT sharer_id,platform_half_mb,sharer_half_mb
   FROM feed.promotion_view_charges WHERE campaign_id=$1`,[c.id])).rows)
   .toEqual([{sharer_id:null,platform_half_mb:2,sharer_half_mb:0}]);
 });

 it('prunes expired unclaimed viewer proofs but retains immutable paid-view evidence',async()=>{
  await account('retentionowner',3);
  await account('retentionviewera',1);
  await account('retentionviewerb',1);
  const q=await service.quote({tenantId:t,sponsorId:'retentionowner',
   body:'Privacy retention does not alter receipts',targetViews:3});
  const c=await service.confirm(t,'retentionowner',q.quoteId,'privacy-retention-001');
  await service.review(t,'distincteditor',c.id,true);
  const abandoned=await service.beginView(t,'retentionviewera',c.postId);
  const completed=await service.beginView(t,'retentionviewerb',c.postId);
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '7 seconds' WHERE id=$1`,[completed.challengeId]);
  expect(await service.finishView(t,'retentionviewerb',completed.challengeId,
   {visibleFraction:0.75,foreground:true,engaged:true}))
   .toMatchObject({qualified:true,payable:true});
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '25 hours' WHERE id IN ($1,$2)`,
   [abandoned.challengeId,completed.challengeId]);
  expect(await service.pruneExpiredViewChallenges(10)).toEqual({pruned:1});
  const remaining=await query(`SELECT id,claimed_at FROM feed.view_challenges
   WHERE id IN ($1,$2)`,[abandoned.challengeId,completed.challengeId]);
  expect(remaining.rows).toHaveLength(1);
  expect(remaining.rows[0]).toMatchObject({id:completed.challengeId});
  expect((remaining.rows[0] as {claimed_at:unknown}).claimed_at).not.toBeNull();
  expect((await query(`SELECT count(*)::int AS n FROM feed.promotion_view_charges
   WHERE campaign_id=$1`,[c.id])).rows[0]).toMatchObject({n:1});
  expect(await service.pruneExpiredViewChallenges(10)).toEqual({pruned:0});
  await expect(service.pruneExpiredViewChallenges(501))
   .rejects.toMatchObject({code:'invalid_limit'});
 });
 it('quotes a reviewed HTTPS CTA and records its immutable moderation snapshot',async()=>{
  await account('advertiser',15);
  await expect(service.quote({tenantId:t,sponsorId:'advertiser',body:'Message',
    targetViews:2,destinationUrl:'http://example.org'}))
   .rejects.toMatchObject({code:'invalid_promotion_destination'});
  const q=await service.quote({tenantId:t,sponsorId:'advertiser',
   body:'Visit for details',targetViews:3,destinationUrl:'https://example.org/details'});
  const stored=(await query(`SELECT destination_url FROM feed.promotion_quotes WHERE id=$1`,
   [q.quoteId])).rows[0] as {destination_url:string};
  expect(stored.destination_url).toBe('https://example.org/details');
  const campaign=await service.confirm(t,'advertiser',q.quoteId,'advertiser-cta-001');
  expect(campaign.state).toBe('pending_review');
  const queue=await service.adminQueue(t,'distincteditor');
  expect(queue.pending).toEqual(expect.arrayContaining([
   expect.objectContaining({campaignId:campaign.id,
    destinationUrl:'https://example.org/details'})
  ]));
  await service.review(t,'distincteditor',campaign.id,true,'Verified public CTA');
  const audit=(await query(`SELECT details FROM feed.promotion_audit
    WHERE tenant_id=$1 AND campaign_id=$2 AND action='approved'`,
    [t,campaign.id])).rows[0] as {details:{destinationUrl:string;bodySha256:string}};
  expect(audit.details.destinationUrl).toBe('https://example.org/details');
  expect(audit.details.bodySha256).toMatch(/^[0-9a-f]{64}$/);
  expect((await service.receipt(t,'advertiser',q.quoteId)).campaign)
   .toMatchObject({id:campaign.id,state:'active'});
  expect(await balance('advertiser')).toEqual({purchased:15,reserved:3,welcome:500});
 });

 it('retains rejected campaign appeals without replaying refunds or self-approval',async()=>{
  await account('appealing_owner',10);
  const q=await service.quote({tenantId:t,sponsorId:'appealing_owner',
   body:'Appealable human campaign',targetViews:4});
  const campaign=await service.confirm(t,'appealing_owner',q.quoteId,'appeal-original-001');
  await service.review(t,'different_editor',campaign.id,false,'Needs documentary evidence');
  expect(await balance('appealing_owner')).toMatchObject({purchased:10,reserved:0});
  await expect(service.appeal(t,'sharer',campaign.id,'Try to impersonate this owner'))
   .rejects.toMatchObject({code:'campaign_not_found'});
  const appeal=await service.appeal(t,'appealing_owner',campaign.id,
   'I can supply the documentary evidence');
  expect(appeal).toMatchObject({state:'pending',alreadySubmitted:false});
  const repeated=await service.appeal(t,'appealing_owner',campaign.id,
   'Different text must not duplicate the pending appeal');
  expect(repeated).toMatchObject({appealId:appeal.appealId,alreadySubmitted:true});
  expect((await service.myAppeals(t,'appealing_owner')).appeals)
   .toEqual(expect.arrayContaining([
     expect.objectContaining({appealId:appeal.appealId,state:'pending'})
   ]));
  expect((await service.adminAppeals(t,'independent_editor')).pending)
   .toEqual(expect.arrayContaining([
     expect.objectContaining({appealId:appeal.appealId,ownerId:'appealing_owner'})
   ]));
  await expect(service.resolveAppeal(t,'appealing_owner',appeal.appealId,
   true,'Approval after response')).rejects.toMatchObject({code:'separate_reviewer_required'});
  const resolved=await service.resolveAppeal(t,'independent_editor',appeal.appealId,
   true,'Reviewed evidence, may resubmit');
  expect(resolved).toMatchObject({state:'accepted',campaignReactivated:false});
  expect((await service.myAppeals(t,'appealing_owner')).appeals[0])
   .toMatchObject({state:'accepted',resolutionReason:'Reviewed evidence, may resubmit'});
  await expect(service.resolveAppeal(t,'independent_editor',appeal.appealId,
   true,'No second decision')).rejects.toMatchObject({code:'appeal_already_resolved'});
  expect((await service.receipt(t,'appealing_owner',q.quoteId)).campaign)
   .toMatchObject({state:'rejected'});
  expect(await balance('appealing_owner')).toMatchObject({purchased:10,reserved:0});
 });

 it('forbids changes to quoted or reserved campaign economics at SQL level',async()=>{
  await account('immutability_owner',10);
  const q=await service.quote({tenantId:t,sponsorId:'immutability_owner',
   body:'Immutable price and view target',targetViews:2});
  const c=await service.confirm(t,'immutability_owner',q.quoteId,'immutable-quote-001');
  await expect(query(`UPDATE feed.promotion_quotes SET target_views=3 WHERE id=$1`,
   [q.quoteId])).rejects.toThrow(/immutable/i);
  await expect(query(`DELETE FROM feed.promotion_quotes WHERE id=$1`,
   [q.quoteId])).rejects.toThrow(/immutable/i);
  await expect(query(`UPDATE feed.promotion_campaigns SET sponsor_id='someone_else'
    WHERE id=$1`,[c.id])).rejects.toThrow(/economics/i);
  await expect(query(`UPDATE feed.promotion_campaigns SET target_views=3,remaining_views=3
    WHERE id=$1`,[c.id])).rejects.toThrow(/economics/i);
  await expect(query(`DELETE FROM feed.promotion_campaigns WHERE id=$1`,
   [c.id])).rejects.toThrow(/immutable/i);
  expect((await service.receipt(t,'immutability_owner',q.quoteId)).campaign)
   .toMatchObject({targetViews:2,remainingViews:2,priceVersion:'2026-10-27:1MB'});
 });

 it('stages edits privately and changes only independently approved copy without MB debit',async()=>{
  await account('editing_owner',12);
  const quote=await service.quote({tenantId:t,sponsorId:'editing_owner',
   body:'Original approved text',targetViews:4,destinationUrl:'https://example.org/original'});
  const c=await service.confirm(t,'editing_owner',quote.quoteId,'editing-original-001');
  await service.review(t,'moderator_one',c.id,true,'Original text and link reviewed');
  const first=await query(`SELECT body,paid_reviewed_destination_url,
    paid_content_revision FROM feed.posts WHERE id=$1`,[c.postId]);
  expect(first.rows[0]).toMatchObject({body:'Original approved text',
   paid_reviewed_destination_url:'https://example.org/original',paid_content_revision:0});
  const edit=await service.proposeEdit(t,'editing_owner',c.postId,{
   expectedRevision:0,body:'Revised text after review',
   destinationUrl:'https://example.org/revised',idempotencyKey:'editing-request-001'});
  expect(edit.state).toBe('pending');
  expect((await query(`SELECT body,paid_reviewed_destination_url
    FROM feed.posts WHERE id=$1`,[c.postId])).rows[0]).toMatchObject({
     body:'Original approved text',paid_reviewed_destination_url:'https://example.org/original'});
  expect((await service.myEdits(t,'editing_owner')).edits).toEqual(expect.arrayContaining([
   expect.objectContaining({proposalId:edit.proposalId,state:'pending'})
  ]));
  expect((await service.adminEdits(t,'moderator_two')).pending).toEqual(expect.arrayContaining([
   expect.objectContaining({proposalId:edit.proposalId,ownerId:'editing_owner'})
  ]));
  await expect(service.reviewEdit(t,'editing_owner',edit.proposalId,true,'Self approve'))
   .rejects.toMatchObject({code:'separate_reviewer_required'});
  const decided=await service.reviewEdit(t,'moderator_two',edit.proposalId,
   true,'Content and destination approved');
  expect(decided).toMatchObject({state:'approved',newRevision:1});
  expect((await query(`SELECT body,paid_reviewed_destination_url,
    paid_content_revision FROM feed.posts WHERE id=$1`,[c.postId])).rows[0])
   .toMatchObject({body:'Revised text after review',
    paid_reviewed_destination_url:'https://example.org/revised',paid_content_revision:1});
  expect((await service.proposeEdit(t,'editing_owner',c.postId,{
   expectedRevision:0,body:'Revised text after review',
   destinationUrl:'https://example.org/revised',idempotencyKey:'editing-request-001'})).proposalId)
   .toBe(edit.proposalId);
  await expect(service.proposeEdit(t,'editing_owner',c.postId,{
   expectedRevision:0,body:'Stale revision',idempotencyKey:'editing-request-002'}))
    .rejects.toMatchObject({code:'stale_post_revision'});
  expect(await balance('editing_owner')).toMatchObject({purchased:12,reserved:4});
  expect((await service.receipt(t,'editing_owner',quote.quoteId)).campaign)
   .toMatchObject({targetViews:4,remainingViews:4,state:'active'});
 });

 it('keeps original no-CTA campaign fingerprints replay-compatible',async()=>{
  await account('legacy_quote_user',5);
  const q=await service.quote({tenantId:t,sponsorId:'legacy_quote_user',
    body:'Historic promotion without CTA',targetViews:2});
  const c=await service.confirm(t,'legacy_quote_user',q.quoteId,'legacy-no-cta-001');
  const oldFingerprint=createHash('sha256').update(JSON.stringify([
   q.quoteId,'legacy_quote_user','human_primary',null,
   'Historic promotion without CTA',2
  ])).digest('hex');
  const saved=await query(`SELECT fingerprint FROM feed.promotion_campaigns
    WHERE tenant_id=$1 AND id=$2`,[t,c.id]);
  expect(saved.rows[0]).toMatchObject({fingerprint:oldFingerprint});
  expect(await service.confirm(t,'legacy_quote_user',q.quoteId,'legacy-no-cta-001'))
   .toEqual(c);
  expect(await balance('legacy_quote_user')).toMatchObject({purchased:5,reserved:2});
 });


 it('stores unpaid drafts, version-fences edits and returns one stable quote on retries',async()=>{
  await account('draftowner',12);
  const input={body:'Public scholarship update',targetViews:4,
   destinationUrl:'https://example.org/scholarships',idempotencyKey:'draft-original-001'};
  const first=await service.draft(t,'draftowner',input);
  expect(first).toMatchObject({state:'draft',version:0,targetViews:4});
  expect(await service.draft(t,'draftowner',input)).toEqual(first);
  await expect(service.draft(t,'draftowner',{...input,targetViews:5}))
   .rejects.toMatchObject({code:'idempotency_conflict'});
  expect((await service.myDrafts(t,'draftowner')).drafts).toEqual(expect.arrayContaining([
   expect.objectContaining({draftId:first.draftId,state:'draft'})]));
  expect((await service.myDrafts(t,'sharer')).drafts).not.toEqual(expect.arrayContaining([
   expect.objectContaining({draftId:first.draftId})]));
  await expect(service.editDraft(t,'sharer',first.draftId,{body:'Hijack',targetViews:3,expectedVersion:0}))
   .rejects.toMatchObject({code:'draft_stale_or_submitted'});
  const updated=await service.editDraft(t,'draftowner',first.draftId,{
   body:'Updated scholarship promotion',targetViews:5,expectedVersion:0});
  expect(updated.version).toBe(1);
  await expect(service.editDraft(t,'draftowner',first.draftId,{
   body:'Stale',targetViews:4,expectedVersion:0})).rejects.toMatchObject({code:'draft_stale_or_submitted'});
  const q1=await service.quoteDraft(t,'draftowner',first.draftId);
  const q2=await service.quoteDraft(t,'draftowner',first.draftId);
  expect(q2.quoteId).toBe(q1.quoteId);
  expect((await query(`SELECT count(*)::int AS n FROM feed.promotion_quotes
   WHERE tenant_id=$1 AND draft_id=$2`,[t,first.draftId])).rows[0] as {n:number}|undefined)?.n).toBe(1);
  expect(await balance('draftowner')).toEqual({purchased:12,reserved:0,welcome:500});
  await expect(service.editDraft(t,'draftowner',first.draftId,{
   body:'Edit after quote',targetViews:6,expectedVersion:1}))
   .rejects.toMatchObject({code:'draft_stale_or_submitted'});
  const c=await service.confirm(t,'draftowner',q1.quoteId,'draft-confirm-001');
  expect(c).toMatchObject({state:'pending_review',targetViews:5});
  expect((await service.receipt(t,'draftowner',q1.quoteId)).campaign)
   .toMatchObject({id:c.id,state:'pending_review'});
  expect(await balance('draftowner')).toEqual({purchased:12,reserved:5,welcome:500});
 });
 it('expires a funded campaign at a server deadline, refunds once and preserves audit',async()=>{
  await account('expiryowner',10);
  const deadline=new Date(Date.now()+4*3600000).toISOString().replace(/\.\d{3}Z$/,'Z');
  const draft=await service.draft(t,'expiryowner',{body:'Time bound public lesson',
   targetViews:3,campaignExpiresAt:deadline,idempotencyKey:'timebound-draft-001'});
  const quote=await service.quoteDraft(t,'expiryowner',draft.draftId);
  const c=await service.confirm(t,'expiryowner',quote.quoteId,'timebound-confirm-001');
  await service.review(t,'different_editor',c.id,true,'Approved within window');
  expect(await balance('expiryowner')).toMatchObject({purchased:10,reserved:3});
  await expect(query(`UPDATE feed.promotion_campaigns
    SET expires_at=statement_timestamp()-interval '1 second'
    WHERE tenant_id=$1 AND id=$2`,[t,c.id])).rejects.toThrow(/economics/i);
  const current=await query(`SELECT state,expires_at FROM feed.promotion_campaigns WHERE id=$1`,[c.id]);
  expect((current.rows[0] as {state:string}|undefined)?.state).toBe('active');
  expect((await service.expireCampaigns()).expired).toBe(0);
  await service.cancel(t,'expiryowner',c.id);
  expect(await balance('expiryowner')).toMatchObject({purchased:10,reserved:0});
 });

});
