import {createHash} from 'node:crypto';
import type {FlutterwaveBillReceipt,FlutterwaveBillItem} from '@masanawa/providers';
import {normalizeNigerianMobile,quoteVerifiedWholeGb,type ApprovedWholeGbBundle} from './data_catalogue.js';

export interface NgnDataPurchaseActor {tenantId:string;userId:string}
export interface NgnDataPurchaseRow {
 operationId:string;userId:string;bundleId:string;version:string;phone:string;
 amountNgn:string;costKobo:number;state:'pending'|'delivered'|'failed';
}
export interface NgnDataPurchasePorts {
 approved:()=>Promise<readonly ApprovedWholeGbBundle[]>;
 liveItems:(approved:readonly ApprovedWholeGbBundle[])=>Promise<readonly FlutterwaveBillItem[]>;
 reserve:(v:{tenantId:string;userId:string;operationId:string;idempotencyKey:string;purpose:'data';amountKobo:number})=>Promise<unknown>;
 capture:(v:{tenantId:string;userId:string;operationId:string},costKobo:number)=>Promise<unknown>;
 release:(v:{tenantId:string;userId:string;operationId:string})=>Promise<unknown>;
 /** Live composition commits the NGN hold and provider journal together. */
 admit?:(actor:NgnDataPurchaseActor,entry:NgnDataPurchaseRow,requestHash:string)=>Promise<boolean>;
 claim:(actor:NgnDataPurchaseActor,entry:NgnDataPurchaseRow,requestHash:string)=>Promise<boolean>;
 read:(actor:NgnDataPurchaseActor,operationId:string)=>Promise<NgnDataPurchaseRow|null>;
 resolve:(actor:NgnDataPurchaseActor,operationId:string,state:'delivered'|'failed',providerRef:string|null)=>Promise<void>;
 pay:(v:{billerCode:string;itemCode:string;customerId:string;amount:string;reference:string})=>Promise<FlutterwaveBillReceipt>;
 status:(reference:string)=>Promise<FlutterwaveBillReceipt|null>;
 now?:()=>Date;
}
const validId=(v:string)=>typeof v==='string'&&/^[A-Za-z0-9][A-Za-z0-9_:-]{0,159}$/.test(v);
const validKey=(v:string)=>typeof v==='string'&&/^[A-Za-z0-9_-]{8,128}$/.test(v);
const originalId=(a:NgnDataPurchaseActor,key:string)=>'ngndata_'+createHash('sha256').update(JSON.stringify([a.tenantId,a.userId,key])).digest('hex').slice(0,48);
const actor=(a:NgnDataPurchaseActor)=>{if(!validId(a?.tenantId)||!validId(a?.userId))throw Error('unauthorized');};
function exactNgn(value:string):bigint {
 if(typeof value!=='string'||!/^(?:0|[1-9]\d{0,11})(?:\.\d{1,2})?$/.test(value))throw Error('invalid_amount');
 const [whole,fraction='']=value.split('.');return BigInt(whole!)*100n+BigInt(fraction.padEnd(2,'0')||'0');
}
export function createNgnDataPurchaseService(p:NgnDataPurchasePorts){
 const reconcile=async(a:NgnDataPurchaseActor,id:string)=>{
  actor(a);if(!validId(id))throw Error('invalid_operation');
  const order=await p.read(a,id);if(!order)throw Error('data_redemption_not_found');
  if(order.state!=='pending')return {operationId:id,state:order.state};
  let receipt:FlutterwaveBillReceipt|null;
  try{receipt=await p.status(id);}catch{return {operationId:id,state:'pending' as const};}
  if(!receipt||['pending','unknown','reversed'].includes(receipt.status))return {operationId:id,state:'pending' as const};
  // Failure, as well as delivery, must be independently bound to this exact
  // order. Never release another customer's hold from a mismatched status.
  if(receipt.reference!==id||!receipt.providerReference||receipt.currency!=='NGN'||receipt.customerId!==order.phone||receipt.amount===null||exactNgn(receipt.amount)!==exactNgn(order.amountNgn)||(receipt.itemCode!=null&&receipt.itemCode!==order.bundleId.split(':')[1]))return {operationId:id,state:'pending' as const,needsReview:true};
  if(receipt.status==='failed'){
   await p.release({...a,operationId:id});await p.resolve(a,id,'failed',receipt.providerReference);return {operationId:id,state:'failed' as const};
  }
  if(receipt.status!=='successful')return {operationId:id,state:'pending' as const};
  await p.capture({...a,operationId:id},order.costKobo);await p.resolve(a,id,'delivered',receipt.providerReference);return {operationId:id,state:'delivered' as const};
 };
 return {reconcile,
  async readOriginal(a:NgnDataPurchaseActor,key:string){
   actor(a);if(!validKey(key))throw Error('invalid_idempotency');const id=originalId(a,key),row=await p.read(a,id);
   if(!row||row.operationId!==id||row.userId!==a.userId)throw Error('data_redemption_not_found');
   return {operationId:id,state:row.state,costKobo:row.costKobo,bundleId:row.bundleId,version:row.version,recipientPhone:row.phone};
  },
  async purchase(a:NgnDataPurchaseActor,input:{bundleId:string;version:string;recipientPhone:string;idempotencyKey:string;reviewedCostKobo:number}){
   actor(a);if(!validKey(input.idempotencyKey))throw Error('invalid_idempotency');
   if(!Number.isSafeInteger(input.reviewedCostKobo)||input.reviewedCostKobo<1)throw Error('invalid_reviewed_price');
   const id=originalId(a,input.idempotencyKey),phone=normalizeNigerianMobile(input.recipientPhone);
   const old=await p.read(a,id);
   if(old){
    if(old.userId!==a.userId||old.bundleId!==input.bundleId||old.version!==input.version||old.phone!==phone||old.costKobo!==input.reviewedCostKobo)throw Error('ngn.data.idempotency_conflict');
    return reconcile(a,id);
   }
   const approved=await p.approved(),liveItems=await p.liveItems(approved);
   const quote=quoteVerifiedWholeGb({approved,liveItems,itemId:input.bundleId,version:input.version,recipientPhone:input.recipientPhone,...(p.now?{now:p.now()}: {})});
   // The client supplies only a reviewed-price assertion. Authority remains the
   // independently approved current catalogue; a silent price change is denied.
   if(quote.costKobo!==input.reviewedCostKobo)throw Error('price_changed');
   const hash=createHash('sha256').update(JSON.stringify([quote.id,quote.version,quote.recipientPhone,quote.costKobo,quote.providerAmount])).digest('hex');
   const row:NgnDataPurchaseRow={operationId:id,userId:a.userId,bundleId:quote.id,version:quote.version,phone:quote.recipientPhone,amountNgn:quote.providerAmount,costKobo:quote.costKobo,state:'pending'};
   const created=p.admit?await p.admit(a,row,hash):await (async()=>{await p.reserve({...a,operationId:id,idempotencyKey:input.idempotencyKey,purpose:'data',amountKobo:quote.costKobo});return p.claim(a,row,hash);})();
   if(created){try{await p.pay({billerCode:quote.billerCode,itemCode:quote.itemCode,customerId:quote.recipientPhone,amount:quote.providerAmount,reference:id});}catch{return {operationId:id,state:'pending' as const};}}
   return reconcile(a,id);
  },
 };
}
