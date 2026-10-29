-- Private hide preferences and bounded, operator-reviewable public-post reports.
CREATE TABLE feed.hidden_posts (
 tenant_id text NOT NULL,fan_id text NOT NULL,post_id uuid NOT NULL,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,fan_id,post_id),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id)
);
CREATE TABLE feed.post_reports (
 tenant_id text NOT NULL,id uuid NOT NULL DEFAULT gen_random_uuid(),
 reporter_id text NOT NULL,post_id uuid NOT NULL,reason text NOT NULL
 CHECK(reason IN ('spam','harassment','hate','violence','fraud','impersonation','privacy','inaccurate','other')),
 state text NOT NULL DEFAULT 'open' CHECK(state IN ('open','reviewed','dismissed')),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),reviewed_by text,reviewed_at timestamptz,
 PRIMARY KEY(tenant_id,id),UNIQUE(tenant_id,reporter_id,post_id,reason),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 CHECK((state='open' AND reviewed_by IS NULL AND reviewed_at IS NULL)
 OR (state<>'open' AND reviewed_by IS NOT NULL AND reviewed_at IS NOT NULL))
);
CREATE INDEX post_reports_review ON feed.post_reports(tenant_id,created_at,id) WHERE state='open';
CREATE INDEX post_reports_rate ON feed.post_reports(tenant_id,reporter_id,created_at);
REVOKE ALL ON feed.hidden_posts,feed.post_reports FROM PUBLIC;
