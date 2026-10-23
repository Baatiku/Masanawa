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
 for(const file of ['0123_msnw_p2p.sql','0140_msnw_p2p_buy_offers.sql','0141_msnw_p2p_offer_editing.sql'])await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/'+file,import.meta.url),'utf8'));
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
 const app=Fastify();cleanups.push(()=>app.close());registerP2pRoutes(app,{service,authorize:async h=>h==='maker'?maker:h==='seller'?seller:h==='other'?other:{tenantId:'foreign',userId:'seller'}});
 const offer=async()=>service.createOffer(maker,{offerSide:'buy',paymentMethodId:methodA,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000',idempotencyKey:'buy-ad-request-01'});
 const order=(offerId:string,actor=seller,paymentMethodId=methodB,idempotencyKey='trade-request-01')=>service.createOrder(actor,{offerId,paymentMethodId,amountMicro:'100000',idempotencyKey});
 return{db,service,app,rights,read,escrow,offer,order};
}

describe('verified bank method retirement and privacy',{timeout:30_000},()=>{
 it('masks owner methods and management history without disclosing another owner or tenant',async()=>{
  const t=await fixture();
  expect((await t.service.methods(seller))[0]).toMatchObject({account_number:'••••2222'});
  const managed=await t.service.managedMethods(seller);
  expect(managed.items).toHaveLength(1);expect(managed.items[0]).toMatchObject({method_id:methodB,account_last_four:'2222',disabled_at:null});
  expect(JSON.stringify(managed)).not.toMatch(/2222222222|account_number|verification_reference|owner_id|tenant_id/);
  expect((await t.service.managedMethods({tenantId:'foreign',userId:'seller'})).items).toEqual([]);
 });
 it('retires once, prevents new trades and retains accepted order instructions and original recovery',async()=>{
  const t=await fixture(),ad=await t.service.createOffer(seller,{paymentMethodId:methodB,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000'});
  const request={offerId:ad.offerId,amountMicro:'100000',idempotencyKey:'original-trade-001'};
  const accepted=await t.service.createOrder(other,request),before=await t.service.order(other,accepted.orderId);
  const retired=await t.service.disableMethod(seller,methodB);
  expect(await t.service.disableMethod(seller,methodB)).toEqual(retired);
  expect(await t.service.methods(seller)).toEqual([]);
  expect((await t.service.managedMethods(seller)).items[0]?.disabled_at).not.toBeNull();
  expect(await t.service.order(other,accepted.orderId)).toMatchObject(Object.fromEntries(Object.entries(before).filter(([k])=>k!=='server_now')));
  expect(before.payment.account_number).toBe('2222222222');
  expect(await t.service.createOrder(other,request)).toEqual({...accepted,replay:true});
  await expect(t.service.quote(other,{offerId:ad.offerId,amountMicro:'100000'})).rejects.toMatchObject({code:'p2p.offer_unavailable'});
  await expect(t.service.createOrder(other,{...request,idempotencyKey:'new-trade-request'})).rejects.toMatchObject({code:'p2p.offer_unavailable'});
  expect(t.escrow.reserve).toHaveBeenCalledTimes(1);expect(t.escrow.refund).not.toHaveBeenCalled();expect(t.escrow.release).not.toHaveBeenCalled();
 });
 it('blocks both maker and receiving-seller buy-ad methods without changing accepted orders',async()=>{
  const t=await fixture(),ad=await t.offer(),accepted=await t.order(ad.offerId);
  await t.service.disableMethod(seller,methodB);
  expect((await t.service.order(maker,accepted.orderId)).payment.account_number).toBe('2222222222');
  await expect(t.service.quote(seller,{offerId:ad.offerId,amountMicro:'100000',paymentMethodId:methodB})).rejects.toMatchObject({code:'p2p.verified_method_required'});
  await t.service.disableMethod(maker,methodA);
  await expect(t.service.quote(other,{offerId:ad.offerId,amountMicro:'100000',paymentMethodId:methodC})).rejects.toMatchObject({code:'p2p.offer_unavailable'});
  await expect(t.service.disableMethod(other,methodB)).rejects.toMatchObject({status:404});
  await expect(t.service.disableMethod({tenantId:'foreign',userId:'seller'},methodB)).rejects.toMatchObject({status:404});
 });
 it('requires current owner auth and strict payload; retirement/readback are no-store',async()=>{
  const t=await fixture();
  for(const [auth,status] of [['seller',200],['other',404],['revoked',404]] as const){
   const r=await t.app.inject({method:'POST',url:'/v1/wallet/msnw/p2p/methods/'+methodB+'/disable',headers:{authorization:auth!},payload:{}});
   expect(r.statusCode).toBe(status);expect(r.headers['cache-control']).toBe('no-store');
  }
  const noauth=await t.app.inject({method:'POST',url:'/v1/wallet/msnw/p2p/methods/'+methodB+'/disable',payload:{}});expect(noauth.statusCode).toBe(401);
  for(const payload of [{ownerId:'seller'},[],{disabledAt:null}])expect((await t.app.inject({method:'POST',url:'/v1/wallet/msnw/p2p/methods/'+methodB+'/disable',headers:{authorization:'seller'},payload})).statusCode).toBe(422);
  const r=await t.app.inject({url:'/v1/wallet/msnw/p2p/methods/manage',headers:{authorization:'seller'}});expect(r.statusCode).toBe(200);expect(r.headers['cache-control']).toBe('no-store');
  expect(r.body).not.toContain('2222222222');
 });
});
