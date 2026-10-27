-- Forward-only MB Status tipping receipts; no historical asset or cash conversion.
-- The trusted ledger validates a published platform Masana author under the
-- same transaction before moving *purchased* MB. Financial receipts survive
-- subsequent post takedown and never disclose internal source objects.
CREATE TABLE IF NOT EXISTS gb_wallet.tip_receipts (
  tenant_id text NOT NULL,
  operation_id text NOT NULL,
  post_id uuid NOT NULL,
  character_id text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  PRIMARY KEY (tenant_id, operation_id),
  FOREIGN KEY (tenant_id, operation_id)
    REFERENCES gb_wallet.operations(tenant_id, operation_id),
  CHECK (char_length(character_id) BETWEEN 1 AND 160)
);
CREATE INDEX IF NOT EXISTS gb_wallet_tip_receipts_post
  ON gb_wallet.tip_receipts(tenant_id,post_id,created_at DESC);
REVOKE ALL ON gb_wallet.tip_receipts FROM PUBLIC;
