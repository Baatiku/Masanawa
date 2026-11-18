import {createHash} from "node:crypto";
import type {FlutterwaveBillReceipt,FlutterwaveBillItem} from "@masanawa/providers";
import {quoteVerifiedWholeGb,type ApprovedWholeGbBundle} from "./data_catalogue.js";

export interface DataRedemptionActor {tenantId:string;userId:string}
export interface DataRedemptionRow {
 operationId:string;userId:string;bundleId:string;version:string;phone:string;
 amountNgn:string;costMb:number;state:"pending"|"delivered"|"failed";
}
export interface DataRedemptionPorts {
 approved:()=>Promise<readonly ApprovedWholeGbBundle[]>;
 liveItems:(approved:readonly ApprovedWholeGbBundle[])=>Promise<readonly FlutterwaveBillItem[]>;
 reserve:(v:{tenantId:string;userId:string;operationId:string;idempotencyKey:string;
   use:"redeem";amountMb:number})=>Promise<unknown>;
 capture:(v:{tenantId:string;userId:string;operationId:string},costMb:number)=>Promise<unknown>;
 release:(v:{tenantId:string;userId:string;operationId:string})=>Promise<unknown>;
 claim:(actor:DataRedemptionActor,entry:DataRedemptionRow,requestHash:string)=>Promise<boolean>;
 read:(actor:DataRedemptionActor,operationId:string)=>Promise<DataRedemptionRow|null>;
 resolve:(actor:DataRedemptionActor,operationId:string,state:"delivered"|"failed",providerRef:string|null)=>Promise<void>;
 pay:(v:{billerCode:string;itemCode:string;customerId:string;amount:string;reference:string})=>Promise<FlutterwaveBillReceipt>;
 status:(reference:string)=>Promise<FlutterwaveBillReceipt|null>;
 now?:()=>Date;
}
const validId=(s:string)=>/^[A-Za-z0-9][A-Za-z0-9_:-]{0,159}$/.test(s);
const validKey=(s:string)=>/^[A-Za-z0-9_-]{8,128}$/.test(s);
const originalId=(actor:DataRedemptionActor,key:string)=>"data_"+
 createHash("sha256").update(JSON.stringify([
  actor.tenantId,actor.userId,key,
 ])).digest("hex").slice(0,48);
function checkActor(a:DataRedemptionActor) {
 if(!validId(a?.tenantId)||!validId(a?.userId))throw new Error("unauthorized");
}
function exactNgn(s:string):bigint {
 if(!/^(?:0|[1-9]\d{0,11})(?:\.\d{1,2})?$/.test(s))throw Error("invalid_amount");
 const [n,d=""]=s.split(".");
 return BigInt(n!)*100n+BigInt(d.padEnd(2,"0")||"0");
}
export function createDataRedemptionService(ports:DataRedemptionPorts) {
 const reconcile=async(actor:DataRedemptionActor,id:string)=>{
   checkActor(actor);
   if(!validId(id))throw Error("invalid_operation");
   const journal=await ports.read(actor,id);
   if(!journal)throw Error("data_redemption_not_found");
   if(journal.state!=="pending")return {state:journal.state,operationId:id};
   let receipt:FlutterwaveBillReceipt|null;
   try {receipt=await ports.status(id);}catch{return {state:"pending" as const,operationId:id};}
   if(!receipt || receipt.status==="pending" || receipt.status==="unknown" || receipt.status==="reversed") {
     return {state:"pending" as const,operationId:id};
   }
   if(receipt.status==="failed"){
     await ports.release({...actor,operationId:id});
     await ports.resolve(actor,id,"failed",receipt.providerReference);
     return {state:"failed" as const,operationId:id};
   }
   // A provider dispatch ACK is never delivery proof. Require independently
   // fetched successful status and exact NGN amount, recipient, currency,
   // original operation and provider reference; optional item code may not
   // contradict reviewed selection.
   if(receipt.status!=="successful"||receipt.reference!==id||
      !receipt.providerReference||receipt.currency!=="NGN"||
      receipt.customerId!==journal.phone||
      receipt.amount===null||exactNgn(receipt.amount)!==exactNgn(journal.amountNgn)||
      (receipt.itemCode!=null&&receipt.itemCode!==journal.bundleId.split(":")[1])){
     return {state:"pending" as const,operationId:id,needsReview:true};
   }
   await ports.capture({...actor,operationId:id},journal.costMb);
   await ports.resolve(actor,id,"delivered",receipt.providerReference);
   return {state:"delivered" as const,operationId:id};
 };
 return {
  reconcile,
  async readOriginal(actor:DataRedemptionActor,key:string){
   checkActor(actor);
   if(!validKey(key))throw Error("invalid_idempotency");
   const id=originalId(actor,key);
   const row=await ports.read(actor,id);
   if(!row||row.operationId!==id||row.userId!==actor.userId)
     throw Error("data_redemption_not_found");
   // A read-only recovery: no quote, reserve, provider dispatch or reconcile.
   return {operationId:id,state:row.state,costMb:row.costMb,
     bundleId:row.bundleId,version:row.version,recipientPhone:row.phone};
  },
  async purchase(actor:DataRedemptionActor,input:{
   bundleId:string;version:string;recipientPhone:string;idempotencyKey:string;
  }){
   checkActor(actor);
   if(!validKey(input.idempotencyKey))throw Error("invalid_idempotency");
   const approved=await ports.approved();
   const live=await ports.liveItems(approved);
   const quote=quoteVerifiedWholeGb({approved,liveItems:live,itemId:input.bundleId,
     version:input.version,recipientPhone:input.recipientPhone,
     ...(ports.now ? {now:ports.now()} : {})});
   const id=originalId(actor,input.idempotencyKey);
   const fingerprint=createHash("sha256").update(JSON.stringify([
     quote.id,quote.version,quote.recipientPhone,quote.costMb,quote.providerAmount,
   ])).digest("hex");
   await ports.reserve({...actor,operationId:id,idempotencyKey:input.idempotencyKey,
     use:"redeem",amountMb:quote.costMb});
   const entry:DataRedemptionRow={
     operationId:id,userId:actor.userId,bundleId:quote.id,version:quote.version,
     phone:quote.recipientPhone,amountNgn:quote.providerAmount,
     costMb:quote.costMb,state:"pending",
   };
   const created=await ports.claim(actor,entry,fingerprint);
   if(created){
     // A crash after the durable claim or an unknown dispatch outcome leaves
     // a reserved MB hold, never a second external payment.
     try {
       await ports.pay({billerCode:quote.billerCode,itemCode:quote.itemCode,
         customerId:quote.recipientPhone,amount:quote.providerAmount,reference:id});
     }catch{return {state:"pending" as const,operationId:id};}
   }
   return reconcile(actor,id);
  },
 };
}
