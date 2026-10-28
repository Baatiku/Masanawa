-- SPE-A10/A07: new funding is always a separate quote, tied to a
-- sponsor-owned original campaign and its idempotency key. Reports are
-- tenant-scoped, never unmoderated self-service takedowns.
CREATE TABLE feed.promotion_extension_quotes (
 tenant_id text NOT NULL,source_campaign_id uuid NOT NULL,
 sponsor_id text NOT NULL,idempotency_key text NOT NULL,
 target_views integer NOT NULL CHECK(target_views BETWEEN 1 AND 1000000),
 quote_id uuid NOT NULL,
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,sponsor_id,idempotency_key),
 UNIQUE(tenant_id,quote_id),
 FOREIGN KEY(tenant_id,source_campaign_id)
 REFERENCES feed.promotion_campaigns(tenant_id,id),
 FOREIGN KEY(tenant_id,quote_id) REFERENCES feed.promotion_quotes(tenant_id,id)
);
CREATE TRIGGER promotion_extension_immutable BEFORE UPDATE OR DELETE
 ON feed.promotion_extension_quotes FOR EACH ROW
 EXECUTE FUNCTION feed.refuse_financial_record_change();
CREATE TABLE feed.promotion_reports (
 tenant_id text NOT NULL,id uuid NOT NULL DEFAULT gen_random_uuid(),
 post_id uuid NOT NULL,reporter_id text NOT NULL,
 reason text NOT NULL CHECK(length(btrim(reason)) BETWEEN 10 AND 500),
 status text NOT NULL DEFAULT 'pending' CHECK(status IN ('pending','dismissed','removed')),
 reviewed_by text,reviewed_at timestamptz,resolution_reason text,
 reported_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,id),UNIQUE(tenant_id,post_id,reporter_id),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 CHECK((status='pending' AND reviewed_by IS NULL AND reviewed_at IS NULL)
   OR (status IN ('dismissed','removed') AND reviewed_by IS NOT NULL AND reviewed_at IS NOT NULL))
);
CREATE INDEX promotion_reports_review_queue ON feed.promotion_reports(tenant_id,reported_at,id)
 WHERE status='pending';
REVOKE ALL ON ALL TABLES IN SCHEMA feed FROM PUBLIC;
