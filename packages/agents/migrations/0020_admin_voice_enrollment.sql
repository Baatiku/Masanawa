CREATE TABLE agents.admin_voice_enrollments (
 tenant_id text NOT NULL,
 character_id text NOT NULL,
 request_id text NOT NULL,
 actor_id text NOT NULL,
 display_name text NOT NULL,
 state text NOT NULL CHECK(state IN ('pending','ready','unknown','rejected')),
 voice_id text,
 input_hash text NOT NULL,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,request_id),
 CHECK ((state='ready')=(voice_id IS NOT NULL))
);
CREATE TABLE agents.admin_voice_assignments (
 tenant_id text NOT NULL,
 character_id text NOT NULL,
 request_id text NOT NULL,
 revision integer NOT NULL DEFAULT 1,
 actor_id text NOT NULL,
 updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,character_id),
 FOREIGN KEY(tenant_id,request_id) REFERENCES agents.admin_voice_enrollments(tenant_id,request_id)
);
CREATE TABLE agents.admin_voice_assignment_events (
 event_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 tenant_id text NOT NULL,
 character_id text NOT NULL,
 actor_id text NOT NULL,
 request_id text NOT NULL,
 revision integer NOT NULL,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp()
);
CREATE FUNCTION agents.audit_admin_voice_assignment() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 INSERT INTO agents.admin_voice_assignment_events(tenant_id,character_id,actor_id,request_id,revision)
 VALUES(NEW.tenant_id,NEW.character_id,NEW.actor_id,NEW.request_id,NEW.revision);
 RETURN NEW;
END;
$$;
CREATE TRIGGER audit_admin_voice_assignment AFTER INSERT OR UPDATE ON agents.admin_voice_assignments
 FOR EACH ROW EXECUTE FUNCTION agents.audit_admin_voice_assignment();
