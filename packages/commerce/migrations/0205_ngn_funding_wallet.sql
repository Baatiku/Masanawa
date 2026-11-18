-- Owner-approved separate cash funding balance. Never backfill historical money
-- or reinterpret old direct-MB deposits. Integer kobo throughout.
CREATE TABLE gb_wallet.ngn_accounts (
 tenant_id text NOT NULL,
 account_id text NOT NULL,
 balance_kobo bigint NOT NULL DEFAULT 0 CHECK(balance_kobo >= 0 AND balance_kobo <= 9007199254740991),
 debt_kobo bigint NOT NULL DEFAULT 0 CHECK(debt_kobo >= 0 AND debt_kobo <= 9007199254740991),
 frozen boolean NOT NULL DEFAULT false,
 version bigint NOT NULL DEFAULT 0,
 PRIMARY KEY(tenant_id,account_id),
 CHECK(balance_kobo = 0 OR debt_kobo = 0)
);
CREATE TABLE gb_wallet.ngn_entries (
 tenant_id text NOT NULL,
 operation_id text NOT NULL,
 account_id text NOT NULL,
 kind text NOT NULL CHECK(kind IN ('deposit','exchange','deposit_reversal')),
 delta_kobo bigint NOT NULL CHECK(delta_kobo <> 0 AND abs(delta_kobo) <= 9007199254740991),
 request_sha256 text NOT NULL CHECK(request_sha256 ~ '^[a-f0-9]{64}$'),
 amount_mb bigint CHECK(amount_mb > 0),
 rate_version text,
 reverses_operation_id text,
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,operation_id),
 FOREIGN KEY(tenant_id,account_id) REFERENCES gb_wallet.ngn_accounts(tenant_id,account_id),
 FOREIGN KEY(tenant_id,reverses_operation_id) REFERENCES gb_wallet.ngn_entries(tenant_id,operation_id),
 CHECK ((kind='exchange' AND delta_kobo<0 AND amount_mb IS NOT NULL AND rate_version IS NOT NULL)
     OR (kind='deposit' AND delta_kobo>0 AND amount_mb IS NULL)
     OR (kind='deposit_reversal' AND delta_kobo<0 AND reverses_operation_id IS NOT NULL AND amount_mb IS NULL)),
 UNIQUE(tenant_id,reverses_operation_id)
);
CREATE INDEX ngn_entries_owner_time ON gb_wallet.ngn_entries(tenant_id,account_id,created_at DESC,operation_id DESC);
CREATE TRIGGER ngn_entries_immutable BEFORE UPDATE OR DELETE ON gb_wallet.ngn_entries
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();
CREATE TABLE gb_wallet.ngn_deposit_events (
 provider_event_id text PRIMARY KEY,
 tenant_id text NOT NULL,
 account_id text NOT NULL,
 operation_id text NOT NULL,
 merchant_reference text NOT NULL,
 receiving_account text NOT NULL,
 amount_kobo bigint NOT NULL CHECK(amount_kobo > 0),
 received_at timestamptz NOT NULL,
 FOREIGN KEY(tenant_id,operation_id) REFERENCES gb_wallet.ngn_entries(tenant_id,operation_id)
);
CREATE TRIGGER ngn_deposits_immutable BEFORE UPDATE OR DELETE ON gb_wallet.ngn_deposit_events
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();
REVOKE ALL ON gb_wallet.ngn_accounts,gb_wallet.ngn_entries,gb_wallet.ngn_deposit_events FROM PUBLIC;
-- Distinguish explicit cash exchange from historical direct bank-MB issuance.
ALTER TABLE gb_wallet.operations DROP CONSTRAINT operations_operation_kind_check;
ALTER TABLE gb_wallet.operations ADD CONSTRAINT operations_operation_kind_check CHECK(operation_kind IN (
 'welcome_grant','verified_deposit','ngn_exchange','send','request_pay','tip','reply','connected_call','redeem','reversal'
));
