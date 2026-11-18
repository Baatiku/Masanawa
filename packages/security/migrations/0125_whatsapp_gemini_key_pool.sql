-- Per-tenant credentials. Keys never appear in administration read responses.
-- Project IDs are administrator-declared: Google quotas are per project, not key.
CREATE TABLE security.whatsapp_gemini_keys (
  key_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  label text NOT NULL CHECK(length(label) BETWEEN 1 AND 80),
  project_id text NOT NULL CHECK(project_id ~ '^[a-z][a-z0-9-]{4,62}$'),
  key_ciphertext bytea NOT NULL,
  key_suffix text NOT NULL CHECK(length(key_suffix) BETWEEN 4 AND 8),
  enabled boolean NOT NULL DEFAULT true,
  cooldown_until timestamptz,
  last_error_code text,
  last_used_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  UNIQUE(tenant_id,key_id)
);
CREATE INDEX whatsapp_gemini_active ON security.whatsapp_gemini_keys
  (tenant_id,enabled,cooldown_until,last_used_at);

-- Gemini Live exposes a provider-controlled prebuilt voice library; these
-- names are not interchangeable with authorized custom Masanawa voice IDs.
ALTER TABLE security.whatsapp_assistants
  ADD COLUMN live_voice_name text NOT NULL DEFAULT 'Kore'
  CHECK(live_voice_name IN ('Kore','Puck','Charon','Fenrir','Aoede','Leda','Orus','Zephyr'));
