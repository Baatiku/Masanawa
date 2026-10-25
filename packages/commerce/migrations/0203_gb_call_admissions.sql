-- Forward-only, separate MB call authority. No historical finance mutation.
CREATE TABLE gb_wallet.call_admissions (
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  admission_id text NOT NULL,
  character_id text NOT NULL,
  request_sha256 text NOT NULL CHECK (request_sha256 ~ '^[a-f0-9]{64}$'),
  budget_mb integer NOT NULL CHECK (budget_mb BETWEEN 1 AND 3600),
  state text NOT NULL CHECK (state IN ('pending','reserved','connecting','connected','settling','completed','failed')),
  expires_at timestamptz NOT NULL,
  lease_id text,
  connected_at timestamptz,
  connection_base_ms bigint NOT NULL DEFAULT 0,
  verified_connected_ms bigint NOT NULL DEFAULT 0,
  charged_mb integer,
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  PRIMARY KEY (tenant_id, admission_id),
  CHECK (char_length(user_id) BETWEEN 1 AND 160),
  CHECK (char_length(character_id) BETWEEN 1 AND 160),
  CHECK (char_length(admission_id) BETWEEN 1 AND 160),
  CHECK (connection_base_ms >= 0 AND connection_base_ms <= verified_connected_ms),
  CHECK (verified_connected_ms BETWEEN 0 AND budget_mb::bigint * 1000),
  CHECK (charged_mb IS NULL OR charged_mb BETWEEN 0 AND budget_mb),
  CHECK ((state IN ('connecting','connected')) = (lease_id IS NOT NULL)),
  CHECK ((state = 'connected') = (connected_at IS NOT NULL)),
  CHECK ((state IN ('completed','failed')) = (charged_mb IS NOT NULL))
);
CREATE INDEX gb_call_admission_recovery ON gb_wallet.call_admissions(expires_at)
  WHERE state NOT IN ('completed','failed');
