import {PGlite} from '@electric-sql/pglite';
import {expect,it} from 'vitest';
import {officialSourceEligibility} from './author_scope.js';
it('revokes an imported post immediately for source, dossier, evidence and canonical-version changes',async()=>{
 const db=new PGlite();try{
 await db.exec(`CREATE SCHEMA feed;CREATE SCHEMA masana;CREATE SCHEMA identity;
 CREATE TABLE feed.posts(tenant_id text,id text,author_masana_id text,source_provenance jsonb);
 CREATE TABLE feed.official_social_posts(tenant_id text,post_id text,source_id text,withdrawn_at timestamptz);
 CREATE TABLE feed.official_social_sources(id text,tenant_id text,character_id text,state text,review_expires_at timestamptz);
 CREATE TABLE masana.public_official_dossiers(tenant_id text,character_id text,state text,review_expires_at timestamptz,character_version_id text);
 CREATE TABLE masana.public_official_evidence(tenant_id text,character_id text,state text,source_kind text,valid_until timestamptz);
 CREATE TABLE identity.characters(tenant_id text,character_id text,state text,active_character_version_id text);
 CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text);
 INSERT INTO feed.posts VALUES('t','p','official','{}');
 INSERT INTO feed.official_social_posts VALUES('t','p','s',NULL);
 INSERT INTO feed.official_social_sources VALUES('s','t','official','approved',now()+interval '1 day');
 INSERT INTO masana.public_official_dossiers VALUES('t','official','approved',now()+interval '1 day','v1');
 INSERT INTO masana.public_official_evidence VALUES('t','official','approved','grokipedia',now()+interval '1 day'),('t','official','approved','official_record',now()+interval '1 day');
 INSERT INTO identity.characters VALUES('t','official','active','v1');
 INSERT INTO identity.character_ownership VALUES('t','official','platform');`);
 const visible=async()=>Number((await db.query<{n:number}>(`SELECT count(*)::int AS n FROM feed.posts p WHERE ${officialSourceEligibility}`)).rows[0]!.n);
 expect(await visible()).toBe(1);
 for(const mutation of [
  `UPDATE feed.official_social_sources SET state='suspended'`,
  `UPDATE feed.official_social_sources SET review_expires_at=now()-interval '1 second'`,
  `UPDATE masana.public_official_dossiers SET state='suspended'`,
  `UPDATE masana.public_official_dossiers SET review_expires_at=now()-interval '1 second'`,
  `UPDATE masana.public_official_evidence SET valid_until=now()-interval '1 second' WHERE source_kind='grokipedia'`,
  `UPDATE identity.characters SET active_character_version_id='v2'`,
  `UPDATE identity.character_ownership SET kind='customer'`,
  `UPDATE feed.official_social_posts SET withdrawn_at=now()`,
  `UPDATE feed.official_social_sources SET tenant_id='another'`,
 ]){await db.exec('BEGIN');await db.exec(mutation);expect(await visible(),mutation).toBe(0);await db.exec('ROLLBACK');}
 }finally{await db.close();}
},30000);
