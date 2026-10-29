/** Active Status authors are approved platform Masana only. */
export const statusAuthorOwnership="o.kind='platform'";

/** Imported posts lose public eligibility immediately when source/dossier review lapses.
 * p is the canonical feed.posts alias. Legacy posts have no source provenance.
 */
export const officialSourceEligibility=`((p.source_provenance IS NULL AND NOT EXISTS(SELECT 1 FROM masana.public_official_dossiers legacy_d WHERE legacy_d.tenant_id=p.tenant_id AND legacy_d.character_id=p.author_masana_id)) OR EXISTS (
 SELECT 1 FROM feed.official_social_posts sp
 JOIN feed.official_social_sources s ON s.id=sp.source_id AND s.tenant_id=sp.tenant_id
 JOIN masana.public_official_dossiers d ON d.tenant_id=s.tenant_id AND d.character_id=s.character_id
 JOIN identity.characters c ON c.tenant_id=d.tenant_id AND c.character_id=d.character_id
 JOIN identity.character_ownership own ON own.tenant_id=c.tenant_id AND own.character_id=c.character_id
 WHERE sp.tenant_id=p.tenant_id AND sp.post_id=p.id AND sp.withdrawn_at IS NULL
 AND s.character_id=p.author_masana_id AND s.state='approved' AND s.review_expires_at>statement_timestamp()
 AND d.state='approved' AND d.review_expires_at>statement_timestamp()
 AND c.state='active' AND c.active_character_version_id=d.character_version_id AND own.kind='platform'
 AND EXISTS(SELECT 1 FROM masana.public_official_evidence e WHERE e.tenant_id=d.tenant_id
  AND e.character_id=d.character_id AND e.state='approved' AND e.source_kind='grokipedia' AND e.valid_until>statement_timestamp())
 AND EXISTS(SELECT 1 FROM masana.public_official_evidence e WHERE e.tenant_id=d.tenant_id
  AND e.character_id=d.character_id AND e.state='approved' AND e.source_kind='official_record' AND e.valid_until>statement_timestamp())
))`;
