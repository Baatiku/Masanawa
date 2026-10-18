import type { Pool } from "@masanawa/postgres";

export interface DurableQueueHealth {
  readonly name: string;
  readonly stuck: number;
  readonly oldestPendingSeconds: number;
}

function count(value: unknown): number {
  const parsed = typeof value === "string" && /^[0-9]+$/.test(value)
    ? Number(value) : value;
  if (typeof parsed !== "number" || !Number.isSafeInteger(parsed) || parsed < 0) {
    throw new Error("durable_job_health_invalid");
  }
  return parsed;
}

/**
 * Read-only aggregate over canonical durable job state, not a new queue.
 * Fails closed if a table/migration is absent, rather than claiming healthy.
 * SQL returns no tenant, identity, order details, amounts or tokens.
 */
export function createDurableJobHealth(pool: Pick<Pool, "query">) {
  return Object.freeze({
    async read(): Promise<readonly DurableQueueHealth[]> {
      const result = await pool.query<{
        queue: string; pending: string; oldest_seconds: string;
      }>(String.raw`
        SELECT 'scheduled_feed' AS queue,
          count(*)::text AS pending,
          coalesce(greatest(0, floor(extract(epoch from
            (statement_timestamp() - min(scheduled_at))))),0)::text AS oldest_seconds
        FROM feed.posts WHERE state='scheduled' AND scheduled_at < statement_timestamp()
        UNION ALL
        SELECT 'p2p_expiry',
          count(*)::text,
          coalesce(greatest(0, floor(extract(epoch from
            (statement_timestamp() - min(payment_deadline))))),0)::text
        FROM commerce.msnw_p2p_orders
        WHERE state='awaiting_payment' AND payment_deadline < statement_timestamp()
        UNION ALL
        SELECT 'p2p_dead_letter', count(*)::text, 0::text
        FROM events.outbox
        WHERE destination='notifications.p2p' AND state='dead-letter'
        UNION ALL
        SELECT 'p2p_custody_anomalies',
          (inconsistent_orders + under_reserved_sellers + undelivered_dead_letters)::text,
          0::text
        FROM commerce.msnw_p2p_reconciliation_counts(NULL::text)
      `);
      const names = new Set(["scheduled_feed", "p2p_expiry", "p2p_dead_letter", "p2p_custody_anomalies"]);
      if (result.rows.length !== 4) throw new Error("durable_job_health_incomplete");
      const output: DurableQueueHealth[] = [];
      for (const row of result.rows) {
        if (!names.delete(row.queue)) throw new Error("durable_job_health_invalid");
        output.push({
          name: "db_" + row.queue,
          stuck: count(row.pending),
          oldestPendingSeconds: count(row.oldest_seconds),
        });
      }
      return output;
    },
  });
}
