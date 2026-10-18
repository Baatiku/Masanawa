-- Creator-owned professional Masana; additive to retired personal-clone data.
-- Historical personal-clone unique index intentionally remains unchanged.
ALTER TABLE identity.character_ownership
  DROP CONSTRAINT IF EXISTS character_ownership_kind_check;
ALTER TABLE identity.character_ownership
  ADD CONSTRAINT character_ownership_kind_check
  CHECK (kind IN ('platform', 'personal-clone', 'business', 'creator-agent'));

ALTER TABLE identity.character_ownership
  DROP CONSTRAINT IF EXISTS character_ownership_check;
ALTER TABLE identity.character_ownership
  ADD CONSTRAINT character_ownership_check
  CHECK (
    (kind='platform' AND owner_user_id IS NULL)
    OR (kind IN ('personal-clone','creator-agent') AND owner_user_id IS NOT NULL)
    OR kind='business'
  );

CREATE SCHEMA IF NOT EXISTS creator;
CREATE TABLE creator.agents (
  tenant_id text NOT NULL,
  character_id text NOT NULL,
  owner_user_id text NOT NULL,
  state text NOT NULL DEFAULT 'draft'
    CHECK (state IN ('draft','published','paused','restricted','retired')),
  handle text NOT NULL CHECK (handle ~ '^[a-z0-9][a-z0-9._-]{1,39}$'),
  draft_create_key text NOT NULL CHECK(length(draft_create_key) BETWEEN 16 AND 128),
  draft_request_hash text NOT NULL CHECK(draft_request_hash ~ '^[0-9a-f]{64}$'),
  seed jsonb NOT NULL CHECK (jsonb_typeof(seed)='object'),
  generated jsonb CHECK (generated IS NULL OR jsonb_typeof(generated)='object'),
  voice_profile_id text,
  status_enabled boolean NOT NULL DEFAULT false,
  status_posts_weekly smallint NOT NULL DEFAULT 0 CHECK (status_posts_weekly BETWEEN 0 AND 21),
  revision bigint NOT NULL DEFAULT 1 CHECK (revision BETWEEN 1 AND 9007199254740991),
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  published_at timestamptz,
  PRIMARY KEY(tenant_id, character_id),
  FOREIGN KEY(tenant_id,owner_user_id) REFERENCES identity.users(tenant_id,user_id),
  FOREIGN KEY(tenant_id,character_id) REFERENCES identity.characters(tenant_id,character_id),
  CHECK(state NOT IN ('published','paused') OR published_at IS NOT NULL),
  UNIQUE(tenant_id,character_id,owner_user_id),
  UNIQUE(tenant_id,owner_user_id,draft_create_key)
);
CREATE UNIQUE INDEX creator_agent_public_handle
  ON creator.agents(tenant_id,lower(handle)) WHERE state IN ('published','paused');
CREATE INDEX creator_agents_by_owner
  ON creator.agents(tenant_id,owner_user_id,created_at DESC);

-- Bounded daily model calls: no free unlimited generation or retries.
CREATE TABLE creator.generation_attempts(
 tenant_id text NOT NULL,
 attempt_id uuid NOT NULL,
 owner_user_id text NOT NULL,
 character_id text NOT NULL,
 draft_revision bigint NOT NULL CHECK(draft_revision>0),
 attempted_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY(tenant_id,attempt_id),
 FOREIGN KEY(tenant_id,character_id,owner_user_id)
  REFERENCES creator.agents(tenant_id,character_id,owner_user_id)
);
CREATE INDEX creator_daily_generations
 ON creator.generation_attempts(tenant_id,owner_user_id,attempted_at DESC);

CREATE OR REPLACE FUNCTION creator.enforce_agent_owner()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NOT EXISTS (
   SELECT 1 FROM identity.character_ownership o
   WHERE o.tenant_id=NEW.tenant_id AND o.character_id=NEW.character_id
     AND o.owner_user_id=NEW.owner_user_id AND o.kind='creator-agent'
 ) THEN
   RAISE EXCEPTION 'creator_agent_owner_mismatch' USING ERRCODE='23514';
 END IF;
 IF TG_OP='UPDATE' AND
   (NEW.tenant_id IS DISTINCT FROM OLD.tenant_id
     OR NEW.character_id IS DISTINCT FROM OLD.character_id
     OR NEW.owner_user_id IS DISTINCT FROM OLD.owner_user_id
     OR NEW.draft_create_key IS DISTINCT FROM OLD.draft_create_key
     OR NEW.draft_request_hash IS DISTINCT FROM OLD.draft_request_hash
     OR NEW.created_at IS DISTINCT FROM OLD.created_at
     OR NEW.revision <> OLD.revision+1
     OR NEW.updated_at <= OLD.updated_at
     OR (OLD.published_at IS NOT NULL AND NEW.published_at IS DISTINCT FROM OLD.published_at)
   ) THEN
    RAISE EXCEPTION 'creator_agent_revision_invalid' USING ERRCODE='23514';
 END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER creator_agent_owner_guard
BEFORE INSERT OR UPDATE ON creator.agents
FOR EACH ROW EXECUTE FUNCTION creator.enforce_agent_owner();

