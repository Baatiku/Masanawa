-- Independent, opt-in civic learning. No ratings, personas or engagement joins.
CREATE TABLE gb_wallet.civic_learning_budgets (
 tenant_id text NOT NULL,budget_id text NOT NULL,funder_id text NOT NULL,escrow_id text NOT NULL,
 provider_event_id text NOT NULL UNIQUE REFERENCES gb_wallet.ngn_deposit_events(provider_event_id),
 funded_kobo bigint NOT NULL CHECK(funded_kobo>0 AND funded_kobo<=9007199254740991),
 reward_kobo bigint NOT NULL CHECK(reward_kobo>0 AND reward_kobo<=funded_kobo),
 spent_kobo bigint NOT NULL DEFAULT 0 CHECK(spent_kobo>=0),
 returned_kobo bigint NOT NULL DEFAULT 0 CHECK(returned_kobo>=0),
 state text NOT NULL DEFAULT 'paused' CHECK(state IN ('paused','active','closed')),
 funding_operation_id text NOT NULL,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,budget_id),UNIQUE(tenant_id,escrow_id),
 FOREIGN KEY(tenant_id,funding_operation_id) REFERENCES gb_wallet.ngn_spends(tenant_id,operation_id),
 CHECK(spent_kobo+returned_kobo<=funded_kobo),
 CHECK(state='closed' OR returned_kobo=0),
 CHECK(state<>'closed' OR spent_kobo+returned_kobo=funded_kobo)
);
CREATE UNIQUE INDEX civic_learning_one_active_budget ON gb_wallet.civic_learning_budgets(tenant_id) WHERE state='active';
CREATE TABLE gb_wallet.civic_learning_budget_audit (
 tenant_id text NOT NULL,budget_id text NOT NULL,actor_id text NOT NULL,
 action text NOT NULL CHECK(action IN ('fund','activate','pause','close')),
 audit_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 FOREIGN KEY(tenant_id,budget_id) REFERENCES gb_wallet.civic_learning_budgets(tenant_id,budget_id)
);
CREATE TABLE gb_wallet.civic_learning_attempts (
 tenant_id text NOT NULL,user_id text NOT NULL,lesson_id text NOT NULL,attempt_id uuid NOT NULL,
 started_at timestamptz NOT NULL DEFAULT clock_timestamp(),expires_at timestamptz NOT NULL,
 day date NOT NULL,attempt_count integer NOT NULL CHECK(attempt_count BETWEEN 1 AND 3),
 state text NOT NULL DEFAULT 'started' CHECK(state IN ('started','failed','passed')),
 PRIMARY KEY(tenant_id,user_id,lesson_id),UNIQUE(tenant_id,attempt_id),
 CHECK(expires_at>started_at)
);
CREATE TABLE gb_wallet.civic_learning_awards (
 tenant_id text NOT NULL,user_id text NOT NULL,lesson_id text NOT NULL,budget_id text NOT NULL,
 operation_id text NOT NULL,amount_kobo bigint NOT NULL CHECK(amount_kobo>0),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id,lesson_id),UNIQUE(tenant_id,operation_id),
 FOREIGN KEY(tenant_id,budget_id) REFERENCES gb_wallet.civic_learning_budgets(tenant_id,budget_id),
 FOREIGN KEY(tenant_id,operation_id) REFERENCES gb_wallet.ngn_spends(tenant_id,operation_id)
);
CREATE TRIGGER civic_learning_awards_immutable BEFORE UPDATE OR DELETE ON gb_wallet.civic_learning_awards
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();
CREATE TRIGGER civic_learning_budget_audit_immutable BEFORE UPDATE OR DELETE ON gb_wallet.civic_learning_budget_audit
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();
REVOKE ALL ON gb_wallet.civic_learning_budgets,gb_wallet.civic_learning_budget_audit,gb_wallet.civic_learning_attempts,gb_wallet.civic_learning_awards FROM PUBLIC;
