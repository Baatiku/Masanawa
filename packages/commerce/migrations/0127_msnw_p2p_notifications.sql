-- P2P transition outbox, never used as a ledger or settlement authority.
-- Every state transition writes exactly one event; fan out per participant
-- without exposing counterpart bank records in push payloads.
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_notifications (
 event_id uuid NOT NULL REFERENCES commerce.msnw_p2p_events(event_id),
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 order_id uuid NOT NULL REFERENCES commerce.msnw_p2p_orders(order_id),
 action text NOT NULL,
 state text NOT NULL,
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 attempts integer NOT NULL DEFAULT 0 CHECK (attempts>=0),
 claim_token uuid,
 claimed_until timestamptz,
 processed_at timestamptz,
 delivered boolean NOT NULL DEFAULT false,
 PRIMARY KEY(event_id,user_id)
);
CREATE INDEX IF NOT EXISTS msnw_p2p_notifications_due_idx
 ON commerce.msnw_p2p_notifications(processed_at,claimed_until,created_at)
 WHERE processed_at IS NULL;
CREATE INDEX IF NOT EXISTS msnw_p2p_notifications_member_idx
 ON commerce.msnw_p2p_notifications(tenant_id,user_id,created_at DESC);
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_queue_transition_notice()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE buyer text; seller text;
BEGIN
 SELECT o.buyer_id,o.seller_id INTO buyer,seller
 FROM commerce.msnw_p2p_orders o
 WHERE o.tenant_id=NEW.tenant_id AND o.order_id=NEW.order_id;
 IF buyer IS NULL OR seller IS NULL THEN
   RAISE EXCEPTION 'p2p notification order missing';
 END IF;
 INSERT INTO commerce.msnw_p2p_notifications(event_id,tenant_id,user_id,order_id,action,state,created_at)
 VALUES(NEW.event_id,NEW.tenant_id,buyer,NEW.order_id,NEW.action,NEW.to_state,NEW.created_at),
       (NEW.event_id,NEW.tenant_id,seller,NEW.order_id,NEW.action,NEW.to_state,NEW.created_at)
 ON CONFLICT DO NOTHING;
 -- Publish to the EXISTING leased events.outbox, not a second delivery
 -- queue. This trigger shares the order transaction and is rolled back if
 -- the escrow state change fails. The inbox projection above is permanent.
 INSERT INTO events.outbox (
   outbox_event_id,tenant_id,event_id,event_type,schema_version,
   aggregate_type,aggregate_id,correlation_id,causation_id,
   destination,payload
 )
 SELECT
   'outbox-event_' || replace(gen_random_uuid()::text,'-',''),
   NEW.tenant_id,
   'event_' || replace(gen_random_uuid()::text,'-',''),
   'p2p.order.transition',1,
   'msnw_p2p_order',NEW.order_id::text,
   'correlation_' || replace(gen_random_uuid()::text,'-',''),NULL,
   'notifications.p2p',
   jsonb_build_object('userId',recipient.user_id,
     'orderId',NEW.order_id::text,'transition',NEW.action,
     'state',NEW.to_state,'sourceEventId',NEW.event_id::text)
 FROM (VALUES(buyer),(seller)) AS recipient(user_id);
 RETURN NEW;
END;
$$;
DROP TRIGGER IF EXISTS msnw_p2p_queue_notice ON commerce.msnw_p2p_events;
CREATE TRIGGER msnw_p2p_queue_notice AFTER INSERT
 ON commerce.msnw_p2p_events FOR EACH ROW
 EXECUTE FUNCTION commerce.msnw_p2p_queue_transition_notice();
REVOKE ALL ON commerce.msnw_p2p_notifications FROM PUBLIC;
