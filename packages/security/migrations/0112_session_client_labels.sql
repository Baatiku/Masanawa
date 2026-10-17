-- Canonical, coarse client labels only. Do not store raw untrusted User-Agent,
-- precise IP addresses, tokens or device fingerprints in the session table.
ALTER TABLE security.platform_sessions
  ADD COLUMN IF NOT EXISTS client_label text
    CHECK (client_label IS NULL OR length(client_label) BETWEEN 3 AND 64);
