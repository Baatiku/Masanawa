-- Retention-aware privacy worker fairness. This timestamp is an operational
-- checkpoint only; legal phase changes retain their revision and append-only audit.
ALTER TABLE identity.account_deletion_requests
  ADD COLUMN IF NOT EXISTS last_checked_at timestamptz;

CREATE INDEX IF NOT EXISTS account_deletion_worker_due_idx
  ON identity.account_deletion_requests
  (COALESCE(last_checked_at,updated_at),request_id)
  WHERE phase IN ('identity-verified','awaiting-settlement','processing');

COMMENT ON COLUMN identity.account_deletion_requests.last_checked_at IS
  'Last worker examination; not proof of deletion, clearance or settled money.';
