-- New, deliberately separate MB ledger; no legacy money migration.
-- Never rewrite already applied commerce migrations. This schema is *not*
-- a webhook, deposit proof, or permission to issue spendable MB.
CREATE SCHEMA IF NOT EXISTS gb_wallet;

CREATE TABLE gb_wallet.accounts (
  tenant_id text NOT NULL,
  account_kind text NOT NULL CHECK (account_kind IN ('human', 'masana')),
  account_id text NOT NULL,
  purchased_mb bigint NOT NULL DEFAULT 0,
  welcome_mb bigint NOT NULL DEFAULT 0,
  reserved_purchased_mb bigint NOT NULL DEFAULT 0,
  reserved_welcome_mb bigint NOT NULL DEFAULT 0,
  frozen boolean NOT NULL DEFAULT false,
  version bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (tenant_id, account_kind, account_id),
  CHECK (char_length(tenant_id) BETWEEN 1 AND 160),
  CHECK (char_length(account_id) BETWEEN 1 AND 160),
  CHECK (purchased_mb >= 0 AND welcome_mb >= 0),
  CHECK (reserved_purchased_mb >= 0 AND reserved_welcome_mb >= 0),
  CHECK (reserved_purchased_mb <= purchased_mb),
  CHECK (reserved_welcome_mb <= welcome_mb),
  CHECK (account_kind <> 'masana' OR (welcome_mb = 0 AND reserved_welcome_mb = 0))
);

CREATE TABLE gb_wallet.operations (
  tenant_id text NOT NULL,
  operation_id text NOT NULL,
  actor_id text NOT NULL,
  idempotency_key text NOT NULL,
  request_sha256 text NOT NULL CHECK (request_sha256 ~ '^[0-9a-f]{64}$'),
  operation_kind text NOT NULL CHECK (operation_kind IN (
    'welcome_grant','verified_deposit','send','request_pay','tip','reply',
    'connected_call','redeem','reversal'
  )),
  amount_mb bigint NOT NULL CHECK (amount_mb > 0),
  state text NOT NULL CHECK (state IN (
    'pending','reserved','completed','failed','reversed'
  )),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  PRIMARY KEY (tenant_id, operation_id),
  UNIQUE (tenant_id, actor_id, idempotency_key),
  CHECK (char_length(operation_id) BETWEEN 1 AND 160),
  CHECK (char_length(actor_id) BETWEEN 1 AND 160),
  CHECK (char_length(idempotency_key) BETWEEN 1 AND 160)
);
CREATE INDEX gb_wallet_actor_operations ON gb_wallet.operations
  (tenant_id, actor_id, created_at DESC, operation_id DESC);

-- Each immutable row records BOTH sides of an MB movement. Issuance is
-- an explicit external backing boundary, not a second spendable account.
CREATE TABLE gb_wallet.movements (
  movement_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  tenant_id text NOT NULL,
  operation_id text NOT NULL,
  from_kind text NOT NULL CHECK (from_kind IN ('human','masana','issuance')),
  from_id text NOT NULL,
  to_kind text NOT NULL CHECK (to_kind IN ('human','masana','usage')),
  to_id text NOT NULL,
  source_bucket text NOT NULL CHECK (source_bucket IN ('purchased','welcome','issuance')),
  target_bucket text NOT NULL CHECK (target_bucket IN ('purchased','welcome','usage')),
  amount_mb bigint NOT NULL CHECK (amount_mb > 0),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  FOREIGN KEY (tenant_id, operation_id) REFERENCES gb_wallet.operations(tenant_id, operation_id),
  CHECK (from_kind <> to_kind OR from_id <> to_id),
  CHECK (from_kind <> 'issuance' OR source_bucket = 'issuance'),
  CHECK (to_kind <> 'usage' OR target_bucket = 'usage'),
  UNIQUE (tenant_id, operation_id, source_bucket, target_bucket)
);
CREATE INDEX gb_wallet_movements_for_operation ON gb_wallet.movements(tenant_id, operation_id);

CREATE OR REPLACE FUNCTION gb_wallet.refuse_movement_mutation()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  RAISE EXCEPTION 'GB wallet movements are immutable';
END;
$$;
CREATE TRIGGER gb_wallet_movements_immutable
BEFORE UPDATE OR DELETE ON gb_wallet.movements
FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();

-- Store only a SERVER-HMACed verified-phone fingerprint, never raw phone.
-- Both unique constraints prevent re-grant on reinstall or account switch.
CREATE TABLE gb_wallet.welcome_claims (
  tenant_id text NOT NULL,
  account_id text NOT NULL,
  verified_phone_hmac text NOT NULL CHECK (verified_phone_hmac ~ '^[0-9a-f]{64}$'),
  operation_id text NOT NULL,
  credited_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  PRIMARY KEY (tenant_id, account_id),
  UNIQUE (tenant_id, verified_phone_hmac),
  UNIQUE (tenant_id, operation_id),
  FOREIGN KEY (tenant_id, operation_id)
    REFERENCES gb_wallet.operations(tenant_id, operation_id)
);

-- Reserve buckets transactionally before spending; pending/unknown
-- provider outcomes retain reservations until original-operation reconciliation.
CREATE TABLE gb_wallet.reservations (
  tenant_id text NOT NULL,
  operation_id text NOT NULL,
  account_kind text NOT NULL,
  account_id text NOT NULL,
  purchased_mb bigint NOT NULL DEFAULT 0,
  welcome_mb bigint NOT NULL DEFAULT 0,
  state text NOT NULL CHECK (state IN ('reserved', 'captured','released')),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  resolved_at timestamptz,
  PRIMARY KEY (tenant_id, operation_id),
  FOREIGN KEY (tenant_id, operation_id)
    REFERENCES gb_wallet.operations(tenant_id, operation_id),
  FOREIGN KEY (tenant_id, account_kind, account_id)
    REFERENCES gb_wallet.accounts(tenant_id, account_kind, account_id),
  CHECK (purchased_mb >= 0 AND welcome_mb >= 0),
  CHECK (purchased_mb + welcome_mb > 0),
  CHECK ((state = 'reserved' AND resolved_at IS NULL) OR
    (state <> 'reserved' AND resolved_at IS NOT NULL))
);

REVOKE ALL ON ALL TABLES IN SCHEMA gb_wallet FROM PUBLIC;
