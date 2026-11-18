import {randomUUID} from 'node:crypto';
import {PGlite} from '@electric-sql/pglite';
import {readFile} from 'node:fs/promises';
import {beforeAll,afterAll,it,expect} from 'vitest';
import {createMsnwCustodyService} from './custody_send.js';
const db=new PGlite(),owner={tenantId:'t',userId:'sender'};
const pool={async query(sql:string,v:unknown[]){const r=await db.query(sql,v);return {...r,rowCount:r.affectedRows||r.rows.length};},async connect(){return {...this,release(){}};}};
const service=createMsnwCustodyService(pool as never);
let original:string;
beforeAll(async()=>{
 await db.exec(`CREATE SCHEMA commerce;CREATE SCHEMA security;CREATE SCHEMA talks;CREATE SCHEMA identity;
 CREATE TABLE identity.users(tenant_id text,user_id text,state text);
 CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,display_name text,email text,phone text,masanawa_account_number text,PRIMARY KEY(tenant_id,user_id));
 CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text);
 CREATE TABLE talks.safety_preferences(tenant_id text,viewer_user_id text,subject_user_id text,blocked boolean);
 CREATE TABLE talks.safety_enforcement(tenant_id text,target_kind text,target_id text,visibility text);
 INSERT INTO identity.users VALUES('t','sender','active'),('t','recipient','active');
 INSERT INTO security.platform_user_profiles VALUES('t','sender','Sender',NULL,NULL,'8000000001'),('t','recipient','Recipient',NULL,NULL,'8000000002');`);
 await db.exec(await readFile(new URL('../../../../packages/commerce/migrations/0127_msnw_custody_send.sql',import.meta.url),'utf8'));
 await db.exec("INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES('t','sender',10000000),('t','recipient',0)");
},30000);
afterAll(async()=>db.close());
const request=(key:string,repeatOf?:string)=>({recipient:'8000000002',recipientUserId:'recipient',amountMicro:'1000000',idempotencyKey:key,...(repeatOf?{repeatOf}:{})});
it('warns from server receipts and blocks an unacknowledged fresh duplicate without debit',async()=>{
 original=(await service.send(owner,request('repeat-first-key-0001'))).operationId;
 expect(await service.preview(owner,'8000000002','1000000')).toMatchObject({recentTransfer:{operationId:original,state:'completed'}});
 await expect(service.send(owner,request('repeat-second-key-0002'))).rejects.toMatchObject({code:'msnw.repeat_confirmation_required',statusCode:409});
 expect((await service.balance(owner)).availableMicro).toBe('9000000');
 expect((await db.query('SELECT * FROM commerce.msnw_custody_operations')).rows).toHaveLength(1);
});
it('allows one explicitly reviewed repeat and keeps original-key replay safe',async()=>{
 const second=await service.send(owner,request('repeat-confirmed-key-0003',original));
 expect(second.operationId).not.toBe(original);
 expect((await service.send(owner,request('repeat-confirmed-key-0003',original))).operationId).toBe(second.operationId);
 await expect(service.send(owner,request('repeat-stale-ack-key-004',original))).rejects.toMatchObject({code:'msnw.repeat_confirmation_required'});
 expect((await service.balance(owner)).availableMicro).toBe('8000000');
});
it('different amounts do not inherit the matching-transfer warning',async()=>{
 expect(await service.preview(owner,'8000000002','2000000')).toMatchObject({recentTransfer:null});
});

it('uses the server five-minute boundary rather than the client clock',async()=>{
 for(const [micro,age,recent] of [['3000000','5 minutes',false],['500000','4 minutes 59 seconds',true]] as const){
  const id=randomUUID();await db.exec('BEGIN');
  await db.query("INSERT INTO commerce.msnw_custody_operations(operation_id,tenant_id,actor_user_id,recipient_user_id,kind,idempotency_key,amount_micro,created_at) VALUES($1,'t','sender','recipient','send',$2,$3,statement_timestamp()-$4::interval)",[id,'boundary-'+id,micro,age]);
  await db.query("INSERT INTO commerce.msnw_custody_entries(operation_id,entry_number,tenant_id,user_id,available_delta_micro) VALUES($1,1,'t','sender',-$2::numeric),($1,2,'t','recipient',$2::numeric)",[id,micro]);
  await db.query("UPDATE commerce.msnw_custody_accounts SET available_micro=available_micro+CASE WHEN user_id='sender' THEN -$1::numeric ELSE $1::numeric END WHERE tenant_id='t'",[micro]);
  await db.exec('COMMIT');
  expect((await service.preview(owner,'8000000002',micro)).recentTransfer!==null).toBe(recent);
 }
});
