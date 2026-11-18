-- Funding obligations link Paystack-verified NGN evidence to exactly one MSNW
-- acquisition liability. This is NOT a token ledger, a rate, or mint approval.
-- No user endpoint may write these tables. Never import old MSN or Credits.
CREATE TABLE IF NOT EXISTS commerce.msnw_funding_obligations (
  reference text PRIMARY KEY REFERENCES commerce.msnw_paystack_fiat_evidence(reference)
    ON DELETE RESTRICT,
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  amount_kobo bigint NOT NULL CHECK (amount_kobo > 0),
  paystack_evidence_sha256 text NOT NULL CHECK (paystack_evidence_sha256 ~ '^[0-9a-f]{64}$'),
  registered_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE (tenant_id,user_id,reference)
);
CREATE INDEX IF NOT EXISTS msnw_funding_obligations_owner
 ON commerce.msnw_funding_obligations (tenant_id,user_id,registered_at DESC);
CREATE OR REPLACE FUNCTION commerce.msnw_obligation_immutable()
 RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  RAISE EXCEPTION 'MSNW funding obligations are immutable';
END;
$$;
CREATE TRIGGER msnw_funding_obligation_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_funding_obligations
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_obligation_immutable();
REVOKE ALL ON commerce.msnw_funding_obligations FROM PUBLIC;

-- Each future custody/mint/confirmation event is append-only and scoped to a
-- single immutable obligation. No event is equivalent to a balance until an
-- independently reconciled finalized chain transaction is demonstrated.
CREATE TABLE IF NOT EXISTS commerce.msnw_settlement_events (
  event_sha256 text PRIMARY KEY CHECK (event_sha256 ~ '^[0-9a-f]{64}$'),
  reference text NOT NULL REFERENCES commerce.msnw_funding_obligations(reference)
    ON DELETE RESTRICT,
  stage text NOT NULL CHECK (stage IN
    ('backing_qualified','mint_authorized','chain_submitted',
     'chain_finalized','settlement_anomaly','provider_reversed')),
  reserve_proof_sha256 text CHECK (
    reserve_proof_sha256 IS NULL OR reserve_proof_sha256 ~ '^[0-9a-f]{64}$'),
  quote_sha256 text CHECK (quote_sha256 IS NULL OR quote_sha256 ~ '^[0-9a-f]{64}$'),
  amount_micro numeric(78,0) CHECK (amount_micro IS NULL OR amount_micro > 0),
  chain_id bigint CHECK (chain_id IS NULL OR chain_id > 0),
  contract_address text CHECK (
    contract_address IS NULL OR contract_address ~ '^0x[0-9a-f]{40}$'),
  tx_hash text CHECK (tx_hash IS NULL OR tx_hash ~ '^0x[0-9a-f]{64}$'),
  recorded_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  CHECK (stage NOT IN ('mint_authorized','chain_submitted','chain_finalized') OR
    (reserve_proof_sha256 IS NOT NULL AND quote_sha256 IS NOT NULL AND
     amount_micro > 0 AND chain_id IS NOT NULL AND contract_address IS NOT NULL)),
  CHECK (stage NOT IN ('chain_submitted','chain_finalized') OR tx_hash IS NOT NULL),
  UNIQUE (reference,stage)
);
CREATE INDEX IF NOT EXISTS msnw_settlement_events_reference
 ON commerce.msnw_settlement_events(reference,recorded_at DESC);
CREATE TRIGGER msnw_settlement_event_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_settlement_events
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_obligation_immutable();
REVOKE ALL ON commerce.msnw_settlement_events FROM PUBLIC;
