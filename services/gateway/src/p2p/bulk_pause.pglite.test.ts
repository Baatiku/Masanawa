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

describe('owner bulk pause original receipts and genuine trader cohorts',{timeout:30_000},()=>{
 it('pauses exactly current owned active ads without changing accepted orders or custody',async()=>{
  const t=await fixture(),one=await t.offer(),order=await t.order(one.offerId);
  const two=await t.service.createOffer(maker,{offerSide:'buy',paymentMethodId:methodA,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000'});
  await t.service.pauseOffer(maker,two.offerId);
  const foreign=await t.service.createOffer(seller,{paymentMethodId:methodB,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'1000000'});
  const before=(await t.db.query('SELECT * FROM commerce.msnw_p2p_orders')).rows,balances=(await t.db.query('SELECT * FROM commerce.msnw_custody_accounts')).rows;
  expect(await t.service.adAvailability(maker)).toMatchObject({active:1,paused:1,closed:0});
  const receipt=await t.service.pauseAllAds(maker,'pause-request-01');expect(receipt).toMatchObject({paused_count:1,replay:false});
  expect((await t.db.query<{state:string}>('SELECT state FROM commerce.msnw_p2p_offers WHERE offer_id=$1',[foreign.offerId])).rows[0]?.state).toBe('active');
  expect(await t.service.adAvailability(maker)).toMatchObject({active:0,paused:2,closed:0});
  expect((await t.db.query('SELECT * FROM commerce.msnw_p2p_orders')).rows).toEqual(before);
  expect((await t.db.query('SELECT * FROM commerce.msnw_custody_accounts')).rows).toEqual(balances);
  expect((await t.service.order(seller,order.orderId)).payment).toMatchObject({account_number:'2222222222'});
  expect(t.escrow.release).not.toHaveBeenCalled();expect(t.escrow.refund).not.toHaveBeenCalled();
 });
 it('recovers only original pause after resume, closure and later publication, with owner-bound immutable audit',async()=>{
  const t=await fixture(),one=await t.offer(),key='pause-request-02';
  const result=await t.service.pauseAllAds(maker,key);
  await t.service.resumeOffer(maker,one.offerId);
  const next=await t.service.createOffer(maker,{offerSide:'buy',paymentMethodId:methodA,rateKoboPerMsnw:'200',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000'});
  t.rights.canMakeBuyOffer=false;
  expect(await t.service.pauseAllAds(maker,key)).toEqual({...result,replay:true});
  expect(await t.service.bulkPauseByRequest(maker,key)).toMatchObject({paused_count:1});
  for(const actor of [seller,{tenantId:'foreign',userId:'maker'}])await expect(t.service.bulkPauseByRequest(actor,key)).rejects.toMatchObject({status:404});
  expect((await t.db.query<{state:string}>('SELECT state FROM commerce.msnw_p2p_offers WHERE offer_id=ANY($1::uuid[])',[[one.offerId,next.offerId]])).rows.map(x=>x.state)).toEqual(['active','active']);
  await expect(t.db.query('UPDATE commerce.msnw_p2p_bulk_pauses SET paused_offer_ids=ARRAY[]::uuid[]')).rejects.toThrow('immutable');
  await expect(t.db.query('DELETE FROM commerce.msnw_p2p_bulk_pauses')).rejects.toThrow('immutable');
  expect(await t.service.pauseAllAds(other,'empty-request-01')).toMatchObject({paused_count:0});
 });
 it('strictly authorizes no-store pause HTTP and rejects forged ownership or invalid identities',async()=>{
  const t=await fixture();await t.offer();
  const url='/v1/wallet/msnw/p2p/pause-all';
  expect((await t.app.inject({method:'POST',url,headers:{authorization:'maker','idempotency-key':'good-request-01'},payload:{ownerId:'seller'}})).statusCode).toBe(422);
  expect((await t.app.inject({method:'POST',url,headers:{authorization:'maker','idempotency-key':'bad key'}})).statusCode).toBe(422);
  expect((await t.app.inject({method:'POST',url,headers:{'idempotency-key':'good-request-01'}})).statusCode).toBe(401);
  const first=await t.app.inject({method:'POST',url,headers:{authorization:'maker','idempotency-key':'good-request-01'},payload:{}});
  expect(first.statusCode).toBe(201);expect(first.headers['cache-control']).toBe('no-store');expect(first.json()).toMatchObject({paused_count:1});
  expect((await t.app.inject({method:'POST',url,headers:{authorization:'maker','idempotency-key':'good-request-01'},payload:{}})).statusCode).toBe(200);
  const own=await t.app.inject({url:'/v1/wallet/msnw/p2p/pause-requests/good-request-01',headers:{authorization:'maker'}});
  expect(own.statusCode).toBe(200);expect(own.headers['cache-control']).toBe('no-store');expect(JSON.stringify(own.json())).not.toMatch(/owner_id|paused_offer_ids|tenant_id/);
 });
 it('reports current outcomes from the same 30-day opening cohort without revealing identities or manufacturing a score',async()=>{
  const t=await fixture(),ad=await t.offer();
  const ids=[];for(let i=0;i<5;i++)ids.push((await t.order(ad.offerId,seller,methodB,'cohort-order-'+i)).orderId);
  for(const [id,state] of ids.map((id,i)=>[id,['completed','cancelled','expired','disputed','payment_claimed'][i]]))await t.db.query('UPDATE commerce.msnw_p2p_orders SET state=$2 WHERE order_id=$1',[id,state]);
  const result=await t.service.offersPage(seller,{traderOfferId:ad.offerId,side:'buy'});
  expect(result.trader).toMatchObject({totalOrders30d:5,completedOrders30d:1,closedOrders30d:3,cancelledOrders30d:1,expiredOrders30d:1,disputedOrders30d:1,windowDays:30});
  await t.db.query("UPDATE commerce.msnw_p2p_orders SET created_at=now()-interval '31 days' WHERE order_id=$1",[ids[0]]);
  const next=await t.service.offersPage(seller,{traderOfferId:ad.offerId,side:'buy'});expect(next.trader).toMatchObject({totalOrders30d:4,completedOrders30d:0,closedOrders30d:2});
  expect(JSON.stringify(next.trader)).not.toMatch(/seller_id|buyer_id|rating|score|account_number/);
 });
 it('rejects an oversized operation atomically instead of silently pausing a partial set',async()=>{
  const t=await fixture();
  await t.db.query(`INSERT INTO commerce.msnw_p2p_offers(offer_id,tenant_id,seller_id,payment_method_id,rate_kobo_per_msnw,min_micro,max_micro,remaining_micro,offer_side)
   SELECT ('00000000-0000-4000-8000-'||lpad(n::text,12,'0'))::uuid,$1,'maker',$2,100,100000,1000000,1000000,'buy' FROM generate_series(1,1001) n`,[tenantId,methodA]);
  await expect(t.service.pauseAllAds(maker,'oversized-pause-01')).rejects.toMatchObject({code:'p2p.bulk_pause_limit',status:422});
  expect(await t.service.adAvailability(maker)).toMatchObject({active:1001,paused:0});
  expect((await t.db.query('SELECT * FROM commerce.msnw_p2p_bulk_pauses')).rows).toEqual([]);
 });

});
