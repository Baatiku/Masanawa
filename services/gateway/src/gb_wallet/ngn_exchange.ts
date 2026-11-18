import {createHmac,randomBytes,timingSafeEqual} from "node:crypto";
import type {NgnActor,NgnBalance,NgnExchange,NgnReceipt} from "@masanawa/postgres";

/** New quantity-priced authority; never use deposit-size tier inference. */
export const NGN_EXCHANGE_RATES=Object.freeze({version:"ngn-quantity-v1",tiers:Object.freeze([
 {sizeGb:10,totalKobo:500_000},{sizeGb:20,totalKobo:950_000},
 {sizeGb:50,totalKobo:2_250_000},{sizeGb:100,totalKobo:4_250_000},
 {sizeGb:200,totalKobo:8_000_000},{sizeGb:280,totalKobo:10_500_000},
 {sizeGb:500,totalKobo:17_500_000},{sizeGb:1000,totalKobo:32_500_000},
 {sizeGb:2000,totalKobo:60_000_000},
])});
export class NgnError extends Error {
 constructor(readonly status:number,readonly code:string){super(code);}
}
export function quoteNgnQuantity(sizeGb:number){
 if(!Number.isSafeInteger(sizeGb)||sizeGb<1||sizeGb>2000)throw new NgnError(422,"invalid_quantity");
 let tier=NGN_EXCHANGE_RATES.tiers[0]!;
 for(const current of NGN_EXCHANGE_RATES.tiers)if(current.sizeGb<=sizeGb)tier=current;
 return {sizeGb,amountMb:sizeGb*1000,amountKobo:sizeGb*(tier.totalKobo/tier.sizeGb),rateVersion:NGN_EXCHANGE_RATES.version};
}
export interface NgnWalletPorts {
 authorize:(header:string|undefined)=>Promise<NgnActor>;
 read:(actor:NgnActor)=>Promise<NgnBalance>;
 exchange:(request:NgnExchange)=>Promise<NgnReceipt>;
 receipt:(actor:NgnActor,operationId:string)=>Promise<NgnReceipt|null>;
 reviewSecret:string;
 ready:()=>boolean;
 now?:()=>number;
}
export function createNgnExchangeService(p:NgnWalletPorts){
 if(Buffer.byteLength(p.reviewSecret)<32)throw new TypeError("NGN review secret must be at least 32 bytes");
 const now=p.now??Date.now;
 const mac=(data:string)=>createHmac("sha256",p.reviewSecret).update("masanawa:ngn-exchange:v1:").update(data).digest("base64url");
 const ready=()=>{if(!p.ready())throw new NgnError(503,"exchange_not_ready");};
 return {
  async quote(a:NgnActor,sizeGb:number){
   ready();const quantity=quoteNgnQuantity(sizeGb);
   const balance=await p.read(a);
   if(balance.frozen||balance.debtKobo>0)throw new NgnError(403,"wallet_restricted");
   const review={...quantity,tenantId:a.tenantId,userId:a.userId,operationId:"ngnx_"+randomBytes(24).toString("hex"),expiresAt:new Date(now()+300_000).toISOString()};
   const payload=Buffer.from(JSON.stringify(review)).toString("base64url");
   return {...quantity,operationId:review.operationId,expiresAt:review.expiresAt,
    balanceKobo:balance.balanceKobo,canAfford:balance.balanceKobo>=quantity.amountKobo,
    reviewToken:payload+"."+mac(payload)};
  },
  async confirm(a:NgnActor,token:string){
   if(typeof token!=="string"||token.length>4096)throw new NgnError(422,"invalid_review");
   const [payload,signature,...extra]=token.split(".");
   if(!payload||!signature||extra.length||!/^[A-Za-z0-9_-]{43}$/.test(signature)||!/^[A-Za-z0-9_-]+$/.test(payload))throw new NgnError(422,"invalid_review");
   const expected=Buffer.from(mac(payload)),actual=Buffer.from(signature);
   if(!timingSafeEqual(expected,actual))throw new NgnError(403,"invalid_review");
   let r:NgnExchange&{expiresAt:string};
   try{r=JSON.parse(Buffer.from(payload,"base64url").toString()) as typeof r;}catch{throw new NgnError(422,"invalid_review");}
   if(!r||r.tenantId!==a.tenantId||r.userId!==a.userId||!/^ngnx_[a-f0-9]{48}$/.test(r.operationId))throw new NgnError(403,"review_account_mismatch");
   // Original completed receipt survives quote expiry/rate changes/offline retry.
   const prior=await p.receipt(a,r.operationId);if(prior)return prior;
   if(!Number.isFinite(Date.parse(r.expiresAt))||Date.parse(r.expiresAt)<=now())throw new NgnError(410,"review_expired");
   ready();
   const current=quoteNgnQuantity(r.sizeGb);
   if(r.rateVersion!==current.rateVersion||r.amountKobo!==current.amountKobo)throw new NgnError(409,"rates_changed");
   return p.exchange({tenantId:a.tenantId,userId:a.userId,operationId:r.operationId,sizeGb:r.sizeGb,amountKobo:r.amountKobo,rateVersion:r.rateVersion,expiresAt:r.expiresAt});
  },
 };
}
