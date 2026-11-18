-- Conversion is a payment from independently backed MSNW custody to
-- a separately prefunded NOWPayments crypto treasury; NEVER a direct
-- MSNW->NOWPayments protocol exchange (MSNW is not provider-listed).
CREATE TABLE IF NOT EXISTS commerce.msnw_usdt_payouts (
  conversion_id uuid PRIMARY KEY,
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  idempotency_key text NOT NULL CHECK(length(idempotency_key) BETWEEN 16 AND 128),
  provider_code text NOT NULL CHECK(provider_code IN ('USDTTRC20','USDTMATIC','USDCMATIC')),
  destination_address text NOT NULL CHECK(length(destination_address) BETWEEN 20 AND 128),
  source_micro numeric(78,0) NOT NULL CHECK(source_micro>0),
  target_micro numeric(78,0) NOT NULL CHECK(target_micro>0),
  rate_usd_micro_per_msnw bigint NOT NULL CHECK(rate_usd_micro_per_msnw>0),
  fee_estimate_micro numeric(78,0) NOT NULL CHECK(fee_estimate_micro>=0),
  quote_expires_at timestamptz NOT NULL,
  CONSTRAINT msnw_usdt_quote_window CHECK(quote_expires_at>created_at),
  provider_batch_id text UNIQUE,
  provider_withdrawal_id text,
  state text NOT NULL DEFAULT 'reserved'
    CHECK(state IN ('reserved','submitting','awaiting_verification',
      'processing','finished','refunded','manual_review')),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  submitted_at timestamptz,
  settled_at timestamptz,
  UNIQUE(tenant_id,user_id,idempotency_key),
  FOREIGN KEY (tenant_id,user_id)
    REFERENCES commerce.msnw_custody_accounts(tenant_id,user_id) ON DELETE RESTRICT,
  CHECK(state NOT IN ('processing','finished')
    OR provider_batch_id IS NOT NULL)
);
CREATE INDEX IF NOT EXISTS msnw_usdt_payout_owner
 ON commerce.msnw_usdt_payouts(tenant_id,user_id,created_at DESC);
CREATE INDEX IF NOT EXISTS msnw_usdt_payout_unfinished
 ON commerce.msnw_usdt_payouts(state,created_at)
 WHERE state IN ('submitting','awaiting_verification','processing','manual_review');

CREATE TABLE IF NOT EXISTS commerce.msnw_usdt_payout_audit (
  event_id uuid PRIMARY KEY,
  conversion_id uuid NOT NULL REFERENCES commerce.msnw_usdt_payouts(conversion_id)
    ON DELETE RESTRICT,
  stage text NOT NULL CHECK(stage IN ('reserved','finished','refunded')),
  available_delta numeric(78,0) NOT NULL,
  reserved_delta numeric(78,0) NOT NULL,
  treasury_collected_delta numeric(78,0) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE(conversion_id,stage),
  CHECK(available_delta+reserved_delta+treasury_collected_delta=0)
);
CREATE TRIGGER msnw_usdt_audit_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_usdt_payout_audit
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_custody_forbid_journal_mutation();

CREATE OR REPLACE FUNCTION commerce.msnw_usdt_lock_terms()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF (OLD.conversion_id,OLD.tenant_id,OLD.user_id,OLD.idempotency_key,
      OLD.provider_code,OLD.destination_address,OLD.source_micro,
      OLD.target_micro,OLD.rate_usd_micro_per_msnw,OLD.fee_estimate_micro,OLD.quote_expires_at)
    IS DISTINCT FROM
     (NEW.conversion_id,NEW.tenant_id,NEW.user_id,NEW.idempotency_key,
      NEW.provider_code,NEW.destination_address,NEW.source_micro,
      NEW.target_micro,NEW.rate_usd_micro_per_msnw,NEW.fee_estimate_micro,NEW.quote_expires_at) THEN
    RAISE EXCEPTION 'MSNW conversion confirmed economics are immutable';
  END IF;
  IF OLD.state IN ('finished','refunded') AND
    (OLD.state IS DISTINCT FROM NEW.state OR
     OLD.provider_batch_id IS DISTINCT FROM NEW.provider_batch_id) THEN
    RAISE EXCEPTION 'MSNW crypto settlement is terminal';
  END IF;
  RETURN NEW;
END;
$$;
CREATE TRIGGER msnw_usdt_terms_immutable BEFORE UPDATE ON commerce.msnw_usdt_payouts
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_usdt_lock_terms();

-- Every booked reservation and terminal withdrawal must have EXACTLY the
-- two-sided posting associated with the quoted value.
CREATE OR REPLACE FUNCTION commerce.msnw_usdt_verify_audit()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE payout commerce.msnw_usdt_payouts%ROWTYPE;
BEGIN
  SELECT * INTO payout FROM commerce.msnw_usdt_payouts
   WHERE conversion_id=NEW.conversion_id;
  IF NOT FOUND OR
     (NEW.stage='reserved' AND (
       NEW.available_delta IS DISTINCT FROM -payout.source_micro OR
       NEW.reserved_delta IS DISTINCT FROM payout.source_micro OR
       NEW.treasury_collected_delta IS DISTINCT FROM 0)) OR
     (NEW.stage='finished' AND (
       payout.state IS DISTINCT FROM 'finished' OR
       NEW.available_delta IS DISTINCT FROM 0 OR
       NEW.reserved_delta IS DISTINCT FROM -payout.source_micro OR
       NEW.treasury_collected_delta IS DISTINCT FROM payout.source_micro)) OR
     (NEW.stage='refunded' AND (
       payout.state IS DISTINCT FROM 'refunded' OR
       NEW.available_delta IS DISTINCT FROM payout.source_micro OR
       NEW.reserved_delta IS DISTINCT FROM -payout.source_micro OR
       NEW.treasury_collected_delta IS DISTINCT FROM 0)) THEN
    RAISE EXCEPTION 'MSNW crypto payout journal does not match exact custody'
      USING ERRCODE='23514';
  END IF;
  RETURN NEW;
END;
$$;
CREATE TRIGGER msnw_usdt_audit_matches_money
 BEFORE INSERT ON commerce.msnw_usdt_payout_audit
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_usdt_verify_audit();

CREATE OR REPLACE FUNCTION commerce.msnw_usdt_require_reserve_audit()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF NOT EXISTS(SELECT 1 FROM commerce.msnw_usdt_payout_audit
    WHERE conversion_id=NEW.conversion_id AND stage='reserved') THEN
    RAISE EXCEPTION 'MSNW crypto reservation missing balanced journal'
      USING ERRCODE='23514';
  END IF;
  RETURN NULL;
END;
$$;
CREATE CONSTRAINT TRIGGER msnw_usdt_reserve_audited
 AFTER INSERT ON commerce.msnw_usdt_payouts
 DEFERRABLE INITIALLY DEFERRED FOR EACH ROW
 EXECUTE FUNCTION commerce.msnw_usdt_require_reserve_audit();

REVOKE ALL ON commerce.msnw_usdt_payouts FROM PUBLIC;
REVOKE ALL ON commerce.msnw_usdt_payout_audit FROM PUBLIC;
