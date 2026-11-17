CREATE TABLE gb_wallet.admin_data_reconciliations(
 tenant_id text NOT NULL,review_id text NOT NULL,actor_id text NOT NULL,user_id text NOT NULL,
 operation_id text NOT NULL,request_sha256 text NOT NULL,reason text NOT NULL,
 result jsonb NOT NULL,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,review_id),
 FOREIGN KEY(tenant_id,operation_id) REFERENCES gb_wallet.ngn_data_orders(tenant_id,operation_id)
);
CREATE FUNCTION gb_wallet.reject_data_reconciliation_mutation() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN RAISE EXCEPTION 'Provider reconciliation audit is immutable'; END;$$;
CREATE TRIGGER immutable_admin_data_reconciliations BEFORE UPDATE OR DELETE ON gb_wallet.admin_data_reconciliations FOR EACH ROW EXECUTE FUNCTION gb_wallet.reject_data_reconciliation_mutation();
