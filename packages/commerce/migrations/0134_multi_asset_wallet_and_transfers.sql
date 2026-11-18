-- Multi-asset custody ledger, internal P2P transfers, and crypto deposit addresses.

CREATE TABLE IF NOT EXISTS commerce.multi_asset_custody_accounts (
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  currency text NOT NULL CHECK (currency IN ('MSNW', 'USDT', 'USDC', 'SOL', 'BTC', 'ETH')),
  available_atomic numeric(78,0) NOT NULL DEFAULT 0 CHECK (available_atomic >= 0),
  reserved_atomic numeric(78,0) NOT NULL DEFAULT 0 CHECK (reserved_atomic >= 0),
  updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  PRIMARY KEY (tenant_id, user_id, currency),
  FOREIGN KEY (tenant_id, user_id)
    REFERENCES security.platform_user_profiles(tenant_id, user_id)
    ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS commerce.p2p_custody_transfers (
  transfer_id uuid PRIMARY KEY,
  tenant_id text NOT NULL,
  sender_user_id text NOT NULL,
  recipient_user_id text NOT NULL,
  currency text NOT NULL CHECK (currency IN ('MSNW', 'USDT', 'USDC', 'SOL', 'BTC', 'ETH')),
  amount_atomic numeric(78,0) NOT NULL CHECK (amount_atomic > 0),
  fee_atomic numeric(78,0) NOT NULL DEFAULT 0 CHECK (fee_atomic >= 0),
  reference text NOT NULL UNIQUE,
  narration text,
  idempotency_key text NOT NULL CHECK (length(idempotency_key) BETWEEN 16 AND 128),
  state text NOT NULL DEFAULT 'completed' CHECK (state = 'completed'),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  CHECK (sender_user_id <> recipient_user_id),
  UNIQUE (tenant_id, sender_user_id, idempotency_key),
  FOREIGN KEY (tenant_id, sender_user_id, currency)
    REFERENCES commerce.multi_asset_custody_accounts(tenant_id, user_id, currency)
    ON DELETE RESTRICT,
  FOREIGN KEY (tenant_id, recipient_user_id, currency)
    REFERENCES commerce.multi_asset_custody_accounts(tenant_id, user_id, currency)
    ON DELETE RESTRICT
);

CREATE INDEX IF NOT EXISTS p2p_custody_transfers_sender_idx
  ON commerce.p2p_custody_transfers(tenant_id, sender_user_id, created_at DESC);
CREATE INDEX IF NOT EXISTS p2p_custody_transfers_recipient_idx
  ON commerce.p2p_custody_transfers(tenant_id, recipient_user_id, created_at DESC);

CREATE TABLE IF NOT EXISTS commerce.crypto_deposit_addresses (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  currency text NOT NULL CHECK (currency IN ('MSNW', 'USDT', 'USDC', 'SOL', 'BTC', 'ETH')),
  network text NOT NULL CHECK (network IN ('TRC20', 'BEP20', 'ARBITRUM', 'SOLANA', 'POLYGON', 'ETHEREUM', 'BITCOIN')),
  public_address text NOT NULL,
  memo_or_tag text,
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE (tenant_id, user_id, currency, network),
  FOREIGN KEY (tenant_id, user_id)
    REFERENCES security.platform_user_profiles(tenant_id, user_id)
    ON DELETE RESTRICT
);

CREATE INDEX IF NOT EXISTS crypto_deposit_addresses_lookup_idx
  ON commerce.crypto_deposit_addresses(tenant_id, currency, network, public_address);

-- Immutability guard for P2P custody transfers
CREATE OR REPLACE FUNCTION commerce.p2p_transfers_forbid_mutation()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  RAISE EXCEPTION 'P2P custody transfer journal is immutable';
END;
$$;

DROP TRIGGER IF EXISTS p2p_custody_transfers_immutable ON commerce.p2p_custody_transfers;
CREATE TRIGGER p2p_custody_transfers_immutable
  BEFORE UPDATE OR DELETE ON commerce.p2p_custody_transfers
  FOR EACH ROW EXECUTE FUNCTION commerce.p2p_transfers_forbid_mutation();
