-- Additive financial integrity for existing immutable MSNW funding records.
-- Evidence mismatches are forbidden even for privileged recovery writers.
CREATE OR REPLACE FUNCTION commerce.msnw_verify_obligation_insert()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE verified commerce.msnw_paystack_fiat_evidence%ROWTYPE;
BEGIN
  SELECT * INTO verified
    FROM commerce.msnw_paystack_fiat_evidence WHERE reference=NEW.reference;
  IF NOT FOUND OR
     verified.tenant_id IS DISTINCT FROM NEW.tenant_id OR
     verified.user_id IS DISTINCT FROM NEW.user_id OR
     verified.amount_kobo IS DISTINCT FROM NEW.amount_kobo OR
     verified.provider_evidence_sha256 IS DISTINCT FROM NEW.paystack_evidence_sha256 OR
     verified.currency IS DISTINCT FROM 'NGN' OR
     verified.state IS DISTINCT FROM 'fiat_verified_backing_pending' THEN
    RAISE EXCEPTION 'MSNW obligation must match immutable Paystack evidence'
      USING ERRCODE='23514';
  END IF;
  RETURN NEW;
END;
$$;
CREATE TRIGGER msnw_obligation_require_verified_evidence
BEFORE INSERT ON commerce.msnw_funding_obligations
FOR EACH ROW EXECUTE FUNCTION commerce.msnw_verify_obligation_insert();

-- Settlement evidence is never accepted out of order. This trigger validates
-- internal journal consistency, NOT the actual external reserve or chain.
CREATE OR REPLACE FUNCTION commerce.msnw_verify_settlement_transition()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE prior commerce.msnw_settlement_events%ROWTYPE;
DECLARE prior_stage text;
BEGIN
  -- Serialize all financial stages for the same Paystack reference.
  PERFORM 1 FROM commerce.msnw_funding_obligations
    WHERE reference=NEW.reference FOR UPDATE;
  IF NOT FOUND THEN
    RAISE EXCEPTION 'Unknown MSNW funding obligation' USING ERRCODE='23503';
  END IF;
  IF NEW.stage IN ('backing_qualified','mint_authorized','chain_submitted','chain_finalized') THEN
    IF NEW.reserve_proof_sha256 IS NULL OR NEW.quote_sha256 IS NULL OR
       NEW.amount_micro IS NULL OR NEW.amount_micro <= 0 OR
       NEW.chain_id IS NULL OR NEW.contract_address IS NULL THEN
      RAISE EXCEPTION 'MSNW settlement metadata incomplete'
        USING ERRCODE='23514';
    END IF;
  END IF;
  IF NEW.stage IN ('backing_qualified','mint_authorized','chain_submitted','chain_finalized')
    AND EXISTS(SELECT 1 FROM commerce.msnw_settlement_events
               WHERE reference=NEW.reference AND stage='provider_reversed') THEN
    RAISE EXCEPTION 'MSNW funding reversed' USING ERRCODE='23514';
  END IF;

  prior_stage := CASE NEW.stage
    WHEN 'mint_authorized' THEN 'backing_qualified'
    WHEN 'chain_submitted' THEN 'mint_authorized'
    WHEN 'chain_finalized' THEN 'chain_submitted'
    ELSE NULL END;
  IF prior_stage IS NOT NULL THEN
    SELECT * INTO prior FROM commerce.msnw_settlement_events
      WHERE reference=NEW.reference AND stage=prior_stage;
    IF NOT FOUND OR
       NEW.reserve_proof_sha256 IS DISTINCT FROM prior.reserve_proof_sha256 OR
       NEW.quote_sha256 IS DISTINCT FROM prior.quote_sha256 OR
       NEW.amount_micro IS DISTINCT FROM prior.amount_micro OR
       NEW.chain_id IS DISTINCT FROM prior.chain_id OR
       NEW.contract_address IS DISTINCT FROM prior.contract_address THEN
      RAISE EXCEPTION 'MSNW settlement does not match previous stage'
        USING ERRCODE='23514';
    END IF;
    IF NEW.stage='chain_finalized' AND
       NEW.tx_hash IS DISTINCT FROM prior.tx_hash THEN
      RAISE EXCEPTION 'MSNW chain confirmation hash mismatch'
        USING ERRCODE='23514';
    END IF;
  END IF;
  RETURN NEW;
END;
$$;
CREATE TRIGGER msnw_settlement_require_prior_stage
BEFORE INSERT ON commerce.msnw_settlement_events
FOR EACH ROW EXECUTE FUNCTION commerce.msnw_verify_settlement_transition();
