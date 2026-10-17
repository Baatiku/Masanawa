-- AF08 additive account-security storage; never rewrite existing sessions or financial ledgers.
ALTER TABLE security.platform_sessions
  ADD COLUMN IF NOT EXISTS session_id uuid NOT NULL DEFAULT gen_random_uuid();
ALTER TABLE security.platform_sessions
  ADD COLUMN IF NOT EXISTS device_id text;
CREATE UNIQUE INDEX IF NOT EXISTS platform_sessions_session_id_idx
  ON security.platform_sessions(session_id);
CREATE TABLE IF NOT EXISTS security.platform_auth_events (
  event_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  action text NOT NULL CHECK (action IN ('session_created','password_accepted','password_failed','session_revoked','logout_all')),
  at timestamptz NOT NULL,
  FOREIGN KEY (tenant_id,user_id) REFERENCES security.platform_user_profiles(tenant_id,user_id)
);
CREATE INDEX IF NOT EXISTS platform_auth_events_user_recent_idx
  ON security.platform_auth_events(tenant_id,user_id,at DESC);
