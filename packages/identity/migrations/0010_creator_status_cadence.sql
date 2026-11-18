-- Durable recurring creator Status drafts. Publication remains editorially reviewed.
CREATE TABLE creator.status_jobs (
 tenant_id text NOT NULL,job_id uuid NOT NULL DEFAULT gen_random_uuid(),
 character_id text NOT NULL,owner_user_id text NOT NULL,expected_revision bigint NOT NULL,
 profile jsonb NOT NULL,rights_note text NOT NULL,
 state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','working','completed','cancelled')),
 fence bigint NOT NULL DEFAULT 0,attempt integer NOT NULL DEFAULT 0,
 available_at timestamptz NOT NULL DEFAULT now(),lease_until timestamptz,
 post_id uuid,created_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY(tenant_id,job_id),
 FOREIGN KEY(tenant_id,character_id,owner_user_id) REFERENCES creator.agents(tenant_id,character_id,owner_user_id)
);
CREATE INDEX creator_status_due ON creator.status_jobs(available_at,created_at) WHERE state IN ('pending','working');
