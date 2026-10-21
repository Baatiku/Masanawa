-- Add community behavior to canonical Rooms without copying professional history,
-- subscriptions, receipts or lesson archives. No entitlements or financial writes.
ALTER TABLE rooms.rooms ALTER COLUMN teacher_character_id DROP NOT NULL;
ALTER TABLE rooms.rooms ADD COLUMN owner_user_id text,
 ADD COLUMN description text NOT NULL DEFAULT '', ADD COLUMN photo_url text,
 ADD COLUMN visibility text NOT NULL DEFAULT 'public' CHECK(visibility IN ('public','private')),
 ADD COLUMN posting_policy text NOT NULL DEFAULT 'members' CHECK(posting_policy IN ('admins','members')),
 ADD COLUMN comments_enabled boolean NOT NULL DEFAULT true,
 ADD COLUMN join_approval boolean NOT NULL DEFAULT false,
 ADD COLUMN create_request_id text, ADD COLUMN create_payload jsonb,
 ADD FOREIGN KEY(tenant_id,owner_user_id) REFERENCES identity.users(tenant_id,user_id);
CREATE UNIQUE INDEX rooms_owner_create_replay ON rooms.rooms(tenant_id,owner_user_id,create_request_id) WHERE create_request_id IS NOT NULL;
ALTER TABLE rooms.memberships DROP CONSTRAINT memberships_role_check;
ALTER TABLE rooms.memberships ADD CONSTRAINT memberships_role_check CHECK(role IN ('member','moderator','admin','owner'));
ALTER TABLE rooms.memberships ADD COLUMN muted boolean NOT NULL DEFAULT false, ADD COLUMN pinned boolean NOT NULL DEFAULT false;
ALTER TABLE rooms.lessons ADD COLUMN author_user_id text,
 ADD COLUMN idempotency_key text, ADD COLUMN comments_enabled boolean NOT NULL DEFAULT true,
 ADD COLUMN pinned boolean NOT NULL DEFAULT false,
 ADD COLUMN created_at timestamptz NOT NULL DEFAULT now(),
 ADD FOREIGN KEY(tenant_id,author_user_id) REFERENCES identity.users(tenant_id,user_id);
CREATE UNIQUE INDEX room_post_replay ON rooms.lessons(tenant_id,room_id,author_user_id,idempotency_key) WHERE idempotency_key IS NOT NULL;
CREATE TABLE rooms.masana_participants(
 tenant_id text NOT NULL,room_id text NOT NULL,character_id text NOT NULL,
 instructions text NOT NULL DEFAULT '',active boolean NOT NULL DEFAULT false,
 reply_mode text NOT NULL DEFAULT 'mention' CHECK(reply_mode IN ('mention','automatic')),
 updated_at timestamptz NOT NULL DEFAULT now(), PRIMARY KEY(tenant_id,room_id,character_id),
 FOREIGN KEY(tenant_id,room_id) REFERENCES rooms.rooms(tenant_id,room_id),
 FOREIGN KEY(tenant_id,character_id) REFERENCES identity.characters(tenant_id,character_id)
);
-- Existing professional teacher remains an explicit host; no paid agreement inferred.
INSERT INTO rooms.masana_participants(tenant_id,room_id,character_id,active)
 SELECT tenant_id,room_id,teacher_character_id,false FROM rooms.rooms WHERE teacher_character_id IS NOT NULL;
ALTER TABLE rooms.questions ADD COLUMN target_character_id text,
 ADD COLUMN source_lesson_id text,
 ADD FOREIGN KEY(tenant_id,target_character_id) REFERENCES identity.characters(tenant_id,character_id),
 ADD FOREIGN KEY(tenant_id,source_lesson_id) REFERENCES rooms.lessons(tenant_id,lesson_id);
ALTER TABLE rooms.membership_invites ADD COLUMN recipient_user_id text,
 ADD COLUMN request_id text,
 ADD FOREIGN KEY(tenant_id,recipient_user_id) REFERENCES identity.users(tenant_id,user_id);
CREATE UNIQUE INDEX room_target_invite_replay ON rooms.membership_invites(tenant_id,room_id,created_by,request_id) WHERE request_id IS NOT NULL;
ALTER TABLE rooms.memberships ADD COLUMN read_at timestamptz;
CREATE TABLE rooms.media(
 tenant_id text NOT NULL,media_id text NOT NULL,room_id text NOT NULL,user_id text NOT NULL,
 lesson_id text,reply_id text,kind text NOT NULL CHECK(kind IN ('image','voice','video','doc')),
 mime_type text NOT NULL,name text NOT NULL,size_bytes integer NOT NULL CHECK(size_bytes BETWEEN 1 AND 8000000),
 duration_ms integer CHECK(duration_ms BETWEEN 0 AND 3600000),data_base64 text NOT NULL,
 request_id text NOT NULL,created_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY(tenant_id,media_id),UNIQUE(tenant_id,room_id,user_id,request_id),
 FOREIGN KEY(tenant_id,room_id,user_id) REFERENCES rooms.memberships(tenant_id,room_id,user_id),
 FOREIGN KEY(tenant_id,lesson_id) REFERENCES rooms.lessons(tenant_id,lesson_id),
 FOREIGN KEY(tenant_id,reply_id) REFERENCES rooms.discussion_replies(tenant_id,reply_id),
 CHECK(lesson_id IS NULL OR reply_id IS NULL)
);
CREATE TABLE rooms.reactions(
 tenant_id text NOT NULL,room_id text NOT NULL,lesson_id text NOT NULL,user_id text NOT NULL,
 emoji text NOT NULL CHECK(length(emoji) BETWEEN 1 AND 16),created_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY(tenant_id,lesson_id,user_id,emoji),
 FOREIGN KEY(tenant_id,lesson_id) REFERENCES rooms.lessons(tenant_id,lesson_id),
 FOREIGN KEY(tenant_id,room_id,user_id) REFERENCES rooms.memberships(tenant_id,room_id,user_id)
);
CREATE TABLE rooms.reports(
 tenant_id text NOT NULL,report_id text NOT NULL,room_id text NOT NULL,user_id text NOT NULL,
 target_id text NOT NULL,reason text NOT NULL CHECK(length(reason) BETWEEN 1 AND 2000),request_id text NOT NULL,
 created_at timestamptz NOT NULL DEFAULT now(),PRIMARY KEY(tenant_id,report_id),
 UNIQUE(tenant_id,room_id,user_id,request_id),
 FOREIGN KEY(tenant_id,room_id,user_id) REFERENCES rooms.memberships(tenant_id,room_id,user_id)
);
ALTER TABLE rooms.lessons ADD COLUMN community_payload jsonb;
ALTER TABLE rooms.discussion_replies ADD COLUMN community_payload jsonb;
ALTER TABLE rooms.discussion_replies DROP CONSTRAINT discussion_replies_body_check;
ALTER TABLE rooms.discussion_replies ADD CONSTRAINT discussion_replies_body_check CHECK(length(body)<=2000);
