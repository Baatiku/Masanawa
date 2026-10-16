-- Private per-account conversation media. The original agent turn stays the
-- authority for message content and financial side effects. This table only
-- retains uploaded binary attachments for another authenticated device.
CREATE TABLE IF NOT EXISTS agents.private_chat_media (
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  character_id text NOT NULL,
  request_id text NOT NULL,
  slot smallint NOT NULL CHECK (slot BETWEEN 0 AND 7),
  kind text NOT NULL CHECK (kind IN ('voice','audio','image','video','doc')),
  mime_type text NOT NULL CHECK (char_length(mime_type) BETWEEN 3 AND 160),
  filename text,
  payload bytea NOT NULL CHECK (octet_length(payload) BETWEEN 1 AND 8388608),
  sha256 text NOT NULL CHECK (sha256 ~ '^[a-f0-9]{64}$'),
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  expires_at timestamptz NOT NULL DEFAULT (clock_timestamp() + interval '30 days'),
  PRIMARY KEY (tenant_id,user_id,character_id,request_id,slot),
  CHECK (filename IS NULL OR char_length(filename) <= 240)
);
CREATE INDEX IF NOT EXISTS private_chat_media_expiry_idx
  ON agents.private_chat_media(expires_at);
-- No public RLS policy or signed unauthenticated URL. Gateway must authenticate
-- and scope every read to tenant + user + character. Expired rows are invisible
-- immediately; purge is opportunistic and may be scheduled independently.
