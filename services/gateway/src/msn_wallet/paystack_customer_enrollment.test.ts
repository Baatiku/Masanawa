import { describe, expect, it } from "vitest";
import { createMsnwPaystackEnrollmentService } from "./paystack_customer_enrollment.js";

const owner = {
  tenantId: "tenant-1",
  userId: "user-1",
  profile: {
    tenantId: "tenant-1", userId: "user-1",
    email: "owner@example.com", phone: "+2348012345678",
    name: "Amina Yusuf", locale: "en", createdAt: new Date().toISOString(),
  },
} as const;
const details = {
  consent: true, bvn: "22222222222",
  accountNumber: "0123456789", bankCode: "007",
};

function scenario() {
  let row: Record<string, unknown> | null = null;
  let dva: Record<string, unknown> | null = null;
  let identified = false;
  const calls: string[] = [];
  const queries: string[] = [];
  const pool = {
    async query(sql: string, values: unknown[] = []) {
      queries.push(sql);
      if (sql.includes("FROM commerce.msnw_paystack_customer_onboarding") &&
          sql.startsWith("SELECT")) return {
        rows: row ? [row] : [], rowCount: row ? 1 : 0,
      };
      if (sql.startsWith("INSERT INTO commerce.msnw_paystack_customer_onboarding")) {
        if (!row) row = {
          state: "preparing", email: values[2], phone: values[3],
          legal_name: values[4], customer_id: null, customer_code: null,
        };
        return { rows: [], rowCount: 1 };
      }
      if (sql.startsWith("UPDATE commerce.msnw_paystack_customer_onboarding")) {
        if (sql.includes("state='creating'") && row?.state === "preparing") {
          row.state = "creating";
          return { rows: [{ state: "creating" }], rowCount: 1 };
        }
        if (sql.includes("state='created'") && row?.state === "creating") {
          row.state = "created"; row.customer_id = String(values[2]);
          row.customer_code = values[3];
          return { rows: [{ customer_id: values[2] }], rowCount: 1 };
        }
        if (sql.includes("state='validating'") && row?.state === "created") {
          row.state = "validating";
          return { rows: [{ customer_code: row.customer_code }], rowCount: 1 };
        }
        if (sql.includes("state='verified'") && row &&
            ["validating", "verified"].includes(String(row.state))) {
          row.state = "verified";
          return { rows: [], rowCount: 1 };
        }
        return { rows: [], rowCount: 0 };
      }
      if (sql.startsWith("INSERT INTO commerce.msnw_paystack_dva")) {
        if (row?.state === "verified" && !dva)
          dva = { customer_id: row.customer_id };
        return { rows: [], rowCount: dva ? 1 : 0 };
      }
      if (sql.includes("FROM commerce.msnw_paystack_dva"))
        return { rows: dva ? [dva] : [], rowCount: dva ? 1 : 0 };
      throw new Error("Unexpected SQL " + sql);
    },
  };
  const fetchImpl = async (url: string, init?: RequestInit): Promise<Response> => {
    const path = new URL(url).pathname;
    calls.push((init?.method ?? "GET") + " " + path);
    const ok = (data: unknown) => new Response(JSON.stringify({ status: true, data }), {
      status: 200, headers: { "content-type": "application/json" },
    });
    const found = { id: 321, customer_code: "CUS_test321", email: owner.profile.email,
      identified };
    if (path === "/customer/owner%40example.com")
      return new Response("", { status: 404 });
    if (path === "/customer" && init?.method === "POST") return ok(found);
    if (path === "/customer/CUS_test321/identification" && init?.method === "POST")
      return ok({});
    if (path === "/customer/CUS_test321") return ok(found);
    throw new Error("Unexpected provider request " + path);
  };
  const sessions = {
    async authorize({ authorizationHeader }: { authorizationHeader?: string }) {
      if (authorizationHeader !== "Bearer logged-in") throw new Error("auth");
      return owner;
    },
  };
  const service = createMsnwPaystackEnrollmentService({
    pool, sessions, paystackSecretKey: "sk_test_testing123",
    fetchImpl: fetchImpl as typeof fetch,
  });
  return { service, calls, queries, setIdentified: (v: boolean) => { identified = v; } };
}

describe("MSNW Paystack customer identity enrollment", () => {
  it("creates one customer, submits identity once, and only then provisions DVA", async () => {
    const test = scenario();
    expect(await test.service.read(owner)).toEqual({ state: "identity_details_required" });
    expect(await test.service.submit(owner, details))
      .toEqual({ state: "identity_validation_pending" });
    expect(test.calls.filter(x => x === "POST /customer")).toHaveLength(1);
    expect(test.calls.filter(x => x.includes("/identification"))).toHaveLength(1);
    expect(await test.service.read(owner))
      .toEqual({ state: "identity_validation_pending" });
    expect(await test.service.submit(owner, details))
      .toEqual({ state: "identity_validation_pending" });
    expect(test.calls.filter(x => x === "POST /customer")).toHaveLength(1);
    expect(test.calls.filter(x => x.includes("/identification"))).toHaveLength(1);
    expect(test.queries.some(x => x.includes("INSERT INTO commerce.msnw_paystack_dva")))
      .toBe(false);
    test.setIdentified(true);
    expect(await test.service.read(owner))
      .toEqual({ state: "ready_for_bank_account" });
    expect(test.queries.some(x => x.includes("INSERT INTO commerce.msnw_paystack_dva")))
      .toBe(true);
    expect(test.queries.join("\n")).not.toContain(details.bvn);
    expect(test.queries.join("\n")).not.toContain(details.accountNumber);
  });

  it("rejects invalid or non-consented identity without a provider request", async () => {
    const test = scenario();
    await expect(test.service.submit(owner, { ...details, consent: false }))
      .rejects.toMatchObject({ code: "funding.bank_identity_invalid", statusCode: 400 });
    await expect(test.service.submit(owner, { ...details, bvn: "invalid" }))
      .rejects.toMatchObject({ code: "funding.bank_identity_invalid", statusCode: 400 });
    expect(test.calls).toHaveLength(0);
  });

  it("refuses account identity changes instead of attaching a prior customer", async () => {
    const test = scenario();
    await test.service.submit(owner, details);
    await expect(test.service.read({
      ...owner, profile: { ...owner.profile, email: "changed@example.com" },
    })).rejects.toMatchObject({ code: "funding.identity_changed" });
  });
});
