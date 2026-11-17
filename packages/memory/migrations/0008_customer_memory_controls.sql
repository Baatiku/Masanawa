-- Customer controls bind the existing canonical memory authority to an account.
CREATE TABLE memory.customer_settings (
 tenant_id text NOT NULL,user_id text NOT NULL,enabled boolean NOT NULL DEFAULT false,
 retention_days integer NOT NULL DEFAULT 180 CHECK(retention_days BETWEEN 30 AND 365),
 revision bigint NOT NULL DEFAULT 1,updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id),FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id)
);
CREATE TABLE memory.customer_records (
 tenant_id text NOT NULL,user_id text NOT NULL,character_id text NOT NULL,relationship_id text NOT NULL,
 memory_record_id text NOT NULL,operation_id text NOT NULL,request_sha256 text NOT NULL,
 source_request_id text,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,memory_record_id),UNIQUE(tenant_id,user_id,operation_id),
 FOREIGN KEY(tenant_id,memory_record_id) REFERENCES memory.records(tenant_id,memory_record_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id)
);
CREATE INDEX customer_memory_owner_idx ON memory.customer_records(tenant_id,user_id,character_id,created_at DESC);
CREATE TABLE memory.customer_proposals (
 tenant_id text NOT NULL,user_id text NOT NULL,character_id text NOT NULL,relationship_id text NOT NULL,
 proposal_id text NOT NULL,source_request_id text NOT NULL,content text,
 memory_type text NOT NULL CHECK(memory_type IN('fact','preference')),
 state text NOT NULL DEFAULT 'pending' CHECK(state IN('pending','accepted','rejected')),
 source_sha256 text NOT NULL,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,proposal_id),UNIQUE(tenant_id,user_id,character_id,source_request_id),
 CHECK(state<>'pending' OR char_length(content) BETWEEN 3 AND 1000),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id)
);
CREATE TABLE memory.customer_control_events (
 event_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,tenant_id text NOT NULL,user_id text NOT NULL,
 character_id text,operation_id text NOT NULL,action text NOT NULL,record_id text,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp()
);
CREATE FUNCTION memory.reject_customer_control_mutation() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN
 RAISE EXCEPTION 'Customer memory control audit is immutable';END;$$;
CREATE TRIGGER immutable_customer_control_events BEFORE UPDATE OR DELETE ON memory.customer_control_events FOR EACH ROW EXECUTE FUNCTION memory.reject_customer_control_mutation();
