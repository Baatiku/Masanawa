-- Additive pricing evidence; original payout terms and historical rows retained.
ALTER TABLE commerce.msnw_usdt_payouts ADD COLUMN IF NOT EXISTS pricing_evidence jsonb;
CREATE OR REPLACE FUNCTION commerce.msnw_quote_evidence_immutable() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF OLD.pricing_evidence IS DISTINCT FROM NEW.pricing_evidence THEN
  RAISE EXCEPTION 'MSNW quote evidence is immutable';
 END IF;
 RETURN NEW;
END; $$;
DROP TRIGGER IF EXISTS msnw_quote_evidence_immutable ON commerce.msnw_usdt_payouts;
CREATE TRIGGER msnw_quote_evidence_immutable BEFORE UPDATE ON commerce.msnw_usdt_payouts
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_quote_evidence_immutable();

CREATE TABLE IF NOT EXISTS commerce.wallet_support_cases(
 case_id uuid PRIMARY KEY,
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 operation_id text NOT NULL CHECK(length(operation_id) BETWEEN 1 AND 180),
 reason text NOT NULL CHECK(reason IN ('pending','not_received','incorrect_amount','other')),
 state text NOT NULL DEFAULT 'open' CHECK(state IN ('open','reviewing','resolved')),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 UNIQUE(tenant_id,user_id,operation_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE RESTRICT
);
