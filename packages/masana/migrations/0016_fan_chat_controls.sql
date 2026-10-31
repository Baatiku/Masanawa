-- Per-fan conversation presentation preferences. The immutable agent journal
-- remains the only message source; archive/rename never change its contents.
ALTER TABLE masana.fan_chat_preferences
  ADD COLUMN IF NOT EXISTS archived boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS custom_title text;

DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_constraint
     WHERE conname='fan_chat_custom_title_bound'
       AND conrelid='masana.fan_chat_preferences'::regclass) THEN
    ALTER TABLE masana.fan_chat_preferences
      ADD CONSTRAINT fan_chat_custom_title_bound
      CHECK (custom_title IS NULL OR
        (char_length(custom_title) BETWEEN 1 AND 80 AND
         custom_title !~ '[[:cntrl:]]'));
  END IF;
END $$;

CREATE INDEX IF NOT EXISTS fan_chat_archive_idx ON masana.fan_chat_preferences
  (tenant_id, fan_user_id, archived, updated_at DESC);
