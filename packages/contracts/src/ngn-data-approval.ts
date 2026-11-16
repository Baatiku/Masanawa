export interface ApprovedNgnDataBundle {
 readonly version:string;readonly country:'NG';readonly network:'MTN'|'AIRTEL'|'GLO'|'9MOBILE';
 readonly billerCode:string;readonly itemCode:string;readonly allowanceGb:number;readonly allowanceMb?:number;
 readonly extrasLabel?:string;readonly validityDays:number;readonly providerAmount:string;readonly evidenceRef:string;
 readonly reviewedBy:string;readonly reviewedAt:string;readonly expiresAt:string;readonly enabled:boolean;
}
/** Reviewed facts only. Provider names are never parsed into a telecom allowance. */
export function validateNgnDataApprovals(input:unknown):readonly ApprovedNgnDataBundle[]{
 if(!Array.isArray(input)||input.length>100)throw new TypeError('Invalid data approval list');
 const code=(v:unknown)=>typeof v==='string'&&/^[A-Za-z0-9][A-Za-z0-9_.:-]{0,127}$/.test(v);
 const date=(v:unknown)=>typeof v==='string'&&/^\d{4}-\d{2}-\d{2}T.*Z$/.test(v)&&Number.isFinite(Date.parse(v));
 const keys=new Set<string>(),excluded=new Set(['MD606','MD610','MD611','MD612','MD152','MD368']);
 for(const v of input){if(!v||typeof v!=='object'||Array.isArray(v))throw new TypeError('Invalid bundle');const p=v as Record<string,unknown>;
  const mb=p.allowanceMb===undefined?Number(p.allowanceGb)*1000:Number(p.allowanceMb);
  if(typeof p.allowanceGb!=='number'||p.allowanceMb!==undefined&&typeof p.allowanceMb!=='number'||p.allowanceMb===undefined&&!Number.isSafeInteger(p.allowanceGb))throw new TypeError('Use integer MB for fractional-GB approvals');
  if(p.country!=='NG'||!['MTN','AIRTEL','GLO','9MOBILE'].includes(String(p.network))||!code(p.version)||!code(p.billerCode)||!code(p.itemCode)||excluded.has(String(p.itemCode).toUpperCase())||!code(p.evidenceRef)||!code(p.reviewedBy)||!Number.isSafeInteger(mb)||mb<1||mb>1000000||Number(p.allowanceGb)!==mb/1000||!Number.isSafeInteger(p.validityDays)||Number(p.validityDays)<1||Number(p.validityDays)>366||typeof p.providerAmount!=='string'||!/^(?:0|[1-9]\d{0,11})(?:\.\d{1,2})?$/.test(p.providerAmount)||Number(p.providerAmount)<=0||!date(p.reviewedAt)||!date(p.expiresAt)||Date.parse(String(p.expiresAt))<=Date.parse(String(p.reviewedAt))||typeof p.enabled!=='boolean'||p.extrasLabel!==undefined&&(typeof p.extrasLabel!=='string'||!p.extrasLabel.length||p.extrasLabel.length>160||/[\x00-\x1f\x7f]/.test(p.extrasLabel)))throw new TypeError('Bundle lacks valid reviewed allowance, exact price or provenance');
  const key=p.billerCode+':'+p.itemCode;if(keys.has(key))throw new TypeError('Duplicate bundle identity');keys.add(key);
 }
 return input as ApprovedNgnDataBundle[];
}
