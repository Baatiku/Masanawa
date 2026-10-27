-- Forward-only, separately receipted Home sponsorship and verified views.
-- Never reserve or spend restricted welcome MB.
ALTER TABLE feed.posts ADD COLUMN IF NOT EXISTS paid_disabled_at timestamptz;
ALTER TABLE feed.posts ADD COLUMN IF NOT EXISTS paid_purge_at timestamptz;
ALTER TABLE feed.posts ADD COLUMN IF NOT EXISTS paid_purged_at timestamptz;

CREATE TABLE feed.promotion_quotes (
 tenant_id text NOT NULL, id uuid NOT NULL DEFAULT gen_random_uuid(),
 sponsor_id text NOT NULL, post_id uuid,
 kind text NOT NULL CHECK(kind IN ('human_primary','boost')),
 body text, media_ids text[] NOT NULL DEFAULT '{}', destination_url text,
 target_views integer NOT NULL CHECK(target_views BETWEEN 1 AND 1000000),
 price_version text NOT NULL DEFAULT '2026-10-27:1MB',
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 expires_at timestamptz NOT NULL DEFAULT (statement_timestamp()+interval '10 minutes'),
 PRIMARY KEY(tenant_id,id),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 CHECK((kind='human_primary' AND post_id IS NULL AND length(btrim(body)) BETWEEN 1 AND 5000)
    OR (kind='boost' AND post_id IS NOT NULL AND body IS NULL)),
 CHECK(cardinality(media_ids)<=10)
);

CREATE TABLE feed.promotion_campaigns (
 tenant_id text NOT NULL, id uuid NOT NULL DEFAULT gen_random_uuid(),
 quote_id uuid NOT NULL, post_id uuid NOT NULL, sponsor_id text NOT NULL,
 kind text NOT NULL CHECK(kind IN ('human_primary','boost')),
 idempotency_key text NOT NULL, fingerprint text NOT NULL CHECK(fingerprint ~ '^[0-9a-f]{64}$'),
 state text NOT NULL CHECK(state IN ('pending_review','active','paused','completed','cancelled','rejected')),
 target_views integer NOT NULL CHECK(target_views>0),
 remaining_views integer NOT NULL CHECK(remaining_views>=0),
 delivered_views integer NOT NULL DEFAULT 0 CHECK(delivered_views>=0),
 direct_views integer NOT NULL DEFAULT 0 CHECK(direct_views>=0),
 referred_views integer NOT NULL DEFAULT 0 CHECK(referred_views>=0),
 price_version text NOT NULL, reviewed_by text, reviewed_at timestamptz,
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,id), UNIQUE(tenant_id,quote_id),
 UNIQUE(tenant_id,sponsor_id,idempotency_key),
 FOREIGN KEY(tenant_id,quote_id) REFERENCES feed.promotion_quotes(tenant_id,id),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 CHECK(remaining_views+delivered_views=target_views),
 CHECK(direct_views+referred_views=delivered_views)
);
CREATE UNIQUE INDEX feed_human_primary_once ON feed.promotion_campaigns(tenant_id,post_id)
 WHERE kind='human_primary';
CREATE INDEX feed_promotions_available ON feed.promotion_campaigns(tenant_id,post_id,created_at,id)
 WHERE state='active' AND remaining_views>0;
CREATE INDEX feed_promotions_sponsor ON feed.promotion_campaigns(tenant_id,sponsor_id,created_at DESC,id DESC);

CREATE TABLE feed.share_links (
 tenant_id text NOT NULL,id uuid NOT NULL DEFAULT gen_random_uuid(),
 post_id uuid NOT NULL,campaign_id uuid NOT NULL,sharer_id text NOT NULL,
 token_sha256 text NOT NULL CHECK(token_sha256 ~ '^[0-9a-f]{64}$'),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),revoked_at timestamptz,
 PRIMARY KEY(tenant_id,id), UNIQUE(tenant_id,token_sha256),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 FOREIGN KEY(tenant_id,campaign_id) REFERENCES feed.promotion_campaigns(tenant_id,id)
);

