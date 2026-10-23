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

describe('versioned maker ad editing',{timeout:30_000},()=>{
 async function input(t:Awaited<ReturnType<typeof fixture>>,offerId:string,requestKey='edit-request-one'){
  const ad=await t.service.offerForEdit(maker,offerId);
  return {offerId,requestKey,expectedRevision:Number(ad.revision),paymentMethodId:methodA,rateKoboPerMsnw:'200',minMicro:'100000',maxMicro:'1000000',remainingMicro:'2000000'};
 }
 it('updates own future terms with immutable request audit and no escrow mutation',async()=>{
  const t=await fixture(),ad=await t.offer(),edit=await input(t,ad.offerId);
  const result=await t.service.editOffer(maker,edit);expect(result).toMatchObject({revision:2,replay:false});
  expect(await t.service.editOffer(maker,edit)).toEqual({...result,replay:true});
  expect(await t.service.offerEditByRequest(maker,edit.requestKey)).toMatchObject({offerId:ad.offerId,revision:2});
  await expect(t.service.editOffer(maker,{...edit,rateKoboPerMsnw:'300'})).rejects.toMatchObject({code:'p2p.idempotency_conflict'});
  await expect(t.service.editOffer(other,{...edit,requestKey:'other-editor-key'})).rejects.toMatchObject({status:404});
  await expect(t.service.offerEditByRequest(other,edit.requestKey)).rejects.toMatchObject({status:404});
  await expect(t.db.query('UPDATE commerce.msnw_p2p_offer_edits SET result_revision=99')).rejects.toThrow('immutable');
  expect(t.escrow.reserve).not.toHaveBeenCalled();expect(t.escrow.release).not.toHaveBeenCalled();expect(t.escrow.refund).not.toHaveBeenCalled();
 });
 it('rejects stale stock revisions and closed ads while recovering accepted edits after revocation',async()=>{
  const t=await fixture(),ad=await t.offer(),edit=await input(t,ad.offerId);
  await t.order(ad.offerId);
  await expect(t.service.editOffer(maker,edit)).rejects.toMatchObject({code:'p2p.offer_edit_stale'});
  const fresh=await input(t,ad.offerId);await t.service.editOffer(maker,fresh);
  t.rights.canMakeBuyOffer=false;
  expect(await t.service.editOffer(maker,fresh)).toMatchObject({replay:true});
  await expect(t.service.editOffer(maker,{...await input(t,ad.offerId),requestKey:'new-edit-after-revoke'})).rejects.toMatchObject({code:'p2p.buy_offer_ineligible'});
  await t.service.closeOffer(maker,ad.offerId);
  await expect(t.service.editOffer(maker,{...await input(t,ad.offerId),requestKey:'closed-edit-key'})).rejects.toMatchObject({code:'p2p.offer_not_editable'});
 });
 it('retains accepted order terms and rejects stale or legacy unbound quotes after ad edits',async()=>{
  const t=await fixture(),ad=await t.offer();
  const quote=await t.service.quote(seller,{offerId:ad.offerId,amountMicro:'100000',paymentMethodId:methodB});
  const order=await t.order(ad.offerId),before=(await t.db.query('SELECT * FROM commerce.msnw_p2p_orders')).rows[0];
  await t.service.editOffer(maker,await input(t,ad.offerId));
  await expect(t.service.createOrder(other,{offerId:ad.offerId,paymentMethodId:methodC,amountMicro:'100000',idempotencyKey:'stale-quote-request',expectedTermsRevision:quote.termsRevision})).rejects.toMatchObject({code:'p2p.quote_changed'});
  await expect(t.service.createOrder(other,{offerId:ad.offerId,paymentMethodId:methodC,amountMicro:'100000',idempotencyKey:'legacy-quote-request'})).rejects.toMatchObject({code:'p2p.quote_changed'});
  expect((await t.db.query('SELECT * FROM commerce.msnw_p2p_orders')).rows[0]).toEqual(before);
  expect(await t.order(ad.offerId)).toMatchObject({orderId:order.orderId,replay:true});
  const current=await t.service.quote(other,{offerId:ad.offerId,amountMicro:'100000',paymentMethodId:methodC});
  expect(await t.service.createOrder(other,{offerId:ad.offerId,paymentMethodId:methodC,amountMicro:'100000',idempotencyKey:'fresh-quote-request',expectedTermsRevision:current.termsRevision})).toMatchObject({replay:false});
 });
 it('caps sell ad remaining against actual available principal and fees',async()=>{
  const t=await fixture(),ad=await t.service.createOffer(seller,{paymentMethodId:methodB,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000'});
  const edit={offerId:ad.offerId,requestKey:'sell-edit-request',expectedRevision:1,paymentMethodId:methodB,rateKoboPerMsnw:'200',minMicro:'100000',maxMicro:'1000000',remainingMicro:'2000001'};
  await expect(t.service.editOffer(seller,edit)).rejects.toMatchObject({code:'p2p.offer_capacity_exceeded'});
  await expect(t.service.editOffer(seller,{...edit,remainingMicro:'2000000',paymentMethodId:methodA})).rejects.toMatchObject({code:'p2p.verified_method_required'});
  expect(await t.service.editOffer(seller,{...edit,remainingMicro:'2000000'})).toMatchObject({revision:2,replay:false});
  expect(t.escrow.reserve).not.toHaveBeenCalled();
 });
 it('enforces exact authenticated HTTP edit payload and private original-request recovery',async()=>{
  const t=await fixture(),ad=await t.offer(),draft=await input(t,ad.offerId);
  const {offerId,requestKey,...body}=draft;
  const get=await t.app.inject({method:'GET',url:'/v1/wallet/msnw/p2p/offers/'+offerId+'/edit',headers:{authorization:'maker'}});
  expect(get.statusCode).toBe(200);expect(get.headers['cache-control']).toBe('no-store');
  const send=(who:string,payload:unknown,key=requestKey)=>t.app.inject({method:'POST',url:'/v1/wallet/msnw/p2p/offers/'+offerId+'/edit',headers:{authorization:who,'idempotency-key':key},payload:payload as Record<string,unknown>});
  expect((await send('other',body)).statusCode).toBe(404);
  expect((await send('maker',{...body,seller_id:'other'})).statusCode).toBe(422);
  expect((await send('maker',{...body,expectedRevision:'1'})).statusCode).toBe(422);
  const response=await send('maker',body);expect(response.statusCode).toBe(201);
  expect((await send('maker',body)).statusCode).toBe(200);
  expect((await t.app.inject({method:'GET',url:'/v1/wallet/msnw/p2p/offer-edits/by-request/'+requestKey,headers:{authorization:'other'}})).statusCode).toBe(404);
 });

});
