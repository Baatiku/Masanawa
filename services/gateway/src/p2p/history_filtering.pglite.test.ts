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
 for(const file of ['0123_msnw_p2p.sql','0140_msnw_p2p_buy_offers.sql','0141_msnw_p2p_offer_editing.sql','0142_msnw_p2p_method_preferences.sql','0143_msnw_p2p_ad_reports.sql','0144_msnw_p2p_bulk_pause.sql'])await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/'+file,import.meta.url),'utf8'));
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


async function seed(t:Awaited<ReturnType<typeof fixture>>,count=45){
 const ad=await t.offer();const ids=[];
 for(let n=0;n<count;n++){
  const id=randomUUID();ids.push(id);
  await t.db.query(`INSERT INTO commerce.msnw_p2p_orders(order_id,tenant_id,offer_id,seller_id,buyer_id,payment_method_id,amount_micro,fee_micro,fiat_kobo,rate_kobo_per_msnw,payment_deadline,idempotency_key,state,created_at)
   VALUES($1,$2,$3,'seller','maker',$4,100000,500,10,100,now()+interval '1 hour',$5,$6,$7::timestamptz)`,[id,tenantId,ad.offerId,methodB,'history-order-'+n,n%2?'completed':'disputed',n<40?'2026-10-01T23:59:59.123456Z':'2026-10-02T00:00:00.000000Z']);
 }
 return{ad,ids};
}
describe('P2P exact history scopes',{timeout:30_000},()=>{
 it('pages tied opening times and intersects exact status, direction and inclusive UTC dates inside SQL',async()=>{
  const t=await fixture();await seed(t);
  const filters={fromDate:'2026-10-01',toDate:'2026-10-01',direction:'buy'};
  const first=await t.service.ordersPage(maker,filters),second=await t.service.ordersPage(maker,{...filters,cursor:first.nextCursor!});
  expect(first.items).toHaveLength(20);expect(second.items).toHaveLength(20);expect(second.nextCursor).toBeNull();expect(new Set([...first.items,...second.items].map(x=>x.order_id)).size).toBe(40);
  expect((await t.service.ordersPage(maker,{...filters,status:'disputed'})).items).toHaveLength(20);
  expect((await t.service.ordersPage(maker,{...filters,direction:'sell'})).items).toEqual([]);
  expect((await t.service.ordersPage(seller,{...filters,direction:'sell'})).items).toHaveLength(20);
  expect((await t.service.ordersPage(maker,{fromDate:'2026-10-02',toDate:'2026-10-02'})).items).toHaveLength(5);
  for(const fn of Object.values(t.escrow))expect(fn).not.toHaveBeenCalled();
 });
 it('rejects cursor reuse across actors, tenants, filters, page sizes and resource kinds',async()=>{
  const t=await fixture();await seed(t);const page=await t.service.ordersPage(maker);
  for(const [actor,input] of [[seller,{}],[{tenantId:'foreign',userId:'maker'},{}],[maker,{status:'completed'}],[maker,{direction:'sell'}],[maker,{filter:'active'}],[maker,{fromDate:'2026-10-01'}],[maker,{limit:10}]] as const)await expect(t.service.ordersPage(actor,{...input,cursor:page.nextCursor!})).rejects.toMatchObject({status:422});
  await expect(t.service.myOffersPage(maker,{cursor:page.nextCursor!})).rejects.toMatchObject({status:422});
  expect((await t.service.ordersPage(other)).items).toEqual([]);
  const corrupt=JSON.parse(Buffer.from(page.nextCursor!,'base64url').toString());corrupt.time='2026-02-30T10:00:00.000000Z';
  await expect(t.service.ordersPage(maker,{cursor:Buffer.from(JSON.stringify(corrupt)).toString('base64url')})).rejects.toMatchObject({status:422});
 });
 it('filters own ad state and side before pagination while preserving disabled bank history privacy',async()=>{
  const t=await fixture();
  for(let n=0;n<25;n++){
   const ad=await t.service.createOffer(maker,{offerSide:'buy',paymentMethodId:methodA,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000'});
   await t.db.query("UPDATE commerce.msnw_p2p_offers SET state='paused',created_at='2026-10-03T12:00:00.999999Z' WHERE offer_id=$1",[ad.offerId]);
  }
  await t.db.query('UPDATE commerce.msnw_p2p_payment_methods SET disabled_at=now() WHERE method_id=$1',[methodA]);
  const filters={status:'paused',direction:'buy',fromDate:'2026-10-03',toDate:'2026-10-03'};
  const first=await t.service.myOffersPage(maker,filters),second=await t.service.myOffersPage(maker,{...filters,cursor:first.nextCursor!});
  expect(first.items).toHaveLength(20);expect(second.items).toHaveLength(5);expect(new Set([...first.items,...second.items].map(x=>x.offer_id)).size).toBe(25);
  expect((await t.service.myOffersPage(maker,{status:'active'})).items).toEqual([]);
  expect((await t.service.myOffersPage(seller,filters)).items).toEqual([]);
  expect(JSON.stringify(first.items)).not.toMatch(/1111111111|account_number|verification_reference/);
 });
 it('strictly validates HTTP filters and calendar dates and serves private no-store results',async()=>{
  const t=await fixture();await seed(t,2);const url='/v1/wallet/msnw/p2p/orders/page';
  for(const query of ['fromDate=2026-02-30','fromDate=2026-10-02&toDate=2026-10-01','status=garbage','direction=other','limit=0','limit=51','limit=abc','filter=all&filter=active','owner=maker','asset=BTC','method=wire'])expect((await t.app.inject({url:url+'?'+query,headers:{authorization:'maker'}})).statusCode).toBe(422);
  const response=await t.app.inject({url:url+'?status=completed&direction=buy',headers:{authorization:'maker'}});expect(response.statusCode).toBe(200);expect(response.headers['cache-control']).toBe('no-store');expect(response.json().items).toHaveLength(1);
  expect((await t.app.inject({url})).statusCode).toBe(401);
  expect((await t.app.inject({url:'/v1/wallet/msnw/p2p/my-offers/page?status=disputed',headers:{authorization:'maker'}})).statusCode).toBe(422);
 });
});
