ALTER TABLE news_articles ADD COLUMN content_key TEXT NOT NULL DEFAULT '';
CREATE UNIQUE INDEX IF NOT EXISTS idx_news_content_key ON news_articles(content_key) WHERE content_key<>'';

CREATE TABLE IF NOT EXISTS news_refresh_runs (
  id TEXT PRIMARY KEY,
  trigger TEXT NOT NULL,
  started_ms INTEGER NOT NULL,
  completed_ms INTEGER,
  checked INTEGER NOT NULL DEFAULT 0,
  imported INTEGER NOT NULL DEFAULT 0,
  failed INTEGER NOT NULL DEFAULT 0
);
CREATE INDEX IF NOT EXISTS idx_news_runs ON news_refresh_runs(trigger, started_ms DESC);
