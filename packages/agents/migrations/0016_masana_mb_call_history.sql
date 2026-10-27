-- Historical client-reported calls remain immutable evidence of their own era.
ALTER TABLE agents.masana_call_history ADD COLUMN mb_admission_id text;
CREATE UNIQUE INDEX masana_call_mb_admission_unique
  ON agents.masana_call_history(tenant_id,user_id,mb_admission_id)
  WHERE mb_admission_id IS NOT NULL;
