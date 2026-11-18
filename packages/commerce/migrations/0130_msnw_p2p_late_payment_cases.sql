-- A late fiat bank transfer cannot resurrect or re-mint expired escrow.
-- Keep an auditable support case completely separate from MSNW custody.
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_late_payment_cases (
 case_id uuid PRIMARY KEY,
 tenant_id text NOT NULL,
 order_id uuid NOT NULL,
 buyer_id text NOT NULL,
 state text NOT NULL DEFAULT 'open'
   CHECK(state IN ('open','escalated','closed')),
 buyer_reason text NOT NULL CHECK(length(btrim(buyer_reason)) BETWEEN 10 AND 2000),
 operator_note text CHECK(operator_note IS NULL OR
   length(btrim(operator_note)) BETWEEN 10 AND 2000),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 updated_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 closed_at timestamptz,
 UNIQUE(tenant_id,order_id),
 FOREIGN KEY(tenant_id,order_id)
   REFERENCES commerce.msnw_p2p_orders(tenant_id,order_id)
   ON DELETE RESTRICT
);
CREATE INDEX IF NOT EXISTS msnw_p2p_late_cases_open_idx
 ON commerce.msnw_p2p_late_payment_cases(state,created_at)
 WHERE state IN ('open','escalated');
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_late_payment_case_events (
 event_id uuid PRIMARY KEY,
 case_id uuid NOT NULL
   REFERENCES commerce.msnw_p2p_late_payment_cases(case_id)
   ON DELETE RESTRICT,
 actor_id text NOT NULL,
 action text NOT NULL CHECK(action IN ('reported','escalated','closed')),
 explanation text NOT NULL CHECK(length(btrim(explanation)) BETWEEN 10 AND 2000),
 created_at timestamptz NOT NULL DEFAULT statement_timestamp()
);
CREATE INDEX IF NOT EXISTS msnw_p2p_late_case_events_idx
 ON commerce.msnw_p2p_late_payment_case_events(case_id,created_at);
CREATE TRIGGER msnw_p2p_late_case_events_immutable
 BEFORE UPDATE OR DELETE ON commerce.msnw_p2p_late_payment_case_events
 FOR EACH ROW EXECUTE FUNCTION commerce.msnw_p2p_deny_audit_mutation();
REVOKE ALL ON commerce.msnw_p2p_late_payment_cases FROM PUBLIC;
REVOKE ALL ON commerce.msnw_p2p_late_payment_case_events FROM PUBLIC;
