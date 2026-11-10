import { describe, expect, it, vi } from "vitest";
import { hashPlatformSessionToken, mintPlatformSessionToken, type PlatformSessionRepository } from "@masanawa/security";
import { createOpsAdminDashboardService, parseOpsAdminGrants } from "./admin_dashboard.js";
import { createOpsApp } from "./app.js";

const token = mintPlatformSessionToken("access");
const access = `Bearer ${token}`;
const tenantId = "tenant_123";
const grant = JSON.stringify([{ tenantId, email: "owner@example.com", capabilities: [
  "dashboard.read", "users.read", "runtime.read", "operations.read", "audit.read",
  "news.read", "wallet.read", "data.read", "calls.read", "moderation.read",
] }]);

function fixture(email: string | null = "owner@example.com") {
  const query = vi.fn(async (_sql: string, _params: unknown[]) => ({ rows: [{ users: 2, characters: 4, active_sessions: 1, running_agent_runs: 0, reconciliation_cases: 0, audit_events: 3 }] }));
  const resolveAccess = vi.fn(async ({ accessHash }: { accessHash: string }) =>
    accessHash === hashPlatformSessionToken(token) ? {
      tenantId, userId: "user_123", profile: { email, phone: null, name: "Owner", accountState: "active" },
    } : null);
  const service = createOpsAdminDashboardService({
    sessions: { resolveAccess } as unknown as PlatformSessionRepository,
    pool: { query } as unknown as Parameters<typeof createOpsAdminDashboardService>[0]["pool"],
    grants: parseOpsAdminGrants(grant),
  });
  return { query, resolveAccess, service };
}

describe("web Ops dashboard authorization", () => {
  it("rejects missing, malformed, non-admin and cross-tenant sessions before querying", async () => {
    const { service, query } = fixture("not-owner@example.com");
    await expect(service.summary({ authorizationHeader: undefined })).rejects.toMatchObject({ statusCode: 401 });
    await expect(service.summary({ authorizationHeader: access })).rejects.toMatchObject({ statusCode: 403 });
    expect(query).not.toHaveBeenCalled();
    const noGrant = createOpsAdminDashboardService({
      sessions: { resolveAccess: async () => ({ tenantId: "tenant_else", userId: "user_x", profile: { email: "owner@example.com", name: "Owner" } }) } as unknown as PlatformSessionRepository,
      pool: { query } as unknown as Parameters<typeof createOpsAdminDashboardService>[0]["pool"],
      grants: parseOpsAdminGrants(grant),
    });
    await expect(noGrant.me({ authorizationHeader: access })).rejects.toMatchObject({ statusCode: 403 });
  });

  it("uses the resolved tenant and bounded pagination, never a client tenant selector", async () => {
    const { service, query } = fixture();
    await service.users({ authorizationHeader: access, limit: 9999, offset: 99999, state: "active" });
    expect(query.mock.calls[0]?.[1]).toEqual([tenantId, "active", 100, 10000]);
    await service.summary({ authorizationHeader: access });
    expect(query.mock.calls[1]?.[1]).toEqual([tenantId]);
  });

  it("does not return audit payload, actor secrets or provider details", async () => {
    const { service, query } = fixture();
    await service.audit({ authorizationHeader: access, limit: 20, offset: 0 });
    const sql = query.mock.calls[0]?.[0] ?? "";
    expect(sql).not.toMatch(/\b(payload|actor|authority_ref)\b/i);
  });

  it("scopes news, NGN ledger, data orders, connected calls, and safety reports to the signed-in tenant", async () => {
    const { service, query } = fixture();
    await service.news({ authorizationHeader: access, limit: 40, offset: 0, state: "approved" });
    await service.wallet({ authorizationHeader: access, limit: 40, offset: 0 });
    await service.data({ authorizationHeader: access, limit: 40, offset: 0, state: "pending" });
    await service.calls({ authorizationHeader: access, limit: 40, offset: 0, state: "connected" });
    await service.moderation({ authorizationHeader: access, limit: 40, offset: 0 });
    expect(query.mock.calls.map(call => call[1])).toEqual([
      [tenantId, "approved", 40, 0], [tenantId, 40, 0], [tenantId, "pending", 40, 0],
      [tenantId, "connected", 40, 0], [tenantId, 40, 0],
    ]);
    for (const [sql] of query.mock.calls) {
      expect(sql).toMatch(/WHERE .*tenant_id=\$1/s);
      expect(sql).not.toMatch(/\b(detail|recipient_phone|request_sha256|feed_url|payload|transcript|audio)\b/i);
    }
  });

  it("rejects a missing per-module capability before querying finance", async () => {
    const { query, resolveAccess } = fixture();
    const limited = createOpsAdminDashboardService({
      sessions: { resolveAccess } as unknown as PlatformSessionRepository,
      pool: { query } as unknown as Parameters<typeof createOpsAdminDashboardService>[0]["pool"],
      grants: parseOpsAdminGrants(JSON.stringify([{ tenantId, email: "owner@example.com", capabilities: ["dashboard.read"] }])),
    });
    await expect(limited.wallet({ authorizationHeader: access, limit: 20, offset: 0 })).rejects.toMatchObject({ statusCode: 403 });
    expect(query).not.toHaveBeenCalled();
  });

  it("fails closed for missing or malformed explicit grants", () => {
    expect(parseOpsAdminGrants(undefined)).toEqual([]);
    expect(() => parseOpsAdminGrants('[{"tenantId":"tenant_1","capabilities":["*"]}]')).toThrow();
    expect(() => parseOpsAdminGrants("{}")) .toThrow();
  });

  it("routes return truthful 401/403 and capability-scoped results", async () => {
    const { service } = fixture();
    const app = createOpsApp({ adminDashboard: service });
    try {
      expect((await app.inject({ method: "GET", url: "/v1/admin/me" })).statusCode).toBe(401);
      const approved = await app.inject({ method: "GET", url: "/v1/admin/summary", headers: { authorization: access } });
      expect(approved.statusCode).toBe(200);
      expect(approved.json().users).toBe(2);
      expect((await app.inject({ method: "GET", url: "/v1/admin/users?limit=999", headers: { authorization: access } })).statusCode).toBe(400);
    } finally { await app.close(); }
  });
});
