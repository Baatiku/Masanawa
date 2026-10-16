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
      // Compare the immutable reserve, release and refund journal to exactly
      // one persisted order and its state. A buyer claim or uploaded evidence
      // cannot alter this audit. Nonterminal orders must remain reserved.
      const orders=await pool.query<{inconsistent_orders:number}>(`
        WITH phases AS (
          SELECT tenant_id,order_id,
            count(*) FILTER (WHERE stage='reserve') AS reserved,
            count(*) FILTER (WHERE stage='release') AS released,
            count(*) FILTER (WHERE stage='refund') AS refunded,
            max(amount_micro) FILTER (WHERE stage='reserve') AS principal,
            max(fee_micro) FILTER (WHERE stage='reserve') AS fee,
            max(seller_id) FILTER (WHERE stage='reserve') AS seller,
            max(buyer_id) FILTER (WHERE stage='reserve') AS buyer,
            max(receipt_ref) FILTER (WHERE stage='release') AS release_receipt,
            max(receipt_ref) FILTER (WHERE stage='refund') AS refund_receipt
          FROM commerce.msnw_p2p_custody_journal
          GROUP BY tenant_id,order_id
        )
        SELECT count(*)::integer AS inconsistent_orders
        FROM commerce.msnw_p2p_orders o
        LEFT JOIN phases j ON j.tenant_id=o.tenant_id AND j.order_id=o.order_id
        WHERE coalesce(j.reserved,0)<>1
          OR j.principal IS DISTINCT FROM o.amount_micro
          OR j.fee IS DISTINCT FROM o.fee_micro
          OR j.seller IS DISTINCT FROM o.seller_id
          OR j.buyer IS DISTINCT FROM o.buyer_id
          OR (
            o.state='completed' AND (
              coalesce(j.released,0)<>1 OR coalesce(j.refunded,0)<>0
              OR o.receipt_reference IS DISTINCT FROM j.release_receipt
            )
          )
          OR (
            o.state IN ('cancelled','expired') AND (
              coalesce(j.refunded,0)<>1 OR coalesce(j.released,0)<>0
              OR o.receipt_reference IS DISTINCT FROM j.refund_receipt
            )
          )
          OR (
            o.state NOT IN ('completed','cancelled','expired') AND (
              coalesce(j.released,0)<>0 OR coalesce(j.refunded,0)<>0
              OR o.receipt_reference IS NOT NULL
            )
          )`);
      // Only assert a lower bound: other canonical services may have reserved
      // some of this account too. This is not a duplicate P2P spendable wallet.
      const reserves=await pool.query<{under_reserved_sellers:number}>(`
        WITH pending AS (
          SELECT tenant_id,seller_id,
            sum(amount_micro::numeric+fee_micro::numeric) AS outstanding
          FROM commerce.msnw_p2p_orders
          WHERE state NOT IN ('completed','cancelled','expired')
          GROUP BY tenant_id,seller_id
        )
        SELECT count(*)::integer AS under_reserved_sellers
        FROM pending p
        LEFT JOIN commerce.msnw_custody_accounts c
          ON c.tenant_id=p.tenant_id AND c.user_id=p.seller_id
        WHERE c.user_id IS NULL OR c.reserved_micro<p.outstanding`);
      const pushes=await pool.query<{dead_letters:number}>(`
        SELECT count(*)::integer AS dead_letters
        FROM events.outbox
        WHERE destination='notifications.p2p' AND state='dead-letter'`);
      return Object.freeze({
        inconsistentOrders:safeCount(orders.rows[0]?.inconsistent_orders),
        underReservedSellers:safeCount(reserves.rows[0]?.under_reserved_sellers),
        undeliveredDeadLetters:safeCount(pushes.rows[0]?.dead_letters),
      });
    },
  });
}
