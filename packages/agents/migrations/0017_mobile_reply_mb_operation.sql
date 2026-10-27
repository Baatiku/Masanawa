-- Nullable preserves legacy turns without inventing historic MB charges.
ALTER TABLE agents.mobile_turn_commands ADD COLUMN mb_reply_operation_id text;
CREATE UNIQUE INDEX mobile_reply_mb_operation_unique
  ON agents.mobile_turn_commands(tenant_id,mb_reply_operation_id)
  WHERE mb_reply_operation_id IS NOT NULL;
CREATE INDEX mobile_reply_recovery_idx
  ON agents.mobile_turn_commands(created_at)
  WHERE state='pending' AND mb_reply_operation_id IS NOT NULL;
