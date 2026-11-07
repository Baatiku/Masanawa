import type {Pool,PoolClient} from "pg";
export interface NgnDataJournalKey {tenantId:string;userId:string}
export interface NgnDataJournalRow {
 operationId:string;userId:string;bundleId:string;version:string;phone:string;
 amountNgn:string;costKobo:number;state:"pending"|"delivered"|"failed";
}
export function createNgnDataJournal(pool:Pool,transactionClient?:PoolClient){
 const db=transactionClient??pool;
 const read=async(actor:NgnDataJournalKey,operationId:string):Promise<NgnDataJournalRow|null>=>{
  const rows=await db.query(
   ["SELECT operation_id,user_id,biller_code,item_code,bundle_revision,recipient_phone,",
   "amount_ngn,cost_kobo::text,state FROM gb_wallet.ngn_data_orders",
   "WHERE tenant_id=$1 AND user_id=$2 AND operation_id=$3"].join(" "),
   [actor.tenantId,actor.userId,operationId]);
  const row=rows.rows[0];
  return row?{operationId:row.operation_id,userId:row.user_id,
   bundleId:row.biller_code+":"+row.item_code,version:row.bundle_revision,
   phone:row.recipient_phone,amountNgn:row.amount_ngn,
   costKobo:Number(row.cost_kobo),state:row.state}:null;
 };
 return {
  read,
  async claim(actor:NgnDataJournalKey,row:NgnDataJournalRow,requestHash:string){
   const [billerCode,itemCode]=row.bundleId.split(":");
   const res=await db.query(
    ["INSERT INTO gb_wallet.ngn_data_orders(tenant_id,user_id,operation_id,",
     "request_sha256,biller_code,item_code,recipient_phone,amount_ngn,cost_kobo,bundle_revision)",
     "VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10) ON CONFLICT DO NOTHING RETURNING operation_id"].join(" "),
    [actor.tenantId,actor.userId,row.operationId,requestHash,
     billerCode,itemCode,row.phone,row.amountNgn,row.costKobo,row.version]);
   if(res.rowCount===1)return true;
   const known=await db.query(
     ["SELECT request_sha256 FROM gb_wallet.ngn_data_orders",
      "WHERE tenant_id=$1 AND user_id=$2 AND operation_id=$3"].join(" "),
      [actor.tenantId,actor.userId,row.operationId]);
   if(known.rows[0]?.request_sha256!==requestHash)throw Error("ngn.data.idempotency_conflict");
   return false;
  },
  async resolve(actor:NgnDataJournalKey,id:string,status:"delivered"|"failed",ref:string|null){
   const result=await db.query(
    ["UPDATE gb_wallet.ngn_data_orders SET state=$4,provider_ref=$5,resolved_at=now()",
     "WHERE tenant_id=$1 AND user_id=$2 AND operation_id=$3 AND state='pending'",
     "RETURNING operation_id"].join(" "),
     [actor.tenantId,actor.userId,id,status,ref]);
   if(result.rowCount===1)return;
   const current=await read(actor,id);
   if(current?.state!==status)throw Error("ngn.data.concurrent_reconciliation");
  },
 };
}
