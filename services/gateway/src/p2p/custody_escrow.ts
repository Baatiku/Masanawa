import { randomUUID } from "node:crypto";
import { P2pError, type MsnwEscrowAuthority, type P2pQuery } from "./service.js";

/**
 * This is the SAME custody account as /v1/wallet/msnw/send (WS1), not a
 * P2P-issued claim. Every transition belongs to the caller's EXISTING
 * PostgreSQL transaction; no independent COMMIT, side ledger or chain mint.
 * Unfunded accounts start at zero and fail reservation.
 */
const natural = /^(0|[1-9][0-9]{0,23})$/;
const uuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
function micros(value: string, allowZero = false): bigint {
  if (!natural.test(value)) throw new P2pError("p2p.amount_invalid",422);
  const v=BigInt(value);
  if (!allowZero && v===0n) throw new P2pError("p2p.amount_invalid",422);
  return v;
}
function guard(orderId:string, tenantId:string, sellerId:string, buyerId?:string) {
  if(!uuid.test(orderId)||!tenantId||!sellerId||(buyerId!==undefined&&(!buyerId||buyerId===sellerId)))
    throw new P2pError("p2p.custody_identity_invalid",422);
}
function row<T>(result:{rows:Record<string,unknown>[]},code:string):T {
  if (!result.rows[0]) throw new P2pError(code,409);
  return result.rows[0] as T;
}
function amountString(raw:unknown):string {
  if(typeof raw!=="string"||!natural.test(raw))
    throw new P2pError("p2p.custody_ledger_invalid",503);
  return raw;
}
type Reserve = {
  tenant_id:string;seller_id:string;buyer_id:string;
  amount_micro:string;fee_micro:string;
};
async function reserved(tx:P2pQuery, input:{
  tenantId:string;orderId:string;sellerId:string;buyerId?:string;
  amountMicro?:string;feeMicro?:string;
}):Promise<Reserve> {
  const found=await tx.query(`SELECT tenant_id,seller_id,buyer_id,
      amount_micro::text,fee_micro::text
    FROM commerce.msnw_p2p_custody_journal
    WHERE tenant_id=$1 AND order_id=$2 AND stage='reserve' FOR UPDATE`,
    [input.tenantId,input.orderId]);
  const r=row<Reserve>(found,"p2p.custody_reservation_missing");
  if(r.tenant_id!==input.tenantId||r.seller_id!==input.sellerId ||
     (input.buyerId!==undefined && r.buyer_id!==input.buyerId) ||
     (input.amountMicro!==undefined && r.amount_micro!==input.amountMicro) ||
     (input.feeMicro!==undefined && r.fee_micro!==input.feeMicro))
    throw new P2pError("p2p.custody_reservation_mismatch",409);
  return r;
}
async function unused(tx:P2pQuery,tenantId:string,orderId:string) {
  const r=await tx.query(`SELECT stage FROM commerce.msnw_p2p_custody_journal
    WHERE tenant_id=$1 AND order_id=$2 AND stage IN ('release','refund')`,
    [tenantId,orderId]);
  if(r.rowCount)throw new P2pError("p2p.custody_already_settled",409);
}
async function post(tx:P2pQuery, input:{
  tenantId:string;orderId:string;stage:"reserve"|"release"|"refund";
  sellerId:string;buyerId:string;amount:string;fee:string;
  entries:ReadonlyArray<{
    kind:"customer"|"platform";user:string|null;bucket:"available"|"reserved"|"platform_fee";
    delta:string;
  }>;
}):Promise<string> {
  const operationId=randomUUID();
  const receiptRef="msnw-p2p:"+input.orderId+":"+input.stage;
  // The reserve FK is DEFERRABLE because the order is inserted later in the
  // same transaction. All journals and postings validate at COMMIT.
  await tx.query(`INSERT INTO commerce.msnw_p2p_custody_journal
    (operation_id,tenant_id,order_id,stage,seller_id,buyer_id,
     amount_micro,fee_micro,receipt_ref)
    VALUES ($1,$2,$3,$4,$5,$6,$7::numeric,$8::numeric,$9)`,
    [operationId,input.tenantId,input.orderId,input.stage,input.sellerId,
      input.buyerId,input.amount,input.fee,receiptRef]);
  for(let i=0;i<input.entries.length;i++){
    const p=input.entries[i]!;
    await tx.query(`INSERT INTO commerce.msnw_p2p_custody_postings
      (operation_id,posting_index,owner_kind,tenant_id,user_id,bucket,delta_micro)
      VALUES ($1,$2,$3,$4,$5,$6,$7::numeric)`,
      [operationId,i+1,p.kind,input.tenantId,p.user,p.bucket,p.delta]);
  }
  return receiptRef;
}
export function createMsnwP2pCustodyEscrow():MsnwEscrowAuthority {
  return Object.freeze({
    async reserve(tx,input) {
      guard(input.orderId,input.tenantId,input.sellerId,input.buyerId);
      const principal=micros(input.amountMicro),fee=micros(input.feeMicro,true);
      const total=principal+fee;
      // The identity table is not token-backing authority. Insert a ZERO
      // custody account only for an existing profile; no MSNW is invented.
      await tx.query(`INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id)
        SELECT tenant_id,user_id FROM security.platform_user_profiles
        WHERE tenant_id=$1 AND user_id=$2 ON CONFLICT DO NOTHING`,
        [input.tenantId,input.sellerId]);
      const lock=await tx.query(`SELECT available_micro::text,reserved_micro::text
        FROM commerce.msnw_custody_accounts
        WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE`,
        [input.tenantId,input.sellerId]);
      const old=row<{available_micro:string;reserved_micro:string}>(
        lock,"p2p.custody_seller_unavailable");
      if(BigInt(amountString(old.available_micro))<total)
        throw new P2pError("p2p.insufficient_msnw",409);
      const updated=await tx.query(`UPDATE commerce.msnw_custody_accounts
        SET available_micro=available_micro-$3::numeric,
            reserved_micro=reserved_micro+$3::numeric,
            updated_at=statement_timestamp()
        WHERE tenant_id=$1 AND user_id=$2 AND available_micro>=$3::numeric`,
        [input.tenantId,input.sellerId,total.toString()]);
      if(updated.rowCount!==1)throw new P2pError("p2p.insufficient_msnw",409);
      await post(tx,{tenantId:input.tenantId,orderId:input.orderId,
        sellerId:input.sellerId,buyerId:input.buyerId,
        stage:"reserve",amount:principal.toString(),fee:fee.toString(),
        entries:[
          {kind:"customer",user:input.sellerId,bucket:"available",delta:(-total).toString()},
          {kind:"customer",user:input.sellerId,bucket:"reserved",delta:total.toString()},
        ]});
    },
    async release(tx,input) {
      guard(input.orderId,input.tenantId,input.sellerId,input.buyerId);
      const principal=micros(input.amountMicro),fee=micros(input.feeMicro,true);
      const total=principal+fee;
      await reserved(tx,{tenantId:input.tenantId,orderId:input.orderId,
        sellerId:input.sellerId,buyerId:input.buyerId,
        amountMicro:principal.toString(),feeMicro:fee.toString()});
      await unused(tx,input.tenantId,input.orderId);
      // Exactly the same lock order as WS1 Send: ascending user ID.
      // Creating an empty buyer account is not an issuance.
      await tx.query(`INSERT INTO commerce.msnw_custody_accounts (tenant_id,user_id)
        SELECT tenant_id,user_id FROM security.platform_user_profiles
        WHERE tenant_id=$1 AND user_id=$2 ON CONFLICT DO NOTHING`,
        [input.tenantId,input.buyerId]);
      const locks=await tx.query(`SELECT user_id,reserved_micro::text
        FROM commerce.msnw_custody_accounts
        WHERE tenant_id=$1 AND user_id=ANY($2::text[])
        ORDER BY user_id FOR UPDATE`,
        [input.tenantId,[input.sellerId,input.buyerId].sort()]);
      if(locks.rowCount!==2)throw new P2pError("p2p.custody_account_unavailable",503);
      const seller=locks.rows.find(x=>x.user_id===input.sellerId);
      if(!seller||BigInt(amountString(seller.reserved_micro))<total)
        throw new P2pError("p2p.custody_reserve_mismatch",409);
      const debit=await tx.query(`UPDATE commerce.msnw_custody_accounts
        SET reserved_micro=reserved_micro-$3::numeric,
            updated_at=statement_timestamp()
        WHERE tenant_id=$1 AND user_id=$2 AND reserved_micro>=$3::numeric`,
        [input.tenantId,input.sellerId,total.toString()]);
      const credit=await tx.query(`UPDATE commerce.msnw_custody_accounts
        SET available_micro=available_micro+$3::numeric,
            updated_at=statement_timestamp()
        WHERE tenant_id=$1 AND user_id=$2`,
        [input.tenantId,input.buyerId,principal.toString()]);
      if(debit.rowCount!==1||credit.rowCount!==1)
        throw new P2pError("p2p.custody_transfer_failed",503);
      if(fee>0n){
        await tx.query(`INSERT INTO commerce.msnw_p2p_fee_liabilities
          (tenant_id,accrued_micro) VALUES($1,$2::numeric)
          ON CONFLICT (tenant_id) DO UPDATE SET
            accrued_micro=commerce.msnw_p2p_fee_liabilities.accrued_micro+EXCLUDED.accrued_micro,
            updated_at=statement_timestamp()`,[input.tenantId,fee.toString()]);
      }
      return post(tx,{tenantId:input.tenantId,orderId:input.orderId,
        sellerId:input.sellerId,buyerId:input.buyerId,
        stage:"release",amount:principal.toString(),fee:fee.toString(),
        entries:[
          {kind:"customer",user:input.sellerId,bucket:"reserved",delta:(-total).toString()},
          {kind:"customer",user:input.buyerId,bucket:"available",delta:principal.toString()},
          ...(fee>0n?[{kind:"platform" as const,user:null,bucket:"platform_fee" as const,
            delta:fee.toString()}]:[]),
        ]});
    },
    async refund(tx,input) {
      guard(input.orderId,input.tenantId,input.sellerId);
      const total=micros(input.amountMicro);
      // One canonical database refund implementation for both Gateway and
      // automatic Worker expiry; the existing locked order, reservation and
      // journal must all match. No separate financial ledger is created.
      const result=await tx.query(
        `SELECT commerce.msnw_p2p_refund_custody(
            $1,$2::uuid,$3,$4::numeric) AS receipt`,
        [input.tenantId,input.orderId,input.sellerId,total.toString()]);
      const receipt=result.rows[0]?.receipt;
      if(typeof receipt!=="string"||
         receipt!=="msnw-p2p:"+input.orderId+":refund")
        throw new P2pError("p2p.custody_refund_unavailable",503);
      return receipt;
    },
  });
}
