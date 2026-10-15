-- MSNW blockchain ownership mapping. Forward-only, additive migration.
-- Do not confuse the old off-chain MSN/Cr ledger with on-chain MSNW.
-- A privileged verifier must obtain a signed challenge or audited custody
-- proof before adding a binding; users cannot insert it through public HTTP.
CREATE SCHEMA IF NOT EXISTS commerce;
CREATE TABLE IF NOT EXISTS commerce.msnw_onchain_wallet_bindings (
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  chain_id bigint NOT NULL CHECK (chain_id > 0),
  token_contract text NOT NULL CHECK (token_contract ~ '^0x[0-9a-f]{40}$'),
  wallet_address text NOT NULL CHECK (wallet_address ~ '^0x[0-9a-f]{40}$'),
  proof_sha256 text NOT NULL CHECK (proof_sha256 ~ '^[0-9a-f]{64}$'),
  verified_at timestamptz NOT NULL,
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  PRIMARY KEY (tenant_id,user_id,chain_id,token_contract),
  UNIQUE (chain_id,token_contract,wallet_address)
);
REVOKE ALL ON commerce.msnw_onchain_wallet_bindings FROM PUBLIC;
