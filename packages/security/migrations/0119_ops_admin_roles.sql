CREATE TABLE security.ops_admin_roles (
 tenant_id text NOT NULL,user_id text NOT NULL,capabilities jsonb NOT NULL CHECK(jsonb_typeof(capabilities)='array'),
 revision bigint NOT NULL DEFAULT 1,actor_id text NOT NULL,updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id),FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id)
);
CREATE TABLE security.ops_admin_role_events (
 tenant_id text NOT NULL,user_id text NOT NULL,revision bigint NOT NULL,actor_id text NOT NULL,capabilities jsonb NOT NULL,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),PRIMARY KEY(tenant_id,user_id,revision)
);
CREATE FUNCTION security.audit_ops_admin_role() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN
 INSERT INTO security.ops_admin_role_events(tenant_id,user_id,revision,actor_id,capabilities) VALUES(NEW.tenant_id,NEW.user_id,NEW.revision,NEW.actor_id,NEW.capabilities);
 RETURN NEW;
END $$;
CREATE TRIGGER audit_ops_admin_role AFTER INSERT OR UPDATE ON security.ops_admin_roles FOR EACH ROW EXECUTE FUNCTION security.audit_ops_admin_role();
CREATE FUNCTION security.reject_ops_role_event_mutation() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN RAISE EXCEPTION 'admin_role_audit_is_immutable'; END $$;
CREATE TRIGGER ops_role_events_immutable BEFORE UPDATE OR DELETE ON security.ops_admin_role_events FOR EACH ROW EXECUTE FUNCTION security.reject_ops_role_event_mutation();
