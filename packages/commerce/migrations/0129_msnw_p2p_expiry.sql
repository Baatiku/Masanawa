-- Canonical escrow refund function shared by Gateway cancellation/dispute
-- and the Worker due-order recovery. Funds, state and journal all remain in
-- the existing PostgreSQL transaction. This is not issuance authority.
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_refund_custody(
  p_tenant text,p_order uuid,p_seller text,p_total numeric
) RETURNS text LANGUAGE plpgsql AS $$
DECLARE o RECORD; r RECORD; receipt text;
BEGIN
  IF p_total IS NULL OR p_total<=0 THEN
    RAISE EXCEPTION 'p2p refund amount invalid';
  END IF;
  SELECT * INTO o FROM commerce.msnw_p2p_orders
  WHERE tenant_id=p_tenant AND order_id=p_order FOR UPDATE;
  IF NOT FOUND OR o.seller_id IS DISTINCT FROM p_seller
    OR o.state NOT IN ('awaiting_payment','disputed') OR
       (o.amount_micro+o.fee_micro) IS DISTINCT FROM p_total THEN
    RAISE EXCEPTION 'p2p refund order binding conflict';
  END IF;
  SELECT * INTO r FROM commerce.msnw_p2p_custody_journal
   WHERE tenant_id=p_tenant AND order_id=p_order AND stage='reserve' FOR UPDATE;
  IF NOT FOUND OR r.seller_id IS DISTINCT FROM o.seller_id OR
     r.buyer_id IS DISTINCT FROM o.buyer_id OR
     r.amount_micro IS DISTINCT FROM o.amount_micro OR
     r.fee_micro IS DISTINCT FROM o.fee_micro THEN
    RAISE EXCEPTION 'p2p refund reservation binding conflict';
  END IF;
  PERFORM 1 FROM commerce.msnw_p2p_custody_journal
    WHERE tenant_id=p_tenant AND order_id=p_order
      AND stage IN ('release','refund');
  IF FOUND THEN RAISE EXCEPTION 'p2p custody already settled'; END IF;
  PERFORM 1 FROM commerce.msnw_custody_accounts
    WHERE tenant_id=p_tenant AND user_id=p_seller FOR UPDATE;
  IF NOT FOUND THEN RAISE EXCEPTION 'p2p missing custody account'; END IF;
  UPDATE commerce.msnw_custody_accounts
    SET available_micro=available_micro+p_total,
        reserved_micro=reserved_micro-p_total,
        updated_at=statement_timestamp()
    WHERE tenant_id=p_tenant AND user_id=p_seller
      AND reserved_micro>=p_total;
  IF NOT FOUND THEN RAISE EXCEPTION 'p2p insufficient reserved custody'; END IF;
  receipt:='msnw-p2p:'||p_order::text||':refund';
  INSERT INTO commerce.msnw_p2p_custody_journal (
    operation_id,tenant_id,order_id,stage,seller_id,buyer_id,
    amount_micro,fee_micro,receipt_ref
  ) VALUES(gen_random_uuid(),p_tenant,p_order,'refund',
    o.seller_id,o.buyer_id,o.amount_micro,o.fee_micro,receipt);
  INSERT INTO commerce.msnw_p2p_custody_postings(
    operation_id,posting_index,owner_kind,tenant_id,user_id,bucket,delta_micro)
  SELECT j.operation_id,x.posting_index,'customer',p_tenant,p_seller,x.bucket,x.delta
    FROM commerce.msnw_p2p_custody_journal j
    CROSS JOIN LATERAL(VALUES
       (1::smallint,'reserved'::text,-p_total),
       (2::smallint,'available'::text,p_total)
    ) x(posting_index,bucket,delta)
    WHERE j.tenant_id=p_tenant AND j.order_id=p_order AND j.stage='refund';
  RETURN receipt;
END;
$$;

-- Bounded, SKIP LOCKED and no external side effects. Each row lock fences
-- races with payment claims, seller release and human disputes. Failure rolls
-- back the full batch to keep MSNW balances and audit events consistent.
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_expire_due_batch(p_limit integer DEFAULT 25)
RETURNS integer LANGUAGE plpgsql AS $$
DECLARE item RECORD; count_expired integer:=0; receipt text;
BEGIN
  IF p_limit IS NULL OR p_limit<1 OR p_limit>100 THEN
    RAISE EXCEPTION 'p2p expiry limit invalid';
  END IF;
  FOR item IN
    SELECT order_id,tenant_id,offer_id,seller_id,amount_micro,fee_micro
      FROM commerce.msnw_p2p_orders
      WHERE state='awaiting_payment' AND payment_deadline<=statement_timestamp()
      ORDER BY payment_deadline,order_id
      FOR UPDATE SKIP LOCKED LIMIT p_limit
  LOOP
    receipt:=commerce.msnw_p2p_refund_custody(
      item.tenant_id,item.order_id,item.seller_id,
      item.amount_micro+item.fee_micro);
    UPDATE commerce.msnw_p2p_offers
       SET remaining_micro=remaining_micro+item.amount_micro,
           updated_at=statement_timestamp()
     WHERE tenant_id=item.tenant_id AND offer_id=item.offer_id;
    UPDATE commerce.msnw_p2p_orders
       SET state='expired',version=version+1,receipt_reference=receipt,
           settled_at=statement_timestamp(),updated_at=statement_timestamp()
     WHERE tenant_id=item.tenant_id AND order_id=item.order_id
       AND state='awaiting_payment';
    INSERT INTO commerce.msnw_p2p_events (
      event_id,tenant_id,order_id,actor_id,action,from_state,to_state,reason
    ) VALUES(gen_random_uuid(),item.tenant_id,item.order_id,
      'system:p2p-expiry','expired','awaiting_payment','expired',NULL);
    count_expired:=count_expired+1;
  END LOOP;
  RETURN count_expired;
END;
$$;
REVOKE ALL ON FUNCTION commerce.msnw_p2p_refund_custody(text,uuid,text,numeric) FROM PUBLIC;
REVOKE ALL ON FUNCTION commerce.msnw_p2p_expire_due_batch(integer) FROM PUBLIC;
