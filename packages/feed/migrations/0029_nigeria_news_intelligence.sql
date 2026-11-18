-- National public-information discovery: classify before editorial work and
-- store secondary source evidence without publishing duplicate social posts.
ALTER TABLE feed.news_articles
 ADD COLUMN states text[] NOT NULL DEFAULT '{}',
 ADD COLUMN nationwide boolean NOT NULL DEFAULT false,
 ADD COLUMN locality_names text[] NOT NULL DEFAULT '{}',
 ADD COLUMN category text,
 ADD COLUMN priority_score smallint NOT NULL DEFAULT 0,
 ADD COLUMN first_discovered_at timestamptz NOT NULL DEFAULT clock_timestamp();

ALTER TABLE feed.news_articles ADD CONSTRAINT news_geography_scope_check CHECK (
  states <@ ARRAY['abia','adamawa','akwa-ibom','anambra','bauchi','bayelsa','benue','borno',
    'cross-river','delta','ebonyi','edo','ekiti','enugu','fct','gombe','imo','jigawa',
    'kaduna','kano','katsina','kebbi','kogi','kwara','lagos','nasarawa','niger','ogun',
    'ondo','osun','oyo','plateau','rivers','sokoto','taraba','yobe','zamfara']::text[]
);
ALTER TABLE feed.news_articles ADD CONSTRAINT news_category_check CHECK (
 category IS NULL OR category IN ('security','governance','public-services','health','education','infrastructure','economy','environment','elections','agriculture','community')
);
ALTER TABLE feed.news_articles ADD CONSTRAINT news_priority_check CHECK (priority_score BETWEEN 0 AND 100);
CREATE INDEX feed_news_states_idx ON feed.news_articles USING gin(states);
CREATE INDEX feed_news_timestamp_idx ON feed.news_articles(tenant_id,original_published_at DESC);

CREATE TABLE IF NOT EXISTS feed.news_article_sources(
 tenant_id text NOT NULL,
 source_url text NOT NULL,
 publisher_id text NOT NULL,
 post_id uuid NOT NULL,
 headline text NOT NULL,
 first_seen_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,source_url),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.news_articles(tenant_id,post_id),
 FOREIGN KEY(tenant_id,publisher_id) REFERENCES feed.news_publishers(tenant_id,publisher_id)
);
CREATE INDEX feed_news_sources_post_idx ON feed.news_article_sources(tenant_id,post_id);
REVOKE ALL ON feed.news_article_sources FROM PUBLIC;
