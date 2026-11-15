-- Isolated test credits: never read by the NGN ledger or payment adapters.
CREATE TABLE security.ops_test_wallets (
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 balance_kobo integer NOT NULL DEFAULT 500000 CHECK(balance_kobo >= 0),
 revision integer NOT NULL DEFAULT 1,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id)
);
CREATE TABLE security.ops_test_wallet_entries (
 tenant_id text NOT NULL,
 user_id text NOT NULL,
 request_id text NOT NULL,
 kind text NOT NULL CHECK(kind IN ('reply','call','data','send')),
 amount_kobo integer NOT NULL CHECK(amount_kobo > 0 AND amount_kobo <= 500000),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id,request_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES security.ops_test_wallets(tenant_id,user_id)
);

CREATE FUNCTION security.debit_ops_test_wallet(p_tenant text,p_user text,p_request text,p_kind text,p_amount integer)
RETURNS integer LANGUAGE plpgsql AS $$
DECLARE remaining integer; previous security.ops_test_wallet_entries%ROWTYPE;
BEGIN
 SELECT balance_kobo INTO remaining FROM security.ops_test_wallets
 WHERE tenant_id=p_tenant AND user_id=p_user FOR UPDATE;
 IF NOT FOUND THEN RAISE EXCEPTION 'test_wallet_not_initialized'; END IF;
 SELECT * INTO previous FROM security.ops_test_wallet_entries
 WHERE tenant_id=p_tenant AND user_id=p_user AND request_id=p_request;
 IF FOUND THEN
  IF previous.kind<>p_kind OR previous.amount_kobo<>p_amount THEN
   RAISE EXCEPTION 'test_request_conflict';
  END IF;
  RETURN remaining;
 END IF;
 IF p_amount IS NULL OR p_amount<=0 OR p_amount>remaining THEN RAISE EXCEPTION 'invalid_or_insufficient_test_balance'; END IF;
 INSERT INTO security.ops_test_wallet_entries(tenant_id,user_id,request_id,kind,amount_kobo)
 VALUES(p_tenant,p_user,p_request,p_kind,p_amount);
 UPDATE security.ops_test_wallets SET balance_kobo=balance_kobo-p_amount,revision=revision+1
 WHERE tenant_id=p_tenant AND user_id=p_user RETURNING balance_kobo INTO remaining;
 RETURN remaining;
END;
$$;
