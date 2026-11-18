import { createHmac, timingSafeEqual } from "node:crypto";
const endpoint = "https://api.billstack.co/v2/thirdparty/generateVirtualAccount/";
export interface BillstackReservedAccount {
  reference: string; accountNumber: string; accountName: string; bankName: string; bankId: BillstackBankId;
}
export type BillstackBankId = "9PSB" | "PALMPAY";
export interface BillstackAccountApplicant {
  reference: string; email: string; phone: string; firstName: string; lastName: string;
}
export class BillstackProviderError extends Error {
  constructor(readonly code: string, message = "Billstack provider unavailable") {
    super(message); this.name = "BillstackProviderError";
  }
}
type Fetcher = typeof fetch;
/** Account creation stays Nigeria-only. The signed-in contact may now be
 * stored as E.164; Billstack's existing applicant payload remains 0XXXXXXXXXX. */
function billstackLocalPhone(phone:string):string|null{
  const local=phone.startsWith('+234')?`0${phone.slice(4)}`:phone;
  return /^0(?:70|80|81|90|91)\d{8}$/u.test(local)?local:null;
}
function object(x: unknown): Record<string,unknown> {
  if(!x || typeof x!=="object" || Array.isArray(x)) throw new BillstackProviderError("invalid_response");
  return x as Record<string,unknown>;
}
function text(x:unknown, min=1,max=160):string {
  if(typeof x!=="string"||x.length<min||x.length>max||x.trim()!==x) throw new BillstackProviderError("invalid_response");
  return x;
}
/** Shared preflight: reject unsupported applicants before any durable assignment. */
export function assertBillstackApplicant(applicant:BillstackAccountApplicant):void {
  if(!/^[A-Za-z0-9_-]{8,128}$/.test(applicant.reference)||
    !/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(applicant.email)||
    billstackLocalPhone(applicant.phone)===null||
    !/^[\p{L}\p{M} .'-]{1,80}$/u.test(applicant.firstName)||
    !/^[\p{L}\p{M} .'-]{1,80}$/u.test(applicant.lastName))
    throw new BillstackProviderError("invalid_applicant");
}
/** Official v2 reserved account contract; current website also advertises one-time checkout accounts. */
export function createBillstackReservedAccountClient(input:{secretKey:string; bankId?:BillstackBankId; fetcher?:Fetcher}) {
  if(typeof input.secretKey!=="string"||input.secretKey.trim().length<12) throw new TypeError("Missing Billstack server secret");
  const bankId=input.bankId??"9PSB";
  if(bankId!=="9PSB"&&bankId!=="PALMPAY")throw new TypeError("Unsupported Billstack bank");
  const fetcher=input.fetcher??fetch;
  return {
    /** Independent, read-only bank transaction proof; never creates an account. */
    async transaction(sessionId:string):Promise<{eventId:string;accountReference:string;accountNumber:string;amountKobo:number;receivedAt:string;bankName:string}>{
      if(!/^[A-Za-z0-9][A-Za-z0-9_.:-]{0,159}$/.test(sessionId))throw new BillstackProviderError('invalid_transaction_id');
      let response:Response;
      try{response=await fetcher('https://api.billstack.co/v2/thirdparty/getTransaction/',{method:'POST',headers:{authorization:'Bearer '+input.secretKey,'content-type':'application/json',accept:'application/json'},body:JSON.stringify({session_id:sessionId}),signal:AbortSignal.timeout(15000),redirect:'error'});}catch{throw new BillstackProviderError('transaction_lookup_unavailable');}
      if(!response.ok)throw new BillstackProviderError('transaction_lookup_unavailable');
      const envelope=object(await response.json());if(envelope.status!==true)throw new BillstackProviderError('transaction_lookup_unavailable');
      const data=object(envelope.data);
      if(data.status!=='SUCCESS'||data.is_settled!==true||data.method!=='TRANSFER')throw new BillstackProviderError('transaction_not_settled');
      if(data.session_id!==sessionId||data.transaction_ref!==sessionId)throw new BillstackProviderError('transaction_id_mismatch');
      const accountNumber=text(data.nuban,10,10);if(!/^\d{10}$/.test(accountNumber))throw new BillstackProviderError('invalid_response');
      const receivedAt=text(data.created_at,1,100);if(!Number.isFinite(Date.parse(receivedAt)))throw new BillstackProviderError('invalid_response');
      return {eventId:sessionId,accountReference:text(data.reference),accountNumber,amountKobo:billstackAmountKobo(data.amount),receivedAt,bankName:text(data.bank,1,100)};
    },
    /** Documented read-only lookup despite POST transport. Never allocate on
     * a lookup failure; bind the provider merchant reference to our owner row. */
    async lookup(reference:string):Promise<BillstackReservedAccount|null>{
      if(!/^[A-Za-z0-9_-]{8,128}$/.test(reference))throw new BillstackProviderError('invalid_reference');
      let response:Response;
      try{response=await fetcher('https://api.billstack.co/v2/thirdparty/getVirtualAccount/',{method:'POST',headers:{authorization:'Bearer '+input.secretKey,'content-type':'application/json',accept:'application/json'},body:JSON.stringify({reference}),signal:AbortSignal.timeout(15000),redirect:'error'});}catch{throw new BillstackProviderError('lookup_unavailable');}
      if(response.status===404)return null;
      if(!response.ok)throw new BillstackProviderError('lookup_unavailable');
      const envelope=object(await response.json());
      if(envelope.status!==true)throw new BillstackProviderError('lookup_unavailable');
      const data=object(envelope.data);
      if(data.merchant_reference!==reference)throw new BillstackProviderError('reference_mismatch');
      if(!Array.isArray(data.account))throw new BillstackProviderError('invalid_response');
      const matches=data.account.map(object).filter(a=>a.bank_id===bankId);
      if(matches.length!==1)throw new BillstackProviderError('wrong_bank');
      const account=matches[0]!;
      const accountNumber=text(account.account_number,10,10);
      if(!/^\d{10}$/.test(accountNumber))throw new BillstackProviderError('invalid_response');
      return {reference:text(data.reference,1,160),accountNumber,accountName:text(account.account_name,1,160),bankName:text(account.bank_name,1,120),bankId};
    },
    async reserve(applicant:BillstackAccountApplicant):Promise<BillstackReservedAccount> {
      assertBillstackApplicant(applicant);
      let response:Response;
      try {
        response=await fetcher(endpoint,{
          method:"POST",
          headers:{authorization:"Bearer "+input.secretKey,"content-type":"application/json",accept:"application/json"},
          body:JSON.stringify({...applicant,phone:billstackLocalPhone(applicant.phone),bank:bankId}),
          signal:AbortSignal.timeout(15000),redirect:"error",
        });
      } catch { throw new BillstackProviderError("outcome_unknown"); }
      if(!response.ok) throw new BillstackProviderError("account_rejected");
      let payload:unknown;
      try {payload=await response.json();}catch{throw new BillstackProviderError("invalid_response");}
      const envelope=object(payload);
      if(envelope.status!==true)throw new BillstackProviderError("account_rejected");
      const data=object(envelope.data);
      if(!Array.isArray(data.account)||data.account.length!==1)throw new BillstackProviderError("invalid_response");
      const account=object(data.account[0]);
      if(text(account.bank_id)!==bankId)throw new BillstackProviderError("wrong_bank");
      const accountNumber=text(account.account_number,10,10);
      if(!/^\d{10}$/.test(accountNumber))throw new BillstackProviderError("invalid_response");
      return {
        reference:text(data.reference,1,160),accountNumber,
        accountName:text(account.account_name,1,160),
        bankName:text(account.bank_name,1,120),bankId,
      };
    },
  };
}
export interface BillstackReceivedPayment {
  eventId:string; legacyEventId?:string; merchantReference:string; accountNumber:string; bankName:string;
  amountKobo:number; receivedAt:string;
}
/** HMAC-SHA256(secret, timestamp + "." + unmodified raw request bytes). */
export function verifyBillstackWebhook(
  raw:Buffer, headers:Readonly<Record<string,string|undefined>>,
  secret:string,currentTimeMs=Date.now(),
):BillstackReceivedPayment {
  if(raw.length>64*1024||raw.length===0||typeof secret!=="string"||secret.length<12){
    throw new BillstackProviderError("webhook_invalid");
  }
  const timestamp=headers["x-wiaxy-timestamp"],signature=headers["x-wiaxy-signature-256"];
  if(!timestamp||!/^\d{10}$/.test(timestamp)||!signature||!/^[0-9a-f]{64}$/.test(signature)) {
    throw new BillstackProviderError("webhook_unsigned");
  }
  const time=Number(timestamp)*1000;
  if(!Number.isFinite(time)||Math.abs(currentTimeMs-time)>300000)throw new BillstackProviderError("webhook_stale");
  const expected=createHmac("sha256",secret).update(timestamp).update(".").update(raw).digest();
  const provided=Buffer.from(signature,"hex");
  if(provided.length!==expected.length||!timingSafeEqual(provided,expected))throw new BillstackProviderError("webhook_signature_invalid");
  let json:unknown;
  try {json=JSON.parse(raw.toString("utf8"));}catch{throw new BillstackProviderError("webhook_invalid");}
  const envelope=object(json);
  if(!["PAYMENT_NOTIFICATION","PAYMENT_NOTIFIFICATION"].includes(String(envelope.event))){
    throw new BillstackProviderError("webhook_event_unsupported");
  }
  const data=object(envelope.data),account=object(data.account);
  if(data.type!=="RESERVED_ACCOUNT_TRANSACTION")throw new BillstackProviderError("webhook_event_unsupported");
  const legacyId=text(data.reference,1,160),ref=text(data.merchant_reference,1,160);
  const id=text(data.transaction_ref??data.wiaxy_ref,1,160);
  if(!/^[A-Za-z0-9][A-Za-z0-9_.:-]{0,159}$/.test(id)||
    data.transaction_ref!==undefined&&data.wiaxy_ref!==undefined&&data.transaction_ref!==data.wiaxy_ref)
    throw new BillstackProviderError('webhook_transaction_invalid');
  const accountNumber=text(account.account_number,10,10);
  if(!/^\d{10}$/.test(accountNumber))throw new BillstackProviderError("webhook_invalid");
  const kobo=billstackAmountKobo(data.amount);
  const receivedAt=text(data.created_at,1,100);
  if(!Number.isFinite(Date.parse(receivedAt)))throw new BillstackProviderError("webhook_invalid");
  return {eventId:id,legacyEventId:legacyId,merchantReference:ref,accountNumber,bankName:text(account.bank_name,1,100),amountKobo:Number(kobo),receivedAt};
}

/** Parse naira without binary floating-point multiplication or rounding. */
export function billstackAmountKobo(amount:unknown):number {
 const value=typeof amount==='number'?String(amount):amount;
 if(typeof value!=='string'||!/^(?:0|[1-9]\d{0,10})(?:\.\d{1,2})?$/.test(value))throw new BillstackProviderError('webhook_invalid');
 const [naira,fraction='']=value.split('.');const kobo=BigInt(naira!)*100n+BigInt(fraction.padEnd(2,'0')||'0');
 if(kobo<=0n||kobo>BigInt(Number.MAX_SAFE_INTEGER))throw new BillstackProviderError('webhook_invalid');return Number(kobo);
}
