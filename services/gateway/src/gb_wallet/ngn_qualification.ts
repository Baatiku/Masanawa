import {NGN_EXCHANGE_RATES} from './ngn_exchange.js';

/** Operator-provided fulfillment evidence, never customer quote input. Amounts
 * are integer kobo. A version mismatch or expired evidence closes new exchanges;
 * already-completed original receipts remain readable. */
export interface NgnExchangeQualification {
 rateVersion:string;reference:string;expiresAt:string;
 fulfillmentKoboPerGb:number;fixedFeeKobo:number;feeBps:number;minimumMarginBps:number;
 maximumGb:number;
}
export function qualifiedNgnExchange(raw:string|undefined,at=Date.now()):boolean {
 if(!raw)return false;
 try {
  const q=JSON.parse(raw) as NgnExchangeQualification;
  if(!q||q.rateVersion!==NGN_EXCHANGE_RATES.version||
    typeof q.reference!=='string'||!/^[A-Za-z0-9][A-Za-z0-9_.:-]{3,159}$/.test(q.reference)||
    typeof q.expiresAt!=='string'||!Number.isFinite(Date.parse(q.expiresAt))||Date.parse(q.expiresAt)<=at||
    !Number.isSafeInteger(q.fulfillmentKoboPerGb)||q.fulfillmentKoboPerGb<=0||
    !Number.isSafeInteger(q.fixedFeeKobo)||q.fixedFeeKobo<0||
    !Number.isInteger(q.feeBps)||q.feeBps<0||q.feeBps>=10000||
    !Number.isInteger(q.minimumMarginBps)||q.minimumMarginBps<0||q.minimumMarginBps>=10000||
    q.maximumGb!==2000)return false;
  // Check every permitted custom amount, including both sides of tier changes.
  // BigInt prevents fee/margin rounding from manufacturing qualified profit.
  for(let gb=1;gb<=q.maximumGb;gb++){
   let tier=NGN_EXCHANGE_RATES.tiers[0]!;
   for(const t of NGN_EXCHANGE_RATES.tiers)if(t.sizeGb<=gb)tier=t;
   const total=BigInt(gb)*BigInt(tier.totalKobo/tier.sizeGb);
   const fees=(total*BigInt(q.feeBps)+9999n)/10000n+BigInt(q.fixedFeeKobo);
   const costs=BigInt(gb)*BigInt(q.fulfillmentKoboPerGb)+fees;
   if((total-costs)*10000n<total*BigInt(q.minimumMarginBps))return false;
  }
  return true;
 }catch{return false;}
}
