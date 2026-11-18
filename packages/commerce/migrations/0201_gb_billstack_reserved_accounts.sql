-- Forward-only Billstack 9PSB funding, never imported from prior money wallets.
CREATE TABLE gb_wallet.billstack_accounts (
  tenant_id text NOT NULL,
  account_id text NOT NULL,
  merchant_reference text NOT NULL UNIQUE,
  provider_reference text UNIQUE,
  bank_id text NOT NULL DEFAULT '9PSB' CHECK(bank_id='9PSB'),
  account_number text UNIQUE CHECK(account_number ~ '^[0-9]{10}$'),
  account_name text,
  bank_name text,
  status text NOT NULL DEFAULT 'pending' CHECK(status IN ('pending','assigned','suspended')),
  created_at timestamptz NOT NULL DEFAULT now(),
  assigned_at timestamptz,
  PRIMARY KEY(tenant_id,account_id)
);
CREATE TABLE gb_wallet.funding_carry (
  tenant_id text NOT NULL,
  account_id text NOT NULL,
  numerator text NOT NULL DEFAULT '0' CHECK(numerator ~ '^[0-9]{1,64}$'),
  denominator text NOT NULL DEFAULT '1' CHECK(denominator ~ '^[1-9][0-9]{0,63}$'),
  PRIMARY KEY(tenant_id,account_id),
  FOREIGN KEY(tenant_id,account_id) REFERENCES gb_wallet.billstack_accounts(tenant_id,account_id)
);
CREATE TABLE gb_wallet.billstack_deposits (
  event_id text PRIMARY KEY,
  tenant_id text NOT NULL,
  account_id text NOT NULL,
  merchant_reference text NOT NULL,
  provider_reference text NOT NULL,
  receiving_account text NOT NULL,
  amount_kobo bigint NOT NULL CHECK(amount_kobo > 0),
  rate_version text NOT NULL,
  credited_mb bigint NOT NULL CHECK(credited_mb > 0),
  received_at timestamptz NOT NULL,
  credited_at timestamptz NOT NULL DEFAULT now(),
  FOREIGN KEY(tenant_id,account_id) REFERENCES gb_wallet.billstack_accounts(tenant_id,account_id),
  FOREIGN KEY(tenant_id,event_id) REFERENCES gb_wallet.operations(tenant_id,operation_id),
  UNIQUE (provider_reference,event_id)
);
CREATE INDEX gb_wallet_deposit_owner_time ON gb_wallet.billstack_deposits
  (tenant_id,account_id,credited_at DESC);
REVOKE ALL ON gb_wallet.billstack_accounts,gb_wallet.funding_carry,gb_wallet.billstack_deposits FROM PUBLIC;
