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
 for(const file of ['0123_msnw_p2p.sql','0140_msnw_p2p_buy_offers.sql','0141_msnw_p2p_offer_editing.sql','0142_msnw_p2p_method_preferences.sql','0143_msnw_p2p_ad_reports.sql','0144_msnw_p2p_bulk_pause.sql','0145_msnw_p2p_dispute_context.sql','0147_msnw_p2p_support_requests.sql'])await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/'+file,import.meta.url),'utf8'));
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


const instruction='Provide the bank transfer reference without full account details.',reply='Synthetic bank reference ABC123 for independent support review.';
describe('private staff evidence requests and original responses',{timeout:30_000},()=>{
 it('keeps assigned-party instructions private, records one immutable response and recovers originals after closure',async()=>{
  const t=await fixture(),ad=await t.offer(),trade=await t.order(ad.offerId),staff={tenantId,userId:'operator'};
  await t.service.action(seller,trade.orderId,'dispute',{explanation:'Synthetic support evidence request dispute'});
  const input={recipient:'buyer',instruction,windowHours:24},first=await t.service.requestSupportEvidence(staff,trade.orderId,input);
  expect(await t.service.requestSupportEvidence(staff,trade.orderId,input)).toEqual({...first,replay:true});
  expect((await t.service.supportRequests(seller,trade.orderId)).items).toEqual([]);
  const own=await t.service.supportRequests(maker,trade.orderId);expect(own.items[0]).toMatchObject({instruction,recipient_role:'buyer',response_id:null});expect(JSON.stringify(own)).not.toMatch(/requested_by|target_id|operator|account_number/);
  await expect(t.service.respondSupportEvidence(seller,trade.orderId,String(first.requestId),reply)).rejects.toMatchObject({status:404});
  await expect(t.service.requestSupportEvidence(staff,trade.orderId,{...input,instruction:instruction+' More context.'})).rejects.toMatchObject({code:'p2p.support_response_pending'});
  const response=await t.service.respondSupportEvidence(maker,trade.orderId,String(first.requestId),reply);
  expect(await t.service.respondSupportEvidence(maker,trade.orderId,String(first.requestId),'Attempted replacement details are ignored')).toEqual({...response,replay:true});
  expect((await t.service.supportRequests(staff,trade.orderId,true)).items[0]).toMatchObject({response_details:reply});
  expect(t.escrow.release).not.toHaveBeenCalled();expect(t.escrow.refund).not.toHaveBeenCalled();
  await expect(t.db.query('UPDATE commerce.msnw_p2p_support_requests SET instruction=$1',[instruction+' changed'])).rejects.toThrow('immutable');await expect(t.db.query('DELETE FROM commerce.msnw_p2p_support_responses')).rejects.toThrow('immutable');
  await t.service.action(staff,trade.orderId,'refund',{isOperator:true,explanation:'Synthetic independent support refund'});
  expect(await t.service.requestSupportEvidence(staff,trade.orderId,input)).toEqual({...first,replay:true});expect(await t.service.respondSupportEvidence(maker,trade.orderId,String(first.requestId),reply)).toEqual({...response,replay:true});
  await expect(t.service.requestSupportEvidence(staff,trade.orderId,{...input,instruction:instruction+' Another request.'})).rejects.toMatchObject({code:'p2p.support_request_closed'});
 });
 it('strictly authorizes private staff and participant endpoints and rejects forged fields',async()=>{
  const t=await fixture(),ad=await t.offer(),trade=await t.order(ad.offerId),url='/v1/admin/msnw/p2p/disputes/'+trade.orderId+'/support/requests';
  await t.service.action(seller,trade.orderId,'dispute',{explanation:'Synthetic support endpoint authorization'});
  const payload={recipient:'buyer',instruction,windowHours:24};
  expect((await t.app.inject({method:'POST',url,headers:{authorization:'maker'},payload})).statusCode).toBe(403);
  for(const body of [{...payload,recipient:['buyer']},{...payload,windowHours:1},{...payload,recipient:'third-party'},{...payload,instruction:'short'},{...payload,targetId:'forged'},{...payload,instruction:'Bad hidden \u202e control text'}])expect((await t.app.inject({method:'POST',url,headers:{authorization:'operator'},payload:body})).statusCode).toBe(422);
  expect((await t.db.query('SELECT * FROM commerce.msnw_p2p_support_requests')).rows).toHaveLength(0);
  const accepted=await t.app.inject({method:'POST',url,headers:{authorization:'operator'},payload});expect(accepted.statusCode).toBe(200);expect(accepted.headers['cache-control']).toBe('no-store');
  const readUrl='/v1/wallet/msnw/p2p/orders/'+trade.orderId+'/support/requests';
  const read=await t.app.inject({url:readUrl,headers:{authorization:'maker'}});expect(read.headers['cache-control']).toBe('no-store');expect(read.json().items).toHaveLength(1);
  for(const authorization of ['other','cross'])expect((await t.app.inject({url:readUrl,headers:{authorization}})).statusCode).toBe(404);
  const responded=await t.app.inject({method:'POST',url:readUrl+'/'+accepted.json().requestId+'/respond',headers:{authorization:'maker'},payload:{details:reply}});expect(responded.statusCode).toBe(200);
  expect((await t.app.inject({method:'POST',url:readUrl+'/'+accepted.json().requestId+'/respond',headers:{authorization:'maker'},payload:{details:reply,isOperator:true}})).statusCode).toBe(422);
 });
 it('retains late responses without changing dispute state and bounds new requests while preserving original replay',async()=>{
  const t=await fixture(),ad=await t.offer(),trade=await t.order(ad.offerId),staff={tenantId,userId:'operator'};
  await t.service.action(seller,trade.orderId,'dispute',{explanation:'Synthetic support late response qualification'});
  const old=randomUUID();await t.db.query(`INSERT INTO commerce.msnw_p2p_support_requests(request_id,tenant_id,order_id,requested_by,target_id,instruction,identity_sha256,window_hours,created_at,due_at) VALUES($1,$2,$3,'operator','maker',$4,$5,24,'2026-01-01','2026-01-02')`,[old,tenantId,trade.orderId,instruction,'a'.repeat(64)]);
  expect((await t.service.supportRequests(maker,trade.orderId)).items[0]).toMatchObject({overdue:true});
  await t.service.respondSupportEvidence(maker,trade.orderId,old,reply);expect((await t.service.supportRequests(maker,trade.orderId)).items[0]).toMatchObject({overdue:false,responded_late:true});
  let original:unknown;
  for(let n=1;n<20;n++){const input={recipient:'buyer',instruction:instruction+' Request '+n,windowHours:24},receipt=await t.service.requestSupportEvidence(staff,trade.orderId,input);if(n===1)original=receipt;await t.service.respondSupportEvidence(maker,trade.orderId,String(receipt.requestId),reply);}
  await expect(t.service.requestSupportEvidence(staff,trade.orderId,{recipient:'buyer',instruction:instruction+' Request 20',windowHours:24})).rejects.toMatchObject({status:429});
  expect(await t.service.requestSupportEvidence(staff,trade.orderId,{recipient:'buyer',instruction:instruction+' Request 1',windowHours:24})).toEqual({...original as Record<string,unknown>,replay:true});
  expect((await t.service.order(seller,trade.orderId)).state).toBe('disputed');expect(t.escrow.release).not.toHaveBeenCalled();expect(t.escrow.refund).not.toHaveBeenCalled();
 });

});
