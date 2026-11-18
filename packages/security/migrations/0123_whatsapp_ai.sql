-- Linked-device WhatsApp session authority lives in canonical PostgreSQL.
-- No Meta Cloud API token, WABA, webhook or WhatsApp telephone identity is a wallet principal.
CREATE TABLE security.whatsapp_channels (
  channel_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  display_phone text NOT NULL DEFAULT 'Awaiting QR pairing',
  linked_jid text UNIQUE,
  verified_name text NOT NULL DEFAULT '',
  state text NOT NULL DEFAULT 'pending' CHECK(state IN
    ('pending','qr_ready','connecting','connected','degraded','needs_pairing','disconnected')),
  enabled boolean NOT NULL DEFAULT false,
  qr_ciphertext bytea,
  qr_expires_at timestamptz,
  lease_owner text,
  lease_expires_at timestamptz,
  last_connected_at timestamptz,
  last_message_at timestamptz,
  last_error_code text,
  revision bigint NOT NULL DEFAULT 1,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  UNIQUE(tenant_id,channel_id),
  CHECK(linked_jid IS NULL OR linked_jid ~ '^[0-9]{5,32}(@s[.]whatsapp[.]net|@lid)$')
);

-- The Baileys Signal state is encrypted per (channel, key category, key ID).
-- One credential or key rotation never requires rewriting another session.
CREATE TABLE security.whatsapp_auth_keys (
  tenant_id text NOT NULL,
  channel_id uuid NOT NULL,
  key_type text NOT NULL CHECK(length(key_type) BETWEEN 1 AND 70),
  key_id text NOT NULL CHECK(length(key_id) BETWEEN 1 AND 255),
  ciphertext bytea NOT NULL,
  updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY(tenant_id,channel_id,key_type,key_id),
  FOREIGN KEY(tenant_id,channel_id) REFERENCES security.whatsapp_channels(tenant_id,channel_id)
);

CREATE TABLE security.whatsapp_assistants (
  tenant_id text NOT NULL,
  channel_id uuid NOT NULL,
  name text NOT NULL DEFAULT 'Masanawa Assistant',
  personality text NOT NULL DEFAULT 'Helpful, respectful and concise',
  instructions text NOT NULL DEFAULT '',
  greeting text NOT NULL DEFAULT 'Welcome to Masanawa. How may I help you?',
  language text NOT NULL DEFAULT 'auto' CHECK(language IN ('auto','en','ha')),
  role_level smallint NOT NULL DEFAULT 1 CHECK(role_level BETWEEN 1 AND 5),
  permissions jsonb NOT NULL DEFAULT '["greet","faq"]'::jsonb CHECK(jsonb_typeof(permissions)='array'),
  persona_id text,
  voice_id text,
  text_replies boolean NOT NULL DEFAULT true,
  voice_replies boolean NOT NULL DEFAULT true,
  transcribe_voice boolean NOT NULL DEFAULT true,
  reply_mode text NOT NULL DEFAULT 'always' CHECK(reply_mode IN ('always','away','manual')),
  away_after_seconds integer NOT NULL DEFAULT 120 CHECK(away_after_seconds BETWEEN 30 AND 3600),
  absence_message text NOT NULL DEFAULT 'I am currently away, but my Masanawa assistant can help while I am unavailable.',
  remember_context boolean NOT NULL DEFAULT true,
  working_hours jsonb NOT NULL DEFAULT '{"timezone":"Africa/Lagos","days":[0,1,2,3,4,5,6],"start":"00:00","end":"23:59"}'::jsonb,
  escalation_keywords jsonb NOT NULL DEFAULT '["human","agent","complaint"]'::jsonb,
  revision bigint NOT NULL DEFAULT 1,
  updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY(tenant_id,channel_id),
  FOREIGN KEY(tenant_id,channel_id) REFERENCES security.whatsapp_channels(tenant_id,channel_id)
);

CREATE TABLE security.whatsapp_threads (
  thread_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  channel_id uuid NOT NULL,
  customer_wa_id text NOT NULL CHECK(length(customer_wa_id) BETWEEN 8 AND 255),
  customer_name text NOT NULL DEFAULT '',
  mode text NOT NULL DEFAULT 'ai' CHECK(mode IN ('ai','human','closed')),
  assigned_operator text,
  unread_count integer NOT NULL DEFAULT 0 CHECK(unread_count>=0),
  account_match text NOT NULL DEFAULT 'unknown' CHECK(account_match IN ('unknown','registered','unregistered')),
  account_match_checked_at timestamptz,
  last_human_reply_at timestamptz,
  last_inbound_at timestamptz,
  welcome_sent_at timestamptz,
  last_away_notice_at timestamptz,
  memory_summary text NOT NULL DEFAULT '' CHECK(length(memory_summary)<=3000),
  memory_updated_at timestamptz,
  last_message_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  UNIQUE(tenant_id,channel_id,customer_wa_id),
  UNIQUE(tenant_id,thread_id),
  FOREIGN KEY(tenant_id,channel_id) REFERENCES security.whatsapp_channels(tenant_id,channel_id)
);

