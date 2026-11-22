import { afterEach, describe, expect, it } from "vitest";
import { createOpsApp } from "./app.js";
import { OpsAdminAccessError, type OpsAdminDashboardService } from "./admin_dashboard.js";

const apps: Array<ReturnType<typeof createOpsApp>> = [];
afterEach(async () => { await Promise.all(apps.splice(0).map(app => app.close())); });

function operator() {
  return {
    authorize: async ({ authorizationHeader, capability }: { authorizationHeader: string | undefined; capability: string }) => {
      if (authorizationHeader !== "Bearer valid-admin") throw new OpsAdminAccessError(401, "Admin sign-in required");
      if (capability !== "runtime.read") throw new OpsAdminAccessError(403, "Capability denied");
      return { tenantId: "tenant_test", actorId: "user_test", name: "Admin", capabilities: ["runtime.read"] };
    },
  } as unknown as OpsAdminDashboardService;
}

describe("administrator service health", () => {
  it("rejects unauthenticated clients before running dependency checks", async () => {
    let called = false;
    const app = createOpsApp({
      adminDashboard: operator(),
      serviceHealthChecks: [{ name: "never probed", check: async () => { called = true; return { ready: true }; } }],
    });
    apps.push(app);
    const response = await app.inject({ method: "GET", url: "/v1/admin/health" });
    expect(response.statusCode).toBe(401);
    expect(called).toBe(false);
  });

  it("reports dependency failures with safe labels and does not leak private exceptions", async () => {
    const app = createOpsApp({
      adminDashboard: operator(),
      readinessChecks: [{ name: "PostgreSQL", check: async () => ({ ready: true }) }],
      serviceHealthChecks: [
        { name: "Gateway readiness", check: async () => { throw new Error("private-secret-from-provider"); } },
      ],
      runtimeMetadata: {
        providers: [{ name: "Gemini", configured: true, verification: "not_checked" }],
      release: { opsSha: "a".repeat(40) },
        flags: [{ name: "MASANAWA_NGN_CALLS_ENABLED", enabled: false }],
        releaseSha: "a".repeat(40),
      },
    });
    apps.push(app);
    const response = await app.inject({
      method: "GET", url: "/v1/admin/health",
      headers: { authorization: "Bearer valid-admin" },
    });
    expect(response.statusCode).toBe(200);
    expect(response.json()).toMatchObject({
      status: "degraded",
      checks: [
        { name: "Ops lifecycle", ready: true },
        { name: "PostgreSQL", ready: true },
        { name: "Gateway readiness", ready: false, detail: "Timed out or unavailable" },
      ],
      providers: [{ name: "Gemini", configured: true, verification: "not_checked" }],
    });
    expect(response.headers["cache-control"]).toContain("private, no-store");
    expect(response.body).not.toContain("private-secret-from-provider");
  });
});

describe("safe release evidence", () => {
  it("never exposes arbitrary runtime metadata as a release SHA", async () => {
    const app = createOpsApp({
      adminDashboard: operator(),
      runtimeMetadata: { providers: [], flags: [], releaseSha: "secret-or-untrusted-value" },
    });
    apps.push(app);
    const response = await app.inject({
      method: "GET", url: "/v1/admin/health",
      headers: { authorization: "Bearer valid-admin" },
    });
    expect(response.statusCode).toBe(200);
    expect(response.json().release).toEqual({ opsSha: null, gatewaySha: null, workerSha: null, matching: false });
    expect(response.body).not.toContain("secret-or-untrusted-value");
  });
});

describe("cross-container release parity", () => {
  it("requires three valid identical revisions before reporting parity", async () => {
    const sha = "b".repeat(40);
    const app = createOpsApp({
      adminDashboard: operator(),
      runtimeMetadata: { providers: [], flags: [], releaseSha: sha },
      runtimeReleaseChecks: { gateway: async () => sha, worker: async () => sha },
    });
    apps.push(app);
    const response = await app.inject({
      method: "GET", url: "/v1/admin/health",
      headers: { authorization: "Bearer valid-admin" },
    });
    expect(response.statusCode).toBe(200);
    expect(response.json().release).toEqual({ opsSha: sha, gatewaySha: sha, workerSha: sha, matching: true });
  });

  it("does not invent healthy parity when the Worker is stale or unreachable", async () => {
    const sha = "b".repeat(40), old = "c".repeat(40);
    const app = createOpsApp({
      adminDashboard: operator(),
      runtimeMetadata: { providers: [], flags: [], releaseSha: sha },
      runtimeReleaseChecks: { gateway: async () => sha, worker: async () => old },
    });
    apps.push(app);
    const response = await app.inject({
      method: "GET", url: "/v1/admin/health",
      headers: { authorization: "Bearer valid-admin" },
    });
    expect(response.json().release).toEqual({ opsSha: sha, gatewaySha: sha, workerSha: old, matching: false });
  });
});
