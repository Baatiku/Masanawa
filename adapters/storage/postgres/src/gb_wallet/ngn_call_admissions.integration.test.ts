import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {Pool,type PoolClient} from 'pg';
import {afterAll,beforeAll,describe,expect,it} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {createNgnCallAdmissions} from './ngn_call_admissions.js';

// Embedded PostgreSQL executes actual production SQL, with serialized sessions.
// Supplying a disposable PG URL exercises actual independent connections.
const url=process.env.MASANAWA_TEST_DATABASE_URL;
describe('NGN call accounting on production SQL',()=>{
 let pool:Pool,db:PGlite|undefined,admin:Pool|undefined,dbName:string|undefined;
 beforeAll(async()=>{
  if(url){
   const parsed=new URL(url);if(!['localhost','127.0.0.1'].includes(parsed.hostname))throw Error('Disposable local PostgreSQL required');
   admin=new Pool({connectionString:url});dbName='ngn_call_'+Date.now();await admin.query('CREATE DATABASE "'+dbName+'"');parsed.pathname='/'+dbName;pool=new Pool({connectionString:parsed.toString()});
  }else{
   db=new PGlite();let tail=Promise.resolve();
   pool={query:(sql:string,p:unknown[]=[])=>db!.query(sql,p),connect:async()=>{const old=tail;let release!:()=>void;tail=new Promise<void>(r=>{release=r});await old;return {query:(sql:string,p:unknown[]=[])=>db!.query(sql,p),release} as unknown as PoolClient;}} as unknown as Pool;
  }
  for(const file of ['0200_gb_wallet_foundation.sql','0205_ngn_funding_wallet.sql','0212_direct_ngn_spending.sql'])await pool.query(await readFile(new URL('../../../../../packages/commerce/migrations/'+file,import.meta.url),'utf8'));
 },30000);
 afterAll(async()=>{if(db)await db.close();else await pool?.end();if(admin){await admin.query('DROP DATABASE IF EXISTS "'+dbName+'"');await admin.end();}});
 async function fixture(){
  const actor={tenantId:createCanonicalId('tenant'),userId:createCanonicalId('user')};
  await pool.query('INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id,balance_kobo) VALUES($1,$2,10000)',[actor.tenantId,actor.userId]);
  let time=Date.now();const repo=createNgnCallAdmissions(pool,()=>new Date(time));
  return {actor,repo,args:{characterId:createCanonicalId('character'),budgetKobo:3000,idempotencyKey:'original_ngn_call'},advance:(ms:number)=>{time+=ms},balance:async()=>{const r=await pool.query('SELECT balance_kobo::int AS balance,held_kobo::int AS held FROM gb_wallet.ngn_accounts WHERE tenant_id=$1 AND account_id=$2',[actor.tenantId,actor.userId]);return r.rows[0];}};
 }
 it('holds once, charges 100 kobo per started connected second, and replays the same settlement',async()=>{
  const f=await fixture(),row=await f.repo.admit(f.actor,f.args);
  expect((await f.repo.admit(f.actor,f.args)).admissionId).toBe(row.admissionId);expect(await f.balance()).toEqual({balance:10000,held:3000});
  await f.repo.claimConnection(f.actor,row.admissionId,f.args.characterId,'lease_one');f.advance(10000);
  await f.repo.connected(f.actor,row.admissionId,'lease_one');f.advance(1001);await f.repo.disconnect(f.actor,row.admissionId,'lease_one');
  expect(await f.repo.finish(f.actor,row.admissionId)).toMatchObject({currency:'NGN',verifiedConnectedMs:1001,chargedKobo:200,state:'completed'});
  expect(await f.repo.finish(f.actor,row.admissionId)).toMatchObject({chargedKobo:200});expect(await f.balance()).toEqual({balance:9800,held:0});
 });
 it('ringing and failed setup release the entire hold with zero charge',async()=>{
  const f=await fixture(),row=await f.repo.admit(f.actor,f.args);await f.repo.claimConnection(f.actor,row.admissionId,f.args.characterId,'lease_two');f.advance(8000);await f.repo.disconnect(f.actor,row.admissionId,'lease_two');
  expect(await f.repo.finish(f.actor,row.admissionId)).toMatchObject({chargedKobo:0,state:'failed'});expect(await f.balance()).toEqual({balance:10000,held:0});
 });
 it('excludes reconnect downtime and rejects another owner and changed consent',async()=>{
  const f=await fixture(),row=await f.repo.admit(f.actor,f.args);
  await expect(f.repo.admit(f.actor,{...f.args,budgetKobo:3100})).rejects.toThrow('idempotency_conflict');expect(await f.repo.read({...f.actor,userId:'other'},row.admissionId)).toBeNull();
  await f.repo.claimConnection(f.actor,row.admissionId,f.args.characterId,'lease_a');await f.repo.connected(f.actor,row.admissionId,'lease_a');f.advance(1000);await f.repo.disconnect(f.actor,row.admissionId,'lease_a');
  f.advance(10000);await f.repo.claimConnection(f.actor,row.admissionId,f.args.characterId,'lease_b');await f.repo.connected(f.actor,row.admissionId,'lease_b');f.advance(2000);await f.repo.disconnect(f.actor,row.admissionId,'lease_b');
  expect(await f.repo.finish(f.actor,row.admissionId)).toMatchObject({verifiedConnectedMs:3000,chargedKobo:300});
 });
 it('expired leases recover only persisted proof and release remaining money',async()=>{
  const f=await fixture(),row=await f.repo.admit(f.actor,f.args);await f.repo.claimConnection(f.actor,row.admissionId,f.args.characterId,'lease_a');await f.repo.connected(f.actor,row.admissionId,'lease_a');f.advance(1500);await f.repo.checkpoint(f.actor,row.admissionId,'lease_a');f.advance(20000);
  expect((await f.repo.recover()).find(r=>r.admissionId===row.admissionId)).toMatchObject({chargedKobo:200});expect(await f.balance()).toEqual({balance:9800,held:0});
 });
});