CREATE TABLE security.whatsapp_messages (
  message_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  thread_id uuid NOT NULL,
  channel_id uuid NOT NULL,
  provider_message_id text,
  direction text NOT NULL CHECK(direction IN ('inbound','outbound')),
  kind text NOT NULL CHECK(kind IN ('text','audio','image','document','interactive','unsupported')),
  body text,
  media_id text,
  media_payload_ciphertext bytea,
  reply_to_message_id uuid REFERENCES security.whatsapp_messages(message_id),
  operator_request_id text UNIQUE,
  delivery_state text NOT NULL DEFAULT 'received' CHECK(delivery_state IN
    ('received','queued','sent','delivered','read','failed','uncertain')),
  error_code text,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  FOREIGN KEY(tenant_id,thread_id) REFERENCES security.whatsapp_threads(tenant_id,thread_id),
  FOREIGN KEY(tenant_id,channel_id) REFERENCES security.whatsapp_channels(tenant_id,channel_id)
);
CREATE UNIQUE INDEX whatsapp_provider_message_unique ON security.whatsapp_messages(channel_id,provider_message_id)
  WHERE provider_message_id IS NOT NULL;
CREATE UNIQUE INDEX whatsapp_reply_kind_unique ON security.whatsapp_messages(reply_to_message_id,kind)
  WHERE reply_to_message_id IS NOT NULL;
CREATE INDEX whatsapp_thread_messages ON security.whatsapp_messages(tenant_id,thread_id,created_at DESC);

CREATE TABLE security.whatsapp_jobs (
  job_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  channel_id uuid NOT NULL,
  message_id uuid NOT NULL UNIQUE REFERENCES security.whatsapp_messages(message_id),
  kind text NOT NULL CHECK(kind IN ('reply','send')),
  state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','claimed','completed','failed','uncertain')),
  attempts smallint NOT NULL DEFAULT 0,
  available_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  claimed_at timestamptz,
  last_error_code text,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  FOREIGN KEY(tenant_id,channel_id) REFERENCES security.whatsapp_channels(tenant_id,channel_id)
);
CREATE INDEX whatsapp_jobs_ready ON security.whatsapp_jobs(available_at,created_at) WHERE state='pending';

-- A code proves control of the *conversation*, not ownership of a wallet.
CREATE TABLE security.whatsapp_link_intents (
  code_hash text PRIMARY KEY,
  tenant_id text NOT NULL,
  thread_id uuid NOT NULL,
  expires_at timestamptz NOT NULL,
  consumed_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  FOREIGN KEY(tenant_id,thread_id) REFERENCES security.whatsapp_threads(tenant_id,thread_id)
);
CREATE TABLE security.whatsapp_account_links (
  tenant_id text NOT NULL,
  thread_id uuid NOT NULL,
  user_id text NOT NULL,
  linked_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  revoked_at timestamptz,
  PRIMARY KEY(tenant_id,thread_id),
  FOREIGN KEY(tenant_id,thread_id) REFERENCES security.whatsapp_threads(tenant_id,thread_id),
  FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id)
);
CREATE TABLE security.whatsapp_access_grants (
  tenant_id text NOT NULL,
  thread_id uuid NOT NULL,
  user_id text NOT NULL,
  scope text NOT NULL CHECK(scope IN ('account.read')),
  expires_at timestamptz NOT NULL,
  granted_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY(tenant_id,thread_id,scope),
  FOREIGN KEY(tenant_id,thread_id) REFERENCES security.whatsapp_account_links(tenant_id,thread_id)
);

-- A signed-in Masanawa customer reviews a current quote before Buy Data.
-- The durable reservation caps WhatsApp-originated requests; the canonical
-- NGN order journal alone controls wallet holds, capture and provider payment.
CREATE TABLE security.whatsapp_purchase_approvals (
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  thread_id uuid NOT NULL,
  idempotency_key text NOT NULL CHECK(length(idempotency_key) BETWEEN 16 AND 100),
  bundle_id text NOT NULL,
  version text NOT NULL,
  recipient_phone text NOT NULL,
  reviewed_cost_kobo bigint NOT NULL CHECK(reviewed_cost_kobo BETWEEN 1 AND 2000000),
  operation_id text,
  state text NOT NULL DEFAULT 'requested' CHECK(state IN ('requested','pending','delivered','failed')),
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY(tenant_id,user_id,idempotency_key),
  FOREIGN KEY(tenant_id,thread_id) REFERENCES security.whatsapp_account_links(tenant_id,thread_id)
);
CREATE INDEX whatsapp_purchase_daily_budget ON security.whatsapp_purchase_approvals(tenant_id,user_id,created_at DESC);

CREATE TABLE security.whatsapp_templates (
  template_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  channel_id uuid NOT NULL,
  name text NOT NULL CHECK(length(name) BETWEEN 1 AND 100),
  body text NOT NULL CHECK(length(body) BETWEEN 1 AND 4000),
  language text NOT NULL DEFAULT 'auto' CHECK(language IN ('auto','en','ha')),
  enabled boolean NOT NULL DEFAULT true,
  updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  UNIQUE(tenant_id,channel_id,name),
  FOREIGN KEY(tenant_id,channel_id) REFERENCES security.whatsapp_channels(tenant_id,channel_id)
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
