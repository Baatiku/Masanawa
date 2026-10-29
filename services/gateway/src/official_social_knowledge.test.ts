import {PGlite} from '@electric-sql/pglite';
import {readFile} from 'node:fs/promises';
import {createHash} from 'node:crypto';
import {expect,it} from 'vitest';
import {createOfficialKnowledgeReader} from './public_official_knowledge.js';
it('retrieves originals as dated statements with hash-bound IDs and removes withdrawn, changed or suspended evidence',async()=>{
 const db=new PGlite();try{
 await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA masana;
 CREATE TABLE identity.characters(tenant_id text,character_id text,active_character_version_id text,state text,PRIMARY KEY(tenant_id,character_id));
 CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text);
 INSERT INTO identity.characters VALUES('t','official','v1','active');INSERT INTO identity.character_ownership VALUES('t','official','platform');`);
 await db.exec(await readFile(new URL('../../../packages/masana/migrations/0011_public_official_dossiers.sql',import.meta.url),'utf8'));
 for(const name of ['0001_feed.sql','0017_official_social_sources.sql'])await db.exec(await readFile(new URL('../../../packages/feed/migrations/'+name,import.meta.url),'utf8'));
 await db.exec(`INSERT INTO masana.public_official_dossiers VALUES('t','official','v1','Example Official','Governor','NG','https://example.gov.ng/bio','reviewer',now(),now()+interval '7 days','approved');
 INSERT INTO masana.public_official_evidence(tenant_id,character_id,source_url,source_kind,title,content,content_sha256,source_date,valid_until,state,license_basis,reviewed_by)
 SELECT 't','official','https://example.gov.ng/'||kind,kind,'Reviewed record','Public biography',repeat('a',64),'2026-10-01',now()+interval '7 days','approved','Reviewed rights','reviewer' FROM unnest(ARRAY['grokipedia','official_record']) AS kind;
 INSERT INTO feed.official_social_sources(tenant_id,character_id,platform,account_id,handle,rights_basis,state,reviewed_by,review_expires_at) VALUES('t','official','x','123','official','Reviewed account rights','approved','reviewer',now()+interval '7 days');`);
 const text='Today I spoke about fuel subsidy policy.',sha=createHash('sha256').update(text).digest('hex');
 const source=(await db.query<{id:string}>('SELECT id FROM feed.official_social_sources')).rows[0]!.id;
 const post=(await db.query<{id:string}>(`INSERT INTO feed.posts(tenant_id,author_masana_id,kind,body,published_by,idempotency_key,source_provenance)
 VALUES('t','official','text',$1,'importer','original',$2::jsonb) RETURNING id`,[text,JSON.stringify({contentSha256:sha})])).rows[0]!.id;
 await db.query(`INSERT INTO feed.official_social_posts(source_id,external_id,tenant_id,post_id,content_sha256,original_published_at,source_url) VALUES($1,'42','t',$2,$3,now(),'https://x.com/official/status/42')`,[source,post,sha]);
 const reader=createOfficialKnowledgeReader(db as never,{includeSocial:true});
 const get=async()=>(await reader.read('t','official','v1','fuel subsidy'))!.evidence.filter(e=>e.kind==='official_social');
 expect((await get())[0]).toMatchObject({content:text,sourceUrl:'https://x.com/official/status/42'});expect((await get())[0]!.id).toContain(sha);
 await db.query(`UPDATE feed.posts SET body='Changed without original-source receipt' WHERE id=$1`,[post]);expect(await get()).toEqual([]);
 await db.query(`UPDATE feed.posts SET body=$2 WHERE id=$1`,[post,text]);await db.exec(`UPDATE feed.official_social_sources SET state='suspended'`);expect(await get()).toEqual([]);
 }finally{await db.close();}
},30000);
