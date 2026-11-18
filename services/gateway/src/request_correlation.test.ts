import Fastify from "fastify";
import { describe, it, expect } from "vitest";
import { createCanonicalId, isCanonicalId } from "@masanawa/contracts";
import { registerGatewayRequestCorrelation } from "./request_correlation.js";

describe("Gateway HTTP retry identity", () => {
  it("keeps the app's canonical request ID across HTTP retries and into business handlers", async () => {
    const app = Fastify();
    registerGatewayRequestCorrelation(app);
    app.post("/turn", async (request) => ({
      requestId: request.headers["x-request-id"],
      correlationId: request.headers["x-correlation-id"],
    }));
    const requestId = createCanonicalId("request"),
      correlationId = createCanonicalId("correlation");
    try {
      for (let retry = 0; retry < 2; retry++) {
        const r = await app.inject({
          method: "POST",
          url: "/turn",
          headers: {
            "x-request-id": requestId,
            "x-correlation-id": correlationId,
          },
        });
        expect(r.statusCode).toBe(200);
        expect(r.json()).toEqual({ requestId, correlationId });
        expect(r.headers["x-request-id"]).toBe(requestId);
      }
    } finally {
      await app.close();
    }
  });
  it("replaces invalid/missing IDs while retaining valid W3C trace ancestry", async () => {
    const app = Fastify();
    registerGatewayRequestCorrelation(app);
    app.get("/read", async (request) => ({
      requestId: request.headers["x-request-id"],
    }));
    const parent = "00-0123456789abcdef0123456789abcdef-0123456789abcdef-01";
    try {
      for (const supplied of [undefined, "caller-controlled-arbitrary-text"]) {
        const r = await app.inject({
          method: "GET",
          url: "/read",
          headers: {
            traceparent: parent,
            ...(supplied ? { "x-request-id": supplied } : {}),
          },
        });
        const requestId = r.json().requestId;
        expect(isCanonicalId("request", requestId)).toBe(true);
        expect(requestId).not.toBe(supplied);
        expect(r.headers.traceparent).toContain(
          "0123456789abcdef0123456789abcdef",
        );
        expect(r.headers.traceparent).not.toBe(parent);
      }
    } finally {
      await app.close();
    }
  });
});
