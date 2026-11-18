-- Private customer reports retain only a whitelist of public ad context.
-- Reviewing a report grants no ad-availability, order or financial authority.
CREATE TABLE commerce.msnw_p2p_ad_reports(
 report_id uuid PRIMARY KEY,
 tenant_id text NOT NULL,
 offer_id uuid NOT NULL,
 maker_id text NOT NULL,
 reporter_id text NOT NULL,
 category text NOT NULL CHECK(category IN ('fraud','misleading','offensive','other')),
 details text NOT NULL CHECK(length(btrim(details)) BETWEEN 10 AND 2000),
 public_snapshot jsonb NOT NULL CHECK(jsonb_typeof(public_snapshot)='object' AND
   public_snapshot-ARRAY['offerSide','traderName','bankName','rateKoboPerMsnw','minMicro','maxMicro','termsRevision','observedAt']::text[]='{}'::jsonb),
 state text NOT NULL DEFAULT 'open' CHECK(state IN ('open','dismissed','referred')),
 version integer NOT NULL DEFAULT 1 CHECK(version>0),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 reviewed_at timestamptz,
 reviewed_by text,
 review_reason text CHECK(review_reason IS NULL OR length(btrim(review_reason)) BETWEEN 10 AND 2000),
 CHECK(maker_id<>reporter_id),
 CHECK((state='open' AND reviewed_at IS NULL AND reviewed_by IS NULL AND review_reason IS NULL AND version=1)
   OR(state<>'open' AND reviewed_at IS NOT NULL AND reviewed_by IS NOT NULL AND review_reason IS NOT NULL AND version=2)),
 UNIQUE(tenant_id,offer_id,reporter_id),
 FOREIGN KEY(tenant_id,offer_id) REFERENCES commerce.msnw_p2p_offers(tenant_id,offer_id)
);
CREATE INDEX msnw_p2p_ad_reports_owner_page ON commerce.msnw_p2p_ad_reports(tenant_id,reporter_id,created_at DESC,report_id DESC);
CREATE INDEX msnw_p2p_ad_reports_staff_page ON commerce.msnw_p2p_ad_reports(tenant_id,state,created_at DESC,report_id DESC);
CREATE FUNCTION commerce.msnw_p2p_freeze_ad_report() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF TG_OP='DELETE' THEN RAISE EXCEPTION 'P2P ad report evidence is immutable'; END IF;
 IF (OLD.report_id,OLD.tenant_id,OLD.offer_id,OLD.maker_id,OLD.reporter_id,OLD.category,OLD.details,OLD.public_snapshot,OLD.created_at)
   IS DISTINCT FROM
   (NEW.report_id,NEW.tenant_id,NEW.offer_id,NEW.maker_id,NEW.reporter_id,NEW.category,NEW.details,NEW.public_snapshot,NEW.created_at)
   OR(OLD.state<>'open' AND to_jsonb(OLD) IS DISTINCT FROM to_jsonb(NEW)) THEN
   RAISE EXCEPTION 'P2P ad report evidence is immutable';
 END IF;
 RETURN NEW;
END;
$$;
CREATE TRIGGER msnw_p2p_ad_report_immutable BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_ad_reports
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_freeze_ad_report();
REVOKE ALL ON commerce.msnw_p2p_ad_reports FROM PUBLIC;
