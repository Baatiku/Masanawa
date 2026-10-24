-- Human message editing is server-authorized and time-bounded. Preserve
-- the original immutable request and creation timestamp for safe retry.
ALTER TABLE talks.human_messages
  ADD COLUMN edited_at timestamptz;
