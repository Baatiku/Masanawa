-- One read-only reconciliation contract for both the Worker and
-- role-authorized admin. NULL tenant is reserved for the trusted Worker;
-- Gateway always passes the authenticated operator's tenant.
-- No payouts, reserve transfers, issuance or corrections are performed.
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_reconciliation_counts(p_tenant text DEFAULT NULL)
RETURNS TABLE(
  inconsistent_orders bigint,
  under_reserved_sellers bigint,
  undelivered_dead_letters bigint
)
LANGUAGE sql STABLE AS $$
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
  WHERE p_tenant IS NULL OR tenant_id=p_tenant
  GROUP BY tenant_id,order_id
),
open_seller_reserves AS (
  SELECT tenant_id,seller_id,
    sum(amount_micro::numeric+fee_micro::numeric) AS outstanding
  FROM commerce.msnw_p2p_orders
  WHERE (p_tenant IS NULL OR tenant_id=p_tenant)
    AND state NOT IN ('completed','cancelled','expired')
  GROUP BY tenant_id,seller_id
)
SELECT
 (SELECT count(*) FROM commerce.msnw_p2p_orders o
   LEFT JOIN phases j ON j.tenant_id=o.tenant_id AND j.order_id=o.order_id
   WHERE (p_tenant IS NULL OR o.tenant_id=p_tenant)
     AND (coalesce(j.reserved,0)<>1
       OR j.principal IS DISTINCT FROM o.amount_micro
       OR j.fee IS DISTINCT FROM o.fee_micro
       OR j.seller IS DISTINCT FROM o.seller_id
       OR j.buyer IS DISTINCT FROM o.buyer_id
       OR (o.state='completed' AND (
         coalesce(j.released,0)<>1 OR coalesce(j.refunded,0)<>0 OR
         o.receipt_reference IS DISTINCT FROM j.release_receipt))
       OR (o.state IN ('cancelled','expired') AND (
         coalesce(j.refunded,0)<>1 OR coalesce(j.released,0)<>0 OR
         o.receipt_reference IS DISTINCT FROM j.refund_receipt))
       OR (o.state NOT IN ('completed','cancelled','expired') AND (
         coalesce(j.released,0)<>0 OR coalesce(j.refunded,0)<>0 OR
         o.receipt_reference IS NOT NULL)))
 ) AS inconsistent_orders,
 (SELECT count(*) FROM open_seller_reserves p
   LEFT JOIN commerce.msnw_custody_accounts c
     ON c.tenant_id=p.tenant_id AND c.user_id=p.seller_id
   WHERE c.user_id IS NULL OR c.reserved_micro<p.outstanding
 ) AS under_reserved_sellers,
 (SELECT count(*) FROM events.outbox
    WHERE destination='notifications.p2p' AND state='dead-letter'
      AND (p_tenant IS NULL OR tenant_id=p_tenant)
 ) AS undelivered_dead_letters;
$$;
REVOKE ALL ON FUNCTION commerce.msnw_p2p_reconciliation_counts(text) FROM PUBLIC;
