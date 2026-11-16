CREATE TABLE agents.admin_persona_configs (
 tenant_id text NOT NULL,
 character_id text NOT NULL,
 state text NOT NULL CHECK(state IN ('active','paused','disabled')),
 main_prompt text NOT NULL DEFAULT '' CHECK(length(main_prompt)<=8000),
 tone text NOT NULL DEFAULT '' CHECK(length(tone)<=2000),
 biography text NOT NULL DEFAULT '' CHECK(length(biography)<=8000),
 context text NOT NULL DEFAULT '' CHECK(length(context)<=16000),
 research_enabled boolean NOT NULL DEFAULT true,
 actor_id text NOT NULL,
 revision bigint NOT NULL DEFAULT 1,
 updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,character_id),
 FOREIGN KEY(tenant_id,character_id) REFERENCES agents.agent_presentations(tenant_id,character_id)
);
CREATE TABLE agents.admin_persona_config_events (
 tenant_id text NOT NULL,character_id text NOT NULL,revision bigint NOT NULL,
 actor_id text NOT NULL,configuration jsonb NOT NULL,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,character_id,revision)
);
CREATE FUNCTION agents.audit_admin_persona_config() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 INSERT INTO agents.admin_persona_config_events(tenant_id,character_id,revision,actor_id,configuration)
 VALUES(NEW.tenant_id,NEW.character_id,NEW.revision,NEW.actor_id,to_jsonb(NEW));
 UPDATE agents.agent_presentations SET visible_in_user_app=(NEW.state='active'),revision=revision+1
 WHERE tenant_id=NEW.tenant_id AND character_id=NEW.character_id;
 RETURN NEW;
END;
$$;
CREATE TRIGGER audit_admin_persona_config AFTER INSERT OR UPDATE ON agents.admin_persona_configs
 FOR EACH ROW EXECUTE FUNCTION agents.audit_admin_persona_config();
CREATE FUNCTION agents.reject_admin_persona_audit_mutation() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN RAISE EXCEPTION 'admin_persona_audit_is_immutable'; END $$;
CREATE TRIGGER admin_persona_config_events_immutable BEFORE UPDATE OR DELETE ON agents.admin_persona_config_events FOR EACH ROW EXECUTE FUNCTION agents.reject_admin_persona_audit_mutation();
