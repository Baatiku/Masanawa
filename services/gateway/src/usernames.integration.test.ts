import {createHash} from 'node:crypto';
import {PGlite} from '@electric-sql/pglite';
import {readFile} from 'node:fs/promises';
import {afterAll,beforeAll,expect,it} from 'vitest';
import Fastify from 'fastify';
import {allocateReadableUsername,backfillReadableUsernames} from '../../../adapters/storage/postgres/src/security/usernames.js';
import {createGbRecipientDirectory,recipientSearchTerm} from './gb_wallet/recipient_directory.js';
import {createUsernameStore,registerUsernameRoutes} from './usernames.js';
const oldHandle='zainabbala_'+createHash('sha256').update('t:legacy:0').digest('hex').slice(0,16);
const db=new PGlite();
const pool={query:(sql:string,args?:unknown[])=>db.query(sql,args)};
const actor={tenantId:'t',userId:'sender'};
const directory=createGbRecipientDirectory(pool as never),store=createUsernameStore(pool as never);
async function user(id:string,name='Zainab Bala',tenant='t',handle?:string){
 await db.query('INSERT INTO identity.users VALUES($1,$2,\'active\')',[tenant,id]);
 await db.query(`INSERT INTO security.platform_user_profiles VALUES($1,$2,$3,'Zainab','Bala',
  '+2348031236428',NULL,$4,now())`,[tenant,id,name,id+'@example.com']);
 if(handle)await db.query(`INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name)
  VALUES($1,$2,$3,$4)`,[tenant,id,handle,name]);
}
async function allocate(id:string){
 await db.exec('BEGIN');try{
 const value=await allocateReadableUsername(pool as never,{tenantId:'t',userId:id,name:'Zainab Bala'});
 await db.exec('COMMIT');return value;
 }catch(error){await db.exec('ROLLBACK');throw error;}
}
beforeAll(async()=>{
 await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA security;CREATE SCHEMA talks;
 CREATE TABLE identity.users(tenant_id text,user_id text,state text,PRIMARY KEY(tenant_id,user_id));
 CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,display_name text,
 first_name text,last_name text,contact_phone text,phone text,email text,created_at timestamptz);
 CREATE TABLE security.platform_account_controls(tenant_id text,user_id text,state text,until_at timestamptz);
 CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text,display_name text,
 bio text DEFAULT '',avatar_url text,talks_json jsonb DEFAULT '[]',updated_at timestamptz DEFAULT now(),
 PRIMARY KEY(tenant_id,user_id),UNIQUE(tenant_id,handle));
 CREATE TABLE talks.safety_preferences(tenant_id text,viewer_user_id text,subject_user_id text,blocked boolean);
 CREATE TABLE talks.safety_enforcement(tenant_id text,target_kind text,target_id text,revision integer,
 visibility text,reason_code text,updated_at timestamptz,PRIMARY KEY(tenant_id,target_kind,target_id));
 CREATE TABLE talks.persona_profiles(tenant_id text,owner_handle text);
 CREATE TABLE talks.human_invitations(tenant_id text,invitee_user_id text,invitee_handle text);`);
 await user('legacy','Zainab Bala','t',oldHandle);
 await db.exec(await readFile(new URL('../../../packages/talks/migrations/0018_username_claims.sql',import.meta.url),'utf8'));
 await user('sender','Sender User','t','sender');
},30000);
afterAll(()=>db.close());
it('migrates old generated names and follows the approved suffix sequence; chosen handles survive',async()=>{
 expect(await allocate('legacy')).toBe('zainab');
 for(const [id,expected] of [['two','zainab.bala'],['three','zainab.bala28'],['four','zainab.bala428'],['five','zainab.bala6428']]){
  await user(id!);expect(await allocate(id!)).toBe(expected);
 }
 await user('six');await expect(allocate('six')).rejects.toThrow('username.choice_required');
 await user('chosen','Zainab Bala','t','my.name');expect(await allocate('chosen')).toBe('my.name');
 expect(await store.available(actor,oldHandle)).toBe(false);
});
it('keeps old names reserved, rejects stale edits, moves moderation and canonical references',async()=>{
 const owner={tenantId:'t',userId:'legacy'};
 await db.exec(`INSERT INTO talks.safety_enforcement VALUES('t','profile','zainab',1,'blocked','abuse',now());
 INSERT INTO talks.persona_profiles VALUES('t','zainab');
 INSERT INTO talks.human_invitations VALUES('t','legacy','zainab');`);
 expect(await store.update(owner,'zainab.clean','zainab')).toBe('zainab.clean');
 expect(await store.available(actor,'zainab')).toBe(false);
 await expect(store.update(actor,'zainab','sender')).rejects.toMatchObject({status:409});
 await expect(store.update(owner,'another.name','zainab')).rejects.toMatchObject({code:'username_changed'});
 expect((await db.query('SELECT owner_handle FROM talks.persona_profiles')).rows).toEqual([{owner_handle:'zainab.clean'}]);
 expect((await db.query('SELECT invitee_handle FROM talks.human_invitations')).rows).toEqual([{invitee_handle:'zainab.clean'}]);
 expect((await db.query('SELECT target_id,visibility FROM talks.safety_enforcement')).rows).toEqual([{target_id:'zainab.clean',visibility:'blocked'}]);
 await db.exec(`UPDATE talks.safety_enforcement SET target_id='zainab',revision=3`);
 expect((await db.query('SELECT target_id FROM talks.safety_enforcement')).rows).toEqual([{target_id:'zainab.clean'}]);
 expect(await directory.resolve(actor,'zainab.clean')).toBeNull();
});
it('searches name/handle prefixes and exact private contacts only, honoring tenant, self, blocks and restrictions',async()=>{
 await user('find','Amina Yusuf','t','amina');await user('foreign','Amina Yusuf','other','amina');
 expect(await directory.search(actor,'Ami')).toMatchObject([{userId:'find',username:'amina',displayName:'Amina Yusuf'}]);
 expect(await directory.search(actor,'find@example.com')).toMatchObject([{userId:'find'}]);
 expect(await directory.search(actor,'find@exam')).toEqual([]);
 const longEmail='a'.repeat(60)+'@'+'b'.repeat(60)+'.'+'c'.repeat(60)+'.com';
 await user('long','Long Person','t','long.person');
 await db.query('UPDATE security.platform_user_profiles SET email=$1 WHERE user_id=$2',[longEmail,'long']);
 expect(await directory.search(actor,longEmail)).toMatchObject([{userId:'long'}]);
 expect(await directory.search(actor,'0803')).toEqual([]);
 expect((await directory.search(actor,'08031236428')).some(x=>x.userId==='find')).toBe(true);
 expect(await directory.search(actor,'send')).toEqual([]);
 expect(await directory.search(actor,'ami%')).toEqual([]);
 const result=await directory.search(actor,'find@example.com');
 expect(JSON.stringify(result)).not.toContain('example.com');expect(JSON.stringify(result)).not.toContain('234803');
 await db.exec(`INSERT INTO talks.safety_preferences VALUES('t','find','sender',true)`);
 expect(await directory.search(actor,'ami')).toEqual([]);
 await db.exec(`DELETE FROM talks.safety_preferences;INSERT INTO security.platform_account_controls VALUES('t','find','suspended',NULL)`);
 expect(await directory.search(actor,'ami')).toEqual([]);
 await db.exec(`DELETE FROM security.platform_account_controls;UPDATE identity.users SET state='disabled' WHERE tenant_id='t' AND user_id='find'`);
 expect(await directory.search(actor,'ami')).toEqual([]);
 expect(recipientSearchTerm('+44 7911 123456')?.kind).toBe('phone');
});
it('serves fresh authenticated username edits and availability with expected-version protection',async()=>{
 const app=Fastify();registerUsernameRoutes(app,{...store,authorize:async header=>{
  if(header!=='Bearer current')throw Object.assign(new Error(),{statusCode:401});return actor;
 }});const headers={authorization:'Bearer current'};
 try{
 expect((await app.inject({url:'/v1/account/username'})).statusCode).toBe(401);
 const read=await app.inject({url:'/v1/account/username',headers});expect(read.json()).toEqual({username:'sender'});
 expect(read.headers['cache-control']).toBe('no-store');
 expect((await app.inject({url:'/v1/account/username/availability?username=admin',headers})).statusCode).toBe(422);
 expect((await app.inject({url:'/v1/account/username/availability?username=nice.name',headers})).json()).toEqual({username:'nice.name',available:true});
 const write=await app.inject({method:'PATCH',url:'/v1/account/username',headers,payload:{username:'nice.name',expectedUsername:'sender'}});
 expect(write.statusCode).toBe(200);expect(write.json()).toEqual({username:'nice.name'});
 expect((await app.inject({method:'PATCH',url:'/v1/account/username',headers,payload:{username:'different',expectedUsername:'sender'}})).statusCode).toBe(409);
 expect((await app.inject({method:'PATCH',url:'/v1/account/username',headers,payload:{username:'different',expectedUsername:'nice.name',userId:'foreign'}})).statusCode).toBe(422);
 }finally{await app.close();}
});

it('repairs every page, preserves deliberate hash-shaped handles and is restart safe',async()=>{
 await user('batch.a','Zainab Bala','batch');await user('batch.b','Zainab Bala','batch');
 await user('batch.c','Zainab Bala','batch','zainab_0123456789abcdef');
 // Mimic the migration classification; allocator must verify original hash provenance.
 await db.exec("UPDATE talks.public_profiles SET username_generated=true WHERE user_id='batch.c'");
 const pg={...pool,connect:async()=>({...pool,release(){}})};
 const first=await backfillReadableUsernames(pg as never,1);
 expect(first.scanned).toBeGreaterThanOrEqual(3);
 expect((await db.query("SELECT handle FROM talks.public_profiles WHERE user_id='batch.c'")).rows).toEqual([{handle:'zainab_0123456789abcdef'}]);
 expect((await db.query("SELECT handle FROM talks.public_profiles WHERE user_id='batch.b'")).rows).toEqual([{handle:'zainab.bala'}]);
 const second=await backfillReadableUsernames(pg as never,1);
 expect(second.assigned).toBe(0);expect(second.choiceRequired).toBeGreaterThanOrEqual(1);
});
