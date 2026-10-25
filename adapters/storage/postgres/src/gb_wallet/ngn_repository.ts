import {createHash} from "node:crypto";
import type {Pool} from "pg";
import {withTransaction} from "../transaction.js";
import type {GbBillstackActor, GbBillstackDeposit} from "./billstack_repository.js";

export type NgnActor = GbBillstackActor;
export interface NgnBalance {balanceKobo:number;debtKobo:number;frozen:boolean}
export interface NgnExchange {
 tenantId:string;userId:string;operationId:string;sizeGb:number;amountKobo:number;rateVersion:string;expiresAt:string;
}
export interface NgnReceipt {
 operationId:string;kind:"deposit"|"exchange"|"deposit_reversal";
 amountKobo:number;amountMb:number|null;rateVersion:string|null;createdAt:string;
}
const validId=(v:unknown):v is string=>typeof v==="string"&&/^[A-Za-z0-9][A-Za-z0-9_.:-]{0,159}$/.test(v);
const positive=(n:number)=>Number.isSafeInteger(n)&&n>0;
const actor=(a:NgnActor)=>{if(!validId(a.tenantId)||!validId(a.userId))throw new TypeError("ngn.invalid_actor");};
const digest=(v:unknown)=>createHash("sha256").update(JSON.stringify(v)).digest("hex");
const receipt=(r:Record<string,unknown>):NgnReceipt=>({
 operationId:String(r.operation_id),kind:r.kind as NgnReceipt["kind"],
 amountKobo:Math.abs(Number(r.delta_kobo)),amountMb:r.amount_mb==null?null:Number(r.amount_mb),
 rateVersion:r.rate_version==null?null:String(r.rate_version),createdAt:new Date(String(r.created_at)).toISOString(),
});
async function retry<T>(run:()=>Promise<T>):Promise<T>{
 for(let attempt=0;;attempt++)try{return await run();}catch(e){
  const code=(e as {code?:string}).code;
  if(attempt>=3||(code!=="40001"&&code!=="40P01"))throw e;
 }
}
/** Only trusted, independently verified provider evidence may call deposit/reverse.
 * No route accepts a customer-supplied deposit amount as funding proof. */
