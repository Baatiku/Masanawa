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
 for(const file of ['0123_msnw_p2p.sql','0140_msnw_p2p_buy_offers.sql','0141_msnw_p2p_offer_editing.sql','0142_msnw_p2p_method_preferences.sql','0143_msnw_p2p_ad_reports.sql','0144_msnw_p2p_bulk_pause.sql','0145_msnw_p2p_dispute_context.sql','0148_msnw_p2p_case_notes.sql'])await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/'+file,import.meta.url),'utf8'));
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


const note='Private synthetic investigation context for authorized support.';
describe('immutable staff-only P2P case notes',{timeout:30_000},()=>{
 it('recovers the original actor-owned note, preserves authorship and never changes public context or escrow',async()=>{
  const t=await fixture(),ad=await t.offer(),trade=await t.order(ad.offerId),staff={tenantId,userId:'operator'};
  const first=await t.service.addCaseNote(staff,trade.orderId,note);expect(await t.service.addCaseNote(staff,trade.orderId,'  '+note+'  ')).toEqual({...first,replay:true});
  const peer=await t.service.addCaseNote({tenantId,userId:'other-operator'},trade.orderId,note);expect(peer.noteId).not.toBe(first.noteId);
  expect((await t.service.caseNotes(staff,trade.orderId)).items.filter(x=>x.is_own)).toHaveLength(1);
  expect(JSON.stringify(await t.service.orderSupport(seller,trade.orderId))).not.toContain(note);
  expect((await t.service.order(seller,trade.orderId)).state).toBe('awaiting_payment');expect(t.escrow.release).not.toHaveBeenCalled();expect(t.escrow.refund).not.toHaveBeenCalled();
  await expect(t.db.query('UPDATE commerce.msnw_p2p_case_notes SET details=$1',[note+' changed'])).rejects.toThrow('immutable');await expect(t.db.query('DELETE FROM commerce.msnw_p2p_case_notes')).rejects.toThrow('immutable');
  await t.service.action(seller,trade.orderId,'dispute',{explanation:'Synthetic separate dispute for refund qualification'});await t.service.action(staff,trade.orderId,'refund',{isOperator:true,explanation:'Synthetic independent refund'});
  expect(await t.service.addCaseNote(staff,trade.orderId,note)).toEqual({...first,replay:true});expect((await t.service.caseNotes(staff,trade.orderId)).state).toBe('cancelled');
 });
 it('requires staff authorization, strict bounded content and tenant/order scope on private HTTP',async()=>{
  const t=await fixture(),ad=await t.offer(),trade=await t.order(ad.offerId),url='/v1/admin/msnw/p2p/disputes/'+trade.orderId+'/notes';
  for(const authorization of ['maker','seller','other'])expect((await t.app.inject({method:'POST',url,headers:{authorization},payload:{details:note}})).statusCode).toBe(403);
  expect((await t.app.inject({url})).statusCode).toBe(401);
  for(const payload of [{details:['private']},{details:'short'},{details:'Bad hidden \u202e control text'},{details:note,isOperator:true},{details:'a'.repeat(2001)}])expect((await t.app.inject({method:'POST',url,headers:{authorization:'operator'},payload})).statusCode).toBe(422);
  const accepted=await t.app.inject({method:'POST',url,headers:{authorization:'operator'},payload:{details:note}});expect(accepted.statusCode).toBe(200);expect(accepted.headers['cache-control']).toBe('no-store');
  const read=await t.app.inject({url,headers:{authorization:'operator'}});expect(read.statusCode).toBe(200);expect(read.headers['cache-control']).toBe('no-store');expect(read.json().items[0]).toMatchObject({details:note,is_own:true});
  expect((await t.app.inject({url,headers:{authorization:'cross-operator'}})).statusCode).toBe(404);expect((await t.app.inject({url:url+'?owner=other',headers:{authorization:'operator'}})).statusCode).toBe(422);
  expect((await t.app.inject({url:'/v1/wallet/msnw/p2p/orders/'+trade.orderId+'/notes',headers:{authorization:'seller'}})).statusCode).toBe(404);
 });
 it('bounds new notes while preserving original recovery at capacity',async()=>{
  const t=await fixture(),ad=await t.offer(),trade=await t.order(ad.offerId),staff={tenantId,userId:'operator'};
  const first=await t.service.addCaseNote(staff,trade.orderId,note);
  for(let n=1;n<50;n++)await t.service.addCaseNote(staff,trade.orderId,note+' Synthetic item '+n);
  expect((await t.service.caseNotes(staff,trade.orderId))).toMatchObject({canAdd:false,limit:50});await expect(t.service.addCaseNote(staff,trade.orderId,note+' Extra note')).rejects.toMatchObject({status:429});expect(await t.service.addCaseNote(staff,trade.orderId,note)).toEqual({...first,replay:true});
  expect((await t.db.query('SELECT * FROM commerce.msnw_p2p_case_notes')).rows).toHaveLength(50);expect(t.escrow.release).not.toHaveBeenCalled();expect(t.escrow.refund).not.toHaveBeenCalled();
 });
});
