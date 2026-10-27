import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import {readFileSync} from 'node:fs';
import type {Pool} from 'pg';
import {PgStatusPromotions} from './promotions.js';

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
  await expect(query(`DELETE FROM feed.promotion_view_charges`)).rejects.toThrow();
 });

 it('boosts canonical content without transferring ownership, then enforces exactly 72h grace',async()=>{
  const c=(await service.mine(t,'publisher')).campaigns[0]!;
  const q=await service.quote({tenantId:t,sponsorId:'booster',postId:c.postId,targetViews:2});
  const boost=await service.confirm(t,'booster',q.quoteId,'boost-original-0001');
  expect(boost).toMatchObject({state:'active',kind:'boost'});
  await expect(service.deleteOwnPost(t,'booster',c.postId))
    .rejects.toMatchObject({code:'post_not_owned'});
  await service.cancel(t,'booster',boost.id);
  await service.cancel(t,'publisher',c.id);
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
});
