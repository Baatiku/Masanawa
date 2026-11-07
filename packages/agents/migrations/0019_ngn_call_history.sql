ALTER TABLE agents.masana_call_history ADD COLUMN ngn_admission_id text;
CREATE UNIQUE INDEX masana_call_history_ngn_admission ON agents.masana_call_history(tenant_id,user_id,ngn_admission_id) WHERE ngn_admission_id IS NOT NULL;
ALTER TABLE agents.masana_call_history ADD CONSTRAINT call_history_one_currency CHECK(mb_admission_id IS NULL OR ngn_admission_id IS NULL);
