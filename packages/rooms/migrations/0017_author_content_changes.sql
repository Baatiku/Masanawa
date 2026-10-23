-- Restricted before/after evidence is not part of any public content projection.
ALTER TABLE rooms.lessons ADD COLUMN edited_at timestamptz;
ALTER TABLE rooms.discussion_replies ADD COLUMN edited_at timestamptz;
CREATE TABLE rooms.content_changes(
 tenant_id text NOT NULL,room_id text NOT NULL,change_id text NOT NULL,
 actor_user_id text NOT NULL,request_id text NOT NULL,target_kind text NOT NULL CHECK(target_kind IN ('post','reply')),
 target_id text NOT NULL,action text NOT NULL CHECK(action IN ('edit','delete')),fingerprint text NOT NULL,
 previous_revision integer NOT NULL CHECK(previous_revision>=0),revision integer NOT NULL CHECK(revision=previous_revision+1),
 before_body text NOT NULL,after_body text,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,change_id),UNIQUE(tenant_id,room_id,actor_user_id,request_id),
 FOREIGN KEY(tenant_id,room_id) REFERENCES rooms.rooms(tenant_id,room_id),
 FOREIGN KEY(tenant_id,actor_user_id) REFERENCES identity.users(tenant_id,user_id),
 CHECK((action='delete')=(after_body IS NULL))
);
