-- Step-up approvals are independent from access/refresh bearer tokens.
-- A grant is single-use, short-lived and bound to an existing platform session
-- and the hash of the exact financial withdrawal request.
CREATE TABLE IF NOT EXISTS security.platform_action_grants (
  grant_hash text PRIMARY KEY CHECK(grant_hash ~ '^[0-9a-f]{64}$'),
  session_id uuid NOT NULL REFERENCES security.platform_sessions(session_id),
  operation text NOT NULL,
  fingerprint text NOT NULL CHECK(fingerprint ~ '^[0-9a-f]{64}$'),
  issued_at timestamptz NOT NULL,
  expires_at timestamptz NOT NULL,
  consumed_at timestamptz,
  CHECK(expires_at>issued_at)
);
CREATE INDEX IF NOT EXISTS platform_action_grants_session_idx
  ON security.platform_action_grants(session_id,expires_at DESC);
