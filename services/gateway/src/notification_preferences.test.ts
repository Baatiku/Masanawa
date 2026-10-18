import { describe, expect, it, vi } from "vitest";
import { createAccountNotificationService, parseNotificationPreferences } from "./notification_preferences.js";
import type { MobilePushRepository } from "@masanawa/agents";
import type { AgentDirectoryAuthorizer } from "./agent_directory.js";

const defaults = {
  messages: true, calls: true, rooms: true, status: true,
  wallet: true, p2p: true,
  quietStart: null, quietEnd: null, utcOffsetMinutes: 60,
} as const;

describe("notification settings admission", () => {
  it("refuses malicious controls and invalid quiet-hour ranges", () => {
    expect(parseNotificationPreferences(defaults)).toEqual(defaults);
    for (const payload of [
      { ...defaults, wallet: "no" },
      { ...defaults, userId: "user_other" },
      { ...defaults, quietStart: 1380, quietEnd: null },
      { ...defaults, utcOffsetMinutes: 1500 },
      { ...defaults, quietStart: 1440, quietEnd: 0 },
      null,
    ]) expect(() => parseNotificationPreferences(payload)).toThrow();
  });

  it("never accepts userId from input and scopes every read/write to session", async () => {
    const authorize = vi.fn(async ({ authorizationHeader }: {
      authorizationHeader: string | undefined;
    }) => {
      if (authorizationHeader !== "Bearer token-for-owner") {
        throw Object.assign(new Error("unauthorized"), { statusCode: 401 });
      }
      return { tenantId: "tenant_abc", userId: "user_owner" } as never;
    });
    const readPreferences = vi.fn(async () => defaults);
    const writePreferences = vi.fn(async () => defaults);
    const listNotices = vi.fn(async () => []);
    const service = createAccountNotificationService({
      authorizer: { authorize } as unknown as AgentDirectoryAuthorizer,
      repository: { readPreferences, writePreferences, listNotices }
        as unknown as MobilePushRepository,
    });
    await expect(service.preferences("Bearer different")).rejects.toThrow();
    await service.preferences("Bearer token-for-owner");
    await service.update("Bearer token-for-owner", defaults);
    await service.history("Bearer token-for-owner");
    expect(readPreferences).toHaveBeenCalledWith({
      tenantId: "tenant_abc", userId: "user_owner",
    });
    expect(writePreferences).toHaveBeenCalledWith({
      tenantId: "tenant_abc", userId: "user_owner",
      preferences: defaults,
    });
    expect(listNotices).toHaveBeenCalledWith({
      tenantId: "tenant_abc", userId: "user_owner",
    });
    expect(authorize).toHaveBeenCalledWith({
      authorizationHeader: "Bearer token-for-owner",
      capability: "agents.directory.read",
    });
  });
});
