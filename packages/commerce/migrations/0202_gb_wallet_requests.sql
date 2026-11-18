-- Forward-only whole-MB Requests. No legacy Credits/MSNW conversion.
-- Every request is a durable account-bound obligation, not a spend operation.
CREATE TABLE IF NOT EXISTS gb_wallet.payment_requests (
  tenant_id text NOT NULL,
  request_id text NOT NULL,
  requester_id text NOT NULL,
  payer_id text NOT NULL,
  amount_mb bigint NOT NULL CHECK (amount_mb BETWEEN 1 AND 1000000000),
  idempotency_key text NOT NULL,
  request_sha256 text NOT NULL CHECK (request_sha256 ~ '^[0-9a-f]{64}$'),
  state text NOT NULL DEFAULT 'open'
    CHECK (state IN ('open','paid','cancelled')),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  expires_at timestamptz NOT NULL DEFAULT
    (statement_timestamp() + INTERVAL '7 days'),
  paid_at timestamptz,
  operation_id text,
  PRIMARY KEY(tenant_id,request_id),
  UNIQUE(tenant_id,requester_id,idempotency_key),
  FOREIGN KEY(tenant_id,operation_id)
    REFERENCES gb_wallet.operations(tenant_id,operation_id),
  CHECK (requester_id <> payer_id),
  CHECK (length(request_id) BETWEEN 12 AND 160),
  CHECK (length(requester_id) BETWEEN 1 AND 160),
  CHECK (length(payer_id) BETWEEN 1 AND 160),
  CHECK (length(idempotency_key) BETWEEN 12 AND 128),
  CHECK (expires_at > created_at AND expires_at <= created_at + INTERVAL '7 days'),
  CHECK ((state='paid' AND operation_id IS NOT NULL AND paid_at IS NOT NULL)
      OR (state<>'paid' AND operation_id IS NULL AND paid_at IS NULL))
);
CREATE INDEX IF NOT EXISTS gb_requests_for_payer
  ON gb_wallet.payment_requests(tenant_id,payer_id,created_at DESC,request_id);
CREATE INDEX IF NOT EXISTS gb_requests_for_requester
  ON gb_wallet.payment_requests(tenant_id,requester_id,created_at DESC,request_id);
REVOKE ALL ON gb_wallet.payment_requests FROM PUBLIC;
