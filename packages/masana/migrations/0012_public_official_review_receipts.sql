-- Append-only operator admission receipts; old evidence is withdrawn, not overwritten.
CREATE TABLE masana.public_official_review_receipts (
 id uuid PRIMARY KEY DEFAULT gen_random_uuid(),tenant_id text NOT NULL,character_id text NOT NULL,
 character_version_id text NOT NULL,packet_sha256 text NOT NULL CHECK(packet_sha256 ~ '^[a-f0-9]{64}$'),
 reviewed_by text NOT NULL,reviewed_at timestamptz NOT NULL DEFAULT now(),
 review_expires_at timestamptz NOT NULL,evidence_count integer NOT NULL CHECK(evidence_count BETWEEN 2 AND 100),
 UNIQUE(tenant_id,character_id,packet_sha256),
 FOREIGN KEY(tenant_id,character_id) REFERENCES masana.public_official_dossiers(tenant_id,character_id)
);
CREATE FUNCTION masana.keep_official_review_receipt() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN RAISE EXCEPTION 'official_review_receipt_immutable' USING ERRCODE='23514'; END; $$;
CREATE TRIGGER official_review_receipt_immutable BEFORE UPDATE OR DELETE
 ON masana.public_official_review_receipts FOR EACH ROW EXECUTE FUNCTION masana.keep_official_review_receipt();
REVOKE ALL ON masana.public_official_review_receipts FROM PUBLIC;
