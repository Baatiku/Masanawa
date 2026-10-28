-- SPE-A02. Financial quote economics are append-only. A campaign may
-- advance state and counters but must never change its payer/price/target.
CREATE OR REPLACE FUNCTION feed.refuse_promotion_budget_economics_update()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF (OLD.tenant_id,OLD.id,OLD.quote_id,OLD.post_id,OLD.sponsor_id,OLD.kind,
      OLD.idempotency_key,OLD.fingerprint,OLD.target_views,OLD.price_version)
    IS DISTINCT FROM
    (NEW.tenant_id,NEW.id,NEW.quote_id,NEW.post_id,NEW.sponsor_id,NEW.kind,
      NEW.idempotency_key,NEW.fingerprint,NEW.target_views,NEW.price_version)
 THEN RAISE EXCEPTION 'Campaign economics cannot change after confirmation';
 END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER promotion_quote_immutable BEFORE UPDATE OR DELETE
 ON feed.promotion_quotes FOR EACH ROW
 EXECUTE FUNCTION feed.refuse_financial_record_change();
CREATE TRIGGER promotion_campaign_economics_immutable BEFORE UPDATE
 ON feed.promotion_campaigns FOR EACH ROW
 EXECUTE FUNCTION feed.refuse_promotion_budget_economics_update();
CREATE TRIGGER promotion_campaign_no_delete BEFORE DELETE
 ON feed.promotion_campaigns FOR EACH ROW
 EXECUTE FUNCTION feed.refuse_financial_record_change();
REVOKE ALL ON ALL TABLES IN SCHEMA feed FROM PUBLIC;
