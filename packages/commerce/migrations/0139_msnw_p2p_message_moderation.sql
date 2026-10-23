-- Participant reports never authorize an escrow transition. Original text remains
-- restricted support evidence; retention/erasure policy requires separate approval.
ALTER TABLE commerce.msnw_p2p_order_messages ADD COLUMN removed_at timestamptz;
ALTER TABLE commerce.msnw_p2p_order_messages ADD CONSTRAINT msnw_p2p_message_identity
  UNIQUE (tenant_id,order_id,message_id);
CREATE TABLE commerce.msnw_p2p_message_reports (
 report_id uuid PRIMARY KEY,
 tenant_id text NOT NULL,
 order_id uuid NOT NULL,
 message_id uuid NOT NULL,
 reporter_id text NOT NULL,
 category text NOT NULL CHECK(category IN ('scam','harassment','personal_information','other')),
 details text NOT NULL CHECK(char_length(details) BETWEEN 10 AND 2000),
 state text NOT NULL DEFAULT 'open' CHECK(state IN ('open','dismissed','removed')),
 version integer NOT NULL DEFAULT 1 CHECK(version > 0),
 created_at timestamptz NOT NULL DEFAULT now(),
 reviewed_at timestamptz,
 reviewed_by text,
 review_reason text,
 UNIQUE(tenant_id,order_id,message_id,reporter_id),
 FOREIGN KEY(tenant_id,order_id,message_id)
 REFERENCES commerce.msnw_p2p_order_messages(tenant_id,order_id,message_id),
 CHECK((state='open' AND reviewed_at IS NULL AND reviewed_by IS NULL AND review_reason IS NULL)
   OR (state<>'open' AND reviewed_at IS NOT NULL AND reviewed_by IS NOT NULL
     AND char_length(review_reason) BETWEEN 10 AND 2000))
);
CREATE INDEX msnw_p2p_message_report_queue
 ON commerce.msnw_p2p_message_reports(tenant_id,created_at,report_id) WHERE state='open';

-- A reviewed report is an immutable support audit record. This is not an
-- automated retention/erasure policy; that remains a separately qualified gate.
CREATE FUNCTION commerce.guard_msnw_p2p_message_report() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF TG_OP='DELETE' THEN RAISE EXCEPTION 'P2P message reports are append-only'; END IF;
 IF OLD.state<>'open' OR NEW.state='open' OR NEW.version<>OLD.version+1
   OR (to_jsonb(NEW)-ARRAY['state','version','reviewed_at','reviewed_by','review_reason'])
     IS DISTINCT FROM (to_jsonb(OLD)-ARRAY['state','version','reviewed_at','reviewed_by','review_reason'])
 THEN RAISE EXCEPTION 'P2P message reports permit one immutable review'; END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER msnw_p2p_message_report_guard BEFORE UPDATE OR DELETE
 ON commerce.msnw_p2p_message_reports FOR EACH ROW EXECUTE FUNCTION commerce.guard_msnw_p2p_message_report();
