import { createHash } from "node:crypto";
import type { Pool } from "pg";
import { withTransaction } from "../transaction.js";
export type GbBillstackActor = Readonly<{tenantId:string;userId:string}>;
export type GbBillstackAccount = Readonly<{
  state:"pending"|"assigned"|"suspended";
  reference:string;accountNumber:string|null;accountName:string|null;bankName:string|null;bankId:"9PSB";
}>;
export type GbBillstackApplicant = Readonly<{
  reference:string;email:string;phone:string;firstName:string;lastName:string;
}>;
export type GbBillstackDeposit = Readonly<{
  eventId:string;merchantReference:string;accountNumber:string;amountKobo:number;receivedAt:string;
}>;
export type GbBillstackQuote = Readonly<{
  rateVersion:string;creditedMb:number;remainder:{numerator:string;denominator:string};
}>;
export type GbBillstackDepositReceipt = Readonly<{
  state:"credited"|"duplicate"; creditedMb:number;amountKobo:number;rateVersion:string;eventId:string;
}>;
const id=(v:string)=>typeof v==="string"&&/^[a-zA-Z0-9][a-zA-Z0-9:_-]{0,159}$/.test(v);
const safeInt=(v:unknown)=>typeof v==="number"&&Number.isSafeInteger(v)&&v>0;
function validate(actor:GbBillstackActor) {
  if(!id(actor.tenantId)||!id(actor.userId)) throw new TypeError("Invalid authenticated actor");
}
function mapped(row:Record<string,unknown>):GbBillstackAccount {
  const state=row.status;
  if(state!=="pending"&&state!=="assigned"&&state!=="suspended")throw new Error("billstack.invalid_account_state");
  const accountNumber=row.account_number==null?null:String(row.account_number);
  if(state==="assigned"&&(!accountNumber||!(/^\d{10}$/.test(accountNumber))))throw new Error("billstack.invalid_account");
  return {
    state, reference:String(row.merchant_reference),
    accountNumber,accountName:row.account_name==null?null:String(row.account_name),
    bankName:row.bank_name==null?null:String(row.bank_name), bankId:"9PSB",
  };
}
export function createGbBillstackRepository(pool:Pool) {
  return {
    async read(actor:GbBillstackActor):Promise<GbBillstackAccount|null> {
      validate(actor);
      const rows=await pool.query(
        "SELECT merchant_reference,account_number,account_name,bank_name,status FROM gb_wallet.billstack_accounts WHERE tenant_id=$1 AND account_id=$2",
        [actor.tenantId,actor.userId],
      );
      return rows.rows[0]?mapped(rows.rows[0]):null;
    },
    /** Claims a unique account reference before dispatch; no retry of unknown provider writes. */
    async start(actor:GbBillstackActor,reference:string):Promise<{account:GbBillstackAccount;created:boolean}> {
      validate(actor);if(!id(reference))throw new TypeError("Invalid account reference");
      return withTransaction(pool,async client=>{
        const current=await client.query(
          "SELECT merchant_reference,account_number,account_name,bank_name,status FROM gb_wallet.billstack_accounts WHERE tenant_id=$1 AND account_id=$2 FOR UPDATE",
          [actor.tenantId,actor.userId],
        );
        if(current.rows[0])return {account:mapped(current.rows[0]),created:false};
        await client.query(
          "INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id) VALUES ($1,'human',$2) ON CONFLICT DO NOTHING",
          [actor.tenantId,actor.userId],
        );
        const inserted=await client.query(
          "INSERT INTO gb_wallet.billstack_accounts(tenant_id,account_id,merchant_reference) VALUES ($1,$2,$3) ON CONFLICT DO NOTHING RETURNING merchant_reference,account_number,account_name,bank_name,status",
          [actor.tenantId,actor.userId,reference],
        );
        if(inserted.rows[0])return {account:mapped(inserted.rows[0]),created:true};
        const same=await client.query(
          "SELECT merchant_reference,account_number,account_name,bank_name,status FROM gb_wallet.billstack_accounts WHERE tenant_id=$1 AND account_id=$2",
          [actor.tenantId,actor.userId],
        );
        if(same.rows[0])return {account:mapped(same.rows[0]),created:false};
        throw new Error("billstack.account_conflict");
      });
    },
    async finalize(actor:GbBillstackActor,merchantReference:string,output:{
      reference:string;accountNumber:string;accountName:string;bankName:string;bankId:"9PSB";
    }):Promise<GbBillstackAccount> {
      validate(actor);if(!id(merchantReference)||output.bankId!=="9PSB"||
        !/^\d{10}$/.test(output.accountNumber))throw new TypeError("Invalid provider confirmation");
      const result=await pool.query(
        ["UPDATE gb_wallet.billstack_accounts SET provider_reference=$4,account_number=$5,",
         "account_name=$6,bank_name=$7,status='assigned',assigned_at=now()",
         "WHERE tenant_id=$1 AND account_id=$2 AND merchant_reference=$3 AND status='pending'",
         "RETURNING merchant_reference,account_number,account_name,bank_name,status"].join(" "),
        [actor.tenantId,actor.userId,merchantReference,output.reference,
         output.accountNumber,output.accountName,output.bankName],
      );
      if(!result.rows[0])throw new Error("billstack.assignment_not_confirmed");
      return mapped(result.rows[0]);
    },
    /** Only caller-verified raw HMAC provider payment, original receiving account.
     * Atomic dedupe, priced MB credit, immutable movement and exact remainder.
     */
    async applyVerifiedPayment(
      payment:GbBillstackDeposit,
      quote:(amountKobo:number,carry:{numerator:string;denominator:string})=>GbBillstackQuote,
    ):Promise<GbBillstackDepositReceipt> {
      if(!id(payment.eventId)||!id(payment.merchantReference)||
        !/^\d{10}$/.test(payment.accountNumber)||!safeInt(payment.amountKobo)||
        !Number.isFinite(Date.parse(payment.receivedAt)))throw new TypeError("Invalid verified payment");
      return withTransaction(pool,async client=>{
        const match=await client.query(
          ["SELECT tenant_id,account_id,merchant_reference FROM gb_wallet.billstack_accounts",
          "WHERE merchant_reference=$1 AND account_number=$2 AND status='assigned' FOR UPDATE"].join(" "),
          [payment.merchantReference,payment.accountNumber],
        );
        const account=match.rows[0];
        if(!account)throw new Error("billstack.receiving_account_mismatch");
        const tenantId=String(account.tenant_id),userId=String(account.account_id);
        const prior=await client.query(
          "SELECT event_id,amount_kobo::text,credited_mb::text,rate_version,account_id FROM gb_wallet.billstack_deposits WHERE event_id=$1",
          [payment.eventId],
        );
        if(prior.rows[0]){
          const row=prior.rows[0];
          if(String(row.account_id)!==userId||
             BigInt(row.amount_kobo)!==BigInt(payment.amountKobo))throw new Error("billstack.duplicate_conflict");
          return {state:"duplicate" as const,eventId:payment.eventId,creditedMb:Number(row.credited_mb),amountKobo:payment.amountKobo,rateVersion:String(row.rate_version)};
        }
        const balance=await client.query(
          "SELECT frozen FROM gb_wallet.accounts WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2 FOR UPDATE",
          [tenantId,userId],
        );
        if(balance.rows[0]?.frozen!==false)throw new Error("billstack.account_frozen");
        await client.query(
          "INSERT INTO gb_wallet.funding_carry(tenant_id,account_id) VALUES ($1,$2) ON CONFLICT DO NOTHING",
          [tenantId,userId],
        );
        const carry=await client.query(
          "SELECT numerator,denominator FROM gb_wallet.funding_carry WHERE tenant_id=$1 AND account_id=$2 FOR UPDATE",
          [tenantId,userId],
        );
        const previous=carry.rows[0];
        if(!previous)throw new Error("billstack.carry_unavailable");
        const result=quote(payment.amountKobo,{
          numerator:String(previous.numerator),denominator:String(previous.denominator),
        });
        if(!id(result.rateVersion)||!safeInt(result.creditedMb)||
          !/^\d{1,64}$/.test(result.remainder.numerator)||
          !/^[1-9]\d{0,63}$/.test(result.remainder.denominator)) {
          throw new Error("billstack.invalid_rate");
        }
        const fingerprint=createHash("sha256").update(JSON.stringify(payment)).digest("hex");
        await client.query(
          ["INSERT INTO gb_wallet.operations(tenant_id,operation_id,actor_id,idempotency_key,",
           "request_sha256,operation_kind,amount_mb,state)",
           "VALUES ($1,$2,$3,$4,$5,'verified_deposit',$6,'completed')"].join(" "),
          [tenantId,payment.eventId,userId,payment.eventId,fingerprint,result.creditedMb],
        );
        await client.query(
          "UPDATE gb_wallet.accounts SET purchased_mb=purchased_mb+$3,version=version+1 WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2",
          [tenantId,userId,result.creditedMb],
        );
        await client.query(
          ["INSERT INTO gb_wallet.movements(tenant_id,operation_id,from_kind,from_id,to_kind,to_id,",
          "source_bucket,target_bucket,amount_mb)",
          "VALUES ($1,$2,'issuance','billstack','human',$3,'issuance','purchased',$4)"].join(" "),
          [tenantId,payment.eventId,userId,result.creditedMb],
        );
        await client.query(
          "UPDATE gb_wallet.funding_carry SET numerator=$3,denominator=$4 WHERE tenant_id=$1 AND account_id=$2",
          [tenantId,userId,result.remainder.numerator,result.remainder.denominator],
        );
        await client.query(
          ["INSERT INTO gb_wallet.billstack_deposits(event_id,tenant_id,account_id,merchant_reference,",
           "provider_reference,receiving_account,amount_kobo,rate_version,credited_mb,received_at)",
           "VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10)"].join(" "),
          [payment.eventId,tenantId,userId,payment.merchantReference,payment.eventId,
           payment.accountNumber,payment.amountKobo,result.rateVersion,result.creditedMb,payment.receivedAt],
        );
        return {state:"credited" as const,eventId:payment.eventId,creditedMb:result.creditedMb,amountKobo:payment.amountKobo,rateVersion:result.rateVersion};
      },{isolation:"serializable"});
    },
  };
}
