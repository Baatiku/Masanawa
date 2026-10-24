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


const note='A synthetic private bank payment problem.';
describe('typed original order dispute context',{timeout:30_000},()=>{
 it('opens one canonical dispute with immutable actor-owned original recovery and no settlement effects',async()=>{
  const t=await fixture(),ad=await t.offer(),order=await t.order(ad.offerId);
  const before=(await t.db.query('SELECT * FROM commerce.msnw_custody_accounts')).rows;
  const first=await t.service.action(seller,order.orderId,'dispute',{disputeCategory:'no_payment',explanation:note});
  expect(first).toMatchObject({state:'disputed',replay:false,submission:{category:'no_payment'}});
  const replay=await t.service.action(seller,order.orderId,'dispute',{disputeCategory:'other',explanation:'A different later attempted reason'});
  expect(replay).toMatchObject({replay:true,submission:(first as {submission:unknown}).submission});
  await expect(t.service.action(maker,order.orderId,'dispute',{disputeCategory:'other',explanation:note})).rejects.toMatchObject({code:'p2p.dispute_denied'});
  expect((await t.db.query('SELECT * FROM commerce.msnw_custody_accounts')).rows).toEqual(before);
  expect(t.escrow.release).not.toHaveBeenCalled();expect(t.escrow.refund).not.toHaveBeenCalled();
  expect((await t.db.query('SELECT * FROM commerce.msnw_p2p_dispute_submissions')).rows).toHaveLength(1);
  expect((await t.db.query("SELECT * FROM commerce.msnw_p2p_events WHERE action='dispute_opened'")).rows).toHaveLength(1);
  await expect(t.db.query('UPDATE commerce.msnw_p2p_dispute_submissions SET details=$1',[note+' changed'])).rejects.toThrow('immutable');
  await expect(t.db.query('DELETE FROM commerce.msnw_p2p_dispute_submissions')).rejects.toThrow('immutable');
  await t.service.action({tenantId,userId:'operator'},order.orderId,'refund',{isOperator:true,explanation:'Independent synthetic operator refund'});
  const calls=t.escrow.refund.mock.calls.length;
  expect(await t.service.action(seller,order.orderId,'dispute',{disputeCategory:'no_payment',explanation:note})).toMatchObject({state:'cancelled',replay:true});
  expect(t.escrow.refund.mock.calls).toHaveLength(calls);
 });
 it('exposes own original explanation and shared public transitions without staff notes or counterparty private details',async()=>{
  const t=await fixture(),ad=await t.offer(),order=await t.order(ad.offerId);
  await t.service.action(seller,order.orderId,'dispute',{disputeCategory:'wrong_amount',explanation:note});
  await t.db.query(`INSERT INTO commerce.msnw_p2p_events(event_id,tenant_id,order_id,actor_id,action,to_state,reason) VALUES($1,$2,$3,'private-operator','operator_reason','disputed','Private staff assessment')`,[randomUUID(),tenantId,order.orderId]);
  const own=await t.service.orderSupport(seller,order.orderId),peer=await t.service.orderSupport(maker,order.orderId);
  expect(own).toMatchObject({canOpenDispute:false,submission:{is_own:true,category:'wrong_amount',details:note}});
  expect(peer).toMatchObject({submission:{is_own:false,category:'wrong_amount',details:null}});
  expect(JSON.stringify(peer)).not.toMatch(/synthetic private|Private staff|private-operator|actor_id|account_number/);
  expect(own.events).toHaveLength(2);expect(own.events.map(e=>e.action)).toEqual(['reserve','dispute_opened']);
  for(const actor of [other,{tenantId:'foreign',userId:'seller'}])await expect(t.service.orderSupport(actor,order.orderId)).rejects.toMatchObject({status:404});
  await t.db.exec('ALTER TABLE commerce.msnw_p2p_late_payment_cases ADD buyer_id text, ADD buyer_reason text, ADD operator_note text, ADD closed_at timestamptz');
  const staff=await t.app.inject({url:'/v1/admin/msnw/p2p/disputes/'+order.orderId,headers:{authorization:'operator'}});expect(staff.statusCode).toBe(200);expect(staff.json().disputeSubmission).toMatchObject({category:'wrong_amount',details:note});expect(staff.json().paymentVerified).toBe(false);
 });
 it('validates typed HTTP evidence, Unicode and participant authorization before the canonical transition',async()=>{
  const t=await fixture(),ad=await t.offer(),order=await t.order(ad.offerId),url='/v1/wallet/msnw/p2p/orders/'+order.orderId+'/dispute';
  for(const payload of [{category:'bad',reason:note},{category:'other',reason:'😀'.repeat(5)},{category:'other',reason:'bad\u202e hidden content'},{category:'other',reason:note,isOperator:true},{category:42,reason:note}])expect((await t.app.inject({method:'POST',url,headers:{authorization:'seller'},payload})).statusCode).toBe(422);
  expect((await t.app.inject({method:'POST',url,payload:{category:'other',reason:note}})).statusCode).toBe(401);
  expect((await t.app.inject({method:'POST',url,headers:{authorization:'other'},payload:{category:'other',reason:note}})).statusCode).toBe(403);
  const accepted=await t.app.inject({method:'POST',url,headers:{authorization:'seller'},payload:{category:'other',reason:'😀'.repeat(2000)}});expect(accepted.statusCode).toBe(200);expect(accepted.headers['cache-control']).toBe('no-store');
  const read=await t.app.inject({url:'/v1/wallet/msnw/p2p/orders/'+order.orderId+'/support',headers:{authorization:'seller'}});expect(read.statusCode).toBe(200);expect(read.headers['cache-control']).toBe('no-store');
 });
 it('rolls the state and transition event back when recording immutable opening evidence fails',async()=>{
  const t=await fixture(),ad=await t.offer(),order=await t.order(ad.offerId);
  await t.db.exec(`CREATE FUNCTION public.reject_dispute_fixture() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN RAISE EXCEPTION 'Synthetic storage failure'; END; $$; CREATE TRIGGER reject_dispute_fixture BEFORE INSERT ON commerce.msnw_p2p_dispute_submissions FOR EACH ROW EXECUTE FUNCTION public.reject_dispute_fixture()`);
  await expect(t.service.action(seller,order.orderId,'dispute',{disputeCategory:'other',explanation:note})).rejects.toThrow('Synthetic storage failure');
  expect((await t.service.order(seller,order.orderId)).state).toBe('awaiting_payment');
  expect((await t.db.query("SELECT * FROM commerce.msnw_p2p_events WHERE action='dispute_opened'")).rows).toEqual([]);
  expect((await t.db.query('SELECT * FROM commerce.msnw_p2p_dispute_submissions')).rows).toEqual([]);
 });
});
