import { describe, expect, it } from "vitest";
import { ensureMsnwFundingObligation, listMsnwFundingObligations } from "./funding_obligations.js";

const receipt = {
  reference: "PS-txn-one", tenant_id: "tenant-one", user_id: "user-one",
  amount_kobo: "500000", paystack_evidence_sha256: "a".repeat(64),
};
function database() {
  const saved = new Map<string, Record<string, unknown>>();
  const evidence = new Map([[receipt.reference, receipt]]);
  const pool = {
    async query(sql: string, params: unknown[] = []) {
      if (sql.includes("INSERT INTO commerce.msnw_funding_obligations")) {
        const proof = evidence.get(String(params[0]));
        if (proof && proof.tenant_id === params[1] && proof.user_id === params[2]) {
          if (!saved.has(proof.reference))
            saved.set(proof.reference, { ...proof, registered_at: new Date() });
        }
        return { rows: [], rowCount: 0 };
      }
      if (sql.includes("WHERE reference=$1")) {
        const v = saved.get(String(params[0]));
        return { rows: v ? [v] : [], rowCount: v ? 1 : 0 };
      }
      if (sql.includes("FROM commerce.msnw_funding_obligations")) {
        const v = [...saved.values()].filter(x =>
          x.tenant_id === params[0] && x.user_id === params[1]);
        return { rows: v, rowCount: v.length };
      }
      throw new Error("unexpected SQL");
    },
  };
  return { pool, saved };
}

describe("MSNW immutable funding obligations", () => {
  it("registers one Paystack-backed obligation, survives exact replay and does not mint MSNW", async () => {
    const { pool, saved } = database();
    const input = { tenantId: "tenant-one", userId: "user-one", reference: "PS-txn-one" };
    expect(await ensureMsnwFundingObligation(pool, input)).toEqual({
      reference: "PS-txn-one", amountKobo: "500000", state: "backing_pending",
    });
    expect(await ensureMsnwFundingObligation(pool, input)).toEqual({
      reference: "PS-txn-one", amountKobo: "500000", state: "backing_pending",
    });
    expect(saved.size).toBe(1);
    expect(await listMsnwFundingObligations(pool, "tenant-one", "user-one"))
      .toMatchObject([{ amountKobo: "500000", state: "backing_pending" }]);
  });
  it("rejects missing provider evidence and wrong owner", async () => {
    const { pool } = database();
    await expect(ensureMsnwFundingObligation(pool, {
      tenantId: "tenant-one", userId: "user-one", reference: "unknown",
    })).rejects.toThrow("msnw.obligation.owner_or_evidence_conflict");
    await expect(ensureMsnwFundingObligation(pool, {
      tenantId: "tenant-one", userId: "other-user", reference: "PS-txn-one",
    })).rejects.toThrow("msnw.obligation.owner_or_evidence_conflict");
  });
  it("cannot reassign an existing obligation to another principal", async () => {
    const { pool } = database();
    await ensureMsnwFundingObligation(pool, {
      tenantId: "tenant-one", userId: "user-one", reference: "PS-txn-one",
    });
    await expect(ensureMsnwFundingObligation(pool, {
      tenantId: "tenant-one", userId: "user-two", reference: "PS-txn-one",
    })).rejects.toThrow("msnw.obligation.owner_or_evidence_conflict");
  });
});
