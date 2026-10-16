-- MSNW is the only consumer credit: bill settlement moves existing
-- chain-backed custodied MSNW, never old NGN, MSN or Credits balances.
CREATE TABLE IF NOT EXISTS commerce.msnw_billing_reservations (
  fulfillment_reference text PRIMARY KEY CHECK (length(fulfillment_reference) BETWEEN 16 AND 128),
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  quote_id text NOT NULL,
  quote_revision integer NOT NULL CHECK (quote_revision > 0),
  biller_code text NOT NULL,
  item_code text NOT NULL,
  customer_id text NOT NULL,
  provider_ngn_kobo bigint NOT NULL CHECK (provider_ngn_kobo > 0),
  total_ngn_kobo bigint NOT NULL CHECK (total_ngn_kobo >= provider_ngn_kobo),
  rate_kobo_per_msnw bigint NOT NULL CHECK (rate_kobo_per_msnw > 0),
  reserved_micro numeric(78,0) NOT NULL CHECK (reserved_micro > 0),
  state text NOT NULL DEFAULT 'reserved' CHECK(state IN ('reserved','fulfilled','refunded')),
  provider_reference text,
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  settled_at timestamptz,
  UNIQUE (tenant_id,user_id,quote_id),
  FOREIGN KEY (tenant_id,user_id)
    REFERENCES commerce.msnw_custody_accounts(tenant_id,user_id) ON DELETE RESTRICT,
  CHECK ((state='reserved' AND settled_at IS NULL)
    OR (state<>'reserved' AND settled_at IS NOT NULL))
);
CREATE INDEX IF NOT EXISTS msnw_billing_owner_history
 ON commerce.msnw_billing_reservations(tenant_id,user_id,created_at DESC);

CREATE TABLE IF NOT EXISTS commerce.msnw_billing_audit (
  event_id uuid PRIMARY KEY,
  fulfillment_reference text NOT NULL
    REFERENCES commerce.msnw_billing_reservations(fulfillment_reference) ON DELETE RESTRICT,
  stage text NOT NULL CHECK(stage IN ('reserved','fulfilled','refunded')),
  customer_available_delta numeric(78,0) NOT NULL,
  customer_reserved_delta numeric(78,0) NOT NULL,
  treasury_collected_delta numeric(78,0) NOT NULL,
  recorded_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE(fulfillment_reference,stage),
  CHECK (customer_available_delta+customer_reserved_delta+
         treasury_collected_delta=0)
);
CREATE TRIGGER msnw_billing_audit_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_billing_audit
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_custody_forbid_journal_mutation();

-- Financial operations may update the reservation lifecycle, but may never
-- change the originally confirmed recipient, amount, provider or quote.
CREATE OR REPLACE FUNCTION commerce.msnw_billing_freeze_economics()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF (OLD.fulfillment_reference,OLD.tenant_id,OLD.user_id,OLD.quote_id,
      OLD.quote_revision,OLD.biller_code,OLD.item_code,OLD.customer_id,
      OLD.provider_ngn_kobo,OLD.total_ngn_kobo,OLD.rate_kobo_per_msnw,
      OLD.reserved_micro,OLD.created_at)
    IS DISTINCT FROM
     (NEW.fulfillment_reference,NEW.tenant_id,NEW.user_id,NEW.quote_id,
      NEW.quote_revision,NEW.biller_code,NEW.item_code,NEW.customer_id,
      NEW.provider_ngn_kobo,NEW.total_ngn_kobo,NEW.rate_kobo_per_msnw,
      NEW.reserved_micro,NEW.created_at) THEN
    RAISE EXCEPTION 'MSNW billing confirmed quote is immutable';
  END IF;
  IF OLD.state<>'reserved' AND
     (OLD.state IS DISTINCT FROM NEW.state OR
      OLD.provider_reference IS DISTINCT FROM NEW.provider_reference OR
      OLD.settled_at IS DISTINCT FROM NEW.settled_at) THEN
    RAISE EXCEPTION 'MSNW billing terminal state is immutable';
  END IF;
  RETURN NEW;
END;
$$;
CREATE TRIGGER msnw_billing_economics_immutable
 BEFORE UPDATE ON commerce.msnw_billing_reservations
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_billing_freeze_economics();

CREATE OR REPLACE FUNCTION commerce.msnw_billing_verify_audit()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE r commerce.msnw_billing_reservations%ROWTYPE;
BEGIN
  SELECT * INTO r FROM commerce.msnw_billing_reservations
  WHERE fulfillment_reference=NEW.fulfillment_reference;
  IF NOT FOUND OR
     (NEW.stage='reserved' AND (
       NEW.customer_available_delta IS DISTINCT FROM -r.reserved_micro OR
       NEW.customer_reserved_delta IS DISTINCT FROM r.reserved_micro OR
       NEW.treasury_collected_delta IS DISTINCT FROM 0 OR
       r.state IS DISTINCT FROM 'reserved')) OR
     (NEW.stage='fulfilled' AND (
       NEW.customer_available_delta IS DISTINCT FROM 0 OR
       NEW.customer_reserved_delta IS DISTINCT FROM -r.reserved_micro OR
       NEW.treasury_collected_delta IS DISTINCT FROM r.reserved_micro OR
       r.state IS DISTINCT FROM 'fulfilled')) OR
     (NEW.stage='refunded' AND (
       NEW.customer_available_delta IS DISTINCT FROM r.reserved_micro OR
       NEW.customer_reserved_delta IS DISTINCT FROM -r.reserved_micro OR
       NEW.treasury_collected_delta IS DISTINCT FROM 0 OR
       r.state IS DISTINCT FROM 'refunded')) THEN
    RAISE EXCEPTION 'MSNW billing audit does not match reserved or settled custody'
      USING ERRCODE='23514';
  END IF;
  RETURN NEW;
END;
$$;
CREATE TRIGGER msnw_billing_audit_matches_custody
 BEFORE INSERT ON commerce.msnw_billing_audit
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_billing_verify_audit();

CREATE OR REPLACE FUNCTION commerce.msnw_billing_audit_required()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF NOT EXISTS(SELECT 1 FROM commerce.msnw_billing_audit a
    WHERE a.fulfillment_reference=NEW.fulfillment_reference
      AND a.stage='reserved') THEN
    RAISE EXCEPTION 'MSNW billing cannot reserve without balanced audit'
      USING ERRCODE='23514';
  END IF;
  RETURN NULL;
END;
$$;
CREATE CONSTRAINT TRIGGER msnw_billing_reservation_audited
 AFTER INSERT ON commerce.msnw_billing_reservations
 DEFERRABLE INITIALLY DEFERRED
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_billing_audit_required();

REVOKE ALL ON commerce.msnw_billing_reservations FROM PUBLIC;
REVOKE ALL ON commerce.msnw_billing_audit FROM PUBLIC;
