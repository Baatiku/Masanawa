import Fastify from "fastify";
import { afterEach, describe, expect, it } from "vitest";
import type { FlutterwaveBillItem } from "@masanawa/providers";
import { registerGbDataCatalogueRoutes, type GbDataCataloguePorts } from "./data_catalogue_routes.js";
import type { ApprovedWholeGbBundle } from "./data_catalogue.js";

const live: FlutterwaveBillItem[] = [{
  billerCode: "BIL2", itemCode: "ITEM3", name: "Ambiguous bonus item",
  amount: "600", currency: "NGN", labelName: "Phone",
}];
const approved: ApprovedWholeGbBundle[] = [{
  country: "NG", network: "AIRTEL", billerCode: "BIL2", itemCode: "ITEM3",
  version: "approved-v1", allowanceGb: 1, validityDays: 7,
  providerAmount: "600.00", evidenceRef: "reviewer-evidence",
  reviewedBy: "editor-id", reviewedAt: "2026-10-24T00:00:00Z",
  expiresAt: "2026-11-24T00:00:00Z", enabled: true,
}];
const apps: Array<ReturnType<typeof Fastify>> = [];
afterEach(async () => { await Promise.all(apps.splice(0).map(a => a.close())); });

function appWith(overrides: Partial<GbDataCataloguePorts> = {}) {
  const app = Fastify({ logger: false });
  apps.push(app);
  registerGbDataCatalogueRoutes(app, {
    authorize: async header => {
      if (header !== "Bearer owned") throw new Error("gb.data.unauthorized");
      return { tenantId: "tenant-a", userId: "user-a" };
    },
    approved: async () => approved,
    liveItems: async () => live,
    now: () => new Date("2026-10-25T00:00:00Z"),
    ...overrides,
  });
  return app;
}
describe("GB data read and review APIs", () => {
  it("is account-bound, excludes unknown catalogue items and does not allow purchases", async () => {
    const app = appWith();
    const unauthorized = await app.inject({ method: "GET", url: "/v1/gb/data/bundles" });
    expect(unauthorized.statusCode).toBe(401);
    const response = await app.inject({ method: "GET", url: "/v1/gb/data/bundles?network=AIRTEL",
      headers: { authorization: "Bearer owned" },
    });
    expect(response.statusCode).toBe(200);
    expect(response.json()).toEqual({ bundles: [{
      id: "BIL2:ITEM3", version: "approved-v1", network: "AIRTEL",
      allowanceGb: 1, costMb: 1000, validityDays: 7,
      providerAmount: "600.00", billerCode: "BIL2",
      itemCode: "ITEM3", expiresAt: "2026-11-24T00:00:00Z",
    }] });
    const buy = await app.inject({ method: "POST", url: "/v1/gb/data/buy",
      headers: { authorization: "Bearer owned" },
      payload: { bundleId: "BIL2:ITEM3" },
    });
    expect(buy.statusCode).toBe(404);
  });

  it("quotes exact MB for a third-party Nigerian SIM without any charge", async () => {
    const app = appWith();
    const response = await app.inject({ method: "POST", url: "/v1/gb/data/quote",
      headers: { authorization: "Bearer owned" },
      payload: { bundleId: "BIL2:ITEM3", version: "approved-v1", recipientPhone: "08012345678" },
    });
    expect(response.statusCode).toBe(200);
    expect(response.json()).toMatchObject({ previewOnly: true, quote: {
      recipientPhone: "+2348012345678", allowanceGb: 1,
      costMb: 1000, feeMb: 0, requiresWalletReservation: true,
    } });
  });

  it("returns explicit stale, invalid phone, unsupported, and unverified states", async () => {
    const app = appWith();
    const call = (body: Record<string,string>) => app.inject({
      method: "POST", url: "/v1/gb/data/quote",
      headers: { authorization: "Bearer owned" }, payload: body,
    });
    const basic = { bundleId: "BIL2:ITEM3", version: "approved-v1",
      recipientPhone: "+2348012345678" };
    expect((await call({...basic,version:"obsolete"})).statusCode).toBe(409);
    expect((await call({...basic,recipientPhone:"+12025550000"})).statusCode).toBe(400);
    expect((await call({...basic,bundleId:"BIL2:MISSING"})).statusCode).toBe(404);
    const failed = appWith({ liveItems: async () => { throw new Error("provider offline"); } });
    expect((await failed.inject({method:"GET",url:"/v1/gb/data/bundles",
      headers:{authorization:"Bearer owned"}})).statusCode).toBe(503);
  });
});
