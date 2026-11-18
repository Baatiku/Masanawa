-- Reversible, additive credential history used only for verified recovery.
CREATE TABLE IF NOT EXISTS security.platform_password_history (
  revision bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  password_hash text NOT NULL CHECK(password_hash ~ '^[0-9a-f]{64}$'),
  changed_at timestamptz NOT NULL,
  FOREIGN KEY (tenant_id,user_id)
    REFERENCES security.platform_user_profiles(tenant_id,user_id)
);
CREATE INDEX IF NOT EXISTS platform_password_history_recent_idx
  ON security.platform_password_history(tenant_id,user_id,revision DESC);

ALTER TABLE security.platform_auth_events
  DROP CONSTRAINT IF EXISTS platform_auth_events_action_check;
ALTER TABLE security.platform_auth_events
  ADD CONSTRAINT platform_auth_events_action_check
  CHECK (action IN ('session_created','password_accepted','password_failed',
                   'session_revoked','logout_all','password_reset'));
