import { describe, expect, it, vi } from "vitest";
import { createStaleConversationTurnRecovery } from "./stale_turns.js";

describe("crash-safe Masana conversation recovery", () => {
  it("only reconciles old pending commands, emits one scoped event and never reruns inference", async () => {
    const query = vi.fn(async (sql: string) => {
      expect(sql).toContain("updated_at < clock_timestamp() - INTERVAL '30 minutes'");
      expect(sql).toContain("FOR UPDATE SKIP LOCKED");
      expect(sql).toContain("t.state = 'pending'");
      expect(sql).toContain("INSERT INTO agents.mobile_shell_events");
      expect(sql).toContain("'turn.failed'");
      expect(sql).toContain("'agents.turn_interrupted'");
      expect(sql).toContain("LIMIT 50");
      return { rows: [{ request_id: "request_1" }] };
    });
    const job = createStaleConversationTurnRecovery({ query } as never);
    expect(await job.runOnce()).toEqual({ recovered: 1 });
    expect(query).toHaveBeenCalledTimes(1);
  });
  it("does not fabricate recovery from an empty batch", async () => {
    const job = createStaleConversationTurnRecovery({
      query: async () => ({ rows: [] }),
    } as never);
    expect(await job.runOnce()).toEqual({ recovered: 0 });
  });
  it("propagates PostgreSQL failures for scheduler retry without false receipts", async () => {
    const job = createStaleConversationTurnRecovery({
      query: async () => { throw new Error("database_unavailable"); },
    } as never);
    await expect(job.runOnce()).rejects.toThrow("database_unavailable");
  });
});
