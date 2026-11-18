-- SPE-A03/A06. Drafts carry no funds; a quote retains immutable original
-- financial intent and must never silently re-reserve after a lost response.
CREATE TABLE feed.promotion_drafts (
 tenant_id text NOT NULL, id uuid NOT NULL DEFAULT gen_random_uuid(),
 owner_id text NOT NULL, body text NOT NULL,
 destination_url text, target_views integer NOT NULL CHECK(target_views BETWEEN 1 AND 1000000),
 campaign_expires_at timestamptz,
 version integer NOT NULL DEFAULT 0 CHECK(version>=0),
 state text NOT NULL DEFAULT 'draft' CHECK(state IN ('draft','quoted','discarded')),
 idempotency_key text NOT NULL, request_sha256 text NOT NULL CHECK(request_sha256~'^[0-9a-f]{64}$'),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,id), UNIQUE(tenant_id,owner_id,idempotency_key),
 CHECK(length(btrim(body)) BETWEEN 1 AND 5000)
);
ALTER TABLE feed.promotion_quotes ADD COLUMN draft_id uuid;
ALTER TABLE feed.promotion_quotes ADD COLUMN campaign_expires_at timestamptz;
ALTER TABLE feed.promotion_quotes ADD CONSTRAINT promotion_quote_draft_fk
 FOREIGN KEY(tenant_id,draft_id) REFERENCES feed.promotion_drafts(tenant_id,id);
CREATE UNIQUE INDEX promotion_one_quote_per_draft ON feed.promotion_quotes(tenant_id,draft_id)
 WHERE draft_id IS NOT NULL;
ALTER TABLE feed.promotion_campaigns ADD COLUMN expires_at timestamptz;
ALTER TABLE feed.promotion_campaigns DROP CONSTRAINT IF EXISTS promotion_campaigns_state_check;
ALTER TABLE feed.promotion_campaigns ADD CONSTRAINT promotion_campaigns_state_check
 CHECK(state IN ('pending_review','active','paused','completed','cancelled','rejected','expired'));
CREATE INDEX promotion_expiry_due ON feed.promotion_campaigns(expires_at,id)
 WHERE expires_at IS NOT NULL AND state IN ('active','paused','pending_review');
-- Preserve historic economics while freezing the newly added expiry.
CREATE OR REPLACE FUNCTION feed.refuse_promotion_budget_economics_update()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF (OLD.tenant_id,OLD.id,OLD.quote_id,OLD.post_id,OLD.sponsor_id,OLD.kind,
      OLD.idempotency_key,OLD.fingerprint,OLD.target_views,OLD.price_version,OLD.expires_at)
    IS DISTINCT FROM
    (NEW.tenant_id,NEW.id,NEW.quote_id,NEW.post_id,NEW.sponsor_id,NEW.kind,
      NEW.idempotency_key,NEW.fingerprint,NEW.target_views,NEW.price_version,NEW.expires_at)
 THEN RAISE EXCEPTION 'Campaign economics cannot change after confirmation';
 END IF;
 RETURN NEW;
END $$;
REVOKE ALL ON ALL TABLES IN SCHEMA feed FROM PUBLIC;
