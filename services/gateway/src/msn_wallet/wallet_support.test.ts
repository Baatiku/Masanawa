import {readFileSync} from 'node:fs';
import {PGlite} from '@electric-sql/pglite';
import {afterAll,beforeAll,expect,it} from 'vitest';
import {createWalletSupport} from './wallet_support.js';
import {WalletActivityError} from './wallet_activity.js';
const db=new PGlite(),owner={tenantId:'t',userId:'u'};
const support=createWalletSupport({query:(s:string,p:unknown[])=>db.query(s,p)} as any,async(o,id)=>{
 if(o.tenantId!=='t'||o.userId!=='u'||id!=='transfer:owned')throw new WalletActivityError('wallet.operation_not_found',404);
 return{id};
});
beforeAll(async()=>{
 await db.exec(`CREATE SCHEMA commerce;CREATE SCHEMA identity;
 CREATE TABLE identity.users(tenant_id text,user_id text,PRIMARY KEY(tenant_id,user_id));
 INSERT INTO identity.users VALUES('t','u');
 CREATE TABLE commerce.msnw_usdt_payouts(conversion_id text PRIMARY KEY);
 INSERT INTO commerce.msnw_usdt_payouts VALUES('legacy');`);
 await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/0135_ngn_quotes_and_wallet_support.sql',import.meta.url),'utf8'));
},15000);
afterAll(()=>db.close());
it('creates one durable case per owned operation without changing its first reason',async()=>{
 const first=await support.open(owner,'transfer:owned','pending');
 expect(first.state).toBe('open');
 expect(await support.open(owner,'transfer:owned','not_received')).toEqual(first);
 expect(await support.read(owner,'transfer:owned')).toEqual(first);
});
it('rejects foreign user, tenant and operation references',async()=>{
 for(const [o,id] of [[{tenantId:'other',userId:'u'},'transfer:owned'],[{tenantId:'t',userId:'v'},'transfer:owned'],[owner,'transfer:foreign']] as const){
  await expect(support.open(o,id,'pending')).rejects.toMatchObject({statusCode:404});
 }
 await expect(support.open(owner,'transfer:owned','refund-now')).rejects.toThrow('reason_invalid');
});
it('preserves legacy null evidence and rejects rewriting captured evidence',async()=>{
 expect((await db.query('SELECT pricing_evidence FROM commerce.msnw_usdt_payouts')).rows[0]).toEqual({pricing_evidence:null});
 await db.query('INSERT INTO commerce.msnw_usdt_payouts VALUES($1,$2)', ['new',JSON.stringify({quoteId:'fixture-quote'})]);
 await expect(db.query("UPDATE commerce.msnw_usdt_payouts SET pricing_evidence='{}' WHERE conversion_id='new'")).rejects.toThrow('immutable');
 await expect(db.query("UPDATE commerce.msnw_usdt_payouts SET pricing_evidence='{}' WHERE conversion_id='legacy'")).rejects.toThrow('immutable');
});
