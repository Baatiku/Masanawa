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
 for(const file of ['0123_msnw_p2p.sql','0140_msnw_p2p_buy_offers.sql'])await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/'+file,import.meta.url),'utf8'));
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
describe('maker-buy/taker-sell persisted roles and requests',{timeout:30_000},()=>{
 it('is closed without a trusted admission authority, including direct HTTP writes',async()=>{
  const t=await fixture(false);expect(await t.service.capabilities(maker)).toMatchObject({makerBuy:false,takerSell:false,admissionState:'unavailable'});
  await expect(t.offer()).rejects.toMatchObject({code:'p2p.buy_offer_admission_unavailable',status:503});
  expect((await t.app.inject({method:'POST',url:'/v1/wallet/msnw/p2p/offers',headers:{authorization:'maker'},payload:{offerSide:'buy',paymentMethodId:methodA,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000'}})).statusCode).toBe(503);
  const sell=await t.service.createOffer(seller,{paymentMethodId:methodB,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000'});
  expect(await t.service.quote(maker,{offerId:sell.offerId,amountMicro:'100000'})).toMatchObject({takerAction:'buy'});
 });
 it('publishes demand without inventing maker-owned assets and selects the actual seller bank',async()=>{
  const t=await fixture(),ad=await t.offer();
  expect((await t.service.offersPage(seller,{side:'buy'})).items[0]).toMatchObject({offer_side:'buy',remaining_micro:'2000000'});
  expect((await t.service.offersPage(seller)).items).toHaveLength(0);
  const q=await t.service.quote(seller,{offerId:ad.offerId,amountMicro:'100000',paymentMethodId:methodB});
  expect(q).toMatchObject({offerSide:'buy',takerAction:'sell',bankName:'Seller Bank',receivingMethodId:methodB,feeMicro:'500',fiatKobo:'10'});
  expect(JSON.stringify(q)).not.toMatch(/1111111111|2222222222|account_number/);
  expect(t.escrow.reserve).not.toHaveBeenCalled();
  await expect(t.service.quote(seller,{offerId:ad.offerId,amountMicro:'100000',paymentMethodId:methodA})).rejects.toMatchObject({status:404});
 });
 it('reserves from the taker seller, keeps the maker as buyer and routes payment to the taker',async()=>{
  const t=await fixture(),ad=await t.offer(),o=await t.order(ad.offerId);
  expect(t.escrow.reserve.mock.calls[0]?.[1]).toMatchObject({sellerId:'seller',buyerId:'maker',amountMicro:'100000',feeMicro:'500'});
  const persisted=(await t.db.query<{idempotency_key:string}>('SELECT seller_id,buyer_id,payment_method_id,request_actor_id,request_key,idempotency_key FROM commerce.msnw_p2p_orders')).rows[0];
  expect(persisted).toMatchObject({seller_id:'seller',buyer_id:'maker',payment_method_id:methodB,request_actor_id:'seller',request_key:'trade-request-01'});
  expect(persisted!.idempotency_key).not.toBe('trade-request-01');
  expect((await t.service.order(maker,o.orderId)).payment).toMatchObject({bank_name:'Seller Bank',account_number:'2222222222'});
  await expect(t.service.order({tenantId,userId:'outsider'},o.orderId)).rejects.toMatchObject({status:404});
  await expect(t.service.action(maker,o.orderId,'confirm',{releaseAuthorized:true})).rejects.toMatchObject({status:403});
  await t.service.action(maker,o.orderId,'claim');
  await t.service.action(seller,o.orderId,'confirm',{releaseAuthorized:true});
  expect(t.escrow.release.mock.calls[0]?.[1]).toMatchObject({sellerId:'seller',buyerId:'maker'});
 });
 it('keeps identical request keys independent for two sellers trading against one maker',async()=>{
  const t=await fixture(),ad=await t.offer();const one=await t.order(ad.offerId),two=await t.order(ad.offerId,other,methodC);
  expect(one.orderId).not.toBe(two.orderId);
  expect(await t.service.orderByRequest(seller,'trade-request-01')).toMatchObject({orderId:one.orderId});
  expect(await t.service.orderByRequest(other,'trade-request-01')).toMatchObject({orderId:two.orderId});
  await expect(t.service.orderByRequest(maker,'trade-request-01')).rejects.toMatchObject({status:404});
  await expect(t.service.orderByRequest({tenantId:'foreign',userId:'seller'},'trade-request-01')).rejects.toMatchObject({status:404});
  t.rights.canTakeBuyOffer=false;t.rights.canMakeBuyOffer=false;
  expect(await t.order(ad.offerId)).toMatchObject({orderId:one.orderId,replay:true});
  expect(t.escrow.reserve).toHaveBeenCalledTimes(2);
  await expect(t.order(ad.offerId,seller,methodC)).rejects.toMatchObject({code:'p2p.idempotency_conflict'});
 });
 it('rechecks admission and destination ownership before any escrow reservation',async()=>{
  const t=await fixture(),ad=await t.offer();
  await expect(t.order(ad.offerId,seller,methodA)).rejects.toMatchObject({code:'p2p.verified_method_required'});
  t.rights.canMakeBuyOffer=false;
  await expect(t.order(ad.offerId)).rejects.toMatchObject({code:'p2p.buy_offer_ineligible'});
  expect(t.escrow.reserve).not.toHaveBeenCalled();
  expect((await t.db.query('SELECT count(*)::int AS n FROM commerce.msnw_p2p_orders')).rows[0]).toMatchObject({n:0});
 });
 it('preserves legacy buyer-key recovery and does not mutate historical financial data',async()=>{
  const t=await fixture(),ad=await t.offer();
  const id='dddddddd-dddd-4ddd-8ddd-dddddddddddd';
  await t.db.query(`INSERT INTO commerce.msnw_p2p_orders(order_id,tenant_id,offer_id,seller_id,buyer_id,payment_method_id,amount_micro,fee_micro,fiat_kobo,rate_kobo_per_msnw,payment_deadline,idempotency_key)
   VALUES($1,$2,$3,'seller','maker',$4,100000,500,10,100,now()+interval '10 minutes','legacy-request-01')`,[id,tenantId,ad.offerId,methodB]);
  expect(await t.service.orderByRequest(maker,'legacy-request-01')).toMatchObject({orderId:id});
  await expect(t.service.orderByRequest(seller,'legacy-request-01')).rejects.toMatchObject({status:404});
 });
});
