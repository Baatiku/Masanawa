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
 for(const file of ['0123_msnw_p2p.sql','0140_msnw_p2p_buy_offers.sql','0141_msnw_p2p_offer_editing.sql','0142_msnw_p2p_method_preferences.sql','0143_msnw_p2p_ad_reports.sql','0144_msnw_p2p_bulk_pause.sql','0145_msnw_p2p_dispute_context.sql'])await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/'+file,import.meta.url),'utf8'));
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


describe('participant public support history',{timeout:30_000},()=>{
 it('pages tied microsecond events without gaps or private notes and fences actor/order/tenant cursor reuse',async()=>{
  const t=await fixture(),ad=await t.offer(),order=await t.order(ad.offerId),another=await t.order(ad.offerId,other,methodC,'another-trade-request');
  for(let n=0;n<105;n++)await t.db.query(`INSERT INTO commerce.msnw_p2p_events(event_id,tenant_id,order_id,actor_id,action,to_state,reason,created_at) VALUES($1,$2,$3,'private-staff',$4,'disputed','Secret staff assessment','2026-01-01T12:00:00.123456Z')`,[randomUUID(),tenantId,order.orderId,n%2?'evidence_recorded':'dispute_opened']);
  await t.db.query(`INSERT INTO commerce.msnw_p2p_events(event_id,tenant_id,order_id,actor_id,action,to_state,reason) VALUES($1,$2,$3,'private-staff','private_assessment','disputed','Secret staff assessment')`,[randomUUID(),tenantId,order.orderId]);
  const one=await t.service.supportEvents(seller,order.orderId),two=await t.service.supportEvents(seller,order.orderId,one.nextCursor!),three=await t.service.supportEvents(seller,order.orderId,two.nextCursor!);
  expect([one.events.length,two.events.length,three.events.length]).toEqual([50,50,6]);expect(three.nextCursor).toBeNull();
  const events=[...three.events,...two.events,...one.events];expect(new Set(events.map(e=>e.event_id)).size).toBe(106);
  expect(JSON.stringify(events)).not.toMatch(/Secret|private-staff|reason|submitted_by|sha256|object_ref|account_number/);
  for(const [actor,id] of [[maker,order.orderId],[seller,another.orderId],[{tenantId:'foreign',userId:'seller'},order.orderId]] as const)await expect(t.service.supportEvents(actor,id,one.nextCursor!)).rejects.toMatchObject({status:422});
  await expect(t.service.supportEvents(other,order.orderId)).rejects.toMatchObject({status:404});
  const context=await t.service.orderSupport(seller,order.orderId);expect(context.events).toEqual(one.events);expect(context.nextCursor).toBe(one.nextCursor);
  const url='/v1/wallet/msnw/p2p/orders/'+order.orderId+'/support/events';
  const page=await t.app.inject({url,headers:{authorization:'seller'}});expect(page.statusCode).toBe(200);expect(page.headers['cache-control']).toBe('no-store');
  for(const query of ['?cursor=bad','?cursor=x&cursor=y','?owner=seller'])expect((await t.app.inject({url:url+query,headers:{authorization:'seller'}})).statusCode).toBe(422);
  expect((await t.app.inject({url})).statusCode).toBe(401);expect(t.escrow.release).not.toHaveBeenCalled();expect(t.escrow.refund).not.toHaveBeenCalled();
 });
});
