import { afterEach, describe, expect, it, vi } from "vitest";
import type { AgentDirectoryService } from "./agent_directory.js";
import { createGatewayApp } from "./app.js";

const apps: Array<ReturnType<typeof createGatewayApp>> = [];
afterEach(async () => {
  await Promise.all(apps.splice(0).map((app) => app.close()));
});

describe("retired Home projection boundary", () => {
  it("never serves stale Room cards, even when a directory is supplied", async () => {
    const list = vi.fn(async () => []);
    const directory: AgentDirectoryService = {
      list,
      async setDefaultPlatformAgent() {
        throw new Error("not used");
      },
    };
    const app = createGatewayApp({ agentDirectory: directory });
    apps.push(app);
    const response = await app.inject({
      method: "GET",
      url: "/home",
      headers: { authorization: "Bearer home-user" },
    });
    expect(response.statusCode).toBe(404);
    expect(list).not.toHaveBeenCalled();
  });

  it("retains the account-bound Masana directory without manufacturing Rooms", async () => {
    const list = vi.fn(async () => [{
      characterId: "character_gwana_server",
      characterVersionId: "character-version_gwana_server",
      displayName: "Gwana",
      roleLabel: "Platform assistant",
      about: "Helps with everyday work",
      greeting: null,
      presence: "available" as const,
      activeWorkCount: 0,
      supportAgent: true,
      defaultPlatformAgent: true,
      voiceProvider: "gemini",
      voiceName: "Sulafat",
    }]);
    const directory: AgentDirectoryService = {
      list,
      async setDefaultPlatformAgent() {
        throw new Error("not used");
      },
    };
    const app = createGatewayApp({ agentDirectory: directory });
    apps.push(app);
    const response = await app.inject({
      method: "GET",
      url: "/agent/directory",
      headers: { authorization: "Bearer active-user" },
    });
    expect(response.statusCode).toBe(200);
    expect(list).toHaveBeenCalledWith({authorizationHeader: "Bearer active-user"});
    expect(response.json().agents).toEqual([
      expect.objectContaining({characterId: "character_gwana_server", displayName: "Gwana"}),
    ]);
    expect(response.json()).not.toHaveProperty("rooms");
  });
});
