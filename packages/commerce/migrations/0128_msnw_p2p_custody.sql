-- Canonical MSNW custody P2P reservation, NOT an independent token balance.
-- These postings mutate ONLY commerce.msnw_custody_accounts in the same
-- transaction as offer allocation, order state and immutable evidence journal.
-- No token issuance, legacy Credits conversion or provider payment admission.
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_fee_liabilities (
 tenant_id text PRIMARY KEY,
 accrued_micro numeric(78,0) NOT NULL DEFAULT 0 CHECK(accrued_micro>=0),
 updated_at timestamptz NOT NULL DEFAULT statement_timestamp()
);
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_custody_journal (
 operation_id uuid PRIMARY KEY,
 tenant_id text NOT NULL,
 order_id uuid NOT NULL,
 stage text NOT NULL CHECK(stage IN ('reserve','release','refund')),
 seller_id text NOT NULL,
 buyer_id text NOT NULL CHECK(buyer_id<>seller_id),
 amount_micro numeric(78,0) NOT NULL CHECK(amount_micro>0),
 fee_micro numeric(78,0) NOT NULL CHECK(fee_micro>=0),
 receipt_ref text NOT NULL UNIQUE,
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 UNIQUE(tenant_id,order_id,stage),
 FOREIGN KEY(tenant_id,order_id)
   REFERENCES commerce.msnw_p2p_orders(tenant_id,order_id)
   DEFERRABLE INITIALLY DEFERRED,
 FOREIGN KEY(tenant_id,seller_id)
   REFERENCES commerce.msnw_custody_accounts(tenant_id,user_id)
   ON DELETE RESTRICT,
 FOREIGN KEY(tenant_id,buyer_id)
   REFERENCES security.platform_user_profiles(tenant_id,user_id)
   ON DELETE RESTRICT
);
CREATE INDEX IF NOT EXISTS msnw_p2p_custody_journal_user
 ON commerce.msnw_p2p_custody_journal(tenant_id,seller_id,created_at DESC);
CREATE INDEX IF NOT EXISTS msnw_p2p_custody_journal_buyer
 ON commerce.msnw_p2p_custody_journal(tenant_id,buyer_id,created_at DESC);

CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_custody_postings (
 operation_id uuid NOT NULL
   REFERENCES commerce.msnw_p2p_custody_journal(operation_id) ON DELETE RESTRICT,
 posting_index smallint NOT NULL CHECK(posting_index BETWEEN 1 AND 3),
 owner_kind text NOT NULL CHECK(owner_kind IN ('customer','platform')),
 tenant_id text NOT NULL,
 user_id text,
 bucket text NOT NULL CHECK(bucket IN ('available','reserved','platform_fee')),
 delta_micro numeric(78,0) NOT NULL CHECK(delta_micro<>0),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(operation_id,posting_index),
 CHECK((owner_kind='customer' AND user_id IS NOT NULL AND bucket<>'platform_fee')
    OR (owner_kind='platform' AND user_id IS NULL AND bucket='platform_fee')),
 FOREIGN KEY(tenant_id,user_id)
    REFERENCES commerce.msnw_custody_accounts(tenant_id,user_id)
    ON DELETE RESTRICT
);
-- Stage-specific postings and exact conservation are enforced AT COMMIT.
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_assert_custody_postings()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE posting_count integer; net numeric(78,0); valid_count integer;
DECLARE total numeric(78,0);
BEGIN
 total:=NEW.amount_micro+NEW.fee_micro;
 SELECT count(*),COALESCE(sum(delta_micro),0) INTO posting_count,net
 FROM commerce.msnw_p2p_custody_postings WHERE operation_id=NEW.operation_id;
 IF net<>0 THEN RAISE EXCEPTION 'p2p custody postings not conserved'; END IF;
 IF NEW.stage='reserve' THEN
   SELECT count(*) INTO valid_count FROM commerce.msnw_p2p_custody_postings
   WHERE operation_id=NEW.operation_id AND owner_kind='customer' AND
     tenant_id=NEW.tenant_id AND user_id=NEW.seller_id AND
     ((bucket='available' AND delta_micro=-total) OR
      (bucket='reserved' AND delta_micro=total));
   IF posting_count<>2 OR valid_count<>2 THEN
     RAISE EXCEPTION 'invalid p2p reserve postings';
   END IF;
 ELSIF NEW.stage='refund' THEN
   SELECT count(*) INTO valid_count FROM commerce.msnw_p2p_custody_postings
   WHERE operation_id=NEW.operation_id AND owner_kind='customer' AND
     tenant_id=NEW.tenant_id AND user_id=NEW.seller_id AND
     ((bucket='reserved' AND delta_micro=-total) OR
      (bucket='available' AND delta_micro=total));
   IF posting_count<>2 OR valid_count<>2 THEN
     RAISE EXCEPTION 'invalid p2p refund postings';
   END IF;
 ELSE
   SELECT count(*) INTO valid_count FROM commerce.msnw_p2p_custody_postings
   WHERE operation_id=NEW.operation_id AND tenant_id=NEW.tenant_id AND
     ((owner_kind='customer' AND user_id=NEW.seller_id AND bucket='reserved'
       AND delta_micro=-total)
      OR (owner_kind='customer' AND user_id=NEW.buyer_id AND bucket='available'
       AND delta_micro=NEW.amount_micro)
      OR (owner_kind='platform' AND user_id IS NULL AND bucket='platform_fee'
       AND delta_micro=NEW.fee_micro AND NEW.fee_micro>0));
   IF posting_count<>(CASE WHEN NEW.fee_micro>0 THEN 3 ELSE 2 END)
      OR valid_count<>posting_count THEN
     RAISE EXCEPTION 'invalid p2p release postings';
   END IF;
 END IF;
 RETURN NULL;
END;
$$;
DROP TRIGGER IF EXISTS msnw_p2p_custody_posting_balance
  ON commerce.msnw_p2p_custody_journal;
CREATE CONSTRAINT TRIGGER msnw_p2p_custody_posting_balance
 AFTER INSERT ON commerce.msnw_p2p_custody_journal
 DEFERRABLE INITIALLY DEFERRED FOR EACH ROW
 EXECUTE FUNCTION commerce.msnw_p2p_assert_custody_postings();

CREATE OR REPLACE FUNCTION commerce.msnw_p2p_deny_custody_mutation()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN RAISE EXCEPTION 'MSNW P2P custody journal is append-only'; END;
$$;
CREATE TRIGGER msnw_p2p_custody_journal_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_custody_journal
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_deny_custody_mutation();
CREATE TRIGGER msnw_p2p_custody_postings_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_custody_postings
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_deny_custody_mutation();

REVOKE ALL ON commerce.msnw_p2p_fee_liabilities FROM PUBLIC;
REVOKE ALL ON commerce.msnw_p2p_custody_journal FROM PUBLIC;
REVOKE ALL ON commerce.msnw_p2p_custody_postings FROM PUBLIC;
