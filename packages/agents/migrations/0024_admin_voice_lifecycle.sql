ALTER TABLE agents.admin_voice_assignments ADD COLUMN active boolean NOT NULL DEFAULT true;
ALTER TABLE agents.admin_voice_enrollments ADD COLUMN provider_display_name text;
ALTER TABLE agents.admin_voice_assignment_events ADD COLUMN active boolean NOT NULL DEFAULT true;
CREATE OR REPLACE FUNCTION agents.audit_admin_voice_assignment() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN
 INSERT INTO agents.admin_voice_assignment_events(tenant_id,character_id,actor_id,request_id,revision,active)
 VALUES(NEW.tenant_id,NEW.character_id,NEW.actor_id,NEW.request_id,NEW.revision,NEW.active);
 RETURN NEW;
END $$;
ALTER TABLE agents.admin_voice_enrollments DROP CONSTRAINT admin_voice_enrollments_state_check;
ALTER TABLE agents.admin_voice_enrollments ADD CONSTRAINT admin_voice_enrollments_state_check CHECK(state IN('pending','ready','unknown','rejected','revoking','revoked'));
ALTER TABLE agents.admin_voice_enrollments DROP CONSTRAINT admin_voice_enrollments_check;
ALTER TABLE agents.admin_voice_enrollments ADD CONSTRAINT admin_voice_enrollments_check CHECK((state IN('ready','revoking','revoked'))=(voice_id IS NOT NULL));
CREATE TABLE agents.admin_voice_lifecycle_events(
 event_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,tenant_id text NOT NULL,character_id text NOT NULL,
 request_id text NOT NULL,actor_id text NOT NULL,action text NOT NULL,created_at timestamptz NOT NULL DEFAULT clock_timestamp()
);
CREATE TRIGGER admin_voice_lifecycle_events_immutable BEFORE UPDATE OR DELETE ON agents.admin_voice_lifecycle_events FOR EACH ROW EXECUTE FUNCTION agents.reject_admin_persona_audit_mutation();
