import Fastify from "fastify";
import { describe, expect, it } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import { registerNgnCallRoutes } from "./routes.js";
import type { NgnCallPorts } from "./review.js";

describe("NGN call HTTP balance errors", () => {
  it("never describes insufficient Naira as MB when a concurrent debit loses admission", async () => {
    const actor = { tenantId: "tenant", userId: "user" };
    const characterId = createCanonicalId("character");
    const ports: NgnCallPorts = {
      authorize: async () => actor,
      approved: async () => ({ version: "v1" }),
      balance: async () => ({ balanceKobo: 2000, availableKobo: 2000, heldKobo: 0, debtKobo: 0, frozen: false }),
      ready: () => true,
      reviewSecret: "test-only-ngn-call-review-secret-over-32-bytes",
      journal: {
        read: async () => null,
        readOriginal: async () => null,
        admit: async () => { throw new Error("ngn.insufficient_balance"); },
      },
    };
    const app = Fastify();
    registerNgnCallRoutes(app, ports);
    try {
      const reviewed = await app.inject({ method: "POST", url: "/v1/ngn/calls/review", payload: {
        characterId, expectedSeconds: 60, idempotencyKey: "original-call-key",
      }});
      expect(reviewed.statusCode).toBe(200);
      const admitted = await app.inject({ method: "POST", url: "/v1/ngn/calls/admissions", payload: {
        reviewToken: reviewed.json().review.reviewToken, accepted: true,
      }});
      expect(admitted.statusCode).toBe(409);
      expect(admitted.json()).toEqual({ error: { code: "ngn.call.insufficient_balance" } });
      expect(JSON.stringify(admitted.json())).not.toContain("mb");
    } finally { await app.close(); }
  });
});
