/** Independent provider status may resolve an original order only when every
 * financial and recipient binding agrees. Never creates a provider payment. */
export function verifiedNgnDataOutcome(order:{operationId:string;phone:string;amountNgn:string;bundleId:string},receipt:{reference:string;providerReference:string|null;currency:string|null;customerId:string|null;amount:string|null;itemCode?:string|null;status:string}|null):{state:'pending'|'delivered'|'failed';needsReview?:boolean;providerReference?:string}{
 if(!receipt||['pending','unknown','reversed'].includes(receipt.status))return {state:'pending'};
 const amount=(value:string|null)=>{if(typeof value!=='string'||!/^(?:0|[1-9]\d{0,11})(?:\.\d{1,2})?$/.test(value))return null;const [whole,fraction='']=value.split('.');return BigInt(whole!)*100n+BigInt(fraction.padEnd(2,'0'));};
 const expected=amount(order.amountNgn),actual=amount(receipt.amount);
 if(receipt.reference!==order.operationId||!receipt.providerReference||receipt.currency!=='NGN'||receipt.customerId!==order.phone||expected===null||actual===null||actual!==expected||(receipt.itemCode!=null&&receipt.itemCode!==order.bundleId.split(':')[1]))return {state:'pending',needsReview:true};
 return receipt.status==='successful'?{state:'delivered',providerReference:receipt.providerReference}:receipt.status==='failed'?{state:'failed',providerReference:receipt.providerReference}:{state:'pending'};
}
