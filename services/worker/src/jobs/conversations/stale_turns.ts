import type { Pool } from "@masanawa/postgres";

/**
 * A crashed Gateway can leave a claimed turn pending indefinitely. After an
 * intentionally conservative 30-minute grace period, resolve it to a terminal
 * failure and publish a scoped status event. Never re-run inference here:
 * doing so could repeat an externally authorized action or a paid call.
 * SKIP LOCKED lets multiple Worker replicas reconcile without duplicates.
 */
export function createStaleConversationTurnRecovery(pool: Pick<Pool, "query">) {
  return Object.freeze({
    async runOnce(): Promise<{ recovered: number }> {
      const result = await pool.query<{ request_id: string }>(`
        WITH stale AS (
          SELECT tenant_id, request_id
            FROM agents.mobile_turn_commands
           WHERE state = 'pending'
             AND updated_at < clock_timestamp() - INTERVAL '30 minutes'
           ORDER BY updated_at, request_id
           LIMIT 50 FOR UPDATE SKIP LOCKED
        ), recovered AS (
          UPDATE agents.mobile_turn_commands AS t
             SET state = 'failed',
                 failure_code = 'agents.turn_interrupted',
                 updated_at = clock_timestamp()
            FROM stale AS s
           WHERE t.tenant_id = s.tenant_id
             AND t.request_id = s.request_id
             AND t.state = 'pending'
          RETURNING t.tenant_id, t.user_id, t.character_id,
                    t.relationship_id, t.character_session_id, t.request_id
        )
        INSERT INTO agents.mobile_shell_events
          (tenant_id, user_id, character_id, relationship_id,
           character_session_id, event_type, payload)
        SELECT tenant_id, user_id, character_id, relationship_id,
               character_session_id, 'turn.failed',
               jsonb_build_object('requestId', request_id,
                                  'failureCode', 'agents.turn_interrupted')
          FROM recovered
        RETURNING payload ->> 'requestId' AS request_id
      `);
      return { recovered: result.rows.length };
    },
  });
}
