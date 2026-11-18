import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createHash} from 'node:crypto';
import {PGlite} from '@electric-sql/pglite';
import {PgPublicStatusLanding} from './public_landing.js';

const masa='27c63eb3-0f5e-4849-8670-2eb62c8406bf';
const paid='87c63eb3-0f5e-4849-8670-2eb62c8406bf';
const hidden='97c63eb3-0f5e-4849-8670-2eb62c8406bf';
const image='a7c63eb3-0f5e-4849-8670-2eb62c8406bf';
const humanImage='b7c63eb3-0f5e-4849-8670-2eb62c8406bf';
const campaign='37c63eb3-0f5e-4849-8670-2eb62c8406bf';
const token='TestValidForwardedLink0123456789abcdef';

describe('public Status unfurls only approved globally public funded content',()=>{
 const db=new PGlite();
 const repository=new PgPublicStatusLanding({query:async(sql,params)=>{
   const result=await db.query(sql,params as (string|number|null)[]);
   return {rows:result.rows as Record<string,unknown>[]};
 }});
 beforeAll(async()=>{
  await db.exec(`CREATE SCHEMA feed; CREATE SCHEMA identity;
   CREATE SCHEMA talks; CREATE SCHEMA masana;
   CREATE SCHEMA gb_wallet;
   CREATE TABLE gb_wallet.accounts(tenant_id text,account_kind text,account_id text,frozen boolean);
   CREATE TABLE feed.posts(id uuid,tenant_id text,state text,kind text,
    body text,media_ids text[],paid_purged_at timestamptz,
    author_type text,author_user_id text,author_masana_id text,audience text);
   ALTER TABLE feed.posts ADD COLUMN paid_disabled_at timestamptz;
   ALTER TABLE feed.posts ADD COLUMN paid_purge_at timestamptz;
   CREATE TABLE feed.promotion_campaigns(tenant_id text,id uuid,post_id uuid,state text,remaining_views int);
   CREATE TABLE feed.share_links(tenant_id text,post_id uuid,campaign_id uuid,
    token_sha256 text,revoked_at timestamptz,sharer_id text);
   CREATE TABLE identity.users(tenant_id text,user_id text,state text);
   CREATE TABLE identity.characters(tenant_id text,character_id text,state text);
   CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text);
   CREATE TABLE masana.character_revisions(tenant_id text,character_id text,state text,profile jsonb);
   CREATE TABLE masana.character_media(tenant_id text,character_id text,media_id text,
    kind text,object_key text,rights_note text,approved_by text,status_alt_text text,
    status_alt_approved_by text,status_alt_approved_at timestamptz);
   CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,display_name text);
   CREATE TABLE talks.safety_enforcement(tenant_id text,target_kind text,target_id text,visibility text);
   INSERT INTO identity.users VALUES('tenant','member','active');
   INSERT INTO identity.users VALUES('tenant','sharer','active');
   INSERT INTO gb_wallet.accounts VALUES('tenant','human','sharer',false);
   INSERT INTO talks.public_profiles VALUES('tenant','member','member_valid','Amina');
   INSERT INTO identity.characters VALUES('tenant','teacher','active');
   INSERT INTO identity.character_ownership VALUES('tenant','teacher','platform');
   INSERT INTO masana.character_revisions VALUES('tenant','teacher','approved','{"displayName":"Ustazi"}');
   INSERT INTO feed.posts VALUES
     ('${masa}','tenant','published','text','Approved public lesson',ARRAY[]::text[],NULL,'masana',NULL,'teacher','public'),
     ('${paid}','tenant','published','text','Funded human lesson',ARRAY[]::text[],NULL,'human','member',NULL,'public'),
     ('${hidden}','tenant','published','text','Private draft',ARRAY[]::text[],NULL,'human','member',NULL,'private'),
     ('${image}','tenant','published','image','Rights-cleared editorial image',ARRAY['media_approved']::text[],NULL,'masana',NULL,'teacher','public'),
     ('${humanImage}','tenant','published','image','Human image awaiting independent review',ARRAY['media_human']::text[],NULL,'human','member',NULL,'public');
   INSERT INTO masana.character_media VALUES
     ('tenant','teacher','media_approved','cover','private/teacher/approved.webp',
      'Verified licensed image','editor','A teacher at a desk with a book','reviewer',now());
   INSERT INTO feed.promotion_campaigns VALUES
     ('tenant','${campaign}','${paid}','active',2),
     ('tenant','57c63eb3-0f5e-4849-8670-2eb62c8406bf','${humanImage}','active',2),
     ('tenant','47c63eb3-0f5e-4849-8670-2eb62c8406bf','${hidden}','active',2);`);
  await db.query(`INSERT INTO feed.share_links VALUES($1,$2,$3,$4,NULL,'sharer')`,
   ['tenant',paid,campaign,createHash('sha256').update(token).digest('hex')]);
 });
 afterAll(async()=>db.close());

 it('shows approved editorial and funded human posts, never private content',async()=>{
  expect(await repository.find(masa)).toMatchObject({id:masa,name:'Ustazi'});
  expect(await repository.find(paid)).toMatchObject({id:paid,name:'Amina'});
  expect(await repository.find(hidden)).toBeNull();
  expect(await repository.find('not-an-id')).toBeNull();
 });
 it('offers only separately rights-cleared and alt-reviewed platform media',async()=>{
  expect(await repository.find(image)).toMatchObject({id:image,kind:'image',
   imagePreview:{id:'media_approved',altText:'A teacher at a desk with a book'}});
  expect(await repository.findApprovedImage(image,'media_approved')).toEqual({
   objectKey:'private/teacher/approved.webp'});
  expect(await repository.find(humanImage)).toMatchObject({id:humanImage,
   kind:'image',imageCount:1});
  expect(await repository.find(humanImage)).not.toHaveProperty('imagePreview');
  expect(await repository.findApprovedImage(humanImage,'media_human')).toBeNull();
  expect(await repository.findApprovedImage(image,'../../private')).toBeNull();
  await db.query('UPDATE masana.character_media SET status_alt_approved_at=NULL');
  expect(await repository.findApprovedImage(image,'media_approved')).toBeNull();
  expect(await repository.find(image)).not.toHaveProperty('imagePreview');
  await db.query('UPDATE masana.character_media SET status_alt_approved_at=now()');
  await db.query("UPDATE feed.posts SET state='hidden' WHERE id=$1",[image]);
  expect(await repository.findApprovedImage(image,'media_approved')).toBeNull();
  await db.query("UPDATE feed.posts SET state='published' WHERE id=$1",[image]);
 });
 it('hides human posts the instant budgets exhaust or profile moderation intervenes',async()=>{
  expect(await repository.validReferral(paid,token)).toBe(true);
  await db.query('UPDATE feed.promotion_campaigns SET remaining_views=0 WHERE post_id=$1',[paid]);
  expect(await repository.find(paid)).toBeNull();
  expect(await repository.validReferral(paid,token)).toBe(false);
  await db.query('UPDATE feed.promotion_campaigns SET remaining_views=1 WHERE post_id=$1',[paid]);
  await db.query("INSERT INTO talks.safety_enforcement VALUES('tenant','profile','member_valid','blocked')");
  expect(await repository.find(paid)).toBeNull();
  await db.query('DELETE FROM talks.safety_enforcement');
  expect(await repository.find(paid)).toMatchObject({id:paid});
 });
 it('denies public views and links throughout 72-hour disabled grace, then safely restores approved funding',async()=>{
  await db.query(`UPDATE feed.posts SET state='hidden',
    paid_disabled_at=statement_timestamp(),
    paid_purge_at=statement_timestamp()+interval '72 hours'
    WHERE id=$1`,[paid]);
  await db.query(`UPDATE feed.promotion_campaigns SET state='completed',
    remaining_views=0 WHERE post_id=$1`,[paid]);
  const disabled=await db.query(`SELECT state,
    EXTRACT(EPOCH FROM(paid_purge_at-paid_disabled_at))::int AS grace_seconds
    FROM feed.posts WHERE id=$1`,[paid]);
  expect(disabled.rows[0]).toMatchObject({state:'hidden',grace_seconds:259200});
  expect(await repository.find(paid)).toBeNull();
  expect(await repository.validReferral(paid,token)).toBe(false);

  // Only a separately approved, funded reboost can cancel the old deadline.
  await db.query(`UPDATE feed.promotion_campaigns SET state='active',
    remaining_views=1 WHERE post_id=$1`,[paid]);
  await db.query(`UPDATE feed.posts SET state='published',paid_disabled_at=NULL,
    paid_purge_at=NULL WHERE id=$1`,[paid]);
  expect(await repository.find(paid)).toMatchObject({id:paid});
  expect(await repository.validReferral(paid,token)).toBe(true);
  const restored=await db.query(`SELECT paid_disabled_at,paid_purge_at
    FROM feed.posts WHERE id=$1`,[paid]);
  expect(restored.rows[0]).toMatchObject({paid_disabled_at:null,paid_purge_at:null});
 });
 it('preserves only active original-sharer links, never forged or revoked tokens',async()=>{
  expect(await repository.validReferral(paid,token)).toBe(true);
  expect(await repository.validReferral(paid,'SomeOtherOpaqueForwardedToken12345')).toBe(false);
  expect(await repository.validReferral(paid,'<script>')).toBe(false);
  expect(await repository.validReferral(hidden,token)).toBe(false);
  await db.query('UPDATE feed.share_links SET revoked_at=now() WHERE post_id=$1',[paid]);
  expect(await repository.validReferral(paid,token)).toBe(false);
 });
 it('never advertises a suspended or frozen sharer as reward-eligible',async()=>{
  expect(await repository.validReferral(paid,token)).toBe(false);
  // The prior test permanently revoked this link; restore its original grant
  // only inside this isolated proof, then remove it again at completion.
  await db.query('UPDATE feed.share_links SET revoked_at=NULL WHERE post_id=$1',[paid]);
  expect(await repository.validReferral(paid,token)).toBe(true);
  await db.query("UPDATE identity.users SET state='disabled' WHERE user_id='sharer'");
  expect(await repository.validReferral(paid,token)).toBe(false);
  await db.query("UPDATE identity.users SET state='active' WHERE user_id='sharer'");
  await db.query("UPDATE gb_wallet.accounts SET frozen=true WHERE account_id='sharer'");
  expect(await repository.validReferral(paid,token)).toBe(false);
  await db.query("UPDATE gb_wallet.accounts SET frozen=false WHERE account_id='sharer'");
  expect(await repository.validReferral(paid,token)).toBe(true);
  await db.query('UPDATE feed.share_links SET revoked_at=now() WHERE post_id=$1',[paid]);
 });
 it('returns only a tombstone after purge and no arbitrary cross-tenant UUID',async()=>{
  await db.query("UPDATE feed.posts SET paid_purged_at=now(),state='removed',body='' WHERE id=$1",[paid]);
  expect(await repository.find(paid)).toEqual({id:paid,gone:true});
  expect(await repository.validReferral(paid,token)).toBe(false);
  await db.query("INSERT INTO feed.posts VALUES($1,'tenant-other','published','text','Other tenant',ARRAY[]::text[],NULL,'masana',NULL,'teacher','public')",[masa]);
  // A second tenant without an eligible author cannot leak into the preview.
  expect(await repository.find(masa)).toMatchObject({id:masa});
  await db.query("INSERT INTO identity.characters VALUES('tenant-other','teacher','active')");
  await db.query("INSERT INTO identity.character_ownership VALUES('tenant-other','teacher','platform')");
  await db.query('INSERT INTO masana.character_revisions VALUES($1,$2,$3,$4)',
    ['tenant-other','teacher','approved',JSON.stringify({displayName:'Other Teacher'})]);
  expect(await repository.find(masa)).toBeNull();
 });
});
