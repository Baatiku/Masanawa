-- Private support evidence requests. Response windows never authorize escrow actions.
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_support_requests (
 request_id uuid PRIMARY KEY,tenant_id text NOT NULL,order_id uuid NOT NULL,
 requested_by text NOT NULL,target_id text NOT NULL,instruction text NOT NULL CHECK(char_length(btrim(instruction)) BETWEEN 10 AND 2000),
 identity_sha256 text NOT NULL CHECK(identity_sha256 ~ '^[a-f0-9]{64}$'),
 window_hours integer NOT NULL CHECK(window_hours IN(24,48,72)),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),due_at timestamptz NOT NULL,
 UNIQUE(tenant_id,order_id,requested_by,identity_sha256),UNIQUE(tenant_id,order_id,request_id),
 FOREIGN KEY(tenant_id,order_id) REFERENCES commerce.msnw_p2p_orders(tenant_id,order_id),CHECK(due_at>created_at)
);
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_support_responses (
 response_id uuid PRIMARY KEY,tenant_id text NOT NULL,order_id uuid NOT NULL,request_id uuid NOT NULL,
 responded_by text NOT NULL,details text NOT NULL CHECK(char_length(btrim(details)) BETWEEN 10 AND 2000),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),UNIQUE(tenant_id,order_id,request_id),
 FOREIGN KEY(tenant_id,order_id,request_id) REFERENCES commerce.msnw_p2p_support_requests(tenant_id,order_id,request_id)
);
CREATE INDEX IF NOT EXISTS msnw_p2p_support_requests_order_idx ON commerce.msnw_p2p_support_requests(tenant_id,order_id,created_at,request_id);
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_freeze_support_context() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN RAISE EXCEPTION 'P2P support evidence context is immutable'; END; $$;
DROP TRIGGER IF EXISTS msnw_p2p_support_request_immutable ON commerce.msnw_p2p_support_requests;
CREATE TRIGGER msnw_p2p_support_request_immutable BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_support_requests FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_freeze_support_context();
DROP TRIGGER IF EXISTS msnw_p2p_support_response_immutable ON commerce.msnw_p2p_support_responses;
CREATE TRIGGER msnw_p2p_support_response_immutable BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_support_responses FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_freeze_support_context();
REVOKE ALL ON commerce.msnw_p2p_support_requests,commerce.msnw_p2p_support_responses FROM PUBLIC;
