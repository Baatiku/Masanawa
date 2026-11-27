import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {createPostgresPool,runMigrations,platformProductMigrationRoots,type Pool} from '@masanawa/postgres';
import {createCustomerGeminiVault} from './customer_gemini_vault.js';

const url=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!url)('customer Gemini credential custody on PostgreSQL',()=>{
 let pool:Pool;
 const tenantId=createCanonicalId('tenant'),otherTenant=createCanonicalId('tenant');
 const actor={tenantId,userId:createCanonicalId('user')};
 const other={tenantId,userId:createCanonicalId('user')};
 const separate={tenantId:otherTenant,userId:createCanonicalId('user')};
 const key='fixture-only-owner-gemini-secret-0001',replacement='fixture-only-owner-gemini-secret-0002';
 const ok=async()=>Response.json({candidates:[{}]});
 const vault=(fetchImpl:typeof fetch=ok)=>createCustomerGeminiVault({pool,master:Buffer.alloc(32,13),model:'gemini-test',fetchImpl});
 const allowRetry=()=>pool.query("UPDATE security.customer_gemini_credentials SET last_attempt_at=clock_timestamp()-interval '31 seconds' WHERE tenant_id=$1 AND user_id=$2",[actor.tenantId,actor.userId]);
 beforeAll(async()=>{
  pool=createPostgresPool({connectionString:url!,applicationName:'customer-gemini-vault-test'});
  await runMigrations(pool,platformProductMigrationRoots());
  for(const t of [tenantId,otherTenant])await pool.query('INSERT INTO identity.tenants(tenant_id,created_at,updated_at) VALUES($1,now(),now())',[t]);
  for(const a of [actor,other,separate])await pool.query('INSERT INTO identity.users(tenant_id,user_id,created_at,updated_at) VALUES($1,$2,now(),now())',[a.tenantId,a.userId]);
 },120000);
 afterAll(async()=>{await pool?.end();});
 it('stores only sealed credentials, isolates owners, rejects incomplete rows and preserves valid keys on failed replacement',async()=>{
  const v=vault();
  expect(await v.status(actor)).toEqual({configured:false,suffix:null,verifiedAt:null});
  expect((await v.save(actor,key)).suffix).toBe('0001');
  const row=(await pool.query('SELECT ciphertext,nonce,tag FROM security.customer_gemini_credentials WHERE tenant_id=$1 AND user_id=$2',[actor.tenantId,actor.userId])).rows[0]!;
  expect(row.ciphertext.includes(Buffer.from(key))).toBe(false);
  expect(row.nonce.length).toBe(12);expect(row.tag.length).toBe(16);
  expect((await v.resolve(actor))?.use(s=>s)).toBe(key);
  for(const a of [other,separate]){expect(await v.resolve(a)).toBeNull();expect((await v.status(a)).configured).toBe(false);}
  await expect(pool.query('UPDATE security.customer_gemini_credentials SET nonce=NULL WHERE tenant_id=$1 AND user_id=$2',[actor.tenantId,actor.userId])).rejects.toMatchObject({code:'23514'});
  await expect(v.save(actor,replacement)).rejects.toThrow('gemini_key_retry_later');
  await allowRetry();
  await expect(vault(async()=>new Response(null,{status:403})).save(actor,replacement)).rejects.toThrow('gemini_key_rejected');
  expect((await v.resolve(actor))?.use(s=>s)).toBe(key);
  await allowRetry();
  await v.save(actor,replacement);
  expect((await v.resolve(actor))?.use(s=>s)).toBe(replacement);
 },30000);
 it('fences a pending enrollment on removal and rejects simultaneous enrollment',async()=>{
  await allowRetry();
  let entered!:()=>void,finish!:(r:Response)=>void;
  const started=new Promise<void>(resolve=>{entered=resolve;});
  const held=new Promise<Response>(resolve=>{finish=resolve;});
  const v=vault(async()=>{entered();return held;});
  const pending=v.save(actor,key);
  const rejected=expect(pending).rejects.toThrow('gemini_key_changed');
  await started;
  try{
   await expect(vault().save(actor,replacement)).rejects.toThrow('gemini_key_retry_later');
   expect((await v.remove(actor)).configured).toBe(false);
  }finally{finish(Response.json({candidates:[{}]}));}
  await rejected;
  expect(await v.resolve(actor)).toBeNull();
 },30000);
 it('clears credentials on account disablement and blocks disabled accounts from enrolling',async()=>{
  const v=vault();
  await v.save(other,key);
  expect((await v.resolve(other))?.use(s=>s)).toBe(key);
  await pool.query("UPDATE identity.users SET state='disabled' WHERE tenant_id=$1 AND user_id=$2",[other.tenantId,other.userId]);
  expect(await v.resolve(other)).toBeNull();
  expect((await v.status(other)).configured).toBe(false);
  expect((await pool.query('SELECT 1 FROM security.customer_gemini_credentials WHERE tenant_id=$1 AND user_id=$2',[other.tenantId,other.userId])).rowCount).toBe(0);
  await expect(v.save(other,replacement)).rejects.toThrow('inactive_account');
 },30000);

});
