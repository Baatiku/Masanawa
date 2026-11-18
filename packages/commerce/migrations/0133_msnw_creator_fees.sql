-- Creator publication/edit fees are part of the EXISTING MSNW custody liability,
-- not Credits or a second wallet. All transfers and published changes settle in
-- one PostgreSQL transaction. The charge never mints or destroys customer funds.
CREATE TABLE commerce.msnw_creator_fee_liabilities(
 tenant_id text PRIMARY KEY,
 accrued_micro numeric(78,0) NOT NULL DEFAULT 0 CHECK(accrued_micro>=0),
 updated_at timestamptz NOT NULL DEFAULT statement_timestamp()
);

CREATE TABLE commerce.msnw_creator_fee_journal(
 operation_id uuid PRIMARY KEY,
 tenant_id text NOT NULL,
 owner_user_id text NOT NULL,
 character_id text NOT NULL,
 kind text NOT NULL CHECK(kind IN ('create','substantive-edit')),
 idempotency_key text NOT NULL CHECK(length(idempotency_key) BETWEEN 16 AND 128),
 amount_micro numeric(78,0) NOT NULL CHECK(amount_micro>0),
 receipt_ref text NOT NULL UNIQUE,
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 UNIQUE(tenant_id,owner_user_id,kind,idempotency_key),
 FOREIGN KEY(tenant_id,owner_user_id)
  REFERENCES commerce.msnw_custody_accounts(tenant_id,user_id) ON DELETE RESTRICT
);
CREATE INDEX msnw_creator_fee_owner
 ON commerce.msnw_creator_fee_journal(tenant_id,owner_user_id,created_at DESC);
CREATE TABLE commerce.msnw_creator_fee_postings(
 operation_id uuid NOT NULL REFERENCES commerce.msnw_creator_fee_journal(operation_id) ON DELETE RESTRICT,
 entry_number smallint NOT NULL CHECK(entry_number IN (1,2)),
 tenant_id text NOT NULL,
 owner_user_id text,
 bucket text NOT NULL CHECK(bucket IN ('available','platform_fee')),
 delta_micro numeric(78,0) NOT NULL CHECK(delta_micro<>0),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(operation_id,entry_number),
 CHECK ((bucket='available' AND owner_user_id IS NOT NULL)
     OR (bucket='platform_fee' AND owner_user_id IS NULL)),
 FOREIGN KEY(tenant_id,owner_user_id)
  REFERENCES commerce.msnw_custody_accounts(tenant_id,user_id) ON DELETE RESTRICT
);
CREATE OR REPLACE FUNCTION commerce.msnw_creator_fee_assert_balanced()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE count_rows integer; count_good integer; balance numeric(78,0);
BEGIN
 SELECT count(*), COALESCE(sum(delta_micro),0),
 count(*) FILTER (WHERE tenant_id=NEW.tenant_id AND
    ((entry_number=1 AND bucket='available' AND owner_user_id=NEW.owner_user_id
      AND delta_micro=-NEW.amount_micro)
     OR (entry_number=2 AND bucket='platform_fee' AND owner_user_id IS NULL
      AND delta_micro=NEW.amount_micro)))
 INTO count_rows,balance,count_good
 FROM commerce.msnw_creator_fee_postings WHERE operation_id=NEW.operation_id;
 IF count_rows<>2 OR count_good<>2 OR balance<>0 THEN
  RAISE EXCEPTION 'MSNW creator charge journal not balanced' USING ERRCODE='23514';
 END IF;
 RETURN NULL;
END; $$;
CREATE CONSTRAINT TRIGGER msnw_creator_fee_balanced
AFTER INSERT ON commerce.msnw_creator_fee_journal
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE FUNCTION commerce.msnw_creator_fee_assert_balanced();

CREATE OR REPLACE FUNCTION commerce.msnw_creator_fee_immutable()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 RAISE EXCEPTION 'MSNW creator fee journal is immutable' USING ERRCODE='23514';
END; $$;
CREATE TRIGGER msnw_creator_fee_journal_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_creator_fee_journal
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_creator_fee_immutable();
CREATE TRIGGER msnw_creator_fee_postings_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_creator_fee_postings
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_creator_fee_immutable();

REVOKE ALL ON commerce.msnw_creator_fee_liabilities FROM PUBLIC;
REVOKE ALL ON commerce.msnw_creator_fee_journal FROM PUBLIC;
REVOKE ALL ON commerce.msnw_creator_fee_postings FROM PUBLIC;
