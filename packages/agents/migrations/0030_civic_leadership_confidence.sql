-- Distinct leadership-confidence question; old public-record assessments are not migrated.
CREATE TABLE agents.civic_leadership_confidence (
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 character_id text NOT NULL,
 score smallint NOT NULL CHECK (score BETWEEN 1 AND 5),
 consent_version smallint NOT NULL CHECK (consent_version=1),
 updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id,character_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE,
 FOREIGN KEY(tenant_id,character_id) REFERENCES identity.characters(tenant_id,character_id) ON DELETE CASCADE
);
CREATE INDEX civic_confidence_aggregate ON agents.civic_leadership_confidence(tenant_id,character_id,score);
CREATE FUNCTION agents.clear_inactive_civic_confidence() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NEW.state <> 'active' THEN
  DELETE FROM agents.civic_leadership_confidence WHERE tenant_id=NEW.tenant_id AND user_id=NEW.user_id;
 END IF;
 RETURN NEW;
END; $$;
CREATE TRIGGER clear_inactive_civic_confidence AFTER UPDATE OF state ON identity.users
 FOR EACH ROW WHEN (OLD.state IS DISTINCT FROM NEW.state)
 EXECUTE FUNCTION agents.clear_inactive_civic_confidence();
