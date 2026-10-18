import { describe, expect, it } from "vitest";
import { createMsnwCustodyService } from "./custody_send.js";

const owner = { tenantId: "tenant-1", userId: "sender-1" };
const key = "existing-sent-key-123456";
const completed = {
  operation_id: "operation-1", recipient_user_id: "recipient-1",
  amount_micro: "1500000", created_at: "2026-10-18T07:00:00.000Z",
};

describe("durable MSNW Send replay and lookup", () => {
  it("replays the committed transfer without re-resolving a changed recipient or issuing another debit", async () => {
    const sql: string[] = [];
    const db = {
      async query(statement: string) {
        sql.push(statement);
        if (statement === "BEGIN" || statement === "COMMIT") return { rowCount: 0, rows: [] };
        if (statement.includes("pg_advisory_xact_lock")) return { rowCount: 1, rows: [] };
        if (statement.includes("idempotency_key=$3 FOR UPDATE"))
          return { rowCount: 1, rows: [completed] };
        throw new Error("Unexpected SQL: " + statement);
      },
      release() {},
    };
    const ledger = createMsnwCustodyService({
      async connect() { return db; },
      async query() { throw new Error("recipient lookup would fail"); },
    } as any);
    const receipt = await ledger.send(owner, {
      recipient: "old-address@example.com", recipientUserId: "recipient-1",
      amountMicro: "1500000", idempotencyKey: key,
    });
    expect(receipt).toMatchObject({
      operationId: "operation-1", state: "completed", asset: "MSNW",
      recipientUserId: "recipient-1", amountMicro: "1500000",
    });
    expect(sql).toHaveLength(4);
    expect(sql.at(-1)).toBe("COMMIT");
    expect(sql.every((s) => !s.includes("UPDATE commerce.msnw_custody_accounts"))).toBe(true);
  });

  it("rejects conflicting replays under the original owner/key lock", async () => {
    let rolledBack = false;
    const db = {
      async query(statement: string) {
        if (statement === "ROLLBACK") { rolledBack = true; return {}; }
        if (statement.includes("idempotency_key=$3 FOR UPDATE"))
          return { rowCount: 1, rows: [completed] };
        return { rowCount: 0, rows: [] };
      },
      release() {},
    };
    const ledger = createMsnwCustodyService({
      async connect() { return db; },
      async query() { throw new Error("must not resolve"); },
    } as any);
    await expect(ledger.send(owner, {
      recipient: "old-address@example.com", recipientUserId: "different-user",
      amountMicro: "1500000", idempotencyKey: key,
    })).rejects.toMatchObject({
      code: "msnw.idempotency_conflict", statusCode: 409,
    });
    expect(rolledBack).toBe(true);
  });

  it("looks up outcomes by tenant, authenticated sender and original key only", async () => {
    const observed: unknown[][] = [];
    const ledger = createMsnwCustodyService({
      async query(sql: string, params: unknown[]) {
        if (!sql.includes("actor_user_id=$2") ||
            !sql.includes("tenant_id=$1") || !sql.includes("kind='send'"))
          throw new Error("lookup not owner-scoped");
        observed.push(params);
        return params[0] === owner.tenantId
          ? { rowCount: 1, rows: [completed] }
          : { rowCount: 0, rows: [] };
      },
      async connect() { throw new Error("lookup must be read-only"); },
    } as any);
    expect((await ledger.lookup(owner, key))?.operationId).toBe("operation-1");
    expect(await ledger.lookup({ ...owner, tenantId: "tenant-2" }, key)).toBeNull();
    expect(observed).toEqual([
      ["tenant-1", "sender-1", key],
      ["tenant-2", "sender-1", key],
    ]);
    await expect(ledger.lookup(owner, "bad")).rejects.toMatchObject({
      code: "msnw.idempotency_key_invalid", statusCode: 400,
    });
  });
});
