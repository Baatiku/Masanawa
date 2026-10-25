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
function object(x: unknown): Record<string,unknown> {
  if(!x || typeof x!=="object" || Array.isArray(x)) throw new BillstackProviderError("invalid_response");
  return x as Record<string,unknown>;
}
function text(x:unknown, min=1,max=160):string {
  if(typeof x!=="string"||x.length<min||x.length>max||x.trim()!==x) throw new BillstackProviderError("invalid_response");
  return x;
}
/** Official v2 reserved account contract; current website also advertises one-time checkout accounts. */
export function createBillstackReservedAccountClient(input:{secretKey:string; bankId?:BillstackBankId; fetcher?:Fetcher}) {
  if(typeof input.secretKey!=="string"||input.secretKey.trim().length<12) throw new TypeError("Missing Billstack server secret");
  const bankId=input.bankId??"9PSB";
  if(bankId!=="9PSB"&&bankId!=="PALMPAY")throw new TypeError("Unsupported Billstack bank");
  const fetcher=input.fetcher??fetch;
  return {
    async reserve(applicant:BillstackAccountApplicant):Promise<BillstackReservedAccount> {
      if(!/^[A-Za-z0-9_-]{8,128}$/.test(applicant.reference)||
        !/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(applicant.email)||
        !/^0(?:70|80|81|90|91)\d{8}$/.test(applicant.phone)||
        !/^[\p{L}\p{M} .'-]{1,80}$/u.test(applicant.firstName)||
        !/^[\p{L}\p{M} .'-]{1,80}$/u.test(applicant.lastName)) {
        throw new BillstackProviderError("invalid_applicant");
      }
      let response:Response;
      try {
        response=await fetcher(endpoint,{
          method:"POST",
          headers:{authorization:"Bearer "+input.secretKey,"content-type":"application/json",accept:"application/json"},
          body:JSON.stringify({...applicant,bank:bankId}),
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
  eventId:string; merchantReference:string; accountNumber:string; bankName:string;
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
  const id=text(data.reference,1,160),ref=text(data.merchant_reference,1,160);
  const accountNumber=text(account.account_number,10,10);
  if(!/^\d{10}$/.test(accountNumber))throw new BillstackProviderError("webhook_invalid");
  const value=typeof data.amount==="number"?String(data.amount):data.amount;
  if(typeof value!=="string"||!/^(?:0|[1-9]\d{0,10})(?:\.\d{1,2})?$/.test(value))throw new BillstackProviderError("webhook_invalid");
  const [naira,fraction=""]=value.split(".");
  const kobo=BigInt(naira!)*100n+BigInt(fraction.padEnd(2,"0")||"0");
  if(kobo<=0n||kobo>BigInt(Number.MAX_SAFE_INTEGER))throw new BillstackProviderError("webhook_invalid");
  const receivedAt=text(data.created_at,1,100);
  if(!Number.isFinite(Date.parse(receivedAt)))throw new BillstackProviderError("webhook_invalid");
  return {eventId:id,merchantReference:ref,accountNumber,bankName:text(account.bank_name,1,100),amountKobo:Number(kobo),receivedAt};
}
