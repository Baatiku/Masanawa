-- Immutable original opening context, attached to the canonical order dispute.
-- This is evidence, never bank-settlement or release authority.
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_dispute_submissions (
 submission_id uuid PRIMARY KEY,
 tenant_id text NOT NULL,
 order_id uuid NOT NULL,
 opened_by text NOT NULL,
 category text NOT NULL CHECK(category IN ('no_payment','asset_not_received','wrong_amount','wrong_recipient','abuse','other')),
 details text NOT NULL CHECK(char_length(btrim(details)) BETWEEN 10 AND 2000),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 UNIQUE(tenant_id,order_id),
 FOREIGN KEY(tenant_id,order_id) REFERENCES commerce.msnw_p2p_orders(tenant_id,order_id)
);
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_freeze_dispute_submission() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN RAISE EXCEPTION 'P2P dispute opening context is immutable'; END; $$;
DROP TRIGGER IF EXISTS msnw_p2p_dispute_submission_immutable ON commerce.msnw_p2p_dispute_submissions;
CREATE TRIGGER msnw_p2p_dispute_submission_immutable BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_dispute_submissions
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_freeze_dispute_submission();
REVOKE ALL ON commerce.msnw_p2p_dispute_submissions FROM PUBLIC;
