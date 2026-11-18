-- Expand existing Status posts to public human authors, without rewriting
-- any approved Masana post, editor audit, comments, likes, saves or media.
ALTER TABLE feed.posts ADD COLUMN IF NOT EXISTS author_type text NOT NULL DEFAULT 'masana';
ALTER TABLE feed.posts ADD COLUMN IF NOT EXISTS author_user_id text;
ALTER TABLE feed.posts ADD COLUMN IF NOT EXISTS audience text NOT NULL DEFAULT 'public';
ALTER TABLE feed.posts ALTER COLUMN author_masana_id DROP NOT NULL;
DO $$
BEGIN
 IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conrelid='feed.posts'::regclass
  AND conname='feed_posts_typed_author_valid') THEN
  ALTER TABLE feed.posts ADD CONSTRAINT feed_posts_typed_author_valid CHECK (
   (author_type='masana' AND author_masana_id IS NOT NULL AND author_user_id IS NULL)
   OR (author_type='human' AND author_masana_id IS NULL AND author_user_id IS NOT NULL)
  );
 END IF;
 IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conrelid='feed.posts'::regclass
  AND conname='feed_posts_audience_valid') THEN
  ALTER TABLE feed.posts ADD CONSTRAINT feed_posts_audience_valid
    CHECK (audience='public');
 END IF;
END $$;
CREATE INDEX IF NOT EXISTS feed_posts_human_author
 ON feed.posts(tenant_id,author_user_id,published_at DESC,id DESC)
 WHERE author_type='human' AND state='published';
