-- SPE-A10. New paid text/CTA copy is staged privately until independent
-- review. Live approved copy remains unchanged while an edit is pending.
ALTER TABLE feed.posts ADD COLUMN IF NOT EXISTS paid_content_revision integer
 NOT NULL DEFAULT 0 CHECK(paid_content_revision>=0);
ALTER TABLE feed.posts ADD COLUMN IF NOT EXISTS paid_reviewed_destination_url text;
CREATE TABLE feed.promotion_edit_proposals (
 tenant_id text NOT NULL,
 id uuid NOT NULL DEFAULT gen_random_uuid(),
 post_id uuid NOT NULL,
 owner_id text NOT NULL,
 original_revision integer NOT NULL CHECK(original_revision>=0),
 idempotency_key text NOT NULL,
 request_sha256 text NOT NULL CHECK(request_sha256 ~ '^[0-9a-f]{64}$'),
 proposed_body text NOT NULL CHECK(length(btrim(proposed_body)) BETWEEN 1 AND 5000),
 proposed_destination_url text,
 state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','approved','rejected')),
 reviewer_id text,
 resolution_reason text,
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 reviewed_at timestamptz,
 PRIMARY KEY(tenant_id,id),
 UNIQUE(tenant_id,owner_id,idempotency_key),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 CHECK ((state='pending' AND reviewer_id IS NULL AND reviewed_at IS NULL) OR
  (state IN ('approved','rejected') AND reviewer_id IS NOT NULL AND reviewed_at IS NOT NULL))
);
CREATE UNIQUE INDEX promotion_one_unreviewed_edit
 ON feed.promotion_edit_proposals(tenant_id,post_id) WHERE state='pending';
CREATE INDEX promotion_edit_owner_history
 ON feed.promotion_edit_proposals(tenant_id,owner_id,created_at DESC,id DESC);
CREATE INDEX promotion_edit_staff_queue
 ON feed.promotion_edit_proposals(tenant_id,created_at,id) WHERE state='pending';
CREATE OR REPLACE FUNCTION feed.refuse_promotion_edit_proposal_changes()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF (OLD.tenant_id,OLD.id,OLD.post_id,OLD.owner_id,OLD.original_revision,
     OLD.idempotency_key,OLD.request_sha256,OLD.proposed_body,OLD.proposed_destination_url)
    IS DISTINCT FROM
    (NEW.tenant_id,NEW.id,NEW.post_id,NEW.owner_id,NEW.original_revision,
     NEW.idempotency_key,NEW.request_sha256,NEW.proposed_body,NEW.proposed_destination_url)
 THEN RAISE EXCEPTION 'Paid edit proposal source is immutable'; END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER promotion_edit_source_immutable BEFORE UPDATE ON feed.promotion_edit_proposals
 FOR EACH ROW EXECUTE FUNCTION feed.refuse_promotion_edit_proposal_changes();
CREATE TRIGGER promotion_edit_no_delete BEFORE DELETE ON feed.promotion_edit_proposals
 FOR EACH ROW EXECUTE FUNCTION feed.refuse_financial_record_change();
REVOKE ALL ON ALL TABLES IN SCHEMA feed FROM PUBLIC;
