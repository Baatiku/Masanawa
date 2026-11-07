-- Direct NGN order journal; historical MB orders remain unchanged.
-- Independent data-redemption journal. Original operation ID is the only
-- Flutterwave bill reference and source of idempotent reconciliation.
CREATE TABLE gb_wallet.ngn_data_orders (
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 operation_id text NOT NULL,
 request_sha256 text NOT NULL CHECK(request_sha256 ~ '^[a-f0-9]{64}$'),
 biller_code text NOT NULL,
 item_code text NOT NULL,
 recipient_phone text NOT NULL,
 amount_ngn text NOT NULL,
 cost_kobo bigint NOT NULL CHECK(cost_kobo > 0),
 bundle_revision text NOT NULL,
 state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','delivered','failed')),
 provider_ref text,
 created_at timestamptz NOT NULL DEFAULT now(),
 resolved_at timestamptz,
 PRIMARY KEY (tenant_id,operation_id),
 FOREIGN KEY (tenant_id,operation_id) REFERENCES gb_wallet.ngn_spends(tenant_id,operation_id)
);
CREATE INDEX ngn_data_order_history
 ON gb_wallet.ngn_data_orders(tenant_id,user_id,created_at DESC);
REVOKE ALL ON gb_wallet.ngn_data_orders FROM PUBLIC;
