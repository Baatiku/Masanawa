-- Expand publication eligibility only to canonical, active creator-owned
-- characters; never treat business/personal-clone records as publishable Masana.
-- Platform character moderation/media requirements remain identical.
CREATE OR REPLACE FUNCTION masana.require_platform_masana()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM identity.characters c
      JOIN identity.character_ownership o
        ON o.tenant_id=c.tenant_id AND o.character_id=c.character_id
      LEFT JOIN creator.agents ca
        ON ca.tenant_id=c.tenant_id AND ca.character_id=c.character_id
       AND ca.owner_user_id=o.owner_user_id
    WHERE c.tenant_id=NEW.tenant_id AND c.character_id=NEW.character_id
      AND c.state='active'
      AND (
        o.kind='platform'
        OR (o.kind='creator-agent' AND ca.character_id IS NOT NULL AND
            (NEW.state <> 'approved' OR ca.state='published'))
      )
  ) THEN RAISE EXCEPTION 'masana_owner_not_eligible' USING ERRCODE='23514'; END IF;
  RETURN NEW;
END; $$;

CREATE OR REPLACE FUNCTION masana.require_rights_cleared_approved_media()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE
  owner_kind text;
  needed integer := 0;
  cleared integer := 0;
BEGIN
  IF NEW.state <> 'approved' THEN RETURN NEW; END IF;
  SELECT kind INTO owner_kind
    FROM identity.character_ownership
    WHERE tenant_id=NEW.tenant_id AND character_id=NEW.character_id;
  IF owner_kind NOT IN ('platform','creator-agent') THEN
    RAISE EXCEPTION 'masana_owner_not_eligible' USING ERRCODE='23514';
  END IF;
  -- Platform professionals still need both independently rights-verified assets.
  IF owner_kind='platform' THEN
    needed := 2;
  ELSE
    needed := (CASE WHEN NEW.profile->>'portraitMediaId' IS NOT NULL THEN 1 ELSE 0 END)
            + (CASE WHEN NEW.profile->>'bannerMediaId' IS NOT NULL THEN 1 ELSE 0 END);
  END IF;
  SELECT count(DISTINCT m.kind) INTO cleared
    FROM masana.character_media m
   WHERE m.tenant_id=NEW.tenant_id AND m.character_id=NEW.character_id
     AND length(btrim(m.rights_note))>4 AND length(btrim(m.approved_by))>0
     AND ((m.kind='portrait' AND m.media_id=NEW.profile->>'portraitMediaId')
       OR (m.kind='banner' AND m.media_id=NEW.profile->>'bannerMediaId'));
  IF cleared <> needed THEN
    RAISE EXCEPTION 'masana_media_unverified' USING ERRCODE='23514';
  END IF;
  RETURN NEW;
END; $$;

CREATE OR REPLACE FUNCTION masana.require_visible_masana()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF NOT EXISTS(
    SELECT 1 FROM masana.character_revisions r
      JOIN identity.characters c USING(tenant_id,character_id)
      JOIN identity.character_ownership o USING(tenant_id,character_id)
      LEFT JOIN creator.agents ca
        ON ca.tenant_id=o.tenant_id AND ca.character_id=o.character_id
       AND ca.owner_user_id=o.owner_user_id
    WHERE r.tenant_id=NEW.tenant_id AND r.character_id=NEW.character_id
      AND r.state='approved' AND c.state='active'
      AND (o.kind='platform'
        OR (o.kind='creator-agent' AND ca.state='published'))
  ) OR NOT EXISTS(
    SELECT 1 FROM identity.users u WHERE u.tenant_id=NEW.tenant_id
     AND u.user_id=NEW.fan_user_id AND u.state='active'
  ) THEN
    RAISE EXCEPTION 'fan_or_masana_not_eligible' USING ERRCODE='23514';
  END IF;
  RETURN NEW;
END; $$;
