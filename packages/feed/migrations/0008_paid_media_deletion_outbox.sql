-- Registered, server-owned private objects are purged independently of the
-- post metadata transaction. No client-supplied key can enter this outbox.
CREATE TABLE feed.paid_post_media_objects (
 tenant_id text NOT NULL,
 post_id uuid NOT NULL,
 media_id uuid NOT NULL,
 object_key text NOT NULL CHECK(length(object_key) BETWEEN 20 AND 400),
 review_state text NOT NULL CHECK(review_state IN ('pending','approved','rejected')),
 registered_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,post_id,media_id),
 UNIQUE(tenant_id,object_key),
 FOREIGN KEY(tenant_id,post_id) REFERENCES feed.posts(tenant_id,id)
);
CREATE TABLE feed.paid_media_deletion_outbox (
 tenant_id text NOT NULL,
 post_id uuid NOT NULL,
 media_id uuid NOT NULL,
 object_key text NOT NULL,
 requested_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 attempt_count integer NOT NULL DEFAULT 0 CHECK(attempt_count>=0),
 retry_after timestamptz NOT NULL DEFAULT statement_timestamp(),
 lease_until timestamptz,
 completed_at timestamptz,
 PRIMARY KEY(tenant_id,post_id,media_id),
 UNIQUE(tenant_id,object_key),
 FOREIGN KEY(tenant_id,post_id,media_id)
  REFERENCES feed.paid_post_media_objects(tenant_id,post_id,media_id)
);
CREATE INDEX feed_paid_media_cleanup_due ON feed.paid_media_deletion_outbox(retry_after)
 WHERE completed_at IS NULL;
REVOKE ALL ON ALL TABLES IN SCHEMA feed FROM PUBLIC;
