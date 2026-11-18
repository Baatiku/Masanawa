-- Native Masanawa conversation controls for original official Status posts.
-- Forward only: historic IDs, financial records and the original text journal survive.
ALTER TABLE feed.comments ADD COLUMN IF NOT EXISTS revision integer NOT NULL DEFAULT 1
  CHECK (revision >= 1);
ALTER TABLE feed.comments ADD COLUMN IF NOT EXISTS edited_at timestamptz;
ALTER TABLE feed.comments ADD COLUMN IF NOT EXISTS removed_at timestamptz;

CREATE TABLE IF NOT EXISTS feed.comment_reactions (
  tenant_id text NOT NULL,
  comment_id uuid NOT NULL,
  fan_id text NOT NULL,
  reaction_kind text NOT NULL CHECK (reaction_kind IN
    ('like','love','care','haha','wow','sad','angry')),
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY (tenant_id,comment_id,fan_id),
  FOREIGN KEY (tenant_id,comment_id) REFERENCES feed.comments(tenant_id,id)
);
CREATE INDEX IF NOT EXISTS feed_comment_reactions_breakdown
  ON feed.comment_reactions(tenant_id,comment_id,reaction_kind);

CREATE TABLE IF NOT EXISTS feed.comment_reports (
  tenant_id text NOT NULL,
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  reporter_id text NOT NULL,
  comment_id uuid NOT NULL,
  reason text NOT NULL CHECK (reason IN
    ('spam','harassment','hate','violence','fraud','impersonation','privacy','inaccurate','other')),
  content_revision integer NOT NULL CHECK (content_revision >= 1),
  state text NOT NULL DEFAULT 'open' CHECK (state IN ('open','reviewed','dismissed')),
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  reviewed_by text,
  reviewed_at timestamptz,
  PRIMARY KEY (tenant_id,id),
  UNIQUE (tenant_id,reporter_id,comment_id,reason,content_revision),
  FOREIGN KEY (tenant_id,comment_id) REFERENCES feed.comments(tenant_id,id),
  CHECK ((state='open' AND reviewed_by IS NULL AND reviewed_at IS NULL)
    OR (state<>'open' AND reviewed_by IS NOT NULL AND reviewed_at IS NOT NULL))
);
CREATE INDEX IF NOT EXISTS feed_comment_reports_review
  ON feed.comment_reports(tenant_id,created_at,id) WHERE state='open';
CREATE INDEX IF NOT EXISTS feed_comment_reports_rate
  ON feed.comment_reports(tenant_id,reporter_id,created_at);
CREATE INDEX IF NOT EXISTS feed_comments_visible_roots
  ON feed.comments(tenant_id,post_id,created_at DESC,id DESC)
  WHERE parent_comment_id IS NULL AND state='visible';
CREATE INDEX IF NOT EXISTS feed_comments_visible_replies
  ON feed.comments(tenant_id,post_id,parent_comment_id,created_at,id)
  WHERE parent_comment_id IS NOT NULL AND state='visible';

CREATE TABLE IF NOT EXISTS feed.comment_moderation_actions (
  tenant_id text NOT NULL,id uuid NOT NULL DEFAULT gen_random_uuid(),
  comment_id uuid NOT NULL,reviewer_id text NOT NULL,
  action text NOT NULL CHECK(action IN ('hide','restore')),
  reason text NOT NULL CHECK(length(reason) BETWEEN 5 AND 500),
  content_revision integer NOT NULL CHECK(content_revision >= 1),
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY(tenant_id,id),
  FOREIGN KEY(tenant_id,comment_id) REFERENCES feed.comments(tenant_id,id)
);
CREATE INDEX IF NOT EXISTS feed_comment_moderation_timeline
  ON feed.comment_moderation_actions(tenant_id,comment_id,created_at);

CREATE TABLE IF NOT EXISTS feed.comment_edit_audit (
  tenant_id text NOT NULL,id uuid NOT NULL DEFAULT gen_random_uuid(),
  comment_id uuid NOT NULL,actor_id text NOT NULL,
  action text NOT NULL CHECK(action IN ('edit','delete')),
  before_revision integer NOT NULL CHECK(before_revision >= 1),
  after_revision integer NOT NULL CHECK(after_revision >= before_revision),
  before_sha256 text NOT NULL CHECK(length(before_sha256)=64),
  after_sha256 text NOT NULL CHECK(length(after_sha256)=64),
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  PRIMARY KEY(tenant_id,id),
  FOREIGN KEY(tenant_id,comment_id) REFERENCES feed.comments(tenant_id,id)
);
CREATE INDEX IF NOT EXISTS feed_comment_edit_audit_timeline
  ON feed.comment_edit_audit(tenant_id,comment_id,created_at);

REVOKE ALL ON feed.comment_reactions,feed.comment_reports,
  feed.comment_moderation_actions,feed.comment_edit_audit FROM PUBLIC;
