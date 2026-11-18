CREATE TABLE agents.owner_mailboxes(
 tenant_id text PRIMARY KEY,user_id text NOT NULL,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id)
);
CREATE TABLE agents.owner_mail_aliases(
 tenant_id text NOT NULL REFERENCES agents.owner_mailboxes(tenant_id),address text NOT NULL,enabled boolean NOT NULL DEFAULT true,
 revision bigint NOT NULL DEFAULT 1,PRIMARY KEY(tenant_id,address)
);
CREATE TABLE agents.owner_mail_messages(
 tenant_id text NOT NULL REFERENCES agents.owner_mailboxes(tenant_id),message_id text NOT NULL,
 direction text NOT NULL CHECK(direction IN('inbound','outbound')),envelope_from text NOT NULL,recipients jsonb NOT NULL,
 subject text NOT NULL,body text NOT NULL,request_sha256 text NOT NULL,object_key text,
 provider_id text,state text NOT NULL CHECK(state IN('received','queued','accepted','unknown','delivered','failed','bounced','complained')),
 read_at timestamptz,trashed_at timestamptz,purged_at timestamptz,lease_until timestamptz,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,message_id),UNIQUE(tenant_id,object_key)
);
CREATE INDEX owner_mail_history_idx ON agents.owner_mail_messages(tenant_id,created_at DESC,message_id DESC);
CREATE TABLE agents.owner_mail_attachments(
 tenant_id text NOT NULL,message_id text NOT NULL,slot integer NOT NULL,filename text NOT NULL,mime_type text NOT NULL,payload bytea NOT NULL,
 PRIMARY KEY(tenant_id,message_id,slot),FOREIGN KEY(tenant_id,message_id) REFERENCES agents.owner_mail_messages(tenant_id,message_id) ON DELETE CASCADE
);
CREATE TABLE agents.owner_mail_audit(
 event_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,tenant_id text NOT NULL,actor_id text NOT NULL,action text NOT NULL,message_id text,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp()
);
CREATE FUNCTION agents.reject_mail_audit_mutation() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN RAISE EXCEPTION 'Mailbox audit is immutable'; END;$$;
CREATE TRIGGER immutable_owner_mail_audit BEFORE UPDATE OR DELETE ON agents.owner_mail_audit FOR EACH ROW EXECUTE FUNCTION agents.reject_mail_audit_mutation();
CREATE UNIQUE INDEX owner_mail_inbound_replay_idx ON agents.owner_mail_messages(tenant_id,(recipients->>0),request_sha256) WHERE direction='inbound';
