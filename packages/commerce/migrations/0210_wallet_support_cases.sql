-- Receipt-linked inquiries annotate support state; they cannot settle money.
CREATE SCHEMA IF NOT EXISTS support;
CREATE TABLE support.wallet_cases (
 tenant_id text NOT NULL,id uuid NOT NULL DEFAULT gen_random_uuid(),user_id text NOT NULL,
 target_kind text NOT NULL CHECK(target_kind IN ('activity','hold','legacy_group')),
 target_reference text NOT NULL CHECK(length(target_reference) BETWEEN 1 AND 1500),
 target_fingerprint text NOT NULL CHECK(target_fingerprint ~ '^[a-f0-9]{64}$'),
 category text NOT NULL CHECK(category IN ('amount','status','missing','other')),
 state text NOT NULL DEFAULT 'open' CHECK(state IN ('open','acknowledged','awaiting_provider','closed')),
 revision integer NOT NULL DEFAULT 1 CHECK(revision>0),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 reviewed_by text,PRIMARY KEY(tenant_id,id),
 UNIQUE(tenant_id,user_id,target_kind,target_fingerprint,category)
);
CREATE INDEX wallet_case_owner_history ON support.wallet_cases(tenant_id,user_id,created_at DESC,id DESC);
CREATE INDEX wallet_case_review ON support.wallet_cases(tenant_id,state,created_at,id);
CREATE TABLE support.wallet_case_events (
 tenant_id text NOT NULL,case_id uuid NOT NULL,revision integer NOT NULL,
 actor_id text NOT NULL,state text NOT NULL CHECK(state IN ('open','acknowledged','awaiting_provider','closed')),
 at timestamptz NOT NULL DEFAULT clock_timestamp(),PRIMARY KEY(tenant_id,case_id,revision),
 FOREIGN KEY(tenant_id,case_id) REFERENCES support.wallet_cases(tenant_id,id)
);
CREATE TRIGGER wallet_case_events_immutable BEFORE UPDATE OR DELETE ON support.wallet_case_events
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();
CREATE FUNCTION support.guard_wallet_case_update() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF ROW(NEW.tenant_id,NEW.id,NEW.user_id,NEW.target_kind,NEW.target_reference,NEW.target_fingerprint,NEW.category,NEW.created_at)
  IS DISTINCT FROM ROW(OLD.tenant_id,OLD.id,OLD.user_id,OLD.target_kind,OLD.target_reference,OLD.target_fingerprint,OLD.category,OLD.created_at)
  OR NEW.revision<>OLD.revision+1 OR NEW.reviewed_by IS NULL THEN
  RAISE EXCEPTION 'wallet inquiry identity is immutable';
 END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER wallet_case_identity_guard BEFORE UPDATE ON support.wallet_cases
 FOR EACH ROW EXECUTE FUNCTION support.guard_wallet_case_update();
REVOKE ALL ON ALL TABLES IN SCHEMA support FROM PUBLIC;
