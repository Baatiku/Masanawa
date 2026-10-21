import {PGlite} from '@electric-sql/pglite';
import {beforeAll,afterAll,it,expect} from 'vitest';
import {createMsnwCustodyService} from './custody_send.js';
const db=new PGlite();
const service=createMsnwCustodyService({async query(sql:string,values:unknown[]){const r=await db.query(sql,values);return{...r,rowCount:r.rows.length};}} as any);
beforeAll(async()=>{await db.exec(`CREATE SCHEMA security;CREATE SCHEMA talks;CREATE SCHEMA identity;
CREATE TABLE identity.users(tenant_id text,user_id text,state text);
INSERT INTO identity.users VALUES('t','sender','active'),('t','receiver','active');
CREATE TABLE talks.safety_preferences(tenant_id text,viewer_user_id text,subject_user_id text,blocked boolean);
CREATE TABLE talks.safety_enforcement(tenant_id text,target_kind text,target_id text,visibility text);
CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,display_name text,email text,phone text,masanawa_account_number text);
CREATE TABLE talks.public_profiles(tenant_id text,user_id text,handle text);
INSERT INTO security.platform_user_profiles VALUES('t','receiver','Recipient','recipient@example.invalid','+12025550123','8000000002');
INSERT INTO talks.public_profiles VALUES('t','receiver','recipient');`);},30000);
afterAll(async()=>db.close());
for(const input of ['8000000002','8000 000 002','@Recipient','recipient@example.invalid','+12025550123'])it(`resolves ${input} through the existing custody inquiry`,async()=>{
 expect(await service.lookupRecipient({tenantId:'t',userId:'sender'},input)).toMatchObject({userId:'receiver',displayName:'Recipient',accountNumber:'8000000002',handle:'recipient'});
});
it('rejects malformed numbers and isolates a different tenant',async()=>{
 await expect(service.lookupRecipient({tenantId:'t',userId:'sender'},'7000000002')).rejects.toMatchObject({code:'msnw.recipient_invalid'});
 await expect(service.lookupRecipient({tenantId:'other',userId:'sender'},'8000000002')).rejects.toMatchObject({code:'msnw.recipient_not_found'});
});
