-- Auditable in-Room post moderation. Historical reporter reasons remain private.
-- Apply after the owner-approved 0008 retired Rooms reset.
CREATE TABLE rooms.report_reviews (
 tenant_id text NOT NULL,
 review_id text NOT NULL,
 room_id text NOT NULL,
 target_id text NOT NULL,
 reviewer_user_id text NOT NULL,
 request_id text NOT NULL,
 decision text NOT NULL CHECK (decision IN ('dismissed','removed')),
 report_count integer NOT NULL CHECK (report_count > 0),
 reviewed_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY (tenant_id,review_id),
 UNIQUE (tenant_id,room_id,reviewer_user_id,request_id),
 FOREIGN KEY (tenant_id,room_id) REFERENCES rooms.rooms(tenant_id,room_id)
);
CREATE INDEX room_report_reviews_target_idx
 ON rooms.report_reviews(tenant_id,room_id,target_id,reviewed_at DESC);
