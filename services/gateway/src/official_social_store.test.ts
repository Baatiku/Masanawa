import {PGlite} from '@electric-sql/pglite';
import {readFile} from 'node:fs/promises';
import {expect,it} from 'vitest';
import {createHash} from 'node:crypto';
import {createOfficialSocialSync} from './official_social_store.js';
it('imports exact original Status, deduplicates, records source edits and never resurrects withdrawn posts',async()=>{
 const db=new PGlite();try{
 await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA masana;CREATE SCHEMA feed;
 CREATE TABLE identity.characters(tenant_id text,character_id text,state text,active_character_version_id text);
 CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text);
 CREATE TABLE masana.public_official_dossiers(tenant_id text,character_id text,character_version_id text,state text,review_expires_at timestamptz);
 CREATE TABLE masana.character_revisions(tenant_id text,character_id text,state text);
 INSERT INTO identity.characters VALUES('t','official','active','v1');
 INSERT INTO identity.character_ownership VALUES('t','official','platform');
 INSERT INTO masana.public_official_dossiers VALUES('t','official','v1','approved',now()+interval '1 day');
 INSERT INTO masana.character_revisions VALUES('t','official','approved');`);
 await db.exec(await readFile(new URL('../../../packages/feed/migrations/0001_feed.sql',import.meta.url),'utf8'));
 await db.exec(await readFile(new URL('../../../packages/feed/migrations/0017_official_social_sources.sql',import.meta.url),'utf8'));
 await db.exec(await readFile(new URL('../../../packages/feed/migrations/0022_official_social_reconciliation.sql',import.meta.url),'utf8'));
 await db.exec(`INSERT INTO feed.official_social_sources(tenant_id,character_id,platform,account_id,handle,rights_basis,state,reviewed_by,review_expires_at)
 VALUES('t','official','x','123','official','Reviewed permission','approved','reviewer',now()+interval '1 day')`);
 const pg={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};
 let text='Exact original\nNo rewriting 🇳🇬';
 const sync=createOfficialSocialSync(pg as never,async()=>({posts:[{platform:'x',accountId:'123',externalId:'42',originalText:text,
  publishedAt:'2026-10-01T00:00:00Z',sourceUrl:'https://x.com/official/status/42',contentSha256:createHash('sha256').update(text).digest('hex')}]}));
 const due=()=>db.exec(`UPDATE feed.official_social_sources SET next_sync_at=now()-interval '1 minute'`);
 await sync.runOnce();await due();await sync.runOnce();
 expect((await db.query('SELECT body FROM feed.posts')).rows).toEqual([{body:text}]);
 expect((await db.query('SELECT count(*)::int AS n FROM feed.official_social_revisions')).rows).toEqual([{n:1}]);
 text='Actual edited original';await due();await sync.runOnce();
 expect((await db.query('SELECT body FROM feed.posts')).rows).toEqual([{body:text}]);
 expect((await db.query('SELECT revision FROM feed.official_social_posts')).rows).toEqual([{revision:2}]);
 const source=(await db.query<{id:string}>('SELECT id FROM feed.official_social_sources')).rows[0]!;
 await sync.withdraw(source.id,'42');await due();await sync.runOnce();
 expect((await db.query('SELECT body,state FROM feed.posts')).rows).toEqual([{body:'',state:'removed'}]);
 await db.exec(`UPDATE masana.public_official_dossiers SET state='suspended'`);await due();
 text='New version after suspended identity';expect(await sync.runOnce()).toEqual({imported:0});
 }finally{await db.close();}
},30000);
