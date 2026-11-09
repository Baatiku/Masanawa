import { describe, expect, it } from "vitest";
import { createGatewayApp } from "./app.js";
import { parseWebAllowedOrigins } from "./web_cors.js";

describe("shared mobile/web Gateway origin boundary", () => {
  it("requires exact HTTPS browser origins and rejects wildcard, credentials, paths and duplicates", () => {
    expect(parseWebAllowedOrigins(undefined)).toEqual([]);
    expect(parseWebAllowedOrigins("https://web.masanawa.com,https://masanawa-civic-directory.shrewdmural8.chatgpt.site"))
      .toEqual(["https://web.masanawa.com", "https://masanawa-civic-directory.shrewdmural8.chatgpt.site"]);
    for (const raw of ["*", "http://web.masanawa.com", "https://*.masanawa.com", "https://web.masanawa.com/path", "https://user:pass@web.masanawa.com", "https://web.masanawa.com,", "https://web.masanawa.com,https://web.masanawa.com"]) {
      expect(() => parseWebAllowedOrigins(raw), raw).toThrow("web.allowed_origin_invalid");
    }
  });

  it("permits a configured web origin and required bearer preflight without credentials", async () => {
    const app = createGatewayApp({ webAllowedOrigins: ["https://web.masanawa.com"] });
    try {
      const preflight = await app.inject({
        method: "OPTIONS", url: "/agent/history",
        headers: {
          origin: "https://web.masanawa.com",
          "access-control-request-method": "GET",
          "access-control-request-headers": "authorization,content-type",
        },
      });
      expect(preflight.statusCode).toBe(204);
      expect(preflight.headers["access-control-allow-origin"]).toBe("https://web.masanawa.com");
      expect(preflight.headers["access-control-allow-headers"]).toContain("Authorization");
      expect(preflight.headers["access-control-allow-credentials"]).toBeUndefined();
      const health = await app.inject({ url: "/healthz", headers: { origin: "https://web.masanawa.com" } });
      expect(health.statusCode).toBe(200);
      expect(health.headers["access-control-allow-origin"]).toBe("https://web.masanawa.com");
      const native = await app.inject({ url: "/healthz" });
      expect(native.statusCode).toBe(200);
      expect(native.headers["access-control-allow-origin"]).toBeUndefined();
    } finally {
      await app.close();
    }
  });

  it("rejects untrusted browser origins including attempted preflight", async () => {
    const app = createGatewayApp({ webAllowedOrigins: ["https://web.masanawa.com"] });
    try {
      const request = await app.inject({ url: "/healthz", headers: { origin: "https://evil.example" } });
      expect(request.statusCode).toBe(403);
      expect(request.headers["access-control-allow-origin"]).toBeUndefined();
      const preflight = await app.inject({ method: "OPTIONS", url: "/agent/history", headers: { origin: "https://evil.example", "access-control-request-method": "POST" } });
      expect(preflight.statusCode).toBe(403);
      const wrongMethod = await app.inject({ method: "OPTIONS", url: "/agent/history", headers: { origin: "https://web.masanawa.com", "access-control-request-method": "TRACE" } });
      expect(wrongMethod.statusCode).toBe(405);
    } finally {
      await app.close();
    }
  });
});
