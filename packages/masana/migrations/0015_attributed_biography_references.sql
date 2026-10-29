-- Owner-approved first-launch sources include attributed reliable references.
-- Retain old evidence history and kinds; original social posts remain separate.
ALTER TABLE masana.public_official_evidence
 DROP CONSTRAINT public_official_evidence_source_kind_check;
ALTER TABLE masana.public_official_evidence
 ADD CONSTRAINT public_official_evidence_source_kind_check
 CHECK(source_kind IN ('grokipedia','biographical_reference','official_record','speech','official_social'));
