-- Paystack merchant BANK PAYOUT proof is distinct from customer payment success.
-- A successful merchant payout is NOT itself an MSNW mint or backing quote.
CREATE TABLE IF NOT EXISTS commerce.msnw_paystack_merchant_settlements (
  settlement_id text PRIMARY KEY CHECK (settlement_id ~ '^[1-9][0-9]{0,19}$'),
  currency text NOT NULL CHECK (currency='NGN'),
  provider_status text NOT NULL CHECK (provider_status='success'),
  gross_processed_kobo bigint NOT NULL CHECK (gross_processed_kobo>0),
  effective_paid_kobo bigint NOT NULL CHECK (effective_paid_kobo>=0),
  settlement_date timestamptz NOT NULL,
  provider_proof_sha256 text NOT NULL CHECK (provider_proof_sha256 ~ '^[0-9a-f]{64}$'),
  completely_scanned_at timestamptz NOT NULL DEFAULT statement_timestamp()
);
CREATE TABLE IF NOT EXISTS commerce.msnw_paystack_payout_matches (
  reference text PRIMARY KEY
    REFERENCES commerce.msnw_funding_obligations(reference) ON DELETE RESTRICT,
  settlement_id text NOT NULL
    REFERENCES commerce.msnw_paystack_merchant_settlements(settlement_id)
    ON DELETE RESTRICT,
  provider_transaction_id text NOT NULL UNIQUE
    CHECK (provider_transaction_id ~ '^[1-9][0-9]{0,19}$'),
  original_amount_kobo bigint NOT NULL CHECK (original_amount_kobo>0),
  payout_match_sha256 text NOT NULL CHECK (payout_match_sha256 ~ '^[0-9a-f]{64}$'),
  matched_at timestamptz NOT NULL DEFAULT statement_timestamp()
);
CREATE INDEX IF NOT EXISTS msnw_paystack_payout_by_settlement
 ON commerce.msnw_paystack_payout_matches(settlement_id,matched_at);

CREATE OR REPLACE FUNCTION commerce.msnw_verify_paystack_payout_match()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE original commerce.msnw_paystack_fiat_evidence%ROWTYPE;
BEGIN
  SELECT * INTO original
  FROM commerce.msnw_paystack_fiat_evidence WHERE reference=NEW.reference;
  IF NOT FOUND OR
     original.provider_transaction_id IS DISTINCT FROM NEW.provider_transaction_id OR
     original.amount_kobo IS DISTINCT FROM NEW.original_amount_kobo OR
     original.currency IS DISTINCT FROM 'NGN' THEN
    RAISE EXCEPTION 'MSNW Paystack merchant payout does not match original provider-verified payment'
      USING ERRCODE='23514';
  END IF;
  RETURN NEW;
END;
$$;
CREATE TRIGGER msnw_paystack_payout_require_original
 BEFORE INSERT ON commerce.msnw_paystack_payout_matches
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_verify_paystack_payout_match();

CREATE TRIGGER msnw_paystack_merchant_settlement_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_paystack_merchant_settlements
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_obligation_immutable();
CREATE TRIGGER msnw_paystack_payout_matches_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_paystack_payout_matches
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_obligation_immutable();
REVOKE ALL ON commerce.msnw_paystack_merchant_settlements FROM PUBLIC;
REVOKE ALL ON commerce.msnw_paystack_payout_matches FROM PUBLIC;
