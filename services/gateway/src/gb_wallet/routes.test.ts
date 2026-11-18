import { afterEach, describe, expect, it } from "vitest";
import { createGatewayApp } from "../app.js";

const openApps: Array<ReturnType<typeof createGatewayApp>> = [];
afterEach(async () => {
  await Promise.all(openApps.splice(0).map((app) => app.close()));
});

describe("public GB recharge previews never mint balance", () => {
  it("serves versioned configured prices without processing a payment", async () => {
    const app = createGatewayApp();
    openApps.push(app);
    const packages = await app.inject({ method: "GET", url: "/v1/gb/recharge/packages" });
    expect(packages.statusCode).toBe(200);
    expect(packages.json()).toMatchObject({
      version: "gb-recharge-initial-v1",
      settlement: "historical_reference_only",
      automaticDepositConversion: false,
    });
    expect(packages.json().packages).toHaveLength(6);
    expect(packages.json().packages[0]).toMatchObject({
      sizeGb: 10, expectedMb: 10000, totalKobo: 400000,
    });
    expect(packages.json().packages[1]).toMatchObject({
      sizeGb: 20, expectedMb: 20000, totalKobo: 750000,
    });
    const preview = await app.inject({ method: "GET", url: "/v1/gb/recharge/preview?amountKobo=500000" });
    expect(preview.statusCode).toBe(200);
    expect(preview.json()).toMatchObject({
      previewOnly: true,
      creditedMb: 12500,
      verifiedAmountKobo: 500000,
      rateVersion: "gb-recharge-initial-v1",
    });
    const forbidden = await app.inject({
      method: "POST",
      url: "/v1/gb/recharge/preview",
      payload: { amountKobo: 500000 },
    });
    expect(forbidden.statusCode).toBe(404);
  });

  it("does not allow callers to select an arbitrary rate version or pay with invalid amounts", async () => {
    const app = createGatewayApp({ gbRechargeRateBook: {
      version: "admin-test-v2",
      tiers: [
        { sizeGb: 10, totalKobo: 420000 },
        { sizeGb: 20, totalKobo: 800000 },
      ],
    } });
    openApps.push(app);
    const preview = await app.inject({
      method: "GET",
      url: "/v1/gb/recharge/preview?amountKobo=500000&version=gb-recharge-initial-v1",
    });
    // Fastify normalizes unknown query keys. They do not select historical
    // rates: server-effective configuration remains authoritative.
    expect(preview.statusCode).toBe(200);
    expect(preview.json()).toMatchObject({
      rateVersion: "admin-test-v2",
      creditedMb: 11904,
    });
    const invalid = await app.inject({
      method: "GET",
      url: "/v1/gb/recharge/preview?amountKobo=-100",
    });
    expect(invalid.statusCode).toBe(400);
    const current = await app.inject({
      method: "GET",
      url: "/v1/gb/recharge/preview?amountKobo=420000",
    });
    expect(current.statusCode).toBe(200);
    expect(current.json().rateVersion).toBe("admin-test-v2");
    expect(current.json().creditedMb).toBe(10000);
  });
});
