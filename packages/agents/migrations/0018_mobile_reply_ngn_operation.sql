ALTER TABLE agents.mobile_turn_commands ADD COLUMN ngn_reply_operation_id text;
ALTER TABLE agents.mobile_turn_commands ADD CONSTRAINT mobile_reply_one_currency CHECK(num_nonnulls(mb_reply_operation_id,ngn_reply_operation_id)<=1);
CREATE UNIQUE INDEX mobile_turn_ngn_reply_operation ON agents.mobile_turn_commands(tenant_id,ngn_reply_operation_id) WHERE ngn_reply_operation_id IS NOT NULL;
CREATE INDEX mobile_turn_ngn_reply_recovery ON agents.mobile_turn_commands(created_at) WHERE state='pending' AND ngn_reply_operation_id IS NOT NULL;
