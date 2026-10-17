-- Account controls are support/operator-authored; never customer supplied.
-- Allows an existing authenticated user to see a restriction while all
-- sensitive spending routes fail closed. Ordinary authentication for suspended
-- accounts is rejected. The financial recovery hold also follows PIN reset.
CREATE TABLE IF NOT EXISTS security.platform_account_controls(
  tenant_id text NOT NULL,
  user_id text NOT NULL,
  state text NOT NULL CHECK(state IN ('restricted','suspended','recovery')),
  reason_code text NOT NULL CHECK(length(reason_code) BETWEEN 3 AND 80),
  until_at timestamptz,
  updated_at timestamptz NOT NULL,
  PRIMARY KEY(tenant_id,user_id),
  FOREIGN KEY(tenant_id,user_id)
    REFERENCES security.platform_user_profiles(tenant_id,user_id)
);
