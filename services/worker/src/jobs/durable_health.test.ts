import { describe, expect, it, vi } from "vitest";
import { createDurableJobHealth } from "./durable_health.js";

describe("durable operational backlog authority", () => {
  const complete = [
    { queue: "scheduled_feed", pending: "2", oldest_seconds: "690" },
    { queue: "p2p_expiry", pending: "0", oldest_seconds: "0" },
    { queue: "p2p_dead_letter", pending: "1", oldest_seconds: "0" },
    { queue: "p2p_custody_anomalies", pending: "0", oldest_seconds: "0" },
  ];

  it("queries canonical tables only and returns aggregate ages/counts, not identities", async () => {
    const query = vi.fn(async (_sql: string) => ({ rows: complete }));
    const reported = await createDurableJobHealth({ query } as never).read();
    expect(reported).toEqual([
      { name: "db_scheduled_feed", stuck: 2, oldestPendingSeconds: 690 },
      { name: "db_p2p_expiry", stuck: 0, oldestPendingSeconds: 0 },
      { name: "db_p2p_dead_letter", stuck: 1, oldestPendingSeconds: 0 },
      { name: "db_p2p_custody_anomalies", stuck: 0, oldestPendingSeconds: 0 },
    ]);
    const sql = String(query.mock.calls[0]?.[0]);
    expect(sql).toContain("FROM feed.posts");
    expect(sql).toContain("FROM commerce.msnw_p2p_orders");
    expect(sql).toContain("FROM events.outbox");
    expect(sql).toContain("commerce.msnw_p2p_reconciliation_counts(NULL::text)");
    expect(sql).not.toMatch(/DELETE|UPDATE|INSERT|FOR UPDATE/i);
  });

  it("fails closed for missing rows, negative counters and schema drift", async () => {
    for (const rows of [
      complete.slice(0, 3),
      [...complete.slice(0, 3), { ...complete[3], pending: "-1" }],
      [...complete.slice(0, 3), { ...complete[3], pending: "9999999999999999999999" }],
      [complete[0], complete[0], complete[1], complete[2]],
    ]) {
      const query = vi.fn(async () => ({ rows }));
      await expect(createDurableJobHealth({ query } as never).read()).rejects.toThrow();
    }
  });

  it("does not convert a database outage into a healthy empty list", async () => {
    const query = vi.fn(async () => { throw Error("secret db URL"); });
    await expect(createDurableJobHealth({ query } as never).read()).rejects.toThrow();
  });
});
