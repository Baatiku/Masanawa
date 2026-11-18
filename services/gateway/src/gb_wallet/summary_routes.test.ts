import Fastify from "fastify";
import { afterEach, describe, expect, it } from "vitest";
import {
  projectGbWalletSummary, registerGbWalletSummaryRoutes,
  type GbWalletSummaryPorts,
} from "./summary_routes.js";

const apps: Array<ReturnType<typeof Fastify>> = [];
afterEach(async () => { await Promise.all(apps.splice(0).map(app => app.close())); });
function make(ports: Partial<GbWalletSummaryPorts> = {}) {
  const app = Fastify({ logger: false });
  apps.push(app);
  registerGbWalletSummaryRoutes(app, {
    authorize: async authorizationHeader => {
      if (authorizationHeader !== "Bearer authorized") throw new Error("unauthorized");
      return { tenantId: "tenant-c", userId: "account-a" };
    },
    read: async () => ({
      purchasedMb: 10500, welcomeMb: 500,
      reservedPurchasedMb: 125, reservedWelcomeMb: 25, frozen: false,
    }),
    ...ports,
  });
  return app;
}
describe("the canonical MB wallet summary read", () => {
  it("does not authorize requests from user ID parameters or omit no-store", async () => {
    const app = make();
    const anonymous = await app.inject({
      method: "GET", url: "/v1/gb/wallet/summary?userId=account-a",
    });
    expect(anonymous.statusCode).toBe(401);
    expect(anonymous.headers["cache-control"]).toBe("no-store");
    const valid = await app.inject({
      method: "GET", url: "/v1/gb/wallet/summary",
      headers: { authorization: "Bearer authorized" },
    });
    expect(valid.statusCode).toBe(200);
    expect(valid.headers["cache-control"]).toBe("no-store");
    expect(valid.json()).toEqual({ balance: {
      unit: "MB", conversion: "decimal_1000",
      totalMb: 11000, totalGb: "11",
      availableMb: 10850, availableGb: "10.85",
      purchasedAvailableMb: 10375,
      welcomeAvailableMb: 475,
      reservedMb: 150,
      reservedPurchasedMb: 125,
      reservedWelcomeMb: 25,
      canSpendPurchased: true, canUseForRepliesAndCalls: true,
      frozen: false,
    } });
  });

  it("keeps Welcome separate, and does not enable Send or Redeem on welcome-only balance", () => {
    expect(projectGbWalletSummary({
      purchasedMb: 0, welcomeMb: 500,
      reservedPurchasedMb: 0, reservedWelcomeMb: 0, frozen: false,
    })).toMatchObject({
      availableMb:500, availableGb:"0.5",
      purchasedAvailableMb:0, welcomeAvailableMb:500,
      canSpendPurchased:false, canUseForRepliesAndCalls:true,
    });
    expect(projectGbWalletSummary({
      purchasedMb: 1000,welcomeMb:500,
      reservedPurchasedMb:0,reservedWelcomeMb:0,frozen:true,
    })).toMatchObject({
      frozen:true,canSpendPurchased:false,canUseForRepliesAndCalls:false,
    });
  });

  it("never disguises absent, malformed or failed source balance as zero", async () => {
    const app = make({ read: async () => null });
    const missing = await app.inject({
      method:"GET",url:"/v1/gb/wallet/summary",
      headers:{authorization:"Bearer authorized"},
    });
    expect(missing.statusCode).toBe(503);
    expect(missing.json()).toMatchObject({error:{code:"gb.wallet.not_ready"}});
    const broken = make({ read: async () => ({
      purchasedMb: 5, welcomeMb: 0,
      reservedPurchasedMb: 6, reservedWelcomeMb: 0, frozen: false,
    }) });
    expect((await broken.inject({
      method:"GET",url:"/v1/gb/wallet/summary",
      headers:{authorization:"Bearer authorized"},
    })).statusCode).toBe(503);
    expect(()=>projectGbWalletSummary({
      purchasedMb:Number.MAX_SAFE_INTEGER,welcomeMb:1,
      reservedPurchasedMb:0,reservedWelcomeMb:0,frozen:false,
    })).toThrow();
  });

  it("fences account-specific server reads to the authorized actor", async () => {
    const observed: string[] = [];
    const app = make({read: async actor => {
      observed.push(actor.tenantId+"|"+actor.userId);
      return null;
    }});
    await app.inject({method:"GET",url:"/v1/gb/wallet/summary",
      headers:{authorization:"Bearer authorized"}});
    expect(observed).toEqual(["tenant-c|account-a"]);
  });
});
