import type { MobileNotificationPreferences, MobileNotificationRecord, MobilePushRepository } from "@masanawa/agents";
import type { AgentDirectoryAuthorizer } from "./agent_directory.js";

export interface AccountNotificationService {
  preferences(authorizationHeader: string | undefined): Promise<MobileNotificationPreferences>;
  update(authorizationHeader: string | undefined, input: unknown): Promise<MobileNotificationPreferences>;
  history(authorizationHeader: string | undefined): Promise<readonly MobileNotificationRecord[]>;
}

export function parseNotificationPreferences(raw: unknown): MobileNotificationPreferences {
  if (raw === null || typeof raw !== "object" || Array.isArray(raw)) {
    throw Object.assign(new TypeError("notification.preferences_invalid"), { statusCode: 400 });
  }
  const value = raw as Record<string, unknown>;
  const keys = ["messages","calls","rooms","status","wallet","p2p",
    "quietStart","quietEnd","utcOffsetMinutes"];
  if (Object.keys(value).length !== keys.length ||
      keys.some((key) => !(key in value)) ||
      Object.keys(value).some((key) => !keys.includes(key)) ||
      keys.slice(0,6).some((key) => typeof value[key] !== "boolean") ||
      (value.quietStart === null) !== (value.quietEnd === null) ||
      !Number.isInteger(value.utcOffsetMinutes) ||
      (value.utcOffsetMinutes as number) < -840 ||
      (value.utcOffsetMinutes as number) > 840 ||
      [value.quietStart,value.quietEnd].some((minute) =>
        minute !== null && (!Number.isInteger(minute) ||
        (minute as number) < 0 || (minute as number) > 1439))) {
    throw Object.assign(new TypeError("notification.preferences_invalid"), { statusCode: 400 });
  }
  return Object.freeze({
    messages: value.messages as boolean,
    calls: value.calls as boolean,
    rooms: value.rooms as boolean,
    status: value.status as boolean,
    wallet: value.wallet as boolean,
    p2p: value.p2p as boolean,
    quietStart: value.quietStart as number | null,
    quietEnd: value.quietEnd as number | null,
    utcOffsetMinutes: value.utcOffsetMinutes as number,
  });
}

export function createAccountNotificationService(input: {
  readonly authorizer: AgentDirectoryAuthorizer;
  readonly repository: MobilePushRepository;
}): AccountNotificationService {
  async function owner(authorizationHeader: string | undefined) {
    const scope = await input.authorizer.authorize({
      authorizationHeader, capability: "agents.directory.read",
    });
    return { tenantId: scope.tenantId, userId: scope.userId };
  }
  return Object.freeze({
    async preferences(header) {
      return input.repository.readPreferences(await owner(header));
    },
    async update(header, raw) {
      const settings = parseNotificationPreferences(raw);
      const scope = await owner(header);
      return input.repository.writePreferences({ ...scope, preferences: settings });
    },
    async history(header) {
      return input.repository.listNotices(await owner(header));
    },
  });
}
