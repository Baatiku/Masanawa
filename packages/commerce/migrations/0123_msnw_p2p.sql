-- MSNW P2P marketplace: immutable financial references and seller-reserved escrow.
-- This schema never treats historic MSN/Credits or Paystack fiat evidence as MSNW.
-- Funds move exclusively through the canonical wallet adapter in the same PG transaction.
CREATE SCHEMA IF NOT EXISTS commerce;

CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_payment_methods (
  method_id uuid PRIMARY KEY,
  tenant_id text NOT NULL,
  owner_id text NOT NULL,
  method_type text NOT NULL CHECK (method_type IN ('ng_bank_transfer')),
  bank_name text NOT NULL CHECK (length(btrim(bank_name)) BETWEEN 2 AND 120),
  account_name text NOT NULL CHECK (length(btrim(account_name)) BETWEEN 2 AND 150),
  account_number text NOT NULL CHECK (account_number ~ '^[0-9]{10}$'),
  verification_reference text NOT NULL,
  verified_at timestamptz NOT NULL,
  disabled_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE (tenant_id,owner_id,method_id)
);
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_offers (
  offer_id uuid PRIMARY KEY,
  tenant_id text NOT NULL,
  seller_id text NOT NULL,
  payment_method_id uuid NOT NULL REFERENCES commerce.msnw_p2p_payment_methods(method_id),
  rate_kobo_per_msnw bigint NOT NULL CHECK (rate_kobo_per_msnw > 0),
  min_micro bigint NOT NULL CHECK (min_micro > 0),
  max_micro bigint NOT NULL CHECK (max_micro >= min_micro),
  remaining_micro bigint NOT NULL CHECK (remaining_micro >= 0),
  fee_bps integer NOT NULL DEFAULT 50 CHECK (fee_bps BETWEEN 0 AND 1000),
  state text NOT NULL DEFAULT 'active' CHECK (state IN ('active','paused','closed')),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE (tenant_id,offer_id),
  FOREIGN KEY (tenant_id,seller_id,payment_method_id)
    REFERENCES commerce.msnw_p2p_payment_methods (tenant_id,owner_id,method_id)
);
CREATE INDEX IF NOT EXISTS msnw_p2p_offers_active_idx
  ON commerce.msnw_p2p_offers (tenant_id,state,created_at DESC) WHERE state='active';

CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_orders (
  order_id uuid PRIMARY KEY,
  tenant_id text NOT NULL,
  offer_id uuid NOT NULL,
  seller_id text NOT NULL,
  buyer_id text NOT NULL,
  payment_method_id uuid NOT NULL,
  amount_micro bigint NOT NULL CHECK (amount_micro > 0),
  fee_micro bigint NOT NULL CHECK (fee_micro >= 0),
  fiat_kobo bigint NOT NULL CHECK (fiat_kobo > 0),
  rate_kobo_per_msnw bigint NOT NULL CHECK (rate_kobo_per_msnw > 0),
  payment_deadline timestamptz NOT NULL,
  state text NOT NULL DEFAULT 'awaiting_payment'
    CHECK (state IN ('awaiting_payment','payment_claimed','disputed','release_pending',
                    'refund_pending','completed','cancelled','expired')),
  idempotency_key text NOT NULL CHECK (length(idempotency_key) BETWEEN 8 AND 128),
  version integer NOT NULL DEFAULT 1 CHECK (version > 0),
  payment_claimed_at timestamptz,
  receipt_reference text,
  settled_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE (tenant_id,buyer_id,idempotency_key),
  UNIQUE (tenant_id,order_id),
  FOREIGN KEY (tenant_id,offer_id) REFERENCES commerce.msnw_p2p_offers (tenant_id,offer_id),
  FOREIGN KEY (tenant_id,seller_id,payment_method_id)
    REFERENCES commerce.msnw_p2p_payment_methods (tenant_id,owner_id,method_id),
  CHECK (seller_id <> buyer_id)
);
CREATE INDEX IF NOT EXISTS msnw_p2p_orders_member_idx
  ON commerce.msnw_p2p_orders (tenant_id,buyer_id,created_at DESC);
