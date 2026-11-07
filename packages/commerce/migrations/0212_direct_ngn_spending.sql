-- New cash spending authority. Historical MB balances and journals retain their units.
ALTER TABLE gb_wallet.ngn_accounts ADD COLUMN held_kobo bigint NOT NULL DEFAULT 0
 CHECK(held_kobo >= 0 AND held_kobo <= 9007199254740991);
CREATE TABLE gb_wallet.ngn_spends (
 tenant_id text NOT NULL,operation_id text NOT NULL,user_id text NOT NULL,
 idempotency_key text NOT NULL,request_sha256 text NOT NULL CHECK(request_sha256 ~ '^[a-f0-9]{64}$'),
 purpose text NOT NULL CHECK(purpose IN ('reply','connected_call','data','send','request_pay')),
 amount_kobo bigint NOT NULL CHECK(amount_kobo>0 AND amount_kobo<=9007199254740991),
 captured_kobo bigint NOT NULL DEFAULT 0 CHECK(captured_kobo>=0),
 state text NOT NULL CHECK(state IN ('reserved','completed','failed')),
 recipient_id text,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),resolved_at timestamptz,
 PRIMARY KEY(tenant_id,operation_id),UNIQUE(tenant_id,user_id,idempotency_key),
 FOREIGN KEY(tenant_id,user_id) REFERENCES gb_wallet.ngn_accounts(tenant_id,account_id),
 CHECK(captured_kobo<=amount_kobo),CHECK(state='completed' OR captured_kobo=0),
 CHECK((state='reserved')=(resolved_at IS NULL)),
 CHECK((purpose IN ('send','request_pay'))=(recipient_id IS NOT NULL)),
 CHECK(recipient_id IS NULL OR recipient_id<>user_id)
);
CREATE TABLE gb_wallet.ngn_spend_entries (
 tenant_id text NOT NULL,operation_id text NOT NULL,account_id text NOT NULL,
 delta_kobo bigint NOT NULL CHECK(delta_kobo<>0 AND abs(delta_kobo)<=9007199254740991),
 purpose text NOT NULL,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,operation_id,account_id),
 FOREIGN KEY(tenant_id,operation_id) REFERENCES gb_wallet.ngn_spends(tenant_id,operation_id),
 FOREIGN KEY(tenant_id,account_id) REFERENCES gb_wallet.ngn_accounts(tenant_id,account_id)
);
CREATE TRIGGER ngn_spend_entries_immutable BEFORE UPDATE OR DELETE ON gb_wallet.ngn_spend_entries
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();
CREATE INDEX ngn_spend_owner_history ON gb_wallet.ngn_spend_entries(tenant_id,account_id,created_at DESC,operation_id DESC);
REVOKE ALL ON gb_wallet.ngn_spends,gb_wallet.ngn_spend_entries FROM PUBLIC;
-- Separate admissions prevent historical MB seconds being reinterpreted as cash.
CREATE TABLE gb_wallet.ngn_call_admissions (
 tenant_id text NOT NULL,user_id text NOT NULL,admission_id text NOT NULL,character_id text NOT NULL,
 request_sha256 text NOT NULL CHECK(request_sha256 ~ '^[a-f0-9]{64}$'),
 budget_kobo integer NOT NULL CHECK(budget_kobo BETWEEN 100 AND 360000 AND budget_kobo%100=0),
 state text NOT NULL CHECK(state IN ('pending','reserved','connecting','connected','settling','completed','failed')),
 expires_at timestamptz NOT NULL,lease_id text,connected_at timestamptz,
 connection_base_ms bigint NOT NULL DEFAULT 0,verified_connected_ms bigint NOT NULL DEFAULT 0,
 charged_kobo integer,created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),PRIMARY KEY(tenant_id,admission_id),
 CHECK(connection_base_ms>=0 AND connection_base_ms<=verified_connected_ms),
 CHECK(verified_connected_ms BETWEEN 0 AND budget_kobo::bigint*10),
 CHECK(charged_kobo IS NULL OR charged_kobo BETWEEN 0 AND budget_kobo),
 CHECK((state IN ('connecting','connected'))=(lease_id IS NOT NULL)),
 CHECK((state='connected')=(connected_at IS NOT NULL)),
 CHECK((state IN ('completed','failed'))=(charged_kobo IS NOT NULL))
);
CREATE INDEX ngn_call_admission_recovery ON gb_wallet.ngn_call_admissions(expires_at) WHERE state NOT IN ('completed','failed');
REVOKE ALL ON gb_wallet.ngn_call_admissions FROM PUBLIC;
