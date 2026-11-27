-- Independent additive migration: retain original Forum and wallet history.
CREATE TABLE agents.forum_topic_pins (
 tenant_id text NOT NULL,topic_id uuid NOT NULL,room text NOT NULL,
 pinned_by text NOT NULL,pinned_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,topic_id),
 FOREIGN KEY(tenant_id,topic_id) REFERENCES agents.forum_topics(tenant_id,id) ON DELETE CASCADE
);
CREATE INDEX forum_pins_room ON agents.forum_topic_pins(tenant_id,room,pinned_at DESC);
CREATE TABLE agents.forum_polls (
 tenant_id text NOT NULL,id uuid NOT NULL,topic_id uuid NOT NULL,question text NOT NULL CHECK(length(question) BETWEEN 10 AND 200),
 options text[] NOT NULL CHECK(cardinality(options) BETWEEN 2 AND 6),
 closes_at timestamptz NOT NULL,created_by text NOT NULL,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 closed boolean NOT NULL DEFAULT false,
 PRIMARY KEY(tenant_id,id),UNIQUE(tenant_id,topic_id),
 FOREIGN KEY(tenant_id,topic_id) REFERENCES agents.forum_topics(tenant_id,id) ON DELETE CASCADE
);
CREATE TABLE agents.forum_poll_votes (
 tenant_id text NOT NULL,poll_id uuid NOT NULL,user_id text NOT NULL,choice integer NOT NULL CHECK(choice BETWEEN 0 AND 5),
 updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,poll_id,user_id),
 FOREIGN KEY(tenant_id,poll_id) REFERENCES agents.forum_polls(tenant_id,id) ON DELETE CASCADE,
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
CREATE TABLE agents.forum_guide_bookmarks (
 tenant_id text NOT NULL,user_id text NOT NULL,article_id text NOT NULL CHECK(article_id ~ '^[a-z0-9-]{1,64}$'),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id,article_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
CREATE TABLE agents.forum_complaint_progress (
 tenant_id text NOT NULL,topic_id uuid NOT NULL,status text NOT NULL CHECK(status IN ('open','in_progress','resolved','unresolved')),
 updated_by text NOT NULL,updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,topic_id),
 FOREIGN KEY(tenant_id,topic_id) REFERENCES agents.forum_topics(tenant_id,id) ON DELETE CASCADE
);
CREATE TABLE agents.forum_community_audit (
 tenant_id text NOT NULL,id bigint GENERATED ALWAYS AS IDENTITY,topic_id uuid NOT NULL,
 action text NOT NULL CHECK(action IN ('pin','unpin','poll_create','poll_close','complaint_progress')),
 actor_id text NOT NULL,reason text NOT NULL,details jsonb NOT NULL DEFAULT '{}',occurred_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,id),
 FOREIGN KEY(tenant_id,topic_id) REFERENCES agents.forum_topics(tenant_id,id) ON DELETE CASCADE
);
REVOKE ALL ON agents.forum_topic_pins,agents.forum_polls,agents.forum_poll_votes,agents.forum_guide_bookmarks,agents.forum_complaint_progress,agents.forum_community_audit FROM PUBLIC;
