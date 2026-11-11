-- Independent civic guides use honest initials, not invented government logos.
-- The exception requires a matching published canonical civic constitution.
-- Fictional stock and all supplied imagery keep their existing rights checks.
CREATE OR REPLACE FUNCTION masana.require_rights_cleared_approved_media()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE owner_kind text; needed integer := 0; cleared integer := 0;
        official boolean := false; civic boolean := false;
BEGIN
 IF NEW.state <> 'approved' THEN RETURN NEW; END IF;
 SELECT kind INTO owner_kind FROM identity.character_ownership
  WHERE tenant_id=NEW.tenant_id AND character_id=NEW.character_id;
 IF owner_kind IS NULL OR owner_kind NOT IN ('platform','creator-agent') THEN
  RAISE EXCEPTION 'masana_owner_not_eligible' USING ERRCODE='23514';
 END IF;
 SELECT EXISTS(SELECT 1 FROM identity.characters c
  JOIN identity.character_versions v ON v.tenant_id=c.tenant_id AND v.character_id=c.character_id
   AND v.character_version_id=c.active_character_version_id AND v.state='published'
  WHERE c.tenant_id=NEW.tenant_id AND c.character_id=NEW.character_id AND c.state='active'
   AND v.constitution->'publicOfficial'->>'countryCode'='NG'
   AND length(btrim(v.constitution->'publicOfficial'->>'officialName'))>0) INTO official;
 SELECT EXISTS(SELECT 1 FROM identity.characters c
  JOIN identity.character_versions v ON v.tenant_id=c.tenant_id AND v.character_id=c.character_id
   AND v.character_version_id=c.active_character_version_id AND v.state='published'
  WHERE c.tenant_id=NEW.tenant_id AND c.character_id=NEW.character_id AND c.state='active'
   AND v.constitution->'disclosurePolicy'->>'representation'='independent_civic_ai_guide'
   AND v.constitution->'disclosurePolicy'->>'civicAgencyId' IN
    ('inec','nimc','nafdac','ncdc','frsc','cac','cbn','efcc','icpc','ndlea','nis','nema','ncc','nitda','npa','faan')
   AND NEW.profile->>'civicAgencyId'=v.constitution->'disclosurePolicy'->>'civicAgencyId'
   AND (NEW.profile->>'handle')=('civic.'||(v.constitution->'disclosurePolicy'->>'civicAgencyId'))) INTO civic;
 IF owner_kind='platform' AND NOT official AND NOT civic THEN needed := 2;
 ELSE needed := (CASE WHEN NEW.profile->>'portraitMediaId' IS NOT NULL THEN 1 ELSE 0 END)
              + (CASE WHEN NEW.profile->>'bannerMediaId' IS NOT NULL THEN 1 ELSE 0 END);
 END IF;
 SELECT count(DISTINCT m.kind) INTO cleared FROM masana.character_media m
  WHERE m.tenant_id=NEW.tenant_id AND m.character_id=NEW.character_id
   AND length(btrim(m.rights_note))>4 AND length(btrim(m.approved_by))>0
   AND ((m.kind='portrait' AND m.media_id=NEW.profile->>'portraitMediaId')
     OR (m.kind='banner' AND m.media_id=NEW.profile->>'bannerMediaId'));
 IF cleared <> needed THEN RAISE EXCEPTION 'masana_media_unverified' USING ERRCODE='23514'; END IF;
 RETURN NEW;
END; $$;
