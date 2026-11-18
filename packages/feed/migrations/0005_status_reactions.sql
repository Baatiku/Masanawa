-- Expand in place: historic Likes remain Like reactions, IDs and ownership retained.
-- feed.likes already enforces one (tenant,post,fan) record, preventing fan inflation.
ALTER TABLE feed.likes ADD COLUMN IF NOT EXISTS reaction_kind text NOT NULL DEFAULT 'like';
DO $$
BEGIN
 IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname='feed_likes_reaction_kind_valid'
  AND conrelid='feed.likes'::regclass) THEN
  ALTER TABLE feed.likes ADD CONSTRAINT feed_likes_reaction_kind_valid
   CHECK (reaction_kind IN ('like','love','care','haha','wow','sad','angry'));
 END IF;
END $$;
CREATE INDEX IF NOT EXISTS feed_reactions_count_by_kind
 ON feed.likes(tenant_id,post_id,reaction_kind);
