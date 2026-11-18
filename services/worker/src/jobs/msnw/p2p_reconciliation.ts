import type {Pool} from "@masanawa/postgres";

/**
 * Read-only P2P financial reconciliation. Nothing here can mint, release,
 * compensate, refund or rewrite financial history. Every count is derived
 * from committed immutable escrow journal rows and canonical custody accounts.
 */
export interface P2pAuditCounts {
  inconsistentOrders:number;
  underReservedSellers:number;
  undeliveredDeadLetters:number;
}
function safeCount(value:unknown):number{
  const number=typeof value==="string" && /^[0-9]+$/.test(value)
    ? Number(value):value;
  if(typeof number!=="number"||!Number.isSafeInteger(number)||number<0)
    throw new Error("p2p.reconciliation_count_invalid");
  return number;
}
export function createP2pCustodyReconciliation(pool:Pick<Pool,"query">){
  return Object.freeze({
    async runOnce():Promise<P2pAuditCounts>{
      // Use the same canonical read-only query as operator administration,
      // with the trusted Worker-only all-tenant scope. No divergent math.
      const result=await pool.query<{
        inconsistent_orders:string;under_reserved_sellers:string;
        undelivered_dead_letters:string;
      }>(`SELECT inconsistent_orders::text,under_reserved_sellers::text,
          undelivered_dead_letters::text
        FROM commerce.msnw_p2p_reconciliation_counts(NULL::text)`);
      const counts=result.rows[0];
      return Object.freeze({
        inconsistentOrders:safeCount(counts?.inconsistent_orders),
        underReservedSellers:safeCount(counts?.under_reserved_sellers),
        undeliveredDeadLetters:safeCount(counts?.undelivered_dead_letters),
      });
    },
  });
}
