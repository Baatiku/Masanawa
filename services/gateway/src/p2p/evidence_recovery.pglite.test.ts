import {randomUUID} from 'node:crypto';
import {readFileSync} from 'node:fs';
import {PGlite} from '@electric-sql/pglite';
import Fastify from 'fastify';
import {afterEach,describe,expect,it,vi} from 'vitest';
import {createP2pService,type P2pPool} from './service.js';
import {registerP2pRoutes} from './routes.js';
const tenantId='buy-tenant',maker={tenantId,userId:'maker'},seller={tenantId,userId:'seller'},other={tenantId,userId:'other'};
const methodA='aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa',methodB='bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',methodC='cccccccc-cccc-4ccc-8ccc-cccccccccccc';
const cleanups:Array<()=>Promise<unknown>>=[];afterEach(async()=>{for(const fn of cleanups.splice(0).reverse())await fn();});
async function fixture(enabled=true){
 const db=new PGlite();cleanups.push(()=>db.close());
 // Advisory locks are unsupported by PGlite; concurrency uses real PostgreSQL CI.
 await db.exec(`CREATE FUNCTION public.pg_advisory_xact_lock(integer) RETURNS void LANGUAGE sql AS 'SELECT';
 CREATE SCHEMA security;CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,display_name text);
 CREATE SCHEMA commerce;CREATE TABLE commerce.msnw_custody_accounts(tenant_id text,user_id text,available_micro bigint);`);
 for(const file of ['0123_msnw_p2p.sql','0140_msnw_p2p_buy_offers.sql','0141_msnw_p2p_offer_editing.sql','0142_msnw_p2p_method_preferences.sql','0143_msnw_p2p_ad_reports.sql','0144_msnw_p2p_bulk_pause.sql','0145_msnw_p2p_dispute_context.sql','0146_msnw_p2p_evidence_original_index.sql'])await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/'+file,import.meta.url),'utf8'));
 await db.exec(`CREATE TABLE commerce.msnw_p2p_late_payment_cases(case_id uuid,tenant_id text,order_id uuid,state text,created_at timestamptz,updated_at timestamptz)`);
 for(const [actor,method,bank,number] of [[maker,methodA,'Maker Bank','1111111111'],[seller,methodB,'Seller Bank','2222222222'],[other,methodC,'Other Bank','3333333333']] as const){
  await db.query(`INSERT INTO commerce.msnw_p2p_payment_methods(method_id,tenant_id,owner_id,method_type,bank_name,account_name,account_number,verification_reference,verified_at)
   VALUES($1,$2,$3,'ng_bank_transfer',$4,'Test User',$5,'test-bank-verified',now())`,[method,tenantId,actor.userId,bank,number]);
  await db.query('INSERT INTO security.platform_user_profiles VALUES($1,$2,$3)',[tenantId,actor.userId,actor.userId+' public']);
 }
 await db.query('INSERT INTO commerce.msnw_custody_accounts VALUES($1,$2,2010000),($1,$3,2010000)',[tenantId,seller.userId,other.userId]);
 const query=async(sql:string,values?:unknown[])=>{const r=await db.query(sql,values);return{rows:r.rows as Record<string,unknown>[],rowCount:r.affectedRows||r.rows.length};};
 const pool={query,connect:async()=>({query,release(){}})} as P2pPool;
 const escrow={reserve:vi.fn(async(_tx:unknown,_input:unknown)=>{}),release:vi.fn(async(_tx:unknown,_input:unknown)=> 'test-receipt'),refund:vi.fn(async(_tx:unknown,_input:unknown)=> 'test-refund')};
 const rights={canMakeBuyOffer:true,canTakeBuyOffer:true,policyReference:'test-qualified-policy'};
 const read=vi.fn(async()=>rights);
 const service=createP2pService(pool,escrow,enabled?{buyOfferAdmission:{read}}:{});
 const app=Fastify();cleanups.push(()=>app.close());registerP2pRoutes(app,{service,authorizeOperator:async h=>{if(h==='operator')return {tenantId,userId:'operator'};if(h==='cross-operator')return{tenantId:'foreign',userId:'operator'};throw Object.assign(new Error('denied'),{statusCode:403});},authorize:async h=>{const value=({maker,seller,other,cross:{tenantId:'foreign',userId:'seller'}} as Record<string,typeof maker>)[h??''];if(!value)throw Object.assign(new Error('revoked'),{statusCode:401});return value;}});
 const offer=async()=>service.createOffer(maker,{offerSide:'buy',paymentMethodId:methodA,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000',idempotencyKey:'buy-ad-request-01'});
 const order=(offerId:string,actor=seller,paymentMethodId=methodB,idempotencyKey='trade-request-01')=>service.createOrder(actor,{offerId,paymentMethodId,amountMicro:'100000',idempotencyKey});
 return{db,service,app,rights,read,escrow,offer,order};
}


const digest='a'.repeat(64),ref='p2p/private/original_100_pdf';
describe('actor-owned original evidence recovery',{timeout:30_000},()=>{
 it('deduplicates original content, preserves actor separation and recovers after closure without moving funds',async()=>{
  const t=await fixture(),ad=await t.offer(),order=await t.order(ad.offerId);
  await t.service.action(seller,order.orderId,'dispute',{explanation:'Synthetic dispute for attachment qualification'});
  const input={objectRef:ref,sha256:digest,verifiedOwnerId:seller.userId};
  const first=await t.service.recordEvidence(seller,order.orderId,input);
  expect(first.replay).toBe(false);
  expect(await t.service.recordEvidence(seller,order.orderId,input)).toMatchObject({evidenceId:first.evidenceId,replay:true});
  const peer=await t.service.recordEvidence(maker,order.orderId,{...input,verifiedOwnerId:maker.userId});
  expect(peer.evidenceId).not.toBe(first.evidenceId);
  expect((await t.db.query("SELECT * FROM commerce.msnw_p2p_events WHERE action='evidence_recorded'")).rows).toHaveLength(2);
  await t.service.action({tenantId,userId:'operator'},order.orderId,'refund',{isOperator:true,explanation:'Synthetic qualified refund'});
  const calls=t.escrow.refund.mock.calls.length;
  expect(await t.service.recordEvidence(seller,order.orderId,input)).toMatchObject({evidenceId:first.evidenceId,state:'cancelled',replay:true});
  const recovered=await t.service.evidenceByDigest(seller,order.orderId,digest);
  expect(recovered).toMatchObject({evidenceId:first.evidenceId,state:'cancelled',bytes:100,contentType:'application/pdf'});
  expect(JSON.stringify(recovered)).not.toMatch(/objectRef|object_ref|private|submitted_by/);
  expect(t.escrow.refund.mock.calls).toHaveLength(calls);expect(t.escrow.release).not.toHaveBeenCalled();
  await expect(t.service.recordEvidence(seller,order.orderId,{...input,sha256:'b'.repeat(64)})).rejects.toMatchObject({status:403});
 });
 it('fences original lookup by submitting actor and tenant and validates private HTTP reads',async()=>{
  const t=await fixture(),ad=await t.offer(),order=await t.order(ad.offerId);
  await t.service.action(seller,order.orderId,'dispute',{explanation:'Synthetic dispute for original lookup'});
  await t.service.recordEvidence(seller,order.orderId,{objectRef:ref,sha256:digest,verifiedOwnerId:seller.userId});
  for(const actor of [maker,other,{tenantId:'foreign',userId:seller.userId}])await expect(t.service.evidenceByDigest(actor,order.orderId,digest)).rejects.toMatchObject({status:404});
  const url='/v1/wallet/msnw/p2p/orders/'+order.orderId+'/evidence/original';
  for(const payload of [{sha256:'bad'},{sha256:digest,ownerId:seller.userId},{sha256:42},{}])expect((await t.app.inject({method:'POST',url,headers:{authorization:'seller'},payload})).statusCode).toBe(422);
  expect((await t.app.inject({method:'POST',url,payload:{sha256:digest}})).statusCode).toBe(401);
  const read=await t.app.inject({method:'POST',url,headers:{authorization:'seller'},payload:{sha256:digest}});
  expect(read.statusCode).toBe(200);expect(read.headers['cache-control']).toBe('no-store');expect(read.json().sha256).toBe(digest);
 });
});