-- Admin writes require audited application RBAC; no default price cache in mobile.
-- Visible integer MSNW units are converted to atomic amounts using verified asset precision at quote time.
CREATE TABLE creator.fee_policies(
  tenant_id text NOT NULL,
  revision bigint NOT NULL CHECK(revision>0),
  creation_msnw numeric(40,0) NOT NULL DEFAULT 5000 CHECK(creation_msnw>=0),
  first_free_count integer NOT NULL DEFAULT 1 CHECK(first_free_count BETWEEN 0 AND 10),
  free_substantive_edits integer NOT NULL DEFAULT 3 CHECK(free_substantive_edits BETWEEN 0 AND 100),
  paid_edit_msnw numeric(40,0) NOT NULL DEFAULT 100 CHECK(paid_edit_msnw>=0),
  revenue_share_bps integer NOT NULL DEFAULT 3000 CHECK(revenue_share_bps BETWEEN 0 AND 10000),
  max_posts_weekly integer NOT NULL DEFAULT 2 CHECK(max_posts_weekly BETWEEN 0 AND 21),
  effective_at timestamptz NOT NULL,
  actor_user_id text NOT NULL,
  reason text NOT NULL CHECK(length(trim(reason))>0),
  created_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY(tenant_id,revision),
  FOREIGN KEY(tenant_id) REFERENCES identity.tenants(tenant_id)
);
CREATE INDEX creator_policies_effective ON creator.fee_policies(tenant_id,effective_at DESC);

-- Free entitlement is consumed at most once per owner; retirement/deletion never resets it.
CREATE TABLE creator.first_free_publications(
  tenant_id text NOT NULL,
  owner_user_id text NOT NULL,
  character_id text NOT NULL,
  operation_id text NOT NULL,
  consumed_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY(tenant_id,owner_user_id),
  UNIQUE(tenant_id,operation_id),
  UNIQUE(tenant_id,character_id),
  FOREIGN KEY(tenant_id,character_id,owner_user_id)
    REFERENCES creator.agents(tenant_id,character_id,owner_user_id)
);

-- Financial captures / disputes must be backed by canonical Wallet ledger refs.
CREATE TABLE creator.operations(
  tenant_id text NOT NULL,
  operation_id text NOT NULL,
  owner_user_id text NOT NULL,
  character_id text NOT NULL,
  kind text NOT NULL CHECK(kind IN ('create','substantive-edit')),
  policy_revision bigint NOT NULL,
  msnw_atomic text NOT NULL CHECK(msnw_atomic ~ '^(0|[1-9][0-9]*)$'),
  state text NOT NULL CHECK(state IN ('quoted','reserved','captured','free_granted','reversed','failed')),
  wallet_ledger_ref text,
  authorization_ref text,
  expires_at timestamptz,
  idempotency_key text NOT NULL,
  request_hash text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY(tenant_id,operation_id),
  UNIQUE(tenant_id,owner_user_id,kind,idempotency_key),
  FOREIGN KEY(tenant_id,character_id,owner_user_id)
    REFERENCES creator.agents(tenant_id,character_id,owner_user_id),
  CHECK(state NOT IN ('captured','reversed') OR wallet_ledger_ref IS NOT NULL),
  CHECK(state <> 'quoted' OR (authorization_ref IS NOT NULL AND expires_at IS NOT NULL))
);

CREATE TABLE creator.substantive_edits(
 tenant_id text NOT NULL,
 character_id text NOT NULL,
 editor_user_id text NOT NULL,
 revision bigint NOT NULL,
 operation_id text NOT NULL,
 completed_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY(tenant_id,character_id,revision),
 UNIQUE(tenant_id,operation_id),
 FOREIGN KEY(tenant_id,character_id,editor_user_id)
   REFERENCES creator.agents(tenant_id,character_id,owner_user_id)
);

-- Never store reference/consent raw audio in the public identity/profile table.
CREATE TABLE creator.voice_references(
 tenant_id text NOT NULL,
 reference_id text NOT NULL,
 character_id text NOT NULL,
 owner_user_id text NOT NULL,
 provider text NOT NULL CHECK(provider IN ('google')),
 provider_voice_id text,
 consent_receipt_id text NOT NULL,
 is_adult_attested boolean NOT NULL DEFAULT false,
 state text NOT NULL CHECK(state IN ('processing','ready','failed','revoked')),
 deletion_requested_at timestamptz,
 created_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY(tenant_id,reference_id),
 FOREIGN KEY(tenant_id,character_id,owner_user_id)
  REFERENCES creator.agents(tenant_id,character_id,owner_user_id)
);
CREATE INDEX creator_voice_refs_by_owner ON creator.voice_references(tenant_id,owner_user_id,character_id);

CREATE TABLE creator.earning_allocations(
 tenant_id text NOT NULL,
 allocation_id text NOT NULL,
 character_id text NOT NULL,
 owner_user_id text NOT NULL,
 usage_receipt_id text NOT NULL,
 source_wallet_ledger_ref text NOT NULL,
 policy_revision bigint NOT NULL,
 contribution_atomic text NOT NULL CHECK(contribution_atomic ~ '^(0|[1-9][0-9]*)$'),
 creator_share_atomic text NOT NULL CHECK(creator_share_atomic ~ '^(0|[1-9][0-9]*)$'),
 state text NOT NULL CHECK(state IN ('pending','settled','reversed')),
 creator_wallet_ledger_ref text,
 created_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY(tenant_id,allocation_id),
 UNIQUE(tenant_id,usage_receipt_id),
 FOREIGN KEY(tenant_id,character_id,owner_user_id)
  REFERENCES creator.agents(tenant_id,character_id,owner_user_id),
 CHECK(state <> 'settled' OR creator_wallet_ledger_ref IS NOT NULL)
);
CREATE INDEX creator_earnings_owner ON creator.earning_allocations(tenant_id,owner_user_id,created_at DESC);
