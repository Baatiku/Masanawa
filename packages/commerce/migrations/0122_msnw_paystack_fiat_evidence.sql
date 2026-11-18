-- Immutable Paystack fiat evidence journal.
-- A provider-verified bank payment is NOT an MSNW token or mint authority.
-- Must link to a pre-approved 0113 DVA owner before recording an observation.
CREATE SCHEMA IF NOT EXISTS commerce;
CREATE TABLE IF NOT EXISTS commerce.msnw_paystack_fiat_evidence (
  reference text PRIMARY KEY CHECK (reference ~ '^[A-Za-z0-9_.:-]{1,128}$'),
  provider_transaction_id text NOT NULL UNIQUE
    CHECK (provider_transaction_id ~ '^[1-9][0-9]{0,19}$'),
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  paystack_customer_id bigint NOT NULL CHECK (paystack_customer_id > 0),
  amount_kobo bigint NOT NULL CHECK (amount_kobo > 0),
  currency text NOT NULL DEFAULT 'NGN' CHECK (currency='NGN'),
  funding_account_number text NOT NULL CHECK (funding_account_number ~ '^[0-9]{10}$'),
  provider_evidence_sha256 text NOT NULL
    CHECK (provider_evidence_sha256 ~ '^[0-9a-f]{64}$'),
  provider_paid_at timestamptz NOT NULL,
  state text NOT NULL DEFAULT 'fiat_verified_backing_pending'
    CHECK (state='fiat_verified_backing_pending'),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  FOREIGN KEY (tenant_id,user_id) REFERENCES commerce.msnw_paystack_dva(tenant_id,user_id)
    ON DELETE RESTRICT
);
CREATE INDEX IF NOT EXISTS msnw_fiat_by_owner
 ON commerce.msnw_paystack_fiat_evidence (tenant_id,user_id,created_at DESC);
CREATE OR REPLACE FUNCTION commerce.msnw_forbid_fiat_evidence_mutation()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  RAISE EXCEPTION 'MSNW Paystack provider evidence is immutable';
END;
$$;
DROP TRIGGER IF EXISTS msnw_fiat_evidence_immutable ON commerce.msnw_paystack_fiat_evidence;
CREATE TRIGGER msnw_fiat_evidence_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_paystack_fiat_evidence
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_forbid_fiat_evidence_mutation();
REVOKE ALL ON commerce.msnw_paystack_fiat_evidence FROM PUBLIC;
