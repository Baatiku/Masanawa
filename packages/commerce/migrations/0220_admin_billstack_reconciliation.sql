-- Immutable operator reconciliation attempts. These do not themselves mint money;
-- a credited status is written only after the canonical NGN deposit confirms it.
CREATE TABLE gb_wallet.admin_billstack_reconciliation_checks (
  check_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  tenant_id text NOT NULL,
  session_id text NOT NULL CHECK (session_id ~ '^[0-9]{20,40}$'),
  actor_id text NOT NULL,
  user_id text,
  amount_kobo bigint CHECK (amount_kobo > 0),
  received_at timestamptz,
  state text NOT NULL CHECK (state IN ('credited','duplicate','needs_review')),
  failure_code text,
  checked_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  CHECK ((state='needs_review')=(failure_code IS NOT NULL)),
  CHECK (state='needs_review' OR (user_id IS NOT NULL AND amount_kobo IS NOT NULL))
);
CREATE INDEX admin_billstack_checks_tenant_time
  ON gb_wallet.admin_billstack_reconciliation_checks(tenant_id,checked_at DESC,check_id DESC);
CREATE INDEX admin_billstack_checks_session
  ON gb_wallet.admin_billstack_reconciliation_checks(tenant_id,session_id,check_id DESC);
CREATE TRIGGER admin_billstack_checks_immutable
  BEFORE UPDATE OR DELETE ON gb_wallet.admin_billstack_reconciliation_checks
  FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();
REVOKE ALL ON gb_wallet.admin_billstack_reconciliation_checks FROM PUBLIC;
