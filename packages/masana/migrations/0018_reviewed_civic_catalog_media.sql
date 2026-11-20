-- Expand the rights-cleared media exemption to the 73 individually approved civic
-- identities. The original 16 IDs and all portrait/rights protections remain.
-- Independently reviewed source: Gateway civic catalog and web directory.
-- Long IDs have collision-resistant canonical handles verified by built-in md5().
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
   AND v.constitution->'disclosurePolicy'->>'civicAgencyId' IN (
     'inec',
     'nimc',
     'nafdac',
     'ncdc',
     'frsc',
     'cac',
     'cbn',
     'efcc',
     'icpc',
     'ndlea',
     'nis',
     'nema',
     'ncc',
     'nitda',
     'npa',
     'faan',
     'org-the-presidency',
     'org-national-assembly',
     'org-senate-of-nigeria',
     'org-house-of-representatives',
     'org-supreme-court-of-nigeria',
     'org-national-judicial-council',
     'org-federal-judicial-service-commission',
     'org-federal-capital-territory-administration',
     'org-office-of-the-secretary-to-the-government-of-the-federation',
     'org-office-of-the-head-of-the-civil-service-of-the-federation',
     'org-federal-ministry-of-finance',
     'org-federal-ministry-of-education',
     'org-federal-ministry-of-health-and-social-welfare',
     'org-federal-ministry-of-agriculture-and-food-security',
     'org-federal-ministry-of-works',
     'org-federal-ministry-of-power',
     'org-federal-ministry-of-interior',
     'org-federal-ministry-of-justice',
     'org-federal-ministry-of-defence',
     'org-federal-ministry-of-foreign-affairs',
     'org-federal-ministry-of-communications-innovation-and-digital-economy',
     'org-federal-ministry-of-information-and-national-orientation',
     'org-federal-ministry-of-budget-and-economic-planning',
     'org-federal-ministry-of-women-affairs',
     'org-federal-ministry-of-youth-development',
     'org-federal-ministry-of-environment',
     'org-federal-ministry-of-water-resources-and-sanitation',
     'org-federal-ministry-of-aviation-and-aerospace-development',
     'org-federal-ministry-of-marine-and-blue-economy',
     'org-federal-ministry-of-solid-minerals-development',
     'org-federal-ministry-of-industry-trade-and-investment',
     'org-federal-ministry-of-labour-and-employment',
     'org-federal-ministry-of-housing-and-urban-development',
     'org-federal-ministry-of-transportation',
     'org-federal-ministry-of-innovation-science-and-technology',
     'org-federal-ministry-of-art-culture-tourism-and-the-creative-economy',
     'org-federal-ministry-of-regional-development',
     'org-federal-ministry-of-steel-development',
     'org-federal-ministry-of-livestock-development',
     'org-federal-ministry-of-humanitarian-affairs-and-poverty-reduction',
     'org-federal-ministry-of-special-duties-and-inter-governmental-affairs',
     'org-federal-ministry-of-petroleum-resources',
     'org-national-health-insurance-authority',
     'org-national-primary-health-care-development-agency',
     'org-nigerian-correctional-service',
     'org-nigerian-security-and-civil-defence-corps',
     'org-federal-fire-service',
     'org-national-broadcasting-commission',
     'org-national-orientation-agency',
     'org-nigerian-maritime-administration-and-safety-agency',
     'org-nigerian-civil-aviation-authority',
     'org-national-bureau-of-statistics',
     'org-budget-office-of-the-federation',
     'org-federal-government-press',
     'org-national-archives-of-nigeria',
     'org-citizenship-and-business-department',
     'org-public-service-reforms-department'
   )
   AND NEW.profile->>'civicAgencyId'=v.constitution->'disclosurePolicy'->>'civicAgencyId'
   AND (NEW.profile->>'handle')=('civic.'||CASE
     WHEN length(v.constitution->'disclosurePolicy'->>'civicAgencyId') <= 33
       THEN v.constitution->'disclosurePolicy'->>'civicAgencyId'
     ELSE left(md5(v.constitution->'disclosurePolicy'->>'civicAgencyId'),24)
    END)) INTO civic;
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
