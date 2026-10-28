-- Per-viewer Status moderation is distinct from public editorial takedown.
-- A hide removes one post only for the authenticated viewer; a report creates
-- a tenant-scoped review record without automatically removing public content.
CREATE TABLE feed.post_viewer_hides (
 tenant_id text NOT NULL,
 viewer_id text NOT NULL,
 post_id uuid NOT NULL,
 hidden_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,viewer_id,post_id),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id) ON DELETE CASCADE
);
CREATE INDEX feed_post_viewer_hides_post ON feed.post_viewer_hides(tenant_id,post_id);

CREATE TABLE feed.post_reports (
 tenant_id text NOT NULL,
 id uuid NOT NULL DEFAULT gen_random_uuid(),
 reporter_id text NOT NULL,
 post_id uuid NOT NULL,
 reason text NOT NULL CHECK(reason IN (
  'spam','fraud','harassment','hate','sexual_content','violence','impersonation','other')),
 detail text CHECK(detail IS NULL OR length(detail)<=500),
 state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','reviewed','dismissed')),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 reviewed_at timestamptz,
 reviewed_by text,
 PRIMARY KEY(tenant_id,id),
 UNIQUE(tenant_id,reporter_id,post_id)
);
CREATE INDEX feed_post_reports_queue ON feed.post_reports(tenant_id,state,created_at,id);
REVOKE ALL ON feed.post_viewer_hides,feed.post_reports FROM PUBLIC;