-- Challenge timing is server-owned; client foreground claims are NOT proof
-- of a human. The financial feature must stay off until abuse admission is qualified.
CREATE TABLE feed.view_challenges (
 tenant_id text NOT NULL,id uuid NOT NULL DEFAULT gen_random_uuid(),
 post_id uuid NOT NULL,viewer_digest text NOT NULL CHECK(viewer_digest ~ '^[0-9a-f]{64}$'),
 share_link_id uuid,started_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 claimed_at timestamptz,PRIMARY KEY(tenant_id,id),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 FOREIGN KEY(tenant_id,share_link_id) REFERENCES feed.share_links(tenant_id,id)
);
CREATE INDEX feed_view_challenge_expiry ON feed.view_challenges(started_at) WHERE claimed_at IS NULL;
CREATE TABLE feed.qualified_views (
 tenant_id text NOT NULL,id uuid NOT NULL DEFAULT gen_random_uuid(),
 post_id uuid NOT NULL,viewer_digest text NOT NULL,challenge_id uuid NOT NULL,
 qualified_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 campaign_id uuid,sharer_id text,
 PRIMARY KEY(tenant_id,id),UNIQUE(tenant_id,post_id,viewer_digest),
 UNIQUE(tenant_id,challenge_id),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 FOREIGN KEY(tenant_id,challenge_id) REFERENCES feed.view_challenges(tenant_id,id),
 FOREIGN KEY(tenant_id,campaign_id) REFERENCES feed.promotion_campaigns(tenant_id,id)
);
CREATE INDEX feed_qualified_view_count ON feed.qualified_views(tenant_id,post_id);

-- 1 MB gross spend = 2 integer half-MB units, never floating-point money.
CREATE TABLE feed.promotion_view_charges (
 tenant_id text NOT NULL,view_id uuid NOT NULL,campaign_id uuid NOT NULL,
 wallet_operation_id text NOT NULL,platform_half_mb smallint NOT NULL,
 sharer_half_mb smallint NOT NULL,sharer_id text,
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,view_id),UNIQUE(tenant_id,wallet_operation_id),
 FOREIGN KEY(tenant_id,view_id) REFERENCES feed.qualified_views(tenant_id,id),
 FOREIGN KEY(tenant_id,campaign_id) REFERENCES feed.promotion_campaigns(tenant_id,id),
 CHECK(platform_half_mb+sharer_half_mb=2),
 CHECK((sharer_id IS NULL AND platform_half_mb=2 AND sharer_half_mb=0)
    OR (sharer_id IS NOT NULL AND platform_half_mb=1 AND sharer_half_mb=1))
);
CREATE INDEX feed_referral_liability ON feed.promotion_view_charges(tenant_id,sharer_id,created_at)
 WHERE sharer_id IS NOT NULL;

CREATE TABLE feed.promotion_audit (
 tenant_id text NOT NULL,id bigint GENERATED ALWAYS AS IDENTITY,
 campaign_id uuid,post_id uuid NOT NULL,actor_id text NOT NULL,
 action text NOT NULL,details jsonb NOT NULL DEFAULT '{}'::jsonb,
 occurred_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,id)
);
CREATE INDEX feed_promotion_audit_post ON feed.promotion_audit(tenant_id,post_id,occurred_at);
CREATE OR REPLACE FUNCTION feed.refuse_financial_record_change() RETURNS trigger
 LANGUAGE plpgsql AS $$ BEGIN RAISE EXCEPTION 'Promotion financial/audit rows are immutable'; END $$;
CREATE TRIGGER promotion_charges_immutable BEFORE UPDATE OR DELETE ON feed.promotion_view_charges
 FOR EACH ROW EXECUTE FUNCTION feed.refuse_financial_record_change();
CREATE TRIGGER promotion_audit_immutable BEFORE UPDATE OR DELETE ON feed.promotion_audit
 FOR EACH ROW EXECUTE FUNCTION feed.refuse_financial_record_change();

ALTER TABLE gb_wallet.operations DROP CONSTRAINT IF EXISTS operations_operation_kind_check;
ALTER TABLE gb_wallet.operations DROP CONSTRAINT IF EXISTS gb_wallet_operations_operation_kind_check;
ALTER TABLE gb_wallet.operations ADD CONSTRAINT gb_wallet_operations_operation_kind_check CHECK (operation_kind IN (
 'welcome_grant','verified_deposit','send','request_pay','tip','reply','connected_call',
 'redeem','reversal','promotion_view'));
REVOKE ALL ON ALL TABLES IN SCHEMA feed FROM PUBLIC;
