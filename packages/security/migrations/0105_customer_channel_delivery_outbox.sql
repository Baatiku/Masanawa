-- Only newly completed replies with an explicit destination/owner snapshot
-- enter recovery. Never guess a destination for historical private replies.
CREATE TABLE security.customer_channel_delivery_outbox (
  channel text NOT NULL,
  message_id text NOT NULL,
  external_user_id text NOT NULL,
  chat_id text NOT NULL CHECK (length(chat_id) BETWEEN 1 AND 256),
  tenant_id text,
  user_id text,
  request_contact boolean NOT NULL,
  state text NOT NULL DEFAULT 'pending' CHECK (state IN ('pending','leased','delivered','cancelled')),
  attempts integer NOT NULL DEFAULT 0 CHECK (attempts >= 0),
  available_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  lease_token text,
  lease_until timestamptz,
  PRIMARY KEY(channel,message_id),
  FOREIGN KEY(channel,message_id) REFERENCES security.customer_channel_messages(channel,message_id) ON DELETE CASCADE,
  FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE,
  CHECK ((tenant_id IS NULL) = (user_id IS NULL)),
  CHECK ((state='leased') = (lease_token IS NOT NULL AND lease_until IS NOT NULL))
);
CREATE INDEX customer_channel_delivery_due_idx
  ON security.customer_channel_delivery_outbox(channel,available_at,created_at)
  WHERE state IN ('pending','leased');
CREATE UNIQUE INDEX customer_channel_delivery_lease_idx
  ON security.customer_channel_delivery_outbox(lease_token)
  WHERE lease_token IS NOT NULL;
