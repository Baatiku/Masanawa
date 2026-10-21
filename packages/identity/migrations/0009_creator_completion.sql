-- Creator scheduling and immutable, exact revision proposals. No financial balances.
ALTER TABLE creator.agents ADD COLUMN status_rights_note text;
ALTER TABLE creator.operations ADD COLUMN proposal jsonb;
ALTER TABLE creator.operations ADD COLUMN expected_revision bigint;
-- Revoke catalogue authorization first; failed object deletions remain retryable.
CREATE TABLE creator.media_deletions(
 tenant_id text NOT NULL,media_id text NOT NULL,owner_user_id text NOT NULL,
 object_key text NOT NULL,completed_at timestamptz,created_at timestamptz NOT NULL DEFAULT now(),
 PRIMARY KEY(tenant_id,media_id),
 FOREIGN KEY(tenant_id,owner_user_id) REFERENCES identity.users(tenant_id,user_id)
);
