-- Authenticated per-fan archive preference. Messages remain in the canonical
-- agents journal; archiving changes only the inbox projection, not retention.
ALTER TABLE masana.fan_chat_preferences
  ADD COLUMN archived boolean NOT NULL DEFAULT false;

CREATE INDEX fan_chat_archive_idx ON masana.fan_chat_preferences
  (tenant_id, fan_user_id, archived, updated_at DESC);
