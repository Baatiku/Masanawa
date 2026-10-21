import {PGlite} from '@electric-sql/pglite';
import {it,expect} from 'vitest';
import {PgStatusEligibility} from './eligibility.js';
it('creator eligibility requires matching active owner, published persona and approved identity',async()=>{
 const db=new PGlite();try{
 await db.exec(`CREATE SCHEMA creator;CREATE SCHEMA identity;CREATE SCHEMA masana;
 CREATE TABLE creator.agents(tenant_id text,character_id text,owner_user_id text,state text);
 CREATE TABLE identity.users(tenant_id text,user_id text,state text);
 CREATE TABLE identity.characters(tenant_id text,character_id text,state text);
 CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text,owner_user_id text);
 CREATE TABLE masana.character_revisions(tenant_id text,character_id text,state text);
 INSERT INTO creator.agents VALUES('t','c','owner','published');INSERT INTO identity.users VALUES('t','owner','active');
 INSERT INTO identity.characters VALUES('t','c','active');INSERT INTO identity.character_ownership VALUES('t','c','creator-agent','owner');
 INSERT INTO masana.character_revisions VALUES('t','c','approved');`);
 const selector=new PgStatusEligibility({query:(sql:string,v:unknown[])=>db.query(sql,v)} as never);
 expect(await selector.author('t','c')).toBe(true);expect(await selector.author('other','c')).toBe(false);
 for(const sql of ["UPDATE creator.agents SET state='paused'","UPDATE identity.users SET state='disabled'","UPDATE identity.character_ownership SET owner_user_id='different'","UPDATE identity.characters SET state='disabled'","UPDATE masana.character_revisions SET state='draft'"]){
  await db.exec('BEGIN');await db.exec(sql);expect(await selector.author('t','c')).toBe(false);await db.exec('ROLLBACK');
 }
 }finally{await db.close();}
},30000);
