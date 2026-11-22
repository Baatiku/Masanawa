-- Owner decision, 22 November 2026: AI chats, voice notes and calls are free
-- unless an authorized administrator explicitly opts into usage billing.
-- This forward-only cutover preserves agreed historical holds and receipts.
-- Stored NGN tariffs remain available for a future billing opt-in.
ALTER TABLE gb_wallet.platform_usage_billing
  ALTER COLUMN billing_enabled SET DEFAULT false;

-- Explicitly disable previously enabled tenant policies, including policies
-- written by the old paid-by-default implementation. Every revision is audited.
-- Already-admitted charged calls and reserved replies retain their original
-- pricing and settle against their original receipts.
WITH previous AS (
  SELECT tenant_id, revision, reply_kobo, call_kobo_per_started_second
  FROM gb_wallet.platform_usage_billing
  WHERE billing_enabled = true
  FOR UPDATE
), disabled AS (
  UPDATE gb_wallet.platform_usage_billing AS p
  SET billing_enabled = false,
      revision = previous.revision + 1,
      updated_by = 'system_free_default_20261122',
      updated_at = clock_timestamp()
  FROM previous
  WHERE p.tenant_id = previous.tenant_id
    AND p.revision = previous.revision
  RETURNING p.tenant_id, p.revision AS new_revision,
            previous.revision AS old_revision,
            previous.reply_kobo,
            previous.call_kobo_per_started_second
)
INSERT INTO gb_wallet.platform_usage_billing_audit (
  tenant_id, revision, actor_id, old_policy, new_policy
)
SELECT tenant_id, new_revision, 'system_free_default_20261122',
       jsonb_build_object(
         'billingEnabled', true,
         'replyKobo', reply_kobo,
         'callKoboPerStartedSecond', call_kobo_per_started_second,
         'revision', old_revision
       ),
       jsonb_build_object(
         'billingEnabled', false,
         'replyKobo', reply_kobo,
         'callKoboPerStartedSecond', call_kobo_per_started_second,
         'revision', new_revision
       )
FROM disabled;
