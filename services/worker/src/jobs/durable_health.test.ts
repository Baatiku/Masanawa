import { describe, expect, it, vi } from "vitest";
import { createDurableJobHealth } from "./durable_health.js";

describe("durable operational backlog authority", () => {
  const complete = [
    { queue: "scheduled_feed", pending: "2", oldest_seconds: "690" },
    { queue: "p2p_expiry", pending: "0", oldest_seconds: "0" },
    { queue: "p2p_dead_letter", pending: "1", oldest_seconds: "0" },
    { queue: "p2p_custody_anomalies", pending: "0", oldest_seconds: "0" },
  ] as const;

  function fixture(rows: readonly { queue: string; pending: string; oldest_seconds: string }[]) {
    const release = vi.fn();
    const query = vi.fn(async (sql: string) => ({
      rows: sql.includes("SELECT 'scheduled_feed'") ? rows : [],
    }));
    const connect = vi.fn(async () => ({ query, release }));
    return { pool: { connect } as never, release, query, connect };
  }

  it("executes one read-only bounded PostgreSQL transaction and returns no identities", async () => {
    const mock = fixture(complete);
    const reported = await createDurableJobHealth(mock.pool).read();
    expect(reported).toEqual([
      { name: "db_scheduled_feed", stuck: 2, oldestPendingSeconds: 690 },
      { name: "db_p2p_expiry", stuck: 0, oldestPendingSeconds: 0 },
      { name: "db_p2p_dead_letter", stuck: 1, oldestPendingSeconds: 0 },
      { name: "db_p2p_custody_anomalies", stuck: 0, oldestPendingSeconds: 0 },
    ]);
    const calls = mock.query.mock.calls.map((x) => String(x[0]));
    expect(calls[0]).toBe("BEGIN READ ONLY");
    expect(calls[1]).toBe("SET LOCAL statement_timeout = '4s'");
    expect(calls.at(-1)).toBe("COMMIT");
    expect(calls[2]).toContain("FROM feed.posts");
    expect(calls[2]).toContain("FROM commerce.msnw_p2p_orders");
    expect(calls[2]).toContain("FROM events.outbox");
    expect(calls[2]).toContain("commerce.msnw_p2p_reconciliation_counts(NULL::text)");
    expect(calls[2]).not.toMatch(/DELETE|UPDATE|INSERT|FOR UPDATE/i);
    expect(mock.release).toHaveBeenCalledTimes(1);
  });

  it("rolls back on missing rows or invalid counters, then releases connection", async () => {
    for (const rows of [
      complete.slice(0, 3),
      [...complete.slice(0, 3), { ...complete[3], pending: "-1" }],
      [...complete.slice(0, 3), { ...complete[3], pending: "9999999999999999999999" }],
      [complete[0], complete[0], complete[1], complete[2]],
    ]) {
      const mock = fixture(rows);
      await expect(createDurableJobHealth(mock.pool).read()).rejects.toThrow();
      expect(mock.query.mock.calls.map((x) => x[0])).toContain("ROLLBACK");
      expect(mock.release).toHaveBeenCalledTimes(1);
    }
  });

  it("does not convert SQL failures into an empty healthy report", async () => {
    const release = vi.fn();
    const query = vi.fn(async (sql: string) => {
      if (sql.includes("SELECT 'scheduled_feed'")) throw Error("secret DB connection");
      return { rows: [] };
    });
    const connect = vi.fn(async () => ({ query, release }));
    await expect(createDurableJobHealth({ connect } as never).read()).rejects.toThrow();
    expect(query.mock.calls.map(x => x[0])).toContain("ROLLBACK");
    expect(release).toHaveBeenCalledTimes(1);
  });
});
