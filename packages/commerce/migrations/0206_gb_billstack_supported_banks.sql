-- Existing assigned 9PSB accounts retain their bank. Permit provider-confirmed
-- PalmPay assignments; never import or credit historical provider accounts.
ALTER TABLE gb_wallet.billstack_accounts
  DROP CONSTRAINT billstack_accounts_bank_id_check;
ALTER TABLE gb_wallet.billstack_accounts
  ADD CONSTRAINT billstack_accounts_bank_id_check
  CHECK (bank_id IN ('9PSB', 'PALMPAY'));
