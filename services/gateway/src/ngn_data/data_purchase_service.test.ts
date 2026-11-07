import {describe,it,expect,vi} from 'vitest';
import type {FlutterwaveBillReceipt} from '@masanawa/providers';
import {createNgnDataPurchaseService,type NgnDataPurchasePorts,type NgnDataPurchaseRow} from './data_purchase_service.js';
import {projectVerifiedWholeGbBundles} from './data_catalogue.js';
const approved=[{version:'v1',country:'NG' as const,network:'MTN' as const,billerCode:'BIL22',itemCode:'DT001',allowanceGb:1,allowanceMb:1000,validityDays:30,providerAmount:'500.25',evidenceRef:'review-2026',reviewedBy:'operator-1',reviewedAt:'2026-10-20T00:00:00Z',expiresAt:'2026-11-20T00:00:00Z',enabled:true}];
const live=[{billerCode:'BIL22',itemCode:'DT001',name:'untrusted allowance title',amount:'500.25',currency:'NGN' as const,labelName:'Phone'}];
const actor={tenantId:'tenant',userId:'fan'};
const input={bundleId:'BIL22:DT001',version:'v1',recipientPhone:'08012345678',idempotencyKey:'same-original-key',reviewedCostKobo:50025};
function fixture(){
 let journal:NgnDataPurchaseRow|null=null;
 let result:Partial<FlutterwaveBillReceipt>={status:'successful'};
 const ports:NgnDataPurchasePorts={
  approved:vi.fn(async()=>approved),liveItems:vi.fn(async()=>live),
  reserve:vi.fn(async()=>{}),capture:vi.fn(async()=>{}),release:vi.fn(async()=>{}),
  claim:vi.fn(async(_a,row)=>{if(journal)return false;journal=row;return true;}),
  read:vi.fn(async()=>journal),resolve:vi.fn(async(_a,_id,state)=>{if(journal)journal={...journal,state};}),
  pay:vi.fn(async(v)=>({reference:v.reference,providerReference:'dispatch-ack',status:'pending',amount:'500.25',currency:'NGN',customerId:'+2348012345678',itemCode:'DT001',product:null,productName:null,extra:null})),
  status:vi.fn(async(id)=>({reference:id,providerReference:'verified-provider-ref',status:'successful',amount:'500.25',currency:'NGN',customerId:'+2348012345678',itemCode:'DT001',product:null,productName:null,extra:null,...result})),
  now:()=>new Date('2026-10-25T00:00:00Z'),
 };
 return {ports,service:createNgnDataPurchaseService(ports),setStatus:(value:Partial<FlutterwaveBillReceipt>)=>{result=value;},row:()=>journal};
}
describe('direct NGN telecom purchases',()=>{
 it('keeps a bundle allowance separate from its exact kobo debit',()=>{
  const [bundle]=projectVerifiedWholeGbBundles(approved,live,new Date('2026-10-25T00:00:00Z'));
  expect(bundle).toMatchObject({currency:'NGN',unit:'kobo',allowanceMb:1000,allowanceGb:1,costKobo:50025});
 });
 it('reserves the NGN price, dispatches once and captures only independently verified delivery',async()=>{
  const f=fixture();expect(await f.service.purchase(actor,input)).toMatchObject({state:'delivered'});
  expect(f.ports.reserve).toHaveBeenCalledWith(expect.objectContaining({purpose:'data',amountKobo:50025}));
  expect(f.ports.capture).toHaveBeenCalledWith(expect.objectContaining(actor),50025);
  await f.service.purchase(actor,input);expect(f.ports.pay).toHaveBeenCalledTimes(1);expect(f.ports.capture).toHaveBeenCalledTimes(1);
 });
 it('does not dispatch or claim an order when funds cannot be reserved',async()=>{
  const f=fixture();f.ports.reserve=vi.fn(async()=>{throw Error('ngn.insufficient_balance');});
  await expect(f.service.purchase(actor,input)).rejects.toThrow('ngn.insufficient_balance');expect(f.ports.claim).not.toHaveBeenCalled();expect(f.ports.pay).not.toHaveBeenCalled();
 });
 it('rejects a same-version price change before reserving or dispatching',async()=>{
  const f=fixture();f.ports.approved=async()=>[{...approved[0]!,providerAmount:'501'}];f.ports.liveItems=async()=>[{...live[0]!,amount:'501'}];
  await expect(f.service.purchase(actor,input)).rejects.toThrow('price_changed');expect(f.ports.reserve).not.toHaveBeenCalled();expect(f.ports.pay).not.toHaveBeenCalled();
 });
 it('uses atomic admission when composed, and never falls back after its rollback',async()=>{
  const f=fixture();f.ports.admit=vi.fn(async()=>{throw Error('transaction_rolled_back');});
  await expect(f.service.purchase(actor,input)).rejects.toThrow('transaction_rolled_back');expect(f.ports.reserve).not.toHaveBeenCalled();expect(f.ports.claim).not.toHaveBeenCalled();expect(f.ports.pay).not.toHaveBeenCalled();
 });
 it('recovers the original pending order even after its catalogue expires',async()=>{
  const f=fixture();f.setStatus({status:'pending'});await f.service.purchase(actor,input);
  f.ports.approved=vi.fn(async()=>{throw Error('catalogue_expired');});f.ports.liveItems=vi.fn(async()=>{throw Error('catalogue_unavailable');});f.setStatus({status:'successful'});
  expect(await f.service.purchase(actor,input)).toMatchObject({state:'delivered'});expect(f.ports.pay).toHaveBeenCalledTimes(1);expect(f.ports.approved).not.toHaveBeenCalled();
 });
 it('retains one operation across uncertain dispatch without a second payment',async()=>{
  const f=fixture();f.ports.pay=vi.fn(async()=>{throw Error('dispatch_outcome_unknown');});f.setStatus({status:'pending'});
  expect(await f.service.purchase(actor,input)).toMatchObject({state:'pending'});expect(await f.service.purchase(actor,input)).toMatchObject({state:'pending'});expect(f.ports.pay).toHaveBeenCalledTimes(1);
 });
 it.each(['recipient','price','bundle'])('binds original retries to their reviewed %s',async(field)=>{
  const f=fixture();f.setStatus({status:'pending'});await f.service.purchase(actor,input);
  const changed=field==='recipient'?{recipientPhone:'08098765432'}:field==='price'?{reviewedCostKobo:50026}:{bundleId:'BIL22:DIFFERENT'};
  await expect(f.service.purchase(actor,{...input,...changed})).rejects.toThrow('idempotency_conflict');expect(f.ports.pay).toHaveBeenCalledTimes(1);
 });
 it.each(['successful','failed'] as const)('does not settle mismatched %s provider evidence',async(status)=>{
  const f=fixture();f.setStatus({status,customerId:'+2348098765432'});expect(await f.service.purchase(actor,input)).toMatchObject({state:'pending',needsReview:true});expect(f.ports.capture).not.toHaveBeenCalled();expect(f.ports.release).not.toHaveBeenCalled();
 });
 it('releases a definitively failed matching order once',async()=>{
  const f=fixture();f.setStatus({status:'failed'});expect(await f.service.purchase(actor,input)).toMatchObject({state:'failed'});await f.service.purchase(actor,input);expect(f.ports.release).toHaveBeenCalledTimes(1);expect(f.ports.capture).not.toHaveBeenCalled();
 });
});