export function createNgnWalletRepository(pool:Pool){
 const readReceipt=async(a:NgnActor,operationId:string)=>{
  actor(a);if(!validId(operationId))throw new TypeError("ngn.invalid_operation");
  // Wait behind a currently committing original exchange. Expired recovery
  // must not return a false 404 while that operation is still committing.
  return withTransaction(pool,async c=>{
   await c.query("SELECT pg_advisory_xact_lock(hashtextextended($1,0))",["ngn-exchange:"+a.tenantId+":"+operationId]);
   const result=await c.query("SELECT * FROM gb_wallet.ngn_entries WHERE tenant_id=$1 AND account_id=$2 AND operation_id=$3",[a.tenantId,a.userId,operationId]);
   return result.rows[0]?receipt(result.rows[0]):null;
  });
 };
 return {
  readReceipt,
  async read(a:NgnActor):Promise<NgnBalance>{
   actor(a);
   const result=await pool.query("SELECT balance_kobo::text,debt_kobo::text,frozen FROM gb_wallet.ngn_accounts WHERE tenant_id=$1 AND account_id=$2",[a.tenantId,a.userId]);
   const r=result.rows[0];
   // A missing NEW cash account is authoritatively zero; no historic import.
   return r?{balanceKobo:Number(r.balance_kobo),debtKobo:Number(r.debt_kobo),frozen:r.frozen}:{balanceKobo:0,debtKobo:0,frozen:false};
  },
  async deposit(p:GbBillstackDeposit):Promise<{state:"credited"|"duplicate";eventId:string;creditedKobo:number}>{
   if(!validId(p.eventId)||!validId(p.merchantReference)||!/^\d{10}$/.test(p.accountNumber)||!positive(p.amountKobo)||!Number.isFinite(Date.parse(p.receivedAt)))throw new TypeError("ngn.invalid_deposit");
   return retry(()=>withTransaction(pool,async c=>{
    await c.query("SELECT pg_advisory_xact_lock(hashtextextended($1,0))",["gb-deposit:"+p.eventId]);
    // Same receiving-account row lock as historical MB funding; delayed events
    // cannot mint both currencies across the cutoff or concurrent handlers.
    const matched=await c.query("SELECT tenant_id,account_id FROM gb_wallet.billstack_accounts WHERE merchant_reference=$1 AND account_number=$2 AND status='assigned' FOR UPDATE",[p.merchantReference,p.accountNumber]);
    const a=matched.rows[0];if(!a)throw new Error("ngn.account_mismatch");
    const old=await c.query("SELECT * FROM gb_wallet.billstack_deposits WHERE event_id=$1",[p.eventId]);
    if(old.rows[0]){
     const r=old.rows[0];
     if(r.tenant_id!==a.tenant_id||r.account_id!==a.account_id||r.merchant_reference!==p.merchantReference||r.receiving_account!==p.accountNumber||Number(r.amount_kobo)!==p.amountKobo)throw new Error("ngn.deposit_conflict");
     return {state:"duplicate" as const,eventId:p.eventId,creditedKobo:0};
    }
    const existing=await c.query("SELECT * FROM gb_wallet.ngn_deposit_events WHERE provider_event_id=$1",[p.eventId]);
    if(existing.rows[0]){
     const r=existing.rows[0];
     if(r.tenant_id!==a.tenant_id||r.account_id!==a.account_id||r.merchant_reference!==p.merchantReference||r.receiving_account!==p.accountNumber||Number(r.amount_kobo)!==p.amountKobo)throw new Error("ngn.deposit_conflict");
     return {state:"duplicate" as const,eventId:p.eventId,creditedKobo:p.amountKobo};
    }
    await c.query("INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id) VALUES($1,$2) ON CONFLICT DO NOTHING",[a.tenant_id,a.account_id]);
    const operationId="ngnd_"+digest(p.eventId);
    await c.query("INSERT INTO gb_wallet.ngn_entries(tenant_id,operation_id,account_id,kind,delta_kobo,request_sha256) VALUES($1,$2,$3,'deposit',$4,$5)",[a.tenant_id,operationId,a.account_id,p.amountKobo,digest([p.eventId,p.merchantReference,p.accountNumber,p.amountKobo])]);
    await c.query("UPDATE gb_wallet.ngn_accounts SET balance_kobo=balance_kobo+GREATEST($3::bigint-debt_kobo,0),debt_kobo=GREATEST(debt_kobo-$3::bigint,0),version=version+1 WHERE tenant_id=$1 AND account_id=$2",[a.tenant_id,a.account_id,p.amountKobo]);
    await c.query("INSERT INTO gb_wallet.ngn_deposit_events(provider_event_id,tenant_id,account_id,operation_id,merchant_reference,receiving_account,amount_kobo,received_at) VALUES($1,$2,$3,$4,$5,$6,$7,$8)",[p.eventId,a.tenant_id,a.account_id,operationId,p.merchantReference,p.accountNumber,p.amountKobo,p.receivedAt]);
    return {state:"credited" as const,eventId:p.eventId,creditedKobo:p.amountKobo};
   },{isolation:"serializable"}));
  },
  async exchange(r:NgnExchange):Promise<NgnReceipt>{
   actor(r);
   if(!validId(r.operationId)||!validId(r.rateVersion)||!Number.isSafeInteger(r.sizeGb)||r.sizeGb<1||r.sizeGb>2000||!positive(r.amountKobo)||!Number.isFinite(Date.parse(r.expiresAt)))throw new TypeError("ngn.invalid_exchange");
   const fingerprint=digest([r.userId,r.sizeGb,r.amountKobo,r.rateVersion]);
   return retry(()=>withTransaction(pool,async c=>{
    await c.query("SELECT pg_advisory_xact_lock(hashtextextended($1,0))",["ngn-exchange:"+r.tenantId+":"+r.operationId]);
    const old=await c.query("SELECT * FROM gb_wallet.ngn_entries WHERE tenant_id=$1 AND operation_id=$2",[r.tenantId,r.operationId]);
    if(old.rows[0]){
     if(old.rows[0].account_id!==r.userId||old.rows[0].request_sha256!==fingerprint||old.rows[0].kind!=="exchange")throw new Error("ngn.idempotency_conflict");
     return receipt(old.rows[0]);
    }
    const fresh=await c.query("SELECT clock_timestamp() < $1::timestamptz AS valid",[r.expiresAt]);
    if(fresh.rows[0]?.valid!==true)throw new Error("ngn.review_expired");
    // Stable cash->MB lock order for every exchange. Deposits never lock MB.
    const cash=await c.query("SELECT balance_kobo::text,debt_kobo::text,frozen FROM gb_wallet.ngn_accounts WHERE tenant_id=$1 AND account_id=$2 FOR UPDATE",[r.tenantId,r.userId]);
    const balance=cash.rows[0];
    if(balance?.frozen||Number(balance?.debt_kobo??0)>0)throw new Error("ngn.account_frozen");
    if(!balance||Number(balance.balance_kobo)<r.amountKobo)throw new Error("ngn.insufficient_balance");
    await c.query("INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id) VALUES($1,'human',$2) ON CONFLICT DO NOTHING",[r.tenantId,r.userId]);
    const mb=await c.query("SELECT frozen FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2 FOR UPDATE",[r.tenantId,r.userId]);
    if(mb.rows[0]?.frozen!==false)throw new Error("ngn.account_frozen");
    await c.query("UPDATE gb_wallet.ngn_accounts SET balance_kobo=balance_kobo-$3,version=version+1 WHERE tenant_id=$1 AND account_id=$2",[r.tenantId,r.userId,r.amountKobo]);
    const amountMb=r.sizeGb*1000;
    // A new NGN exchange receipt is the backing proof for MB issuance.
    await c.query("INSERT INTO gb_wallet.operations(tenant_id,operation_id,actor_id,idempotency_key,request_sha256,operation_kind,amount_mb,state) VALUES($1,$2,$3,$2,$4,'ngn_exchange',$5,'completed')",[r.tenantId,r.operationId,r.userId,fingerprint,amountMb]);
    await c.query("UPDATE gb_wallet.accounts SET purchased_mb=purchased_mb+$3,version=version+1 WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2",[r.tenantId,r.userId,amountMb]);
    await c.query("INSERT INTO gb_wallet.movements(tenant_id,operation_id,from_kind,from_id,to_kind,to_id,source_bucket,target_bucket,amount_mb) VALUES($1,$2,'issuance','ngn_exchange','human',$3,'issuance','purchased',$4)",[r.tenantId,r.operationId,r.userId,amountMb]);
    const result=await c.query("INSERT INTO gb_wallet.ngn_entries(tenant_id,operation_id,account_id,kind,delta_kobo,request_sha256,amount_mb,rate_version) VALUES($1,$2,$3,'exchange',-$4::bigint,$5,$6,$7) RETURNING *",[r.tenantId,r.operationId,r.userId,r.amountKobo,fingerprint,amountMb,r.rateVersion]);
    return receipt(result.rows[0]);
   },{isolation:"serializable"}));
  },
  /** Full, independently verified provider reversal only. Not a customer API.
   * Cash already exchanged creates debt and freezes both spending ledgers. */
  async reverseDeposit(providerEventId:string):Promise<NgnReceipt>{
   if(!validId(providerEventId))throw new TypeError("ngn.invalid_deposit");
   return retry(()=>withTransaction(pool,async c=>{
    const event=await c.query("SELECT * FROM gb_wallet.ngn_deposit_events WHERE provider_event_id=$1 FOR UPDATE",[providerEventId]);
    const e=event.rows[0];if(!e)throw new Error("ngn.deposit_not_found");
    const operationId="ngnr_"+digest(providerEventId);
    const old=await c.query("SELECT * FROM gb_wallet.ngn_entries WHERE tenant_id=$1 AND operation_id=$2",[e.tenant_id,operationId]);
    if(old.rows[0])return receipt(old.rows[0]);
    const accounts=await c.query("SELECT balance_kobo::text FROM gb_wallet.ngn_accounts WHERE tenant_id=$1 AND account_id=$2 FOR UPDATE",[e.tenant_id,e.account_id]);
    const shortfall=Math.max(0,Number(e.amount_kobo)-Number(accounts.rows[0].balance_kobo));
    await c.query("UPDATE gb_wallet.ngn_accounts SET balance_kobo=GREATEST(balance_kobo-$3::bigint,0),debt_kobo=debt_kobo+$4,frozen=frozen OR $4::bigint>0,version=version+1 WHERE tenant_id=$1 AND account_id=$2",[e.tenant_id,e.account_id,e.amount_kobo,shortfall]);
    if(shortfall>0)await c.query("UPDATE gb_wallet.accounts SET frozen=true,version=version+1 WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2",[e.tenant_id,e.account_id]);
    const result=await c.query("INSERT INTO gb_wallet.ngn_entries(tenant_id,operation_id,account_id,kind,delta_kobo,request_sha256,reverses_operation_id) VALUES($1,$2,$3,'deposit_reversal',-$4::bigint,$5,$6) RETURNING *",[e.tenant_id,operationId,e.account_id,e.amount_kobo,digest([providerEventId,"reversal"]),e.operation_id]);
    return receipt(result.rows[0]);
   },{isolation:"serializable"}));
  },
 };
}
