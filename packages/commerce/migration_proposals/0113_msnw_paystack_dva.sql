-- MSNW Paystack DVA staging. Not in automatic migrations.
-- The user is NOT granted a balance or token merely by creating an account.
-- Apply only after approved provider onboarding and ledger reconciliation review.
CREATE SCHEMA IF NOT EXISTS commerce;
CREATE TABLE IF NOT EXISTS commerce.msnw_paystack_dva (
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  -- This provider customer ID must be provisioned only by the trusted KYC
  -- service after account identity validation; never accept it over mobile HTTP.
  paystack_customer_id bigint NOT NULL CHECK (paystack_customer_id > 0),
  identity_verified_at timestamptz NOT NULL,
  state text NOT NULL DEFAULT 'ready'
    CHECK (state IN ('ready','requested','assigned')),
  consented_at timestamptz,
  requested_at timestamptz,
  assigned_at timestamptz,
  provider_dva_id bigint,
  bank_name text,
  account_name text,
  account_number text,
  currency text NOT NULL DEFAULT 'NGN' CHECK (currency='NGN'),
  updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  PRIMARY KEY (tenant_id,user_id),
  UNIQUE (paystack_customer_id),
  UNIQUE (provider_dva_id),
  CHECK (
    (state = 'ready' AND consented_at IS NULL AND requested_at IS NULL)
    OR
    (state IN ('requested','assigned') AND consented_at IS NOT NULL AND requested_at IS NOT NULL)
  ),
  CHECK (
    state <> 'assigned' OR
    (assigned_at IS NOT NULL AND provider_dva_id > 0 AND
     bank_name IS NOT NULL AND length(btrim(bank_name)) > 0 AND
     account_name IS NOT NULL AND length(btrim(account_name)) > 0 AND
     account_number ~ '^[0-9]{10}$')
  )
);
CREATE INDEX IF NOT EXISTS msnw_paystack_dva_status_idx
 ON commerce.msnw_paystack_dva (state,requested_at)
 WHERE state='requested';
-- Only the authenticated server can read; no direct customer table privileges.
REVOKE ALL ON commerce.msnw_paystack_dva FROM PUBLIC;
