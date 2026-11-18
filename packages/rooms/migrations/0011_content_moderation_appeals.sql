-- Additive reply moderation and author appeals. Legacy reviews remain immutable
-- and unqualified for restoration when they lack a removal revision.
ALTER TABLE rooms.reports ADD COLUMN target_kind text NOT NULL DEFAULT 'post'
 CHECK(target_kind IN ('room','post','reply'));
UPDATE rooms.reports SET target_kind='room' WHERE target_id=room_id;
ALTER TABLE rooms.report_reviews
 ADD COLUMN target_kind text NOT NULL DEFAULT 'post' CHECK(target_kind IN ('post','reply')),
 ADD COLUMN target_author_user_id text,
 ADD COLUMN target_revision integer CHECK(target_revision>0),
 ADD COLUMN public_reason text CHECK(length(public_reason) BETWEEN 1 AND 2000);
ALTER TABLE rooms.lessons ADD COLUMN moderation_revision integer NOT NULL DEFAULT 0,
 ADD COLUMN removed_by_review_id text;
ALTER TABLE rooms.discussion_replies ADD COLUMN moderation_revision integer NOT NULL DEFAULT 0,
 ADD COLUMN removed_by_review_id text;
CREATE TABLE rooms.moderation_appeals(
 tenant_id text NOT NULL,room_id text NOT NULL,appeal_id text NOT NULL,
 review_id text NOT NULL,author_user_id text NOT NULL,request_id text NOT NULL,
 reason text NOT NULL CHECK(length(reason) BETWEEN 1 AND 2000),
 state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','upheld','restored')),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 decided_at timestamptz,decided_by_user_id text,decision_request_id text,public_reason text,
 PRIMARY KEY(tenant_id,appeal_id),UNIQUE(tenant_id,review_id,author_user_id),
 UNIQUE(tenant_id,room_id,author_user_id,request_id),
 FOREIGN KEY(tenant_id,room_id) REFERENCES rooms.rooms(tenant_id,room_id),
 FOREIGN KEY(tenant_id,review_id) REFERENCES rooms.report_reviews(tenant_id,review_id),
 FOREIGN KEY(tenant_id,author_user_id) REFERENCES identity.users(tenant_id,user_id),
 FOREIGN KEY(tenant_id,decided_by_user_id) REFERENCES identity.users(tenant_id,user_id),
 CHECK((state='pending')=(decided_at IS NULL)),
 CHECK((state='pending')=(decided_by_user_id IS NULL)),
 CHECK((state='pending')=(decision_request_id IS NULL)),
 CHECK((state='pending')=(public_reason IS NULL)),
 CHECK(public_reason IS NULL OR length(public_reason) BETWEEN 1 AND 2000),
 CHECK(decided_by_user_id IS NULL OR decided_by_user_id<>author_user_id)
);
CREATE UNIQUE INDEX room_appeal_decision_replay ON rooms.moderation_appeals
 (tenant_id,room_id,decided_by_user_id,decision_request_id) WHERE decision_request_id IS NOT NULL;
CREATE INDEX room_appeal_queue ON rooms.moderation_appeals(tenant_id,room_id,created_at DESC,appeal_id DESC);
