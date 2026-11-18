-- Staff-only investigation context, never settlement authority.
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_case_notes (
 note_id uuid PRIMARY KEY,tenant_id text NOT NULL,order_id uuid NOT NULL,created_by text NOT NULL,
 details text NOT NULL CHECK(char_length(btrim(details)) BETWEEN 10 AND 2000),
 content_sha256 text NOT NULL CHECK(content_sha256 ~ '^[a-f0-9]{64}$'),created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 UNIQUE(tenant_id,order_id,created_by,content_sha256),
 FOREIGN KEY(tenant_id,order_id) REFERENCES commerce.msnw_p2p_orders(tenant_id,order_id)
);
CREATE INDEX IF NOT EXISTS msnw_p2p_case_notes_order_idx ON commerce.msnw_p2p_case_notes(tenant_id,order_id,created_at,note_id);
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_freeze_case_note() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN RAISE EXCEPTION 'P2P staff case notes are immutable'; END; $$;
DROP TRIGGER IF EXISTS msnw_p2p_case_note_immutable ON commerce.msnw_p2p_case_notes;
CREATE TRIGGER msnw_p2p_case_note_immutable BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_case_notes FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_freeze_case_note();
REVOKE ALL ON commerce.msnw_p2p_case_notes FROM PUBLIC;
