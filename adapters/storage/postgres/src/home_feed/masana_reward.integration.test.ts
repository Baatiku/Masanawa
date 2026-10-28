import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import {readFileSync} from 'node:fs';
import type {Pool} from 'pg';
import {PgStatusPromotions} from './promotions.js';

const tenant='masana_reward_tenant';
const sql=(file:string)=>readFileSync(new URL(file,import.meta.url),'utf8');
const visible={visibleFraction:0.8,foreground:true,engaged:true};

describe('SPE-B14 guarded Masana editorial vs temporary human-funded Boost',()=>{
 const db=new PGlite();
 const query=(statement:string,params?:unknown[])=>db.query(statement,params as never);
 const pool={query,connect:async()=>({query,release:()=>undefined})} as unknown as Pool;
 const service=new PgStatusPromotions(pool,'at-least-32-characters-of-fraud-separated-secret',
  'https://status.example.test');
 let postId:string;
 const qualify=async(user:string,referral?:string)=>{
  const ch=await service.beginView(tenant,user,postId,referral);
  await query(`UPDATE feed.view_challenges SET started_at=
   statement_timestamp()-interval '7 seconds' WHERE id=$1`,[ch.challengeId]);
  return service.finishView(tenant,user,ch.challengeId,visible);
 };
 beforeAll(async()=>{
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
  for(const user of ['booster','sharer','viewerone','viewertwo','viewerthree','viewerfour']){
   await query(`INSERT INTO identity.users VALUES($1,$2,'active')`,[tenant,user]);
   await query(`INSERT INTO talks.public_profiles VALUES($1,$2,$2,'Account name')`,[tenant,user]);
   await query(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb)
    VALUES($1,'human',$2,$3)`,[tenant,user,user==='booster'?3:0]);
  }
  const post=await query(`INSERT INTO feed.posts
   (tenant_id,author_masana_id,kind,body,idempotency_key,published_by)
   VALUES($1,'editorial_teacher','text','Approved editorial teacher lesson',
    'published-editorial-teacher-001','platform_editor') RETURNING id`,[tenant]);
  postId=String((post.rows[0] as {id:string}).id);
 });
 afterAll(async()=>db.close());

 it('counts unpaid Masana editorial reading but never creates an unfunded commission',async()=>{
  const link=await service.share(tenant,'sharer',postId);
  expect(link).toEqual({url:`https://status.example.test/status/${postId}`,earnable:false});
  expect(await qualify('viewerone')).toMatchObject({qualified:true,payable:false,verifiedViews:1});
  expect((await query(`SELECT count(*)::int AS n FROM feed.promotion_view_charges
   WHERE tenant_id=$1`,[tenant])).rows[0]).toMatchObject({n:0});
  expect((await service.mine(tenant,'sharer')).sharingEarnings).toEqual([]);
 });

 it('pays only genuinely funded Boost views while keeping the editorial source after exhaustion',async()=>{
  const q=await service.quote({tenantId:tenant,sponsorId:'booster',postId,targetViews:2});
  expect(q).toMatchObject({totalMb:2,eligibleMb:3});
  const campaign=await service.confirm(tenant,'booster',q.quoteId,'masana-human-boost-001');
  expect(campaign).toMatchObject({kind:'boost',state:'active',targetViews:2});
  const link=await service.share(tenant,'sharer',postId);
  expect(link.earnable).toBe(true);
  const token=new URL(link.url).searchParams.get('r')!;
  // Editorial reading predating a paid Boost cannot be rebilled retroactively.
  expect(await qualify('viewerone',token)).toMatchObject({qualified:false,duplicate:true});
  expect(await qualify('viewertwo',token)).toMatchObject({qualified:true,payable:true,
   verifiedViews:2});
  // Reopened app/browser or forwarded second pass cannot pay the sharer twice.
  expect(await qualify('viewertwo',token)).toMatchObject({qualified:false,duplicate:true});
  expect(await qualify('viewerthree')).toMatchObject({qualified:true,payable:true,
   verifiedViews:3});
  const allocations=await query(`SELECT sharer_id,sharer_half_mb,platform_half_mb
   FROM feed.promotion_view_charges WHERE tenant_id=$1 ORDER BY sharer_half_mb DESC`,[tenant]);
  expect(allocations.rows).toEqual([
   {sharer_id:'sharer',sharer_half_mb:1,platform_half_mb:1},
   {sharer_id:null,sharer_half_mb:0,platform_half_mb:2},
  ]);
  expect((await query(`SELECT state,remaining_views AS remaining,
   delivered_views AS delivered FROM feed.promotion_campaigns WHERE id=$1`,
   [campaign.id])).rows[0]).toMatchObject({state:'completed',remaining:0,delivered:2});
  expect((await query(`SELECT state FROM feed.posts WHERE id=$1`,[postId])).rows[0])
   .toMatchObject({state:'published'});
  expect(await service.share(tenant,'sharer',postId)).toEqual({
   url:`https://status.example.test/status/${postId}`,earnable:false});
  expect(await qualify('viewerfour',token)).toMatchObject({qualified:true,payable:false,
   verifiedViews:4});
  expect((await service.mine(tenant,'sharer')).sharingEarnings[0])
   .toMatchObject({pendingHalfMb:1});
 });
});
