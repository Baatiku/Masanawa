-- Additive immutable provenance of independently signed reserve and mint
-- governance decisions. Never a customer-spendable balance or a private key.
-- The existing settlement event/issuance ledger remains the money authority.
CREATE TABLE IF NOT EXISTS commerce.msnw_signed_admissions (
  event_sha256 text PRIMARY KEY
    REFERENCES commerce.msnw_settlement_events(event_sha256) ON DELETE RESTRICT,
  reference text NOT NULL
    REFERENCES commerce.msnw_funding_obligations(reference) ON DELETE RESTRICT,
  stage text NOT NULL CHECK(stage IN (
    'backing_qualified','mint_authorized','chain_submitted')),
  signed_payload_sha256 text NOT NULL CHECK(signed_payload_sha256 ~ '^[0-9a-f]{64}$'),
  signer_public_key_sha256 text NOT NULL CHECK(signer_public_key_sha256 ~ '^[0-9a-f]{64}$'),
  detached_signature_base64 text NOT NULL CHECK(length(detached_signature_base64)=88),
  admitted_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE (reference,stage)
);

CREATE OR REPLACE FUNCTION commerce.msnw_check_signed_admission()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE recorded commerce.msnw_settlement_events%ROWTYPE;
BEGIN
  SELECT * INTO recorded FROM commerce.msnw_settlement_events
   WHERE event_sha256=NEW.event_sha256;
  IF NOT FOUND OR recorded.reference IS DISTINCT FROM NEW.reference OR
     recorded.stage IS DISTINCT FROM NEW.stage THEN
    RAISE EXCEPTION 'MSNW signature does not bind the original immutable stage'
      USING ERRCODE='23514';
  END IF;
  RETURN NEW;
END;
$$;
CREATE TRIGGER msnw_signed_admission_binds_event
 BEFORE INSERT ON commerce.msnw_signed_admissions
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_check_signed_admission();
CREATE TRIGGER msnw_signed_admission_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_signed_admissions
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_custody_forbid_journal_mutation();
REVOKE ALL ON commerce.msnw_signed_admissions FROM PUBLIC;
