-- Paystack customer onboarding, separate from DVA assignment and from MSNW issuance.
-- Never retain BVN, bank-account identifiers, or provider identification payloads.
CREATE TABLE IF NOT EXISTS commerce.msnw_paystack_customer_onboarding (
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  email text NOT NULL,
  phone text NOT NULL,
  legal_name text NOT NULL,
  consented_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  state text NOT NULL CHECK (state IN
    ('preparing','creating','created','validating','verified')),
  customer_id bigint UNIQUE CHECK (customer_id > 0),
  customer_code text UNIQUE,
  validation_requested_at timestamptz,
  verified_at timestamptz,
  updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  PRIMARY KEY (tenant_id,user_id),
  UNIQUE (email),
  CHECK ((customer_id IS NULL) = (customer_code IS NULL)),
  CHECK (state NOT IN ('created','validating','verified') OR customer_id IS NOT NULL),
  CHECK (state NOT IN ('validating','verified') OR validation_requested_at IS NOT NULL),
  CHECK (state <> 'verified' OR verified_at IS NOT NULL)
);
CREATE INDEX IF NOT EXISTS msnw_paystack_onboarding_status
  ON commerce.msnw_paystack_customer_onboarding (state,updated_at);
REVOKE ALL ON commerce.msnw_paystack_customer_onboarding FROM PUBLIC;
