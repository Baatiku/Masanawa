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
 return r.rows[0];
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
  expect((await query(`SELECT state FROM feed.posts WHERE id=$1`,[c.postId])).rows[0]?.state)
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
  expect((await query(`SELECT state FROM feed.posts WHERE id=$1`,[c.postId])).rows[0]?.state)
    .toBe('published');
  await query(`UPDATE feed.posts SET state='hidden',paid_disabled_at=now()-interval '73 hours',
    paid_purge_at=now()-interval '1 hour' WHERE id=$1`,[c.postId]);
  await expect(service.quote({tenantId:t,sponsorId:'publisher',postId:c.postId,targetViews:1}))
    .rejects.toMatchObject({code:'post_not_boostable'});
  expect((await service.purgeExpired()).purged).toBe(1);
  expect((await query(`SELECT state,body FROM feed.posts WHERE id=$1`,[c.postId])).rows[0])
    .toMatchObject({state:'removed',body:''});
 });
});
