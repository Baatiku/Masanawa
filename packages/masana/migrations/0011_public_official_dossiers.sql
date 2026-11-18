-- New identities and reviewed public evidence; existing fictional characters and
-- citizen conversation histories are never reassigned to a real person.
CREATE TABLE masana.public_official_dossiers (
 tenant_id text NOT NULL,character_id text NOT NULL,character_version_id text NOT NULL,
 official_name text NOT NULL CHECK(length(official_name) BETWEEN 2 AND 160),
 office text NOT NULL CHECK(length(office) BETWEEN 2 AND 240),country_code text NOT NULL CHECK(country_code='NG'),
 identity_source_url text NOT NULL CHECK(identity_source_url LIKE 'https://%'),
 reviewed_by text NOT NULL,reviewed_at timestamptz NOT NULL DEFAULT now(),
 review_expires_at timestamptz NOT NULL CHECK(review_expires_at>reviewed_at),
 state text NOT NULL CHECK(state IN ('approved','suspended')),
 PRIMARY KEY(tenant_id,character_id),
 FOREIGN KEY(tenant_id,character_id) REFERENCES identity.characters(tenant_id,character_id)
);
CREATE TABLE masana.public_official_evidence (
 tenant_id text NOT NULL,character_id text NOT NULL,id uuid NOT NULL DEFAULT gen_random_uuid(),
 source_url text NOT NULL CHECK(source_url LIKE 'https://%'),
 source_kind text NOT NULL CHECK(source_kind IN ('grokipedia','official_record','speech','official_social')),
 title text NOT NULL CHECK(length(title) BETWEEN 1 AND 240),
 content text NOT NULL CHECK(length(content) BETWEEN 1 AND 4000),
 content_sha256 text NOT NULL CHECK(content_sha256 ~ '^[a-f0-9]{64}$'),
 source_date date NOT NULL,retrieved_at timestamptz NOT NULL DEFAULT now(),
 valid_until timestamptz NOT NULL,state text NOT NULL CHECK(state IN ('approved','withdrawn')),
 license_basis text NOT NULL CHECK(length(license_basis) BETWEEN 5 AND 500),
 reviewed_by text NOT NULL,PRIMARY KEY(tenant_id,id),
 FOREIGN KEY(tenant_id,character_id) REFERENCES masana.public_official_dossiers(tenant_id,character_id)
);
CREATE INDEX official_evidence_scope ON masana.public_official_evidence(tenant_id,character_id,source_date DESC) WHERE state='approved';
CREATE INDEX official_evidence_text ON masana.public_official_evidence USING gin(to_tsvector('simple',content)) WHERE state='approved';
REVOKE ALL ON masana.public_official_dossiers,masana.public_official_evidence FROM PUBLIC;
