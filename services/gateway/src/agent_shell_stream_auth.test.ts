import Fastify from "fastify";
import { describe, expect, it, vi } from "vitest";
import type { AgentShellService } from "./agent_shell_contract.js";
import { registerAgentShellRoutes } from "./agent_shell_routes.js";

describe("authenticated agent event stream", () => {
  for (const statusCode of [401, 403, 503]) {
    it(`returns HTTP ${statusCode} before acknowledging a stream`, async () => {
      const events = vi.fn(async () => {
        throw Object.assign(new Error("private provider details"), { statusCode });
      });
      const app = Fastify();
      registerAgentShellRoutes(app, {
        agentShell: { events } as unknown as AgentShellService,
      });
      try {
        const response = await app.inject({
          method: "GET",
          url: "/agent/events/stream?characterId=character-valid&limit=100",
          headers: { authorization: "Bearer expired-token" },
        });
        expect(response.statusCode).toBe(statusCode);
        expect(response.headers["content-type"]).toContain("application/json");
        expect(response.headers["content-type"]).not.toContain("x-ndjson");
        expect(events).toHaveBeenCalledTimes(1);
        expect(events).toHaveBeenCalledWith({
          authorizationHeader: "Bearer expired-token",
          characterId: "character-valid",
          limit: 100,
        });
      } finally {
        await app.close();
      }
    });
  }

  it("closes an already accepted stream when authorization expires mid-poll", async () => {
    let attempts = 0;
    const events = vi.fn(async () => {
      attempts++;
      if (attempts === 1) return [];
      throw Object.assign(new Error("expired"), { statusCode: 401 });
    });
    const app = Fastify();
    registerAgentShellRoutes(app, {
      agentShell: { events } as unknown as AgentShellService,
    });
    try {
      const response = await app.inject({
        method: "GET", url: "/agent/events/stream?characterId=character-valid",
        headers: { authorization: "Bearer valid-at-open" },
      });
      // Headers were already accepted, so the safe recovery is to close and
      // let the client retry with its newest account-bound bearer.
      expect(response.statusCode).toBe(200);
      expect(response.headers["content-type"]).toContain("x-ndjson");
      expect(attempts).toBe(2);
    } finally {
      await app.close();
    }
  });

  it("rejects a malformed stream request before calling the events service", async () => {
    const events = vi.fn(async () => []);
    const app = Fastify();
    registerAgentShellRoutes(app, {
      agentShell: { events } as unknown as AgentShellService,
    });
    try {
      const response = await app.inject({
        method: "GET", url: "/agent/events/stream?limit=900",
      });
      expect(response.statusCode).toBe(400);
      expect(events).not.toHaveBeenCalled();
    } finally {
      await app.close();
    }
  });
});
