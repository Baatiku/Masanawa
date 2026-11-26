-- Independent, explicit and revocable consent for coarse civic chat reach.
-- No copies of transcripts, messages, ratings, or per-contact activity records.
CREATE TABLE agents.civic_engagement_consents (
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 consent_version smallint NOT NULL CHECK (consent_version=1),
 consented_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE
);
CREATE INDEX civic_engagement_completed_turns ON agents.mobile_turn_commands
 (tenant_id,character_id,updated_at,user_id,created_at) WHERE state='completed';
CREATE FUNCTION agents.clear_inactive_civic_engagement() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NEW.state <> 'active' THEN
  DELETE FROM agents.civic_engagement_consents WHERE tenant_id=NEW.tenant_id AND user_id=NEW.user_id;
 END IF;
 RETURN NEW;
END; $$;
CREATE TRIGGER clear_inactive_civic_engagement AFTER UPDATE OF state ON identity.users
 FOR EACH ROW WHEN (OLD.state IS DISTINCT FROM NEW.state)
 EXECUTE FUNCTION agents.clear_inactive_civic_engagement();
