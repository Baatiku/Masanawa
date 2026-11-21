-- Durable, bounded fanout for genuine newly imported/revised publisher articles.
-- No historic/backfilled articles are replayed when this migration is applied.
-- Each event is uniquely tied to a canonical publisher post and content hash.
CREATE TABLE IF NOT EXISTS feed.news_notification_events (
  tenant_id text NOT NULL,
  event_id text NOT NULL,
  post_id text NOT NULL,
  content_hash text NOT NULL,
  event_kind text NOT NULL CHECK (event_kind IN ('published','revised')),
  last_user_id text NOT NULL DEFAULT '',
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  finished_at timestamptz,
  PRIMARY KEY (tenant_id,event_id),
  UNIQUE (tenant_id,post_id,content_hash),
  CHECK (length(event_id) BETWEEN 1 AND 80),
  CHECK (length(post_id) BETWEEN 1 AND 128),
  CHECK (length(content_hash)=64)
);
CREATE INDEX IF NOT EXISTS news_notification_event_pending_idx
 ON feed.news_notification_events(created_at,event_id) WHERE finished_at IS NULL;
REVOKE ALL ON feed.news_notification_events FROM PUBLIC;
