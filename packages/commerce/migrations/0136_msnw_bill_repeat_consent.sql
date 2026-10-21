-- Explicit intent to repeat a settled bill; never grants provider/ledger authority.
CREATE TABLE commerce.msnw_bill_repeat_consents(
 tenant_id text NOT NULL,user_id text NOT NULL,quote_id text NOT NULL,
 quote_revision integer NOT NULL CHECK(quote_revision>0),
 repeat_of text NOT NULL REFERENCES commerce.msnw_billing_reservations(fulfillment_reference),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,user_id,quote_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id)
);
CREATE TRIGGER msnw_bill_repeat_consent_immutable BEFORE UPDATE OR DELETE ON commerce.msnw_bill_repeat_consents
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_custody_forbid_journal_mutation();
REVOKE ALL ON commerce.msnw_bill_repeat_consents FROM PUBLIC;
