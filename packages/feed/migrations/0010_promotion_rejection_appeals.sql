-- SPE-A10. An appeal reviews a rejection; it never edits immutable quote
-- economics, restores a refunded hold, or self-publishes a blocked post.
CREATE TABLE feed.promotion_rejection_appeals (
 tenant_id text NOT NULL,
 id uuid NOT NULL DEFAULT gen_random_uuid(),
 campaign_id uuid NOT NULL,
 post_id uuid NOT NULL,
 owner_id text NOT NULL,
 reason text NOT NULL CHECK(length(btrim(reason)) BETWEEN 10 AND 1000),
 state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','accepted','denied')),
 reviewer_id text,
 resolution_reason text CHECK(resolution_reason IS NULL OR length(btrim(resolution_reason)) BETWEEN 5 AND 1000),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 resolved_at timestamptz,
 PRIMARY KEY(tenant_id,id),
 FOREIGN KEY(tenant_id,campaign_id) REFERENCES feed.promotion_campaigns(tenant_id,id),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id),
 CHECK ((state='pending' AND reviewer_id IS NULL AND resolved_at IS NULL
    AND resolution_reason IS NULL) OR
    (state IN ('accepted','denied') AND reviewer_id IS NOT NULL
    AND resolved_at IS NOT NULL AND resolution_reason IS NOT NULL))
);
CREATE UNIQUE INDEX promotion_one_pending_appeal
 ON feed.promotion_rejection_appeals(tenant_id,campaign_id)
 WHERE state='pending';
CREATE INDEX promotion_appeal_owner_history
 ON feed.promotion_rejection_appeals(tenant_id,owner_id,created_at DESC,id DESC);
CREATE INDEX promotion_appeal_staff_queue
 ON feed.promotion_rejection_appeals(tenant_id,created_at,id)
 WHERE state='pending';
REVOKE ALL ON ALL TABLES IN SCHEMA feed FROM PUBLIC;
