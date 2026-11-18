-- News publisher accounts are not Masana identities. Reuse the canonical
-- post, reaction, comment, hiding and report journals without touching money.
CREATE TABLE IF NOT EXISTS feed.news_publishers(
 tenant_id text NOT NULL,
 publisher_id text NOT NULL CHECK(publisher_id ~ '^[a-z][a-z0-9-]{1,39}$'),
 display_name text NOT NULL CHECK(length(display_name) BETWEEN 2 AND 90),
 feed_url text NOT NULL,
 rights_basis text,reviewed_by text,rights_until timestamptz,
 state text NOT NULL DEFAULT 'pending' CHECK(state IN('pending','approved','suspended')),
 logo_url text,logo_licensed boolean NOT NULL DEFAULT false,
 next_poll_at timestamptz NOT NULL DEFAULT now(),lease_until timestamptz,
 last_poll_at timestamptz,last_error text,
 PRIMARY KEY(tenant_id,publisher_id),
 CHECK(state<>'approved' OR (length(rights_basis)>12 AND reviewed_by IS NOT NULL AND rights_until IS NOT NULL))
);
CREATE TABLE IF NOT EXISTS feed.news_articles(
 tenant_id text NOT NULL,
 publisher_id text NOT NULL,post_id uuid NOT NULL,
 source_url text NOT NULL,headline text NOT NULL CHECK(length(headline) BETWEEN 3 AND 300),
 summary text NOT NULL CHECK(length(summary) BETWEEN 1 AND 800),
 original_published_at timestamptz NOT NULL,
 content_hash text NOT NULL,imported_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY(tenant_id,post_id),UNIQUE(tenant_id,source_url),
 FOREIGN KEY(tenant_id,publisher_id) REFERENCES feed.news_publishers(tenant_id,publisher_id),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id)
);
ALTER TABLE feed.posts DROP CONSTRAINT IF EXISTS feed_posts_typed_author_valid;
ALTER TABLE feed.posts ADD CONSTRAINT feed_posts_typed_author_valid CHECK(
 (author_type='masana' AND author_masana_id IS NOT NULL AND author_user_id IS NULL)
 OR (author_type='human' AND author_masana_id IS NULL AND author_user_id IS NOT NULL)
 OR (author_type='publisher' AND author_masana_id IS NULL AND author_user_id IS NULL));
CREATE INDEX IF NOT EXISTS feed_news_recent ON feed.posts(tenant_id,published_at DESC,id DESC)
 WHERE state='published' AND author_type='publisher';
CREATE INDEX IF NOT EXISTS feed_news_poll_due ON feed.news_publishers(next_poll_at) WHERE state='approved';
REVOKE ALL ON feed.news_publishers,feed.news_articles FROM PUBLIC;
