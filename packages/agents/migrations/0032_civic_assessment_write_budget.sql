-- A bounded per-account write quota, with no record of subjects or opinions.
CREATE TABLE agents.civic_assessment_write_budget (
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 hour_start timestamptz NOT NULL,
 attempts smallint NOT NULL CHECK(attempts BETWEEN 1 AND 120),
 PRIMARY KEY(tenant_id,user_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
CREATE FUNCTION agents.clear_inactive_civic_assessment_budget() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NEW.state <> 'active' THEN
  DELETE FROM agents.civic_assessment_write_budget WHERE tenant_id=NEW.tenant_id AND user_id=NEW.user_id;
 END IF;
 RETURN NEW;
END; $$;
CREATE TRIGGER clear_inactive_civic_assessment_budget AFTER UPDATE OF state ON identity.users
 FOR EACH ROW WHEN (OLD.state IS DISTINCT FROM NEW.state)
 EXECUTE FUNCTION agents.clear_inactive_civic_assessment_budget();
