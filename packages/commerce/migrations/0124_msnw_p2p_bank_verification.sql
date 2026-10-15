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
