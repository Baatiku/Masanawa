-- Preserve exactly the URL reviewed for a paid human campaign. A quote is
-- never itself a public CTA; approval snapshots an independently allowlisted
-- HTTPS destination. Existing editorial posts remain unchanged.
ALTER TABLE feed.posts ADD COLUMN IF NOT EXISTS approved_destination_url text;
ALTER TABLE feed.promotion_campaigns ADD COLUMN IF NOT EXISTS approved_destination_url text;
ALTER TABLE feed.promotion_campaigns ADD COLUMN IF NOT EXISTS approval_snapshot jsonb;

-- An immutable rejection appeal records the original rejected campaign. A
-- separate decision audit event resolves it without reopening old money.
CREATE TABLE IF NOT EXISTS feed.promotion_appeals (
 tenant_id text NOT NULL, campaign_id uuid NOT NULL,
 sponsor_id text NOT NULL, reason text NOT NULL CHECK(length(btrim(reason)) BETWEEN 10 AND 500),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,campaign_id),
 FOREIGN KEY(tenant_id,campaign_id) REFERENCES feed.promotion_campaigns(tenant_id,id)
);
CREATE TRIGGER promotion_appeals_immutable BEFORE UPDATE OR DELETE ON feed.promotion_appeals
 FOR EACH ROW EXECUTE FUNCTION feed.refuse_financial_record_change();
REVOKE ALL ON ALL TABLES IN SCHEMA feed FROM PUBLIC;
