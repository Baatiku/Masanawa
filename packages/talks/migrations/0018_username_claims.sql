-- Stable owners, readable handles; old names are never reassigned.
CREATE TABLE talks.username_claims (
 tenant_id text NOT NULL,handle text NOT NULL,user_id text NOT NULL,
 claimed_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,handle)
);
CREATE INDEX username_claims_owner ON talks.username_claims(tenant_id,user_id);
ALTER TABLE talks.public_profiles ADD COLUMN username_generated boolean NOT NULL DEFAULT false;
UPDATE talks.public_profiles SET username_generated=true WHERE handle ~ '^[a-z0-9]{1,12}_[a-f0-9]{16}$';
INSERT INTO talks.username_claims(tenant_id,handle,user_id)
 SELECT tenant_id,handle,user_id FROM talks.public_profiles;
CREATE FUNCTION talks.claim_profile_username() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF TG_OP='UPDATE' AND NEW.handle=OLD.handle THEN RETURN NEW; END IF;
 INSERT INTO talks.username_claims(tenant_id,handle,user_id)
 VALUES(NEW.tenant_id,NEW.handle,NEW.user_id) ON CONFLICT DO NOTHING;
 IF NOT EXISTS(SELECT 1 FROM talks.username_claims
   WHERE tenant_id=NEW.tenant_id AND handle=NEW.handle AND user_id=NEW.user_id) THEN
   IF TG_OP='INSERT' THEN RETURN NULL; END IF;
   RAISE EXCEPTION 'username.taken' USING ERRCODE='23505';
 END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER public_profile_username_claim BEFORE INSERT OR UPDATE OF handle
 ON talks.public_profiles FOR EACH ROW EXECUTE FUNCTION talks.claim_profile_username();

-- A delayed moderation action using an old public link still targets its owner.
-- Keep unmatched moderation targets intact as well as known aliases.
CREATE FUNCTION talks.canonical_profile_moderation() RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE current_handle text;
BEGIN
 IF NEW.target_kind='profile' THEN
  SELECT p.handle INTO current_handle FROM talks.username_claims c
   JOIN talks.public_profiles p ON p.tenant_id=c.tenant_id AND p.user_id=c.user_id
   WHERE c.tenant_id=NEW.tenant_id AND c.handle=NEW.target_id;
  IF current_handle IS NOT NULL THEN NEW.target_id=current_handle; END IF;
 END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER safety_profile_current_username BEFORE INSERT OR UPDATE ON talks.safety_enforcement
 FOR EACH ROW EXECUTE FUNCTION talks.canonical_profile_moderation();
CREATE FUNCTION talks.retarget_profile_username() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NEW.handle=OLD.handle THEN RETURN NEW; END IF;
 INSERT INTO talks.safety_enforcement(tenant_id,target_kind,target_id,revision,visibility,reason_code,updated_at)
 SELECT tenant_id,target_kind,NEW.handle,revision+1,visibility,reason_code,clock_timestamp()
 FROM talks.safety_enforcement WHERE tenant_id=NEW.tenant_id AND target_kind='profile' AND target_id=OLD.handle
 ON CONFLICT(tenant_id,target_kind,target_id) DO UPDATE SET
  revision=GREATEST(talks.safety_enforcement.revision,EXCLUDED.revision)+1,
  visibility=CASE WHEN talks.safety_enforcement.visibility='blocked' OR EXCLUDED.visibility='blocked' THEN 'blocked'
    WHEN talks.safety_enforcement.visibility='restricted' OR EXCLUDED.visibility='restricted' THEN 'restricted' ELSE 'public' END,
  reason_code=CASE WHEN talks.safety_enforcement.visibility='blocked' THEN talks.safety_enforcement.reason_code
    WHEN EXCLUDED.visibility='blocked' THEN EXCLUDED.reason_code
    ELSE COALESCE(talks.safety_enforcement.reason_code,EXCLUDED.reason_code) END,updated_at=clock_timestamp();
 DELETE FROM talks.safety_enforcement WHERE tenant_id=NEW.tenant_id AND target_kind='profile' AND target_id=OLD.handle;
 UPDATE talks.persona_profiles SET owner_handle=NEW.handle WHERE tenant_id=NEW.tenant_id AND owner_handle=OLD.handle;
 UPDATE talks.human_invitations SET invitee_handle=NEW.handle WHERE tenant_id=NEW.tenant_id AND invitee_user_id=NEW.user_id;
 RETURN NEW;
END $$;
CREATE TRIGGER public_profile_username_references AFTER UPDATE OF handle ON talks.public_profiles
 FOR EACH ROW EXECUTE FUNCTION talks.retarget_profile_username();
CREATE INDEX public_profile_username_prefix ON talks.public_profiles(tenant_id,lower(handle) text_pattern_ops);
CREATE INDEX public_profile_name_prefix ON talks.public_profiles(tenant_id,lower(display_name) text_pattern_ops);
REVOKE ALL ON talks.username_claims FROM PUBLIC;
