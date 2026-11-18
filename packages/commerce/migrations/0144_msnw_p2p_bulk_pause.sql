-- Original-request audit for owner-initiated pause of currently active ads.
-- No custody, order, inventory or receiving instruction changes.
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_bulk_pauses (
 operation_id uuid PRIMARY KEY,
 tenant_id text NOT NULL,
 owner_id text NOT NULL,
 request_key text NOT NULL CHECK(request_key ~ '^[A-Za-z0-9_-]{8,128}$'),
 paused_offer_ids uuid[] NOT NULL CHECK(cardinality(paused_offer_ids)<=1000),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 UNIQUE(tenant_id,owner_id,request_key)
);
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_freeze_bulk_pause() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN RAISE EXCEPTION 'P2P bulk pause receipt is immutable'; END; $$;
DROP TRIGGER IF EXISTS msnw_p2p_bulk_pause_immutable ON commerce.msnw_p2p_bulk_pauses;
CREATE TRIGGER msnw_p2p_bulk_pause_immutable BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_bulk_pauses
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_freeze_bulk_pause();
REVOKE ALL ON commerce.msnw_p2p_bulk_pauses FROM PUBLIC;
