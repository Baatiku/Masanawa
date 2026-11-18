import {Pool} from 'pg';
import {beforeAll,afterAll,describe,expect,it} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {createBillingQuote} from '@masanawa/commerce';
import {runMigrations} from '../migrations.js';
import {platformProductMigrationRoots} from '../readiness.js';
import {createPostgresBillingQuoteRepository} from './billing-funding.js';
import {createMsnwBillingFunding} from '../../../../../services/gateway/src/msn_wallet/billing_funding.js';
const url=process.env.MASANAWA_TEST_DATABASE_URL;
(url?describe:describe.skip)('MSNW bill repeat PostgreSQL reservation boundary',()=>{
 let pool:Pool;
 beforeAll(async()=>{pool=new Pool({connectionString:url!});await runMigrations(pool,platformProductMigrationRoots());},30000);
 afterAll(()=>pool?.end());
 async function fixture(){
  const owner={tenantId:createCanonicalId('tenant'),userId:createCanonicalId('user')},now=new Date().toISOString();
  await pool.query('INSERT INTO identity.tenants(tenant_id,created_at,updated_at) VALUES($1,$2,$2)',[owner.tenantId,now]);
  await pool.query('INSERT INTO identity.users(tenant_id,user_id,created_at,updated_at) VALUES($1,$2,$3,$3)',[owner.tenantId,owner.userId,now]);
  await pool.query("INSERT INTO security.platform_user_profiles(tenant_id,user_id,display_name,email,locale,created_at,updated_at) VALUES($1,$2,'Bill fixture',$2||'@example.invalid','en',$3,$3)",[owner.tenantId,owner.userId,now]);
  // Isolated fixture units, never proof of live backing or production issuance.
  await pool.query('INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id,available_micro) VALUES($1,$2,100000000)',[owner.tenantId,owner.userId]);
  const quotes=createPostgresBillingQuoteRepository(pool),service=createMsnwBillingFunding({pool,quotes});
  async function quote(customerId='fixture-customer',verifiedCustomerName?:string){
   const at=new Date().toISOString();
   const q=createBillingQuote({...owner,categoryCode:'AIRTIME',billerCode:'fixture-biller',itemCode:'fixture-item',itemName:'Fixture airtime',customerId,...(verifiedCustomerName?{verifiedCustomerName}:{}),serviceAmountKobo:100,feeAmountKobo:0,createdAt:at,expiresAt:new Date(Date.now()+600000).toISOString()});
   await quotes.createQuote(q);await quotes.confirmQuote({...owner,quoteId:q.quoteId,quoteRevision:q.revision,confirmedAt:at});
   return {...owner,quoteId:q.quoteId,quoteRevision:q.revision,fulfillmentReference:'msnw-bill-'+q.quoteId,categoryCode:'AIRTIME',billerCode:q.billerCode,itemCode:q.itemCode,customerId,amount:'1',currency:'NGN' as const};
  }
  return{owner,service,quote};
 }
 it('blocks matching unresolved purchases across new keys while replaying the original',async()=>{
  const f=await fixture(),first=await f.quote('08030000000'),second=await f.quote('+2348030000000');
  await f.service.funding.reserveConfirmedBill(first);await f.service.funding.reserveConfirmedBill(first);
  await expect(f.service.funding.reserveConfirmedBill(second)).rejects.toMatchObject({code:'msnw.billing.previous_unresolved'});
  const preview=await f.service.preview(f.owner,second.quoteId,second.quoteRevision);
  expect(preview.recentPurchase).toMatchObject({reference:first.fulfillmentReference,state:'reserved'});
  const balance=await pool.query('SELECT available_micro::text,reserved_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2',[f.owner.tenantId,f.owner.userId]);
  expect(balance.rows[0]).toEqual({available_micro:'99000000',reserved_micro:'1000000'});
 });
 it('requires exact intentional repeat consent and makes that consent immutable',async()=>{
  const f=await fixture(),first=await f.quote();await f.service.funding.reserveConfirmedBill(first);
  await f.service.funding.settleBill({...f.owner,fulfillmentReference:first.fulfillmentReference,state:'succeeded',providerReference:'fixture-proof'});
  const second=await f.quote();await expect(f.service.funding.reserveConfirmedBill(second)).rejects.toMatchObject({code:'msnw.billing.repeat_confirmation_required'});
  await f.service.approveRepeat(f.owner,second.quoteId,second.quoteRevision,first.fulfillmentReference);
  await expect(pool.query('DELETE FROM commerce.msnw_bill_repeat_consents WHERE tenant_id=$1',[f.owner.tenantId])).rejects.toThrow();
  await f.service.funding.reserveConfirmedBill(second);
  await expect(f.service.approveRepeat(f.owner,(await f.quote()).quoteId,1,first.fulfillmentReference)).rejects.toThrow();
 });
 it('durably closes only unreserved quotes and fences any later reservation',async()=>{
  const f=await fixture(),request=await f.quote();
  await expect(f.service.closeUnreserved({...f.owner,userId:createCanonicalId('user')},request.quoteId,request.quoteRevision)).rejects.toMatchObject({statusCode:404});
  expect(await f.service.closeUnreserved(f.owner,request.quoteId,request.quoteRevision)).toMatchObject({closed:true,state:'expired'});
  await expect(f.service.funding.reserveConfirmedBill(request)).rejects.toMatchObject({code:'msnw.billing.quote_changed'});
  const submitted=await f.quote();await f.service.funding.reserveConfirmedBill(submitted);
  expect(await f.service.closeUnreserved(f.owner,submitted.quoteId,submitted.quoteRevision)).toMatchObject({closed:false,state:'reserved'});
 });
 it('a close racing reserve cannot both prove closure and reserve funds',async()=>{
  const f=await fixture(),request=await f.quote();
  const [closed,reserved]=await Promise.allSettled([f.service.closeUnreserved(f.owner,request.quoteId,request.quoteRevision),f.service.funding.reserveConfirmedBill(request)]);
  if(closed.status==='fulfilled'&&closed.value.closed)expect(reserved.status).toBe('rejected');
  if(reserved.status==='fulfilled'){expect(closed.status).toBe('fulfilled');if(closed.status==='fulfilled')expect(closed.value.closed).toBe(false);}
 });
 it('serializes two devices with different keys and does not block a different recipient',async()=>{
  const f=await fixture(),first=await f.quote(),second=await f.quote();
  const outcomes=await Promise.allSettled([f.service.funding.reserveConfirmedBill(first),f.service.funding.reserveConfirmedBill(second)]);
  expect(outcomes.filter(r=>r.status==='fulfilled')).toHaveLength(1);
  expect(outcomes.filter(r=>r.status==='rejected')).toHaveLength(1);
  await f.service.funding.reserveConfirmedBill(await f.quote('another-customer'));
 });
 it('rejects changed provider account identity before reserving MSNW',async()=>{
  const f=await fixture(),request=await f.quote('meter-100','Ada Customer');
  await expect(f.service.funding.reserveConfirmedBill({...request,customerName:'Different Customer'}))
    .rejects.toMatchObject({code:'msnw.billing.quote_changed'});
  const before=await pool.query('SELECT available_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2',[f.owner.tenantId,f.owner.userId]);
  expect(before.rows[0]?.available_micro).toBe('100000000');
  await f.service.funding.reserveConfirmedBill({...request,customerName:'Ada Customer'});
 });
});
