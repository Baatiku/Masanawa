-- Expand only: ad edits never rewrite accepted order or custody terms.
ALTER TABLE commerce.msnw_p2p_offers ADD COLUMN revision integer NOT NULL DEFAULT 1 CHECK(revision>0);
ALTER TABLE commerce.msnw_p2p_offers ADD COLUMN terms_revision integer NOT NULL DEFAULT 1 CHECK(terms_revision>0);
CREATE FUNCTION commerce.msnw_p2p_offer_revise() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 NEW.revision:=OLD.revision+1;
 IF (NEW.payment_method_id,NEW.rate_kobo_per_msnw,NEW.min_micro,NEW.max_micro)
   IS DISTINCT FROM (OLD.payment_method_id,OLD.rate_kobo_per_msnw,OLD.min_micro,OLD.max_micro) THEN
   NEW.terms_revision:=OLD.terms_revision+1;
 ELSE NEW.terms_revision:=OLD.terms_revision; END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER msnw_p2p_offer_revision BEFORE UPDATE ON commerce.msnw_p2p_offers
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_offer_revise();
CREATE TABLE commerce.msnw_p2p_offer_edits (
 tenant_id text NOT NULL,actor_id text NOT NULL,
 request_key text NOT NULL CHECK(request_key ~ '^[A-Za-z0-9_-]{8,128}$'),
 offer_id uuid NOT NULL,request_payload jsonb NOT NULL,before_terms jsonb NOT NULL,after_terms jsonb NOT NULL,
 result_revision integer NOT NULL CHECK(result_revision>1),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,actor_id,request_key),
 FOREIGN KEY(tenant_id,offer_id) REFERENCES commerce.msnw_p2p_offers(tenant_id,offer_id)
);
CREATE FUNCTION commerce.msnw_p2p_offer_edit_immutable() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN RAISE EXCEPTION 'P2P offer edit audit is immutable'; END $$;
CREATE TRIGGER msnw_p2p_offer_edit_audit BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_offer_edits
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_offer_edit_immutable();
