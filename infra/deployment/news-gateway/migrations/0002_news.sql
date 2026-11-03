-- Isolated, additive news-only tables. Existing Masanawa financial data is never imported.
CREATE TABLE IF NOT EXISTS news_articles (
  id TEXT PRIMARY KEY,
  publisher_id TEXT NOT NULL,
  source_url TEXT NOT NULL UNIQUE,
  title TEXT NOT NULL,
  summary TEXT NOT NULL,
  published_at TEXT NOT NULL,
  first_seen_ms INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_news_published ON news_articles(published_at DESC,id DESC);
CREATE INDEX IF NOT EXISTS idx_news_publisher_published ON news_articles(publisher_id,published_at DESC,id DESC);
CREATE TABLE IF NOT EXISTS news_refresh_state (
  state_key TEXT PRIMARY KEY,
  checked_ms INTEGER NOT NULL DEFAULT 0,
  lease_until_ms INTEGER NOT NULL DEFAULT 0,
  last_success_ms INTEGER NOT NULL DEFAULT 0,
  last_imported INTEGER NOT NULL DEFAULT 0,
  last_failed INTEGER NOT NULL DEFAULT 0
);
