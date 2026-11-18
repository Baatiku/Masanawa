-- Key-only Gemini enrollment: do not make an administrator supply or
-- discover a Google Cloud project ID. Existing rows retain historic metadata.
-- The backend now labels each credential automatically and rotates per key.
ALTER TABLE security.whatsapp_gemini_keys
  ALTER COLUMN project_id DROP NOT NULL;