CREATE INDEX IF NOT EXISTS msnw_p2p_orders_seller_idx
  ON commerce.msnw_p2p_orders (tenant_id,seller_id,created_at DESC);
CREATE INDEX IF NOT EXISTS msnw_p2p_orders_expire_idx
  ON commerce.msnw_p2p_orders (payment_deadline)
  WHERE state='awaiting_payment';

-- Evidence is supporting information, NOT permission to release.
-- A verified object reference can be attached only by a server storage adapter.
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_evidence (
  evidence_id uuid PRIMARY KEY,
  tenant_id text NOT NULL,
  order_id uuid NOT NULL,
  submitted_by text NOT NULL,
  object_ref text NOT NULL,
  sha256 text NOT NULL CHECK (sha256 ~ '^[0-9a-f]{64}$'),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  FOREIGN KEY (tenant_id,order_id) REFERENCES commerce.msnw_p2p_orders (tenant_id,order_id)
);
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_events (
  event_id uuid PRIMARY KEY,
  tenant_id text NOT NULL,
  order_id uuid NOT NULL,
  actor_id text NOT NULL,
  action text NOT NULL,
  from_state text,
  to_state text NOT NULL,
  reason text,
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  FOREIGN KEY (tenant_id,order_id) REFERENCES commerce.msnw_p2p_orders (tenant_id,order_id)
);
CREATE INDEX IF NOT EXISTS msnw_p2p_events_order_idx
  ON commerce.msnw_p2p_events (tenant_id,order_id,created_at);
-- Once a bank instruction is provider-verified, its recipient must NEVER be
-- mutated behind an existing order. Reverification creates a new method ID.
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_freeze_payment_instructions()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF (OLD.tenant_id,OLD.owner_id,OLD.method_type,OLD.bank_name,
      OLD.account_name,OLD.account_number,OLD.verification_reference,OLD.verified_at)
   IS DISTINCT FROM
     (NEW.tenant_id,NEW.owner_id,NEW.method_type,NEW.bank_name,
      NEW.account_name,NEW.account_number,NEW.verification_reference,NEW.verified_at) THEN
    RAISE EXCEPTION 'MSNW P2P verified payment instructions are immutable';
  END IF;
  RETURN NEW;
END;
$$;
DROP TRIGGER IF EXISTS msnw_p2p_payment_instructions_immutable
  ON commerce.msnw_p2p_payment_methods;
CREATE TRIGGER msnw_p2p_payment_instructions_immutable
  BEFORE UPDATE ON commerce.msnw_p2p_payment_methods
  FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_freeze_payment_instructions();

-- Audit records are append-only; any repair must be a new linked event.
CREATE OR REPLACE FUNCTION commerce.msnw_p2p_deny_audit_mutation()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  RAISE EXCEPTION 'MSNW P2P evidence and audit events are immutable';
END;
$$;
DROP TRIGGER IF EXISTS msnw_p2p_evidence_immutable
  ON commerce.msnw_p2p_evidence;
CREATE TRIGGER msnw_p2p_evidence_immutable
  BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_evidence
  FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_deny_audit_mutation();
DROP TRIGGER IF EXISTS msnw_p2p_events_immutable
  ON commerce.msnw_p2p_events;
CREATE TRIGGER msnw_p2p_events_immutable
  BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_events
  FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_deny_audit_mutation();

-- No direct access by customer DB roles; only authenticated API transactions.
REVOKE ALL ON commerce.msnw_p2p_payment_methods FROM PUBLIC;
REVOKE ALL ON commerce.msnw_p2p_offers FROM PUBLIC;
REVOKE ALL ON commerce.msnw_p2p_orders FROM PUBLIC;
REVOKE ALL ON commerce.msnw_p2p_evidence FROM PUBLIC;
REVOKE ALL ON commerce.msnw_p2p_events FROM PUBLIC;
