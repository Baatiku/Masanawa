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

-- Durable dispatch queue for alerts originated by committed financial and
-- missed-call records. Push may fail; its failure cannot roll back money.
CREATE TABLE IF NOT EXISTS agents.mobile_notification_outbox (
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 event_id text NOT NULL,
 category text NOT NULL
   CHECK (category IN ('messages','calls','rooms','status','wallet','p2p')),
 kind text NOT NULL,
 deep_link text,
 attempts integer NOT NULL DEFAULT 0,
 available_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 lease_id uuid,
 lease_until timestamptz,
 delivered_at timestamptz,
 PRIMARY KEY(tenant_id,user_id,event_id),
 CHECK (char_length(kind) BETWEEN 1 AND 80)
);
CREATE INDEX IF NOT EXISTS mobile_notice_outbox_due_idx
 ON agents.mobile_notification_outbox(available_at)
 WHERE delivered_at IS NULL;

CREATE OR REPLACE FUNCTION agents.queue_mobile_notice(
 p_tenant text,p_user text,p_event text,p_category text,
 p_title text,p_kind text,p_link text
) RETURNS void LANGUAGE plpgsql AS $$
BEGIN
 IF length(p_event) NOT BETWEEN 1 AND 160 OR
    p_category NOT IN ('messages','calls','rooms','status','wallet','p2p') OR
    length(p_title) NOT BETWEEN 1 AND 120 OR
    length(p_kind) NOT BETWEEN 1 AND 80 OR
    p_link IS NULL OR length(p_link) > 300 THEN
    RAISE EXCEPTION 'invalid mobile notice';
 END IF;
 INSERT INTO agents.mobile_notification_history
  (tenant_id,user_id,event_id,category,title,deep_link)
 VALUES(p_tenant,p_user,p_event,p_category,p_title,p_link)
 ON CONFLICT DO NOTHING;
 INSERT INTO agents.mobile_notification_outbox
  (tenant_id,user_id,event_id,category,kind,deep_link)
 VALUES(p_tenant,p_user,p_event,p_category,p_kind,p_link)
 ON CONFLICT DO NOTHING;
END;
$$;
REVOKE ALL ON agents.mobile_notification_preferences FROM PUBLIC;
REVOKE ALL ON agents.mobile_notification_history FROM PUBLIC;
REVOKE ALL ON agents.mobile_notification_outbox FROM PUBLIC;

CREATE OR REPLACE FUNCTION agents.queue_missed_call_notice()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NEW.state='missed' AND OLD.state IS DISTINCT FROM NEW.state THEN
   PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.user_id,
     'missed-'||NEW.call_id::text,'calls','Missed Masana call',
     'missed_call','masanawa://calls/history');
 END IF;
 RETURN NEW;
END;
$$;
DROP TRIGGER IF EXISTS masana_incoming_missed_notice
 ON agents.masana_incoming_calls;
CREATE TRIGGER masana_incoming_missed_notice
 AFTER UPDATE OF state ON agents.masana_incoming_calls
 FOR EACH ROW EXECUTE FUNCTION agents.queue_missed_call_notice();
