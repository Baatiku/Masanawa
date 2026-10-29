-- Reserved 0014–0016 belong to the paused human-publishing branch.
ALTER TABLE feed.posts ADD COLUMN source_provenance jsonb;
ALTER TABLE feed.posts DROP CONSTRAINT posts_body_check;
ALTER TABLE feed.posts ADD CONSTRAINT feed_posts_body_check CHECK(length(body)<=100000);
CREATE TABLE feed.official_social_sources (
 id uuid PRIMARY KEY DEFAULT gen_random_uuid(),tenant_id text NOT NULL,character_id text NOT NULL,
 platform text NOT NULL CHECK(platform IN ('x','facebook')),account_id text NOT NULL CHECK(account_id ~ '^[0-9]{1,30}$'),
 handle text NOT NULL,rights_basis text NOT NULL CHECK(length(rights_basis)>4),
 state text NOT NULL CHECK(state IN ('approved','suspended')),reviewed_by text NOT NULL,
 review_expires_at timestamptz NOT NULL,cursor text,lease_until timestamptz,lease_token uuid,
 last_synced_at timestamptz,next_sync_at timestamptz NOT NULL DEFAULT now(),
 UNIQUE(tenant_id,platform,account_id),UNIQUE(tenant_id,character_id)
);
CREATE TABLE feed.official_social_posts (
 source_id uuid NOT NULL REFERENCES feed.official_social_sources(id),external_id text NOT NULL,
 tenant_id text NOT NULL,post_id uuid NOT NULL,content_sha256 text NOT NULL,
 original_published_at timestamptz NOT NULL,source_url text NOT NULL,revision integer NOT NULL DEFAULT 1,
 imported_at timestamptz NOT NULL DEFAULT now(),withdrawn_at timestamptz,
 PRIMARY KEY(source_id,external_id),FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id)
);
CREATE TABLE feed.official_social_revisions (
 source_id uuid NOT NULL,external_id text NOT NULL,revision integer NOT NULL,
 content_sha256 text NOT NULL,recorded_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY(source_id,external_id,revision)
);
REVOKE ALL ON feed.official_social_sources,feed.official_social_posts,feed.official_social_revisions FROM PUBLIC;
