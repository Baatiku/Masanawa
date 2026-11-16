-- Short overlap for concurrent browser/mobile refreshes. Only hashes are kept;
-- retries must propose exactly the already-committed successor credentials.
ALTER TABLE security.platform_sessions ADD COLUMN previous_refresh_hash text;
ALTER TABLE security.platform_sessions ADD COLUMN previous_refresh_until timestamptz;
CREATE INDEX platform_sessions_previous_refresh_idx ON security.platform_sessions(previous_refresh_hash) WHERE previous_refresh_hash IS NOT NULL;
