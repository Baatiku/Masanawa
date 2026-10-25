import { describe, it, expect } from "vitest";
import { createGatewayApp } from "./app.js";

describe("retired video-source management boundaries", () => {
  it("does not register video catalogue or source administration", async () => {
    const app = createGatewayApp();
    try {
      for (const [method, url] of [
        ["GET", "/v1/admin/video-sources"],
        ["POST", "/v1/admin/video-sources"],
        ["GET", "/v1/videos"],
        ["POST", "/v1/videos"],
      ] as const) {
        const response = await app.inject({ method, url });
        expect(response.statusCode, `${method} ${url}`).toBe(404);
      }
      expect((await app.inject({ method: "GET", url: "/v1/gb/recharge/packages" })).statusCode).toBe(200);
    } finally {
      await app.close();
    }
  });
});
