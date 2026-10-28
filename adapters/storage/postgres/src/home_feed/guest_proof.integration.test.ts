import {PGlite} from '@electric-sql/pglite';
import {createHash} from 'node:crypto';
import {readFileSync} from 'node:fs';
import type {Pool} from 'pg';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {PgStatusGuestProofs} from './guest_proof.js';

const sql=(path:string)=>readFileSync(new URL(path,import.meta.url),'utf8');
const tenant='guest_tenant';
const actor=(character:string)=>({consentDigest:character.repeat(64),
 viewerDigest:character==='a'?'b'.repeat(64):'c'.repeat(64)});
const report={visibleFraction:0.9,foreground:true,engaged:true};

describe('consented guest proof persists only reviewable, nonpayable evidence',()=>{
 const db=new PGlite();
 const query=(statement:string,params?:unknown[])=>(
  db.query(statement,params as never) as Promise<{rows:Record<string,unknown>[]}>
 );
 const pool={query,connect:async()=>({query,release:()=>undefined})} as unknown as Pool;
 let service:PgStatusGuestProofs,postId:string;
 let validToken='';
 const publicPosts={find:async(id:string)=>id===postId?{id}:null,
  validReferral:async(_id:string,token:string)=>token===validToken};
 const count=async(table:string)=>Number((await query(`SELECT count(*)::int AS n FROM feed.${table}`)).rows[0]!.n);
 beforeAll(async()=>{
  await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA talks;
    CREATE TABLE identity.users(tenant_id text,user_id text,state text);
    CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,display_name text);
    CREATE SCHEMA feed;`);
  for(const path of [
   '../../../../../packages/feed/migrations/0001_feed.sql',
   '../../../../../packages/feed/migrations/0006_human_public_status.sql',
   '../../../../../packages/commerce/migrations/0200_gb_wallet_foundation.sql',
   '../../../../../packages/feed/migrations/0007_paid_promotions.sql',
   '../../../../../packages/feed/migrations/0020_status_guest_view_proof.sql',
  ])await db.exec(sql(path));
  const post=await query(`INSERT INTO feed.posts
    (tenant_id,author_masana_id,kind,body,idempotency_key,published_by)
    VALUES($1,'guest_teacher','text','Education is power','guest-post','editor')
    RETURNING id`,[tenant]);
  postId=String(post.rows[0]!.id);
  service=new PgStatusGuestProofs(pool,publicPosts);
 });
 afterAll(async()=>db.close());

 it('enforces server elapsed time, replay idempotence and independent consents',async()=>{
  const first=await service.begin(postId,actor('a'));
  expect(first).toMatchObject({started:true,qualified:false,payable:false,
   minimumDwellSeconds:6});
  const id=(first as {challengeId:string}).challengeId;
  await expect(service.complete(id,actor('a'),report))
   .rejects.toMatchObject({code:'guest_proof_too_short'});
  await expect(service.complete(id,actor('a'),{...report,foreground:false}))
   .rejects.toMatchObject({code:'guest_proof_not_observed'});
  await query(`UPDATE feed.guest_view_proofs SET started_at=statement_timestamp()-interval '7 seconds'
   WHERE id=$1`,[id]);
  expect(await service.complete(id,actor('a'),report)).toMatchObject({recorded:true,
   qualified:false,payable:false,reviewStatus:'unverified'});
  expect(await service.complete(id,actor('a'),report))
   .toMatchObject({recorded:false,duplicate:true,payable:false});
  expect(await service.begin(postId,actor('a')))
   .toMatchObject({started:false,duplicate:true,payable:false});
  expect(await service.begin(postId,actor('d')))
   .toMatchObject({started:true,payable:false});
  expect(await count('guest_view_proofs')).toBe(2);
  expect(await count('qualified_views')).toBe(0);
  expect(await count('promotion_view_charges')).toBe(0);
  const column=await query(`SELECT column_name FROM information_schema.columns
    WHERE table_schema='feed' AND table_name='guest_view_proofs'`);
  expect(column.rows.map(x=>x.column_name)).not.toContain('ip_address');
  expect(column.rows.map(x=>x.column_name)).not.toContain('cookie');
 });

 it('removes all consent-linked records, blocks replay and independently prunes expired data',async()=>{
  await service.withdraw(actor('a').consentDigest);
  expect(await service.revoked(actor('a').consentDigest)).toBe(true);
  expect(await count('guest_view_proofs')).toBe(1);
  await expect(service.begin(postId,actor('a'))).rejects.toMatchObject({
   code:'guest_consent_withdrawn'});
  const row=await query(`SELECT id FROM feed.guest_view_proofs LIMIT 1`);
  await query(`UPDATE feed.guest_view_proofs SET started_at=statement_timestamp()-interval '25 hours'
   WHERE id=$1`,[row.rows[0]!.id]);
  expect(await service.pruneExpired(100)).toEqual({pruned:1});
  expect(await count('guest_view_proofs')).toBe(0);
  expect(await count('qualified_views')).toBe(0);
  expect(await count('promotion_view_charges')).toBe(0);
 });

 it('denies hidden and disabled posts without producing guest records',async()=>{
  await query(`UPDATE feed.posts SET state='hidden' WHERE id=$1`,[postId]);
  await expect(service.begin(postId,actor('e'))).rejects.toMatchObject({
   code:'guest_post_unavailable'});
  expect(await count('guest_view_proofs')).toBe(0);
 });

 it('does not retain a later suspended sharer as an attributed guest link',async()=>{
  await query(`UPDATE feed.posts SET state='published' WHERE id=$1`,[postId]);
  await query(`INSERT INTO identity.users VALUES($1,'guest_sharer','active')`,[tenant]);
  const quote=await query(`INSERT INTO feed.promotion_quotes
   (tenant_id,sponsor_id,post_id,kind,target_views)
   VALUES($1,'programme_sponsor',$2,'boost',2) RETURNING id`,[tenant,postId]);
  const qid=quote.rows[0]!.id;
  const campaign=await query(`INSERT INTO feed.promotion_campaigns
   (tenant_id,quote_id,post_id,sponsor_id,kind,idempotency_key,fingerprint,
    state,target_views,remaining_views,price_version)
   VALUES($1,$2,$3,'programme_sponsor','boost','guest-test-boost',$4,
    'active',2,2,'2026-10-27:1MB') RETURNING id`,
   [tenant,qid,postId,'f'.repeat(64)]);
  validToken='validGuestReferralToken_012345678901';
  await query(`INSERT INTO feed.share_links
   (tenant_id,post_id,campaign_id,sharer_id,token_sha256)
   VALUES($1,$2,$3,'guest_sharer',$4)`,
   [tenant,postId,campaign.rows[0]!.id,createHash('sha256').update(validToken).digest('hex')]);
  const started=await service.begin(postId,actor('f'),validToken);
  const id=(started as {challengeId:string}).challengeId;
  expect((await query(`SELECT referral_link_id FROM feed.guest_view_proofs WHERE id=$1`,
   [id])).rows[0]!.referral_link_id).toBeTruthy();
  await query(`UPDATE identity.users SET state='suspended' WHERE user_id='guest_sharer'`);
  await query(`UPDATE feed.guest_view_proofs SET started_at=statement_timestamp()-interval '7 seconds'
   WHERE id=$1`,[id]);
  expect(await service.complete(id,actor('f'),report))
   .toMatchObject({recorded:true,qualified:false,payable:false});
  expect((await query(`SELECT referral_link_id FROM feed.guest_view_proofs WHERE id=$1`,
   [id])).rows[0]!.referral_link_id).toBeNull();
  expect(await count('promotion_view_charges')).toBe(0);
 });
});
