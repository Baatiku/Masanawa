-- WhatsApp Business Platform authority lives in the canonical PostgreSQL database.
-- No browser, Cloudflare D1 or AI prompt is a source of account/financial authority.
CREATE TABLE security.whatsapp_channels (
  channel_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  waba_id text NOT NULL CHECK (waba_id ~ '^[0-9]{5,32}$'),
  phone_number_id text NOT NULL UNIQUE CHECK (phone_number_id ~ '^[0-9]{5,32}$'),
  display_phone text NOT NULL,
  verified_name text NOT NULL DEFAULT '',
  token_ciphertext bytea NOT NULL,
  token_key_version integer NOT NULL DEFAULT 1,
  state text NOT NULL DEFAULT 'pending' CHECK (state IN ('pending','connected','degraded','disconnected')),
  enabled boolean NOT NULL DEFAULT false,
  last_webhook_at timestamptz,
  last_error_code text,
  revision bigint NOT NULL DEFAULT 1,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  UNIQUE (tenant_id, channel_id)
);

CREATE TABLE security.whatsapp_assistants (
  tenant_id text NOT NULL,
  channel_id uuid NOT NULL,
  name text NOT NULL DEFAULT 'Masanawa Assistant',
  personality text NOT NULL DEFAULT 'Helpful, respectful and concise',
  instructions text NOT NULL DEFAULT '',
  greeting text NOT NULL DEFAULT 'Welcome to Masanawa. How may I help you?',
  language text NOT NULL DEFAULT 'auto' CHECK (language IN ('auto','en','ha')),
  role_level smallint NOT NULL DEFAULT 1 CHECK (role_level BETWEEN 1 AND 5),
  permissions jsonb NOT NULL DEFAULT '["greet","faq"]'::jsonb CHECK (jsonb_typeof(permissions)='array'),
  persona_id text,
  voice_id text,
  text_replies boolean NOT NULL DEFAULT true,
  voice_replies boolean NOT NULL DEFAULT false,
  transcribe_voice boolean NOT NULL DEFAULT false,
  working_hours jsonb NOT NULL DEFAULT '{"timezone":"Africa/Lagos","days":[0,1,2,3,4,5,6],"start":"00:00","end":"23:59"}'::jsonb,
  escalation_keywords jsonb NOT NULL DEFAULT '["human","agent","complaint"]'::jsonb,
  revision bigint NOT NULL DEFAULT 1,
  updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY (tenant_id, channel_id),
  FOREIGN KEY (tenant_id, channel_id) REFERENCES security.whatsapp_channels(tenant_id, channel_id)
);

CREATE TABLE security.whatsapp_onboarding (
  state_hash text PRIMARY KEY,
  tenant_id text NOT NULL,
  actor_id text NOT NULL,
  expires_at timestamptz NOT NULL,
  consumed_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp()
);

CREATE TABLE security.whatsapp_threads (
  thread_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  channel_id uuid NOT NULL,
  customer_wa_id text NOT NULL CHECK (customer_wa_id ~ '^[0-9]{5,32}$'),
  customer_name text NOT NULL DEFAULT '',
  mode text NOT NULL DEFAULT 'ai' CHECK (mode IN ('ai','human','closed')),
  assigned_operator text,
  unread_count integer NOT NULL DEFAULT 0 CHECK (unread_count >= 0),
  last_message_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  UNIQUE (tenant_id, channel_id, customer_wa_id),
  UNIQUE (tenant_id, thread_id),
  FOREIGN KEY (tenant_id, channel_id) REFERENCES security.whatsapp_channels(tenant_id, channel_id)
);

CREATE TABLE security.whatsapp_messages (
  message_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  thread_id uuid NOT NULL,
  channel_id uuid NOT NULL,
  provider_message_id text,
  direction text NOT NULL CHECK (direction IN ('inbound','outbound')),
  kind text NOT NULL CHECK (kind IN ('text','audio','image','document','interactive','unsupported')),
  body text,
  media_id text,
  reply_to_message_id uuid UNIQUE REFERENCES security.whatsapp_messages(message_id),
  operator_request_id text UNIQUE,
  delivery_state text NOT NULL DEFAULT 'received' CHECK (delivery_state IN ('received','queued','sent','delivered','read','failed','uncertain')),
  error_code text,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  FOREIGN KEY (tenant_id, thread_id) REFERENCES security.whatsapp_threads(tenant_id, thread_id),
  FOREIGN KEY (tenant_id, channel_id) REFERENCES security.whatsapp_channels(tenant_id, channel_id)
);
CREATE UNIQUE INDEX whatsapp_provider_message_unique ON security.whatsapp_messages(channel_id,provider_message_id) WHERE provider_message_id IS NOT NULL;
CREATE INDEX whatsapp_thread_messages ON security.whatsapp_messages(tenant_id,thread_id,created_at DESC);

CREATE TABLE security.whatsapp_jobs (
  job_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  channel_id uuid NOT NULL,
  message_id uuid NOT NULL UNIQUE REFERENCES security.whatsapp_messages(message_id),
  kind text NOT NULL CHECK (kind IN ('reply','send')),
  state text NOT NULL DEFAULT 'pending' CHECK (state IN ('pending','claimed','completed','failed','uncertain')),
  attempts smallint NOT NULL DEFAULT 0,
  available_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  claimed_at timestamptz,
  last_error_code text,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  FOREIGN KEY (tenant_id, channel_id) REFERENCES security.whatsapp_channels(tenant_id, channel_id)
);
CREATE INDEX whatsapp_jobs_ready ON security.whatsapp_jobs(available_at,created_at) WHERE state='pending';

CREATE TABLE security.whatsapp_link_intents (
  code_hash text PRIMARY KEY,
  tenant_id text NOT NULL,
  thread_id uuid NOT NULL,
  expires_at timestamptz NOT NULL,
  consumed_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  FOREIGN KEY (tenant_id, thread_id) REFERENCES security.whatsapp_threads(tenant_id, thread_id)
);
CREATE TABLE security.whatsapp_account_links (
  tenant_id text NOT NULL,
  thread_id uuid NOT NULL,
  user_id text NOT NULL,
  linked_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  revoked_at timestamptz,
  PRIMARY KEY (tenant_id, thread_id),
  FOREIGN KEY (tenant_id, thread_id) REFERENCES security.whatsapp_threads(tenant_id, thread_id),
  FOREIGN KEY (tenant_id, user_id) REFERENCES identity.users(tenant_id, user_id)
);
CREATE TABLE security.whatsapp_access_grants (
  tenant_id text NOT NULL,
  thread_id uuid NOT NULL,
  user_id text NOT NULL,
  scope text NOT NULL CHECK (scope IN ('account.read')),
  expires_at timestamptz NOT NULL,
  granted_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY (tenant_id, thread_id, scope),
  FOREIGN KEY (tenant_id, thread_id) REFERENCES security.whatsapp_account_links(tenant_id, thread_id)
);

CREATE TABLE security.whatsapp_audit (
  event_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  tenant_id text NOT NULL,
  channel_id uuid,
  actor_id text NOT NULL,
  action text NOT NULL,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp()
);
CREATE FUNCTION security.whatsapp_audit_immutable() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN RAISE EXCEPTION 'whatsapp_audit_immutable'; END $$;
CREATE TRIGGER whatsapp_audit_immutable BEFORE UPDATE OR DELETE ON security.whatsapp_audit
  FOR EACH ROW EXECUTE FUNCTION security.whatsapp_audit_immutable();
