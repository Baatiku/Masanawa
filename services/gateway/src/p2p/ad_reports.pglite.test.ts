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
 for(const file of ['0123_msnw_p2p.sql','0140_msnw_p2p_buy_offers.sql','0141_msnw_p2p_offer_editing.sql','0142_msnw_p2p_method_preferences.sql','0143_msnw_p2p_ad_reports.sql'])await db.exec(readFileSync(new URL('../../../../packages/commerce/migrations/'+file,import.meta.url),'utf8'));
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

const staff={tenantId,userId:'operator'};
const report={category:'fraud',details:'The displayed ad is misleading; please review.'};
describe('private ad reports and independent support triage',{timeout:30_000},()=>{
 it('retains one original private report and only whitelisted public context without changing custody',async()=>{
  const t=await fixture(),ad=await t.offer();
  const before=(await t.db.query('SELECT * FROM commerce.msnw_p2p_offers')).rows;
  const saved=await t.service.reportAd(seller,ad.offerId,report);
  expect(saved).toMatchObject({state:'open',offer_id:ad.offerId,replay:false});
  expect(await t.service.reportAd(seller,ad.offerId,{...report,details:'Different later allegation'})).toEqual({...saved,replay:true});
  const stored=(await t.db.query<Record<string,unknown>>('SELECT * FROM commerce.msnw_p2p_ad_reports')).rows[0]!;
  expect(stored.details).toBe(report.details);expect(stored.public_snapshot).toMatchObject({offerSide:'buy',bankName:'Maker Bank',rateKoboPerMsnw:'100',termsRevision:1});
  expect(JSON.stringify(stored.public_snapshot)).not.toMatch(/1111111111|account_number|account_name|private_label|verification_reference/);
  expect(JSON.stringify(saved)).not.toMatch(/details|snapshot|maker_id|reporter_id|tenant_id/);
  expect((await t.db.query('SELECT * FROM commerce.msnw_p2p_offers')).rows).toEqual(before);
  for(const fn of Object.values(t.escrow))expect(fn).not.toHaveBeenCalled();
 });
 it('recovers original receipts after ad closure or admission loss while denying another actor or tenant',async()=>{
  const t=await fixture(),ad=await t.offer(),saved=await t.service.reportAd(seller,ad.offerId,report);
  await t.service.closeOffer(maker,ad.offerId);t.rights.canTakeBuyOffer=false;
  expect(await t.service.adReportByOffer(seller,ad.offerId)).toMatchObject({report_id:saved.report_id});
  expect(await t.service.reportAd(seller,ad.offerId,report)).toMatchObject({report_id:saved.report_id,replay:true});
  for(const actor of [other,{tenantId:'foreign',userId:'seller'}])await expect(t.service.adReportByOffer(actor,ad.offerId)).rejects.toMatchObject({status:404});
  expect((await t.service.myAdReports(seller)).items).toHaveLength(1);expect((await t.service.myAdReports(other)).items).toEqual([]);
  const noauth=await t.app.inject({url:'/v1/wallet/msnw/p2p/offers/'+ad.offerId+'/report',headers:{authorization:'revoked'}});expect(noauth.statusCode).toBe(401);expect(noauth.headers['cache-control']).toBe('no-store');
 });
 it('enforces strict HTTP payload, Unicode lengths, authentication and current eligibility',async()=>{
  const t=await fixture(),ad=await t.offer(),url='/v1/wallet/msnw/p2p/offers/'+ad.offerId+'/report';
  for(const payload of [{...report,makerId:'forged'}, {...report,public_snapshot:{}},{category:'invalid',details:report.details},{category:'fraud',details:'😀'.repeat(5)},{category:'fraud',details:'bad\u202ehidden text'},{category:'fraud',details:'x'.repeat(2001)}])expect((await t.app.inject({method:'POST',url,headers:{authorization:'seller'},payload})).statusCode).toBe(422);
  expect((await t.app.inject({method:'POST',url,payload:report})).statusCode).toBe(401);
  await expect(t.service.reportAd(maker,ad.offerId,report)).rejects.toMatchObject({status:404});
  t.rights.canTakeBuyOffer=false;await expect(t.service.reportAd(other,ad.offerId,report)).rejects.toMatchObject({status:403});t.rights.canTakeBuyOffer=true;
  const accepted=await t.app.inject({method:'POST',url,headers:{authorization:'seller'},payload:{category:'other',details:'😀'.repeat(10)}});expect(accepted.statusCode).toBe(201);expect(accepted.headers['cache-control']).toBe('no-store');
  expect((await t.app.inject({method:'GET',url:'/v1/admin/msnw/p2p/ad-reports',headers:{authorization:'seller'}})).statusCode).toBe(403);
 });
 it('requires independent reasoned versioned review and keeps final evidence immutable',async()=>{
  const t=await fixture(),ad=await t.offer(),saved=await t.service.reportAd(seller,ad.offerId,report),id=String(saved.report_id);
  const review={decision:'refer',reason:'Independent support triage required',version:1};
  expect((await t.service.adReports(staff)).items[0]).toMatchObject({details:report.details,version:1});
  await expect(t.service.reviewAdReport(seller,id,review)).rejects.toMatchObject({code:'p2p.independent_review_required'});
  await expect(t.service.reviewAdReport(maker,id,review)).rejects.toMatchObject({status:403});
  await expect(t.service.reviewAdReport({...staff,tenantId:'foreign'},id,review)).rejects.toMatchObject({status:404});
  await expect(t.service.reviewAdReport(staff,id,{...review,version:99})).rejects.toMatchObject({status:409});
  const first=await t.service.reviewAdReport(staff,id,review);expect(first).toMatchObject({state:'referred',version:2,replay:false});
  expect(await t.service.reviewAdReport(staff,id,review)).toEqual({...first,replay:true});
  await expect(t.service.reviewAdReport(staff,id,{...review,decision:'dismiss'})).rejects.toMatchObject({status:409});
  await expect(t.db.query('UPDATE commerce.msnw_p2p_ad_reports SET details=$1 WHERE report_id=$2',['Rewritten private report',id])).rejects.toThrow('immutable');
  await expect(t.db.query('DELETE FROM commerce.msnw_p2p_ad_reports WHERE report_id=$1',[id])).rejects.toThrow('immutable');
  expect((await t.service.myAdReports(seller)).items[0]).toMatchObject({state:'referred'});
  expect(JSON.stringify(await t.service.myAdReports(seller))).not.toMatch(/Independent support|review_reason|public_snapshot|details/);
  expect((await t.service.adReports(staff)).items).toEqual([]);expect((await t.service.adReports(staff,{filter:'reviewed'})).items).toHaveLength(1);
  expect((await t.db.query<{state:string}>('SELECT state FROM commerce.msnw_p2p_offers')).rows[0]?.state).toBe('active');
  for(const fn of Object.values(t.escrow))expect(fn).not.toHaveBeenCalled();
 });
 it('paginates tied receipt times without duplicates and binds cursors to actor, tenant and queue',async()=>{
  const t=await fixture();
  for(let i=0;i<45;i++){
   const ad=await t.service.createOffer(maker,{offerSide:'buy',paymentMethodId:methodA,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000',idempotencyKey:'page-ad-'+i.toString().padStart(4,'0')});
   await t.db.query(`INSERT INTO commerce.msnw_p2p_ad_reports(report_id,tenant_id,offer_id,maker_id,reporter_id,category,details,public_snapshot,created_at) VALUES($1,$2,$3,'maker','seller','other','Pagination fixture evidence','{}','2026-10-23T10:00:00.123456Z')`,[randomUUID(),tenantId,ad.offerId]);
  }
  const first=await t.service.myAdReports(seller),second=await t.service.myAdReports(seller,{cursor:first.nextCursor!}),last=await t.service.myAdReports(seller,{cursor:second.nextCursor!});
  expect([first.items.length,second.items.length,last.items.length]).toEqual([20,20,5]);expect(new Set([...first.items,...second.items,...last.items].map(x=>x.report_id)).size).toBe(45);expect(last.nextCursor).toBeNull();
  await expect(t.service.myAdReports(other,{cursor:first.nextCursor!})).rejects.toMatchObject({status:422});
  await expect(t.service.adReports(staff,{cursor:first.nextCursor!})).rejects.toMatchObject({status:422});
  const queue=await t.service.adReports(staff);await expect(t.service.adReports(staff,{filter:'reviewed',cursor:queue.nextCursor!})).rejects.toMatchObject({status:422});
  expect((await t.app.inject({url:'/v1/admin/msnw/p2p/ad-reports?cursor=x&cursor=y',headers:{authorization:'operator'}})).statusCode).toBe(422);
 });
 it('limits new reports across ads while preserving accepted original recovery',async()=>{
  const t=await fixture();let first='';
  for(let i=0;i<21;i++){
   const ad=await t.service.createOffer(maker,{offerSide:'buy',paymentMethodId:methodA,rateKoboPerMsnw:'100',minMicro:'100000',maxMicro:'1000000',inventoryMicro:'2000000',idempotencyKey:'quota-ad-'+i.toString().padStart(4,'0')});
   if(i===0)first=ad.offerId;
   if(i<20)await t.service.reportAd(seller,ad.offerId,report);else await expect(t.service.reportAd(seller,ad.offerId,report)).rejects.toMatchObject({status:429});
  }
  expect(await t.service.reportAd(seller,first,report)).toMatchObject({replay:true});
 });
});
