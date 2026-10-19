import {PGlite} from '@electric-sql/pglite';
import {expect,it} from 'vitest';
import {createPgMasanaCreatorDirectory} from './public_directory.js';
it('links only active, published, same-tenant creators with a real public profile',async()=>{
 const db=new PGlite();
 try{
  await db.exec(`CREATE SCHEMA creator;CREATE SCHEMA identity;CREATE SCHEMA talks;
   CREATE TABLE creator.agents(tenant_id text,character_id text,owner_user_id text,state text);
   CREATE TABLE identity.characters(tenant_id text,character_id text,state text);
   CREATE TABLE identity.character_ownership(tenant_id text,character_id text,owner_user_id text,kind text);
   CREATE TABLE identity.users(tenant_id text,user_id text,state text);
   CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,display_name text);
   INSERT INTO creator.agents VALUES('a','character_one','owner','published'),('a','character_draft','owner','draft');
   INSERT INTO identity.characters VALUES('a','character_one','active'),('a','character_draft','active');
   INSERT INTO identity.character_ownership VALUES('a','character_one','owner','creator-agent'),('a','character_draft','owner','creator-agent');
   INSERT INTO identity.users VALUES('a','owner','active');
   INSERT INTO talks.public_profiles VALUES('a','owner','amina','Amina Bello');`);
  const reader=createPgMasanaCreatorDirectory({query:async(sql,params)=>db.query(sql,params)});
  const input={tenantId:'a',characterIds:['character_one','character_draft']} as never;
  expect([...await reader.read(input)]).toEqual([['character_one',{handle:'amina',displayName:'Amina Bello'}]]);
  expect((await reader.read({tenantId:'b',characterIds:['character_one']} as never)).size).toBe(0);
  await db.exec("UPDATE identity.users SET state='disabled'");
  expect((await reader.read(input)).size).toBe(0);
  await db.exec("UPDATE identity.users SET state='active';DELETE FROM talks.public_profiles");
  expect((await reader.read(input)).size).toBe(0);
 }finally{await db.close();}
},30000);
