CREATE TABLE agents.browser_push_subscriptions(
 subscription_id text PRIMARY KEY,tenant_id text NOT NULL,user_id text NOT NULL,
 device_id text NOT NULL,endpoint_hash text NOT NULL UNIQUE,endpoint text NOT NULL,
 p256dh text NOT NULL,auth_key text NOT NULL,scope_tag text NOT NULL,
 session_created_at timestamptz NOT NULL,enabled boolean NOT NULL DEFAULT true,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 UNIQUE(tenant_id,user_id,device_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id)
);
CREATE INDEX browser_push_owner_idx ON agents.browser_push_subscriptions(tenant_id,user_id) WHERE enabled;
CREATE TABLE agents.browser_push_deliveries(
 subscription_id text NOT NULL REFERENCES agents.browser_push_subscriptions(subscription_id) ON DELETE CASCADE,
 event_id text NOT NULL,state text NOT NULL DEFAULT 'pending' CHECK(state IN('pending','delivered','skipped','failed')),
 attempts integer NOT NULL DEFAULT 0,available_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 lease_id text,lease_until timestamptz,last_status integer,updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(subscription_id,event_id)
);
CREATE INDEX browser_push_due_idx ON agents.browser_push_deliveries(available_at) WHERE state='pending';
