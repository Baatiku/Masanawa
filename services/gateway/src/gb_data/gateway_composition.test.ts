import { afterEach, describe, expect, it } from "vitest";
import { createGatewayApp } from "../app.js";

const apps: Array<ReturnType<typeof createGatewayApp>> = [];
afterEach(async () => { await Promise.all(apps.splice(0).map(app => app.close())); });

const now = "2026-10-25T00:00:00Z";
const approvals = [{
  version: "approved-1", country: "NG" as const, network: "MTN" as const,
  billerCode: "BIL12", itemCode: "DAT33", allowanceGb: 2,
  validityDays: 7, providerAmount: "840.00",
  evidenceRef: "evidence-2026", reviewedBy: "reviewer-1",
  reviewedAt: "2026-10-24T00:00:00Z", expiresAt: "2026-11-01T00:00:00Z",
  enabled: true,
}];

describe("Gateway read-only Data surface is opt-in, session-bound and non-payable", () => {
  it("does not register data routes when no qualified catalog is provided", async () => {
    const app = createGatewayApp({productScope:"masana-lite"});
    apps.push(app);
    const response = await app.inject({method:"GET",url:"/v1/gb/data/bundles"});
    expect(response.statusCode).toBe(404);
  });

  it("mounts only catalogue/preview, and never a provider purchase route", async () => {
    const app = createGatewayApp({
      productScope:"masana-lite",
      gbDataCatalogue: {
        authorize: async authorizationHeader => {
          if (authorizationHeader !== "Bearer user-token") throw new Error("gb.data.unauthorized");
          return {tenantId:"tenant-a",userId:"user-a"};
        },
        approved: async () => approvals,
        liveItems: async () => [{
          billerCode:"BIL12",itemCode:"DAT33",
          name:"Untrusted 512MB bonus",amount:"840",currency:"NGN",labelName:"Phone",
        }],
        now: () => new Date(now),
      },
    });
    apps.push(app);
    const unauthenticated=await app.inject({method:"GET",url:"/v1/gb/data/bundles"});
    expect(unauthenticated.statusCode).toBe(401);
    const ok=await app.inject({method:"GET",url:"/v1/gb/data/bundles",
      headers:{authorization:"Bearer user-token"}});
    expect(ok.statusCode).toBe(200);
    expect(ok.json().bundles).toHaveLength(1);
    expect(ok.json().bundles[0]).toMatchObject({
      allowanceGb:2,costMb:2000,network:"MTN",validityDays:7,
    });
    const preview=await app.inject({method:"POST",url:"/v1/gb/data/quote",
      headers:{authorization:"Bearer user-token"},
      payload:{bundleId:"BIL12:DAT33",version:"approved-1",recipientPhone:"08012345678"}});
    expect(preview.statusCode).toBe(200);
    expect(preview.json()).toMatchObject({previewOnly:true,quote:{costMb:2000,feeMb:0}});
    for(const url of ["/v1/gb/data/buy","/v1/gb/data/redeem"]) {
      expect((await app.inject({method:"POST",url,payload:{}})).statusCode).toBe(404);
    }
  });
});
