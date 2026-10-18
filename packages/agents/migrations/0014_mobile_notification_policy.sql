-- Account-scoped notification policy and safe navigation-only audit trail.
-- No tokens, message bodies, transfer amounts, or FCM payloads are stored here.
CREATE TABLE IF NOT EXISTS agents.mobile_notification_preferences (
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 messages boolean NOT NULL DEFAULT true,
 calls boolean NOT NULL DEFAULT true,
 rooms boolean NOT NULL DEFAULT true,
 status boolean NOT NULL DEFAULT true,
 wallet boolean NOT NULL DEFAULT true,
 p2p boolean NOT NULL DEFAULT true,
 quiet_start integer CHECK (quiet_start BETWEEN 0 AND 1439),
 quiet_end integer CHECK (quiet_end BETWEEN 0 AND 1439),
 utc_offset_minutes integer NOT NULL DEFAULT 0
    CHECK (utc_offset_minutes BETWEEN -840 AND 840),
 updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY (tenant_id, user_id),
 CHECK ((quiet_start IS NULL) = (quiet_end IS NULL))
);

CREATE TABLE IF NOT EXISTS agents.mobile_notification_history (
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 event_id text NOT NULL,
 category text NOT NULL
   CHECK (category IN ('messages','calls','rooms','status','wallet','p2p')),
 title text NOT NULL,
 deep_link text,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY (tenant_id, user_id, event_id),
 CHECK (char_length(event_id) BETWEEN 1 AND 160),
 CHECK (char_length(title) BETWEEN 1 AND 120),
 CHECK (deep_link IS NULL OR char_length(deep_link) <= 300)
);
CREATE INDEX IF NOT EXISTS mobile_notification_history_owner_idx
 ON agents.mobile_notification_history (tenant_id,user_id,created_at DESC);
