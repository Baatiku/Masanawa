import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import {PgPublicStatusLanding} from './public_landing.js';

const masa='27c63eb3-0f5e-4849-8670-2eb62c8406bf';
const paid='87c63eb3-0f5e-4849-8670-2eb62c8406bf';
const hidden='97c63eb3-0f5e-4849-8670-2eb62c8406bf';

describe('public Status unfurls only approved globally public funded content',()=>{
 const db=new PGlite();
 const repository=new PgPublicStatusLanding({query:async(sql,params)=>{
   const result=await db.query(sql,params as (string|number|null)[]);
   return {rows:result.rows as Record<string,unknown>[]};
 }});
 beforeAll(async()=>{
  await db.exec(`CREATE SCHEMA feed; CREATE SCHEMA identity;
   CREATE SCHEMA talks; CREATE SCHEMA masana;
   CREATE TABLE feed.posts(id uuid,tenant_id text,state text,kind text,
    body text,media_ids text[],paid_purged_at timestamptz,
    author_type text,author_user_id text,author_masana_id text,audience text);
   CREATE TABLE feed.promotion_campaigns(tenant_id text,post_id uuid,state text,remaining_views int);
   CREATE TABLE identity.users(tenant_id text,user_id text,state text);
   CREATE TABLE identity.characters(tenant_id text,character_id text,state text);
   CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text);
   CREATE TABLE masana.character_revisions(tenant_id text,character_id text,state text,profile jsonb);
   CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,display_name text);
   CREATE TABLE talks.safety_enforcement(tenant_id text,target_kind text,target_id text,visibility text);
   INSERT INTO identity.users VALUES('tenant','member','active');
   INSERT INTO talks.public_profiles VALUES('tenant','member','member_valid','Amina');
   INSERT INTO identity.characters VALUES('tenant','teacher','active');
   INSERT INTO identity.character_ownership VALUES('tenant','teacher','platform');
   INSERT INTO masana.character_revisions VALUES('tenant','teacher','approved','{"displayName":"Ustazi"}');
   INSERT INTO feed.posts VALUES
     ('${masa}','tenant','published','text','Approved public lesson',ARRAY[]::text[],NULL,'masana',NULL,'teacher','public'),
     ('${paid}','tenant','published','text','Funded human lesson',ARRAY[]::text[],NULL,'human','member',NULL,'public'),
     ('${hidden}','tenant','published','text','Private draft',ARRAY[]::text[],NULL,'human','member',NULL,'private');
   INSERT INTO feed.promotion_campaigns VALUES
     ('tenant','${paid}','active',2),('tenant','${hidden}','active',2);`);
 });
 afterAll(async()=>db.close());

 it('shows approved editorial and funded human posts, never private content',async()=>{
  expect(await repository.find(masa)).toMatchObject({id:masa,name:'Ustazi'});
  expect(await repository.find(paid)).toMatchObject({id:paid,name:'Amina'});
  expect(await repository.find(hidden)).toBeNull();
  expect(await repository.find('not-an-id')).toBeNull();
 });
 it('hides human posts the instant budgets exhaust or profile moderation intervenes',async()=>{
  await db.query('UPDATE feed.promotion_campaigns SET remaining_views=0 WHERE post_id=$1',[paid]);
  expect(await repository.find(paid)).toBeNull();
  await db.query('UPDATE feed.promotion_campaigns SET remaining_views=1 WHERE post_id=$1',[paid]);
  await db.query("INSERT INTO talks.safety_enforcement VALUES('tenant','profile','member_valid','blocked')");
  expect(await repository.find(paid)).toBeNull();
  await db.query('DELETE FROM talks.safety_enforcement');
  expect(await repository.find(paid)).toMatchObject({id:paid});
 });
 it('returns only a tombstone after purge and no arbitrary cross-tenant UUID',async()=>{
  await db.query("UPDATE feed.posts SET paid_purged_at=now(),state='removed',body='' WHERE id=$1",[paid]);
  expect(await repository.find(paid)).toEqual({id:paid,gone:true});
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
