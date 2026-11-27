-- Public civic discussion authority; no private conversation or wallet mutation.
CREATE TABLE agents.forum_topics (
 tenant_id text NOT NULL, id uuid NOT NULL, user_id text,
 system_channel boolean NOT NULL DEFAULT false,
 CHECK((system_channel AND user_id IS NULL AND kind='general' AND state='published') OR (NOT system_channel AND user_id IS NOT NULL)),
 room text NOT NULL CHECK(room ~ '^[a-z0-9-]{1,80}$'), title text NOT NULL CHECK(length(title) BETWEEN 10 AND 160),
 body text NOT NULL CHECK(length(body) BETWEEN 30 AND 4000),
 kind text NOT NULL CHECK(kind IN ('question','complaint','concern','awareness','suggestion','feedback','general')),
 jurisdiction text NOT NULL CHECK(length(jurisdiction) BETWEEN 2 AND 100),
 state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','published','rejected','hidden')),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(), reviewed_at timestamptz,
 reviewed_by text, review_reason text,
 PRIMARY KEY(tenant_id,id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
CREATE INDEX forum_topic_room ON agents.forum_topics(tenant_id,room,state,created_at DESC,id);
CREATE UNIQUE INDEX forum_permanent_channel ON agents.forum_topics(tenant_id,room) WHERE system_channel;
CREATE INDEX forum_topic_owner ON agents.forum_topics(tenant_id,user_id,created_at DESC);
CREATE UNIQUE INDEX forum_topic_duplicate ON agents.forum_topics(tenant_id,room,lower(regexp_replace(title,'[[:space:]]+',' ','g'))) WHERE NOT system_channel AND state IN ('pending','published');
CREATE TABLE agents.forum_messages (
 tenant_id text NOT NULL, id uuid NOT NULL, topic_id uuid NOT NULL,user_id text NOT NULL,
 reply_to uuid,
 body text NOT NULL CHECK(length(body) BETWEEN 1 AND 2000),
 state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','published','rejected','hidden')),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),reviewed_at timestamptz,reviewed_by text,review_reason text,
 PRIMARY KEY(tenant_id,id),
 FOREIGN KEY(tenant_id,topic_id) REFERENCES agents.forum_topics(tenant_id,id) ON DELETE CASCADE,
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
CREATE INDEX forum_message_topic ON agents.forum_messages(tenant_id,topic_id,state,created_at DESC,id);
CREATE TABLE agents.forum_engagement (
 tenant_id text NOT NULL,topic_id uuid NOT NULL,user_id text NOT NULL,
 signal text NOT NULL CHECK(signal IN ('follow','affected','attention','helpful','resolved')),
 PRIMARY KEY(tenant_id,topic_id,user_id,signal),
 FOREIGN KEY(tenant_id,topic_id) REFERENCES agents.forum_topics(tenant_id,id) ON DELETE CASCADE,
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
CREATE TABLE agents.forum_write_budget (
 tenant_id text NOT NULL,user_id text NOT NULL,hour_start timestamptz NOT NULL,attempts integer NOT NULL CHECK(attempts BETWEEN 1 AND 60),
 PRIMARY KEY(tenant_id,user_id),FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
REVOKE ALL ON agents.forum_topics,agents.forum_messages,agents.forum_engagement,agents.forum_write_budget FROM PUBLIC;

-- Citizen moderation cases retain an auditable decision without exposing the reporter.
CREATE TABLE agents.forum_cases (
 tenant_id text NOT NULL,id uuid NOT NULL,user_id text NOT NULL,
 kind text NOT NULL CHECK(kind IN ('report','appeal')),
 target_kind text NOT NULL CHECK(target_kind IN ('topic','message')),
 target_id uuid NOT NULL,reason text NOT NULL CHECK(length(reason) BETWEEN 8 AND 1000),
 state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','resolved','dismissed')),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 reviewed_at timestamptz,reviewed_by text,review_reason text,
 PRIMARY KEY(tenant_id,id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
CREATE UNIQUE INDEX forum_case_one_pending ON agents.forum_cases(tenant_id,user_id,kind,target_kind,target_id) WHERE state='pending';
CREATE INDEX forum_case_queue ON agents.forum_cases(tenant_id,state,created_at);
REVOKE ALL ON agents.forum_cases FROM PUBLIC;

CREATE TABLE agents.forum_notification_seen (
 tenant_id text NOT NULL,user_id text NOT NULL,seen_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
REVOKE ALL ON agents.forum_notification_seen FROM PUBLIC;

-- Verified agency affiliation is granted by an authorized operator after external verification.
CREATE TABLE agents.forum_representatives (
 tenant_id text NOT NULL,user_id text NOT NULL,room text NOT NULL,
 active boolean NOT NULL DEFAULT true,evidence_url text NOT NULL CHECK(length(evidence_url) BETWEEN 8 AND 1000),
 verified_by text NOT NULL,verified_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id,room),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
CREATE TABLE agents.forum_representative_audit (
 tenant_id text NOT NULL,id bigint GENERATED ALWAYS AS IDENTITY,user_id text NOT NULL,room text NOT NULL,
 active boolean NOT NULL,evidence_url text NOT NULL,operator_id text NOT NULL,reason text NOT NULL,
 occurred_at timestamptz NOT NULL DEFAULT clock_timestamp(),PRIMARY KEY(tenant_id,id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
REVOKE ALL ON agents.forum_representatives,agents.forum_representative_audit FROM PUBLIC;
