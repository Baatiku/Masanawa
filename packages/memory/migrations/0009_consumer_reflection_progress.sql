-- Consumer summaries are disposable projections of canonical private evidence.
-- They deliberately do not alter immutable canonical reflection/audit history.
CREATE TABLE memory.consumer_reflection_progress (
  tenant_id text NOT NULL, user_id text NOT NULL, character_id text NOT NULL,
  relationship_id text NOT NULL,
  checked_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY (tenant_id,user_id,character_id,relationship_id)
);
CREATE TABLE memory.consumer_summaries (
  tenant_id text NOT NULL, user_id text NOT NULL, character_id text NOT NULL,
  relationship_id text NOT NULL,
  summary_text text NOT NULL CHECK (char_length(summary_text) BETWEEN 1 AND 1900),
  sources jsonb NOT NULL CHECK(jsonb_typeof(sources)='array'),
  source_digest text NOT NULL CHECK(source_digest ~ '^[0-9a-f]{64}$'),
  updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY (tenant_id,user_id,character_id,relationship_id)
);
