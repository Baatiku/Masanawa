-- Platform usage tariffs are set by authorized Ops administrators only.
-- Existing reply holds and call admissions retain their original charged amounts.
CREATE TABLE gb_wallet.platform_usage_billing (
 tenant_id text PRIMARY KEY,
 billing_enabled boolean NOT NULL DEFAULT true,
 reply_kobo integer NOT NULL DEFAULT 200 CHECK(reply_kobo BETWEEN 1 AND 100000),
 call_kobo_per_started_second integer NOT NULL DEFAULT 100
   CHECK(call_kobo_per_started_second BETWEEN 1 AND 100000),
 revision bigint NOT NULL DEFAULT 1 CHECK(revision>0),
 updated_by text NOT NULL,
 updated_at timestamptz NOT NULL DEFAULT clock_timestamp()
);
REVOKE ALL ON gb_wallet.platform_usage_billing FROM PUBLIC;
CREATE TABLE gb_wallet.platform_usage_billing_audit (
 tenant_id text NOT NULL,revision bigint NOT NULL,actor_id text NOT NULL,
 old_policy jsonb NOT NULL,new_policy jsonb NOT NULL,
 changed_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,revision)
);
CREATE TRIGGER platform_usage_billing_audit_immutable
 BEFORE UPDATE OR DELETE ON gb_wallet.platform_usage_billing_audit
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();
REVOKE ALL ON gb_wallet.platform_usage_billing_audit FROM PUBLIC;

-- Freeze tariff and maximum call duration on each new admission. Backfill historical
-- admissions before replacing the previous fixed-100-kobo constraints.
ALTER TABLE gb_wallet.ngn_call_admissions
 ADD COLUMN rate_kobo_per_started_second integer NOT NULL DEFAULT 100
   CHECK(rate_kobo_per_started_second BETWEEN 0 AND 100000),
 ADD COLUMN max_connected_seconds integer NOT NULL DEFAULT 0;
UPDATE gb_wallet.ngn_call_admissions
 SET max_connected_seconds=budget_kobo/100 WHERE max_connected_seconds=0;
ALTER TABLE gb_wallet.ngn_call_admissions
 ADD CONSTRAINT ngn_call_max_duration CHECK(max_connected_seconds BETWEEN 1 AND 3600),
 ADD CONSTRAINT ngn_call_budget_tied_to_rate
 CHECK((rate_kobo_per_started_second=0 AND budget_kobo=0) OR
 (rate_kobo_per_started_second>0 AND budget_kobo=max_connected_seconds*rate_kobo_per_started_second));
ALTER TABLE gb_wallet.ngn_call_admissions
 DROP CONSTRAINT IF EXISTS ngn_call_admissions_budget_kobo_check,
 DROP CONSTRAINT IF EXISTS ngn_call_admissions_verified_connected_ms_check;
ALTER TABLE gb_wallet.ngn_call_admissions
 ADD CONSTRAINT ngn_call_new_budget CHECK(budget_kobo BETWEEN 0 AND 360000000),
 ADD CONSTRAINT ngn_call_new_verified_ms
 CHECK(verified_connected_ms BETWEEN 0 AND max_connected_seconds::bigint*1000);
