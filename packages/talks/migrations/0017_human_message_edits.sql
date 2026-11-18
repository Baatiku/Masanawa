-- Separate authorization revision from wall-clock presentation. Multiple edits
-- can occur in the same millisecond, so timestamps are not a safe CAS token.
ALTER TABLE talks.human_messages
  ADD COLUMN edited_at timestamptz,
  ADD COLUMN edit_version integer NOT NULL DEFAULT 0
  CHECK(edit_version >= 0);
