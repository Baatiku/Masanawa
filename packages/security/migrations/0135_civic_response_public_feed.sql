-- Public incident summaries require explicit reporter consent and a separate human
-- publication decision. The original evidence, coordinates and contact data stay private.
ALTER TABLE civic_response.incidents
  ADD COLUMN IF NOT EXISTS public_consent boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS publication_status text NOT NULL DEFAULT 'private',
  ADD COLUMN IF NOT EXISTS public_title text,
  ADD COLUMN IF NOT EXISTS public_summary text,
  ADD COLUMN IF NOT EXISTS published_at timestamptz,
  ADD COLUMN IF NOT EXISTS publication_reviewed_by text;

-- Some isolated tests rebuild their migration ledger while retaining response tables.
-- Every forward migration must remain safe on that exact existing schema.
DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname='civic_response_publication_status_check' AND conrelid='civic_response.incidents'::regclass) THEN
    ALTER TABLE civic_response.incidents ADD CONSTRAINT civic_response_publication_status_check
      CHECK (publication_status IN ('private','pending_review','published'));
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname='civic_response_publication_payload_check' AND conrelid='civic_response.incidents'::regclass) THEN
    ALTER TABLE civic_response.incidents ADD CONSTRAINT civic_response_publication_payload_check
      CHECK (publication_status <> 'published' OR
        (public_consent AND public_title IS NOT NULL AND length(btrim(public_title)) BETWEEN 8 AND 140
         AND public_summary IS NOT NULL AND length(btrim(public_summary)) BETWEEN 20 AND 600
         AND published_at IS NOT NULL));
  END IF;
END $$;

CREATE INDEX IF NOT EXISTS incidents_public_feed_idx
  ON civic_response.incidents(published_at DESC,id DESC)
  WHERE publication_status='published' AND public_consent AND hidden_at IS NULL;
