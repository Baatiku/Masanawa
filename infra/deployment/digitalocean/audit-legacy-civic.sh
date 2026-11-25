#!/usr/bin/env bash
# Read-only diagnostics for the 11 legacy civic profile reservations.
set -euo pipefail
tenant="$(docker exec masanawa-gateway-1 printenv MASANAWA_PLATFORM_TENANT_ID)"
[[ "$tenant" =~ ^tenant_[0-9a-f-]{36}$ ]] || { echo 'Unexpected tenant; inspect privately'; exit 1; }
docker exec -i masanawa-postgres-1 sh -c 'exec psql -X -v ON_ERROR_STOP=1 -v tenant="$1" -U "$POSTGRES_USER" -d "$POSTGRES_DB"' sh "$tenant" <<'SQL'
BEGIN READ ONLY;
WITH subjects(name) AS (VALUES
 ('Bola Ahmed Tinubu'),('Kashim Shettima'),('Kudirat Kekere-Ekun'),
 ('George Akume'),('Nuhu Ribadu'),('Olayemi Cardoso'),('Nyesom Wike'),
 ('Taiwo Oyedele'),('Godswill Akpabio'),('Tajudeen Abbas'),('Chinda Kingsley Ogundu')
), officials AS (
 SELECT c.character_id,c.state,c.active_character_version_id,
 v.constitution->'publicOfficial'->>'officialName' AS name
 FROM identity.characters c
 JOIN identity.character_versions v ON v.tenant_id=c.tenant_id AND v.character_version_id=c.active_character_version_id
 JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id AND o.character_id=c.character_id AND o.kind='platform'
 WHERE c.tenant_id=:'tenant'
)
SELECT s.name,coalesce(c.state,'missing') AS identity_state,
 p.visible_in_user_app AS visible,p.revision AS presentation_rev,
 p.character_version_id=c.active_character_version_id AS current_version,
 f.character_id IS NOT NULL AND length(f.voice_provider)>0 AND length(f.voice_name)>0 AS voice,
 a.character_id IS NOT NULL AS skills,
 r.state AS profile_state,d.state AS dossier_state,
 d.review_expires_at>clock_timestamp() AS review_current,
 d.identity_source_url AS reviewed_source,
 (SELECT count(*) FROM masana.public_official_evidence e
 WHERE e.tenant_id=:'tenant' AND e.character_id=c.character_id AND e.state='approved'
 AND e.valid_until>clock_timestamp() AND e.source_kind IN ('grokipedia','biographical_reference')) AS current_evidence
FROM subjects s LEFT JOIN officials c ON c.name=s.name
LEFT JOIN agents.agent_presentations p ON p.tenant_id=:'tenant' AND p.character_id=c.character_id
LEFT JOIN agents.platform_agent_profiles f ON f.tenant_id=:'tenant' AND f.character_id=c.character_id
LEFT JOIN agents.character_skill_assignments a ON a.tenant_id=:'tenant' AND a.character_id=c.character_id
LEFT JOIN masana.public_official_dossiers d ON d.tenant_id=:'tenant' AND d.character_id=c.character_id
LEFT JOIN LATERAL (SELECT state FROM masana.character_revisions WHERE tenant_id=:'tenant' AND character_id=c.character_id AND state IN ('approved','retired') ORDER BY revision DESC LIMIT 1) r ON true
ORDER BY s.name;
ROLLBACK;
SQL
