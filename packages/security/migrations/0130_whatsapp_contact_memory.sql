ALTER TABLE security.whatsapp_messages ADD COLUMN memory_processed_at timestamptz;
ALTER TABLE security.whatsapp_threads
  ADD COLUMN memory_claim uuid,
  ADD COLUMN memory_available_at timestamptz NOT NULL DEFAULT '-infinity';

CREATE TABLE security.whatsapp_memory_artifacts (
  tenant_id text NOT NULL,
  thread_id uuid NOT NULL,
  artifact_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  oldest_message_at timestamptz NOT NULL,
  newest_message_at timestamptz NOT NULL,
  source_message_ids uuid[] NOT NULL CHECK(cardinality(source_message_ids) BETWEEN 1 AND 24),
  summary text NOT NULL CHECK(length(summary) BETWEEN 1 AND 1000),
  search_text tsvector GENERATED ALWAYS AS (to_tsvector('simple'::regconfig,summary)) STORED,
  CHECK(oldest_message_at<=newest_message_at),
  FOREIGN KEY(tenant_id,thread_id) REFERENCES security.whatsapp_threads(tenant_id,thread_id) ON DELETE CASCADE
);

CREATE INDEX whatsapp_memory_artifacts_recent
  ON security.whatsapp_memory_artifacts(tenant_id,thread_id,newest_message_at DESC,artifact_id);
CREATE INDEX whatsapp_memory_pending ON security.whatsapp_messages(tenant_id,thread_id,created_at,message_id)
  WHERE memory_processed_at IS NULL AND body IS NOT NULL AND kind IN ('text','audio','image')
    AND (direction='inbound' OR delivery_state IN ('sent','delivered','read'));

ALTER TABLE security.whatsapp_threads
  ADD COLUMN history_requested_at timestamptz,
  ADD COLUMN history_dispatched_at timestamptz,
  ADD COLUMN history_dispatch_state text CHECK(history_dispatch_state IN ('queued','requested','failed'));
