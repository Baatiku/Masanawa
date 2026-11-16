-- Explicit owner-authorized adjustments. Never classify these as bank deposits.
ALTER TABLE gb_wallet.ngn_entries DROP CONSTRAINT ngn_entries_kind_check;
ALTER TABLE gb_wallet.ngn_entries ADD CONSTRAINT ngn_entries_kind_check
 CHECK(kind IN ('deposit','exchange','deposit_reversal','admin_adjustment'));
ALTER TABLE gb_wallet.ngn_entries DROP CONSTRAINT ngn_entries_check;
ALTER TABLE gb_wallet.ngn_entries ADD CONSTRAINT ngn_entries_check CHECK(
 (kind='exchange' AND delta_kobo<0 AND amount_mb IS NOT NULL AND rate_version IS NOT NULL)
 OR (kind='deposit' AND delta_kobo>0 AND amount_mb IS NULL)
 OR (kind='deposit_reversal' AND delta_kobo<0 AND reverses_operation_id IS NOT NULL AND amount_mb IS NULL)
 OR (kind='admin_adjustment' AND amount_mb IS NULL AND rate_version IS NULL AND reverses_operation_id IS NULL));
CREATE TABLE gb_wallet.ngn_admin_adjustments (
 tenant_id text NOT NULL,
 operation_id text NOT NULL,
 account_id text NOT NULL,
 actor_id text NOT NULL,
 before_kobo bigint NOT NULL,
 after_kobo bigint NOT NULL,
 delta_kobo bigint NOT NULL CHECK(delta_kobo<>0),
 reason text NOT NULL CHECK(length(trim(reason)) BETWEEN 10 AND 1000),
 funding_reference text NOT NULL CHECK(length(trim(funding_reference)) BETWEEN 3 AND 200),
 request_sha256 text NOT NULL,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,operation_id),
 FOREIGN KEY(tenant_id,operation_id) REFERENCES gb_wallet.ngn_entries(tenant_id,operation_id),
 CHECK(after_kobo-before_kobo=delta_kobo)
);
CREATE TRIGGER ngn_admin_adjustments_immutable BEFORE UPDATE OR DELETE ON gb_wallet.ngn_admin_adjustments
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();
CREATE FUNCTION gb_wallet.apply_admin_ngn_adjustment(p_tenant text,p_actor text,p_user text,p_operation text,p_mode text,p_amount bigint,p_version bigint,p_reason text,p_reference text,p_hash text)
RETURNS gb_wallet.ngn_admin_adjustments LANGUAGE plpgsql AS $$
DECLARE account gb_wallet.ngn_accounts%ROWTYPE; receipt gb_wallet.ngn_admin_adjustments%ROWTYPE; target bigint; delta bigint;
BEGIN
 PERFORM pg_advisory_xact_lock(hashtextextended('admin-ngn:'||p_tenant||':'||p_operation,0));
 SELECT * INTO receipt FROM gb_wallet.ngn_admin_adjustments WHERE tenant_id=p_tenant AND operation_id=p_operation;
 IF FOUND THEN
  IF receipt.request_sha256<>p_hash OR receipt.actor_id<>p_actor OR receipt.account_id<>p_user THEN RAISE EXCEPTION 'admin_adjustment_conflict'; END IF;
  RETURN receipt;
 END IF;
 IF p_mode NOT IN ('credit','set_balance') OR p_amount<0 OR p_amount>9007199254740991 OR p_reason IS NULL OR length(trim(p_reason)) NOT BETWEEN 10 AND 1000 OR p_reference IS NULL OR length(trim(p_reference)) NOT BETWEEN 3 AND 200 THEN RAISE EXCEPTION 'invalid_admin_adjustment'; END IF;
 IF NOT EXISTS(SELECT 1 FROM identity.users WHERE tenant_id=p_tenant AND user_id=p_user AND state='active') THEN RAISE EXCEPTION 'admin_account_unavailable'; END IF;
 INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id) VALUES(p_tenant,p_user) ON CONFLICT DO NOTHING;
 SELECT * INTO account FROM gb_wallet.ngn_accounts WHERE tenant_id=p_tenant AND account_id=p_user FOR UPDATE;
 IF account.version<>p_version THEN RAISE EXCEPTION 'admin_balance_changed'; END IF;
 IF account.frozen OR account.debt_kobo>0 THEN RAISE EXCEPTION 'admin_account_frozen'; END IF;
 target=CASE WHEN p_mode='credit' THEN account.balance_kobo+p_amount ELSE p_amount END;
 IF target<account.held_kobo OR target>9007199254740991 THEN RAISE EXCEPTION 'admin_balance_below_holds_or_overflow'; END IF;
 delta=target-account.balance_kobo;
 IF delta=0 THEN RAISE EXCEPTION 'admin_balance_unchanged'; END IF;
 INSERT INTO gb_wallet.ngn_entries(tenant_id,operation_id,account_id,kind,delta_kobo,request_sha256)
 VALUES(p_tenant,p_operation,p_user,'admin_adjustment',delta,p_hash);
 UPDATE gb_wallet.ngn_accounts SET balance_kobo=target,version=version+1 WHERE tenant_id=p_tenant AND account_id=p_user;
 INSERT INTO gb_wallet.ngn_admin_adjustments(tenant_id,operation_id,account_id,actor_id,before_kobo,after_kobo,delta_kobo,reason,funding_reference,request_sha256)
 VALUES(p_tenant,p_operation,p_user,p_actor,account.balance_kobo,target,delta,trim(p_reason),trim(p_reference),p_hash) RETURNING * INTO receipt;
 RETURN receipt;
END;
$$;
REVOKE ALL ON gb_wallet.ngn_admin_adjustments FROM PUBLIC;
