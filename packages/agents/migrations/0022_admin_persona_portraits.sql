CREATE TABLE agents.admin_persona_portraits (
 tenant_id text NOT NULL,character_id text NOT NULL,
 image_png bytea NOT NULL CHECK(octet_length(image_png) BETWEEN 100 AND 524288),
 credit text NOT NULL CHECK(length(trim(credit)) BETWEEN 3 AND 200),
 source_url text NOT NULL,actor_id text NOT NULL,revision bigint NOT NULL DEFAULT 1,
 updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,character_id),
 FOREIGN KEY(tenant_id,character_id) REFERENCES agents.agent_presentations(tenant_id,character_id)
);
CREATE TABLE agents.admin_persona_portrait_events (
 tenant_id text NOT NULL,character_id text NOT NULL,revision bigint NOT NULL,
 credit text NOT NULL,source_url text NOT NULL,actor_id text NOT NULL,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,character_id,revision)
);
CREATE FUNCTION agents.audit_admin_persona_portrait() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 INSERT INTO agents.admin_persona_portrait_events(tenant_id,character_id,revision,credit,source_url,actor_id)
 VALUES(NEW.tenant_id,NEW.character_id,NEW.revision,NEW.credit,NEW.source_url,NEW.actor_id);
 RETURN NEW;
END;
$$;
CREATE TRIGGER audit_admin_persona_portrait AFTER INSERT OR UPDATE ON agents.admin_persona_portraits
 FOR EACH ROW EXECUTE FUNCTION agents.audit_admin_persona_portrait();
CREATE TRIGGER admin_persona_portrait_events_immutable BEFORE UPDATE OR DELETE ON agents.admin_persona_portrait_events FOR EACH ROW EXECUTE FUNCTION agents.reject_admin_persona_audit_mutation();
