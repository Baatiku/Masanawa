-- Switching the chosen platform suspends the old source; never relabel its posts.
ALTER TABLE feed.official_social_sources DROP CONSTRAINT official_social_sources_tenant_id_character_id_key;
CREATE UNIQUE INDEX one_approved_official_social_source ON feed.official_social_sources(tenant_id,character_id) WHERE state='approved';
