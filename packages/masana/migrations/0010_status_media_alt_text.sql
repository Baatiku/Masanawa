-- Rights-safe per-image Status accessibility copy. No historic descriptive
-- content is invented or retroactively marked approved.
ALTER TABLE masana.character_media
  ADD COLUMN IF NOT EXISTS status_alt_text text,
  ADD COLUMN IF NOT EXISTS status_alt_approved_by text,
  ADD COLUMN IF NOT EXISTS status_alt_approved_at timestamptz;
ALTER TABLE masana.character_media
  ADD CONSTRAINT character_media_status_alt_approved
  CHECK (
    (status_alt_text IS NULL AND status_alt_approved_by IS NULL
      AND status_alt_approved_at IS NULL)
    OR (
      kind IN ('portrait','banner','cover') AND
      status_alt_text IS NOT NULL AND
      char_length(btrim(status_alt_text)) BETWEEN 5 AND 280 AND
      status_alt_approved_by IS NOT NULL AND
      char_length(btrim(status_alt_approved_by)) BETWEEN 3 AND 160 AND
      status_alt_approved_at IS NOT NULL
    )
  );
