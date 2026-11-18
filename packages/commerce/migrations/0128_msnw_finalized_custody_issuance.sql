-- Canonical MSNW reserve-backed issuance after FINALIZED on-chain mint.
-- Append-only receipt must bind same immutable fiat funding, quote, custody
-- reserve and chain transaction. A Paystack success alone never invokes this.
CREATE TABLE IF NOT EXISTS commerce.msnw_custody_issuances (
  reference text PRIMARY KEY REFERENCES commerce.msnw_funding_obligations(reference)
    ON DELETE RESTRICT,
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  amount_micro numeric(78,0) NOT NULL CHECK (amount_micro > 0),
  chain_id bigint NOT NULL CHECK (chain_id > 0),
  contract_address text NOT NULL CHECK (contract_address ~ '^0x[0-9a-f]{40}$'),
  custody_address text NOT NULL CHECK (custody_address ~ '^0x[0-9a-f]{40}$'),
  mint_tx_hash text NOT NULL CHECK (mint_tx_hash ~ '^0x[0-9a-f]{64}$'),
  finalized_block_number bigint NOT NULL CHECK (finalized_block_number >= 0),
  finalized_block_hash text NOT NULL CHECK (finalized_block_hash ~ '^0x[0-9a-f]{64}$'),
  chain_receipt_sha256 text NOT NULL CHECK (chain_receipt_sha256 ~ '^[0-9a-f]{64}$'),
  credited_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE (chain_id,contract_address,mint_tx_hash),
  FOREIGN KEY (tenant_id,user_id)
    REFERENCES commerce.msnw_custody_accounts(tenant_id,user_id)
    ON DELETE RESTRICT
);
CREATE INDEX IF NOT EXISTS msnw_issued_by_customer
 ON commerce.msnw_custody_issuances(tenant_id,user_id,credited_at DESC);

-- Balanced asset/liability postings tied to a specific on-chain issuance.
CREATE TABLE IF NOT EXISTS commerce.msnw_custody_issuance_entries (
  reference text NOT NULL REFERENCES commerce.msnw_custody_issuances(reference)
    ON DELETE RESTRICT,
  side text NOT NULL CHECK (side IN ('custody_reserve_asset','customer_liability')),
  delta_micro numeric(78,0) NOT NULL CHECK (delta_micro<>0),
  PRIMARY KEY(reference,side)
);
CREATE OR REPLACE FUNCTION commerce.msnw_custody_validate_issuance()
 RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE obligation commerce.msnw_funding_obligations%ROWTYPE;
DECLARE finality commerce.msnw_settlement_events%ROWTYPE;
BEGIN
  SELECT * INTO obligation
  FROM commerce.msnw_funding_obligations WHERE reference=NEW.reference;
  SELECT * INTO finality
  FROM commerce.msnw_settlement_events
  WHERE reference=NEW.reference AND stage='chain_finalized';
  IF obligation.reference IS NULL OR finality.reference IS NULL OR
     NEW.tenant_id IS DISTINCT FROM obligation.tenant_id OR
     NEW.user_id IS DISTINCT FROM obligation.user_id OR
     NEW.amount_micro IS DISTINCT FROM finality.amount_micro OR
     NEW.chain_id IS DISTINCT FROM finality.chain_id OR
     NEW.contract_address IS DISTINCT FROM finality.contract_address OR
     NEW.mint_tx_hash IS DISTINCT FROM finality.tx_hash THEN
    RAISE EXCEPTION 'MSNW issuance lacks matching finalized funding and chain evidence'
      USING ERRCODE='23514';
  END IF;
  RETURN NEW;
END;
$$;
CREATE TRIGGER msnw_custody_issuance_require_finalized_proof
 BEFORE INSERT ON commerce.msnw_custody_issuances
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_custody_validate_issuance();

CREATE OR REPLACE FUNCTION commerce.msnw_custody_issuance_balanced()
 RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE n integer;
DECLARE balance_micro numeric(78,0);
DECLARE custodied numeric(78,0);
DECLARE credited numeric(78,0);
BEGIN
  SELECT count(*),COALESCE(sum(delta_micro),0),
    max(delta_micro) FILTER (WHERE side='custody_reserve_asset'),
    max(delta_micro) FILTER (WHERE side='customer_liability')
  INTO n,balance_micro,custodied,credited
  FROM commerce.msnw_custody_issuance_entries WHERE reference=NEW.reference;
  IF n<>2 OR balance_micro<>0 OR
     custodied IS DISTINCT FROM -NEW.amount_micro OR
     credited IS DISTINCT FROM NEW.amount_micro THEN
    RAISE EXCEPTION 'MSNW issuance is not balanced against its custody reserve'
      USING ERRCODE='23514';
  END IF;
  RETURN NULL;
END;
$$;
CREATE CONSTRAINT TRIGGER msnw_custody_issuance_balance_at_commit
 AFTER INSERT ON commerce.msnw_custody_issuances
 DEFERRABLE INITIALLY DEFERRED FOR EACH ROW
 EXECUTE FUNCTION commerce.msnw_custody_issuance_balanced();

CREATE TRIGGER msnw_issuance_receipt_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_custody_issuances
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_custody_forbid_journal_mutation();
CREATE TRIGGER msnw_issuance_entries_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_custody_issuance_entries
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_custody_forbid_journal_mutation();
REVOKE ALL ON commerce.msnw_custody_issuances FROM PUBLIC;
REVOKE ALL ON commerce.msnw_custody_issuance_entries FROM PUBLIC;
