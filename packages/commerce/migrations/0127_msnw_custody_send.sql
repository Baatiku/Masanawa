-- Canonical MSNW customer custody subledger. Do not seed balances from NGN,
-- legacy MSN/Cr, provider charge status or unconfirmed token transfers.
-- Every available unit must originate in a later independently qualified
-- custodial issuance/chain-finalization journal.
CREATE TABLE IF NOT EXISTS commerce.msnw_custody_accounts (
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  available_micro numeric(78,0) NOT NULL DEFAULT 0 CHECK (available_micro >= 0),
  reserved_micro numeric(78,0) NOT NULL DEFAULT 0 CHECK (reserved_micro >= 0),
  updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  PRIMARY KEY (tenant_id,user_id),
  FOREIGN KEY (tenant_id,user_id)
    REFERENCES security.platform_user_profiles(tenant_id,user_id)
    ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS commerce.msnw_custody_operations (
  operation_id uuid PRIMARY KEY,
  tenant_id text NOT NULL,
  actor_user_id text NOT NULL,
  recipient_user_id text NOT NULL,
  kind text NOT NULL CHECK (kind IN ('send')),
  idempotency_key text NOT NULL CHECK (length(idempotency_key) BETWEEN 16 AND 128),
  amount_micro numeric(78,0) NOT NULL CHECK (amount_micro > 0),
  state text NOT NULL DEFAULT 'completed' CHECK (state='completed'),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE (tenant_id,actor_user_id,idempotency_key),
  CHECK (actor_user_id <> recipient_user_id),
  FOREIGN KEY (tenant_id,actor_user_id)
    REFERENCES commerce.msnw_custody_accounts(tenant_id,user_id) ON DELETE RESTRICT,
  FOREIGN KEY (tenant_id,recipient_user_id)
    REFERENCES commerce.msnw_custody_accounts(tenant_id,user_id) ON DELETE RESTRICT
);
CREATE INDEX IF NOT EXISTS msnw_custody_operations_actor
  ON commerce.msnw_custody_operations(tenant_id,actor_user_id,created_at DESC);
CREATE INDEX IF NOT EXISTS msnw_custody_operations_recipient
  ON commerce.msnw_custody_operations(tenant_id,recipient_user_id,created_at DESC);

CREATE TABLE IF NOT EXISTS commerce.msnw_custody_entries (
  operation_id uuid NOT NULL REFERENCES commerce.msnw_custody_operations(operation_id)
    ON DELETE RESTRICT,
  entry_number smallint NOT NULL CHECK (entry_number IN (1,2)),
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  available_delta_micro numeric(78,0) NOT NULL CHECK (available_delta_micro <> 0),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  PRIMARY KEY (operation_id,entry_number),
  FOREIGN KEY (tenant_id,user_id)
    REFERENCES commerce.msnw_custody_accounts(tenant_id,user_id) ON DELETE RESTRICT
);
CREATE INDEX IF NOT EXISTS msnw_custody_entries_user
  ON commerce.msnw_custody_entries(tenant_id,user_id,created_at DESC);
-- Journal immutability: correct financial discrepancies through compensating
-- operations, never by mutating booked entries/receipts.
CREATE OR REPLACE FUNCTION commerce.msnw_custody_forbid_journal_mutation()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  RAISE EXCEPTION 'MSNW custody financial journal is immutable';
END;
$$;
CREATE TRIGGER msnw_custody_operations_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_custody_operations
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_custody_forbid_journal_mutation();
CREATE TRIGGER msnw_custody_entries_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_custody_entries
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_custody_forbid_journal_mutation();

-- Only the trusted authenticated Gateway may write. No exposed customer SQL.
REVOKE ALL ON commerce.msnw_custody_accounts FROM PUBLIC;
REVOKE ALL ON commerce.msnw_custody_operations FROM PUBLIC;
REVOKE ALL ON commerce.msnw_custody_entries FROM PUBLIC;
