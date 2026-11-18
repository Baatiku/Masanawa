-- Add the canonical Paystack bank code to approved P2P payment instructions.
-- A code is populated only after server-side bank lookup and account-owner match.
ALTER TABLE commerce.msnw_p2p_payment_methods
  ADD COLUMN IF NOT EXISTS bank_code text;
ALTER TABLE commerce.msnw_p2p_payment_methods
  ADD CONSTRAINT msnw_p2p_bank_code_format
  CHECK (bank_code IS NULL OR bank_code ~ '^[0-9]{3,6}$');
CREATE UNIQUE INDEX IF NOT EXISTS msnw_p2p_verified_bank_once
  ON commerce.msnw_p2p_payment_methods
     (tenant_id,owner_id,bank_code,account_number)
  WHERE bank_code IS NOT NULL AND disabled_at IS NULL;

-- The bank-code binding is just as immutable as recipient name/number.
-- The existing 0123 trigger resolves this function dynamically.
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_freeze_payment_instructions()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF (OLD.tenant_id,OLD.owner_id,OLD.method_type,OLD.bank_name,
      OLD.bank_code,OLD.account_name,OLD.account_number,
      OLD.verification_reference,OLD.verified_at)
    IS DISTINCT FROM
     (NEW.tenant_id,NEW.owner_id,NEW.method_type,NEW.bank_name,
      NEW.bank_code,NEW.account_name,NEW.account_number,
      NEW.verification_reference,NEW.verified_at) THEN
    RAISE EXCEPTION 'MSNW P2P verified bank instructions are immutable';
  END IF;
  RETURN NEW;
END;
$$;
