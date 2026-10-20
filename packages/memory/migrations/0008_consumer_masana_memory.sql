CREATE TABLE memory.consumer_relationship_preferences (
  tenant_id text NOT NULL, user_id text NOT NULL, character_id text NOT NULL,
  relationship_id text NOT NULL, automatic_learning boolean NOT NULL DEFAULT false,
  updated_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY (tenant_id,user_id,character_id,relationship_id)
);
CREATE TABLE memory.consumer_ingests (
  tenant_id text NOT NULL, user_id text NOT NULL, character_id text NOT NULL,
  relationship_id text NOT NULL, request_id text NOT NULL, memory_record_id text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY (tenant_id,user_id,character_id,relationship_id,request_id),
  FOREIGN KEY (tenant_id,memory_record_id) REFERENCES memory.records(tenant_id,memory_record_id) ON DELETE CASCADE
);
CREATE TABLE memory.consumer_changes (
  tenant_id text NOT NULL,change_id text NOT NULL,user_id text NOT NULL,
  character_id text NOT NULL,relationship_id text NOT NULL,memory_record_id text NOT NULL,
  action text NOT NULL CHECK(action IN ('correct','forget')),
  occurred_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY (tenant_id,change_id)
);
CREATE INDEX consumer_changes_owner_idx ON memory.consumer_changes
  (tenant_id,user_id,relationship_id,occurred_at DESC);

-- Do not retroactively infer memories from pre-release conversations.
CREATE TABLE memory.consumer_rollout (
  singleton boolean PRIMARY KEY DEFAULT true CHECK(singleton),
  started_at timestamptz NOT NULL DEFAULT clock_timestamp()
);
INSERT INTO memory.consumer_rollout(singleton) VALUES(true);

-- No-match/opted-out turns also receive durable receipts.
CREATE TABLE memory.consumer_turn_scans (
  tenant_id text NOT NULL,user_id text NOT NULL,character_id text NOT NULL,
  relationship_id text NOT NULL,request_id text NOT NULL,
  completed_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY(tenant_id,user_id,character_id,relationship_id,request_id)
);
CREATE INDEX consumer_scans_relationship_idx ON memory.consumer_turn_scans
  (tenant_id,user_id,relationship_id,completed_at DESC);
