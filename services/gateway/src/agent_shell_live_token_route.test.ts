import { describe, expect, it, vi } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import type { AgentConversationAuthorizer } from "./agent_conversation_contract.js";
import { createGatewayApp } from "./app.js";
import { createGeminiLiveTokenService } from "./live_voice_token.js";

const characterId = createCanonicalId("character");
const tenantId = createCanonicalId("tenant");
const userId = createCanonicalId("user");
const relationshipId = createCanonicalId("relationship");

function fixture(fetchImpl: typeof fetch) {
  const authorize = vi.fn(async ({ authorizationHeader }: {
    authorizationHeader: string | undefined;
  }) => {
    if (authorizationHeader !== "Bearer authorized") {
      throw Object.assign(new Error("private token identity"), {statusCode: 401});
    }
    return {
      scope: {tenantId, userId, characterId, relationshipId},
      presentation: {displayName: "Gwani", roleLabel: "Education", about: "Learning"},
    } as Awaited<ReturnType<AgentConversationAuthorizer["authorize"]>>;
  });
  const service = createGeminiLiveTokenService({
    apiKey: "server-private-key",
    authorizer: {authorize},
    voiceName: "Fora",
    fetchImpl,
  });
  return {app: createGatewayApp({liveVoiceTokens: service}), authorize};
}

describe("registered reduced Gateway /agent/live/token", () => {
  it("rejects absent, malformed and cross-type input as 400 before admission or provider work", async () => {
    const provider = vi.fn(async () => Response.json({name: "auth_tokens/provider-test-token-1234567"}));
    const {app, authorize} = fixture(provider as typeof fetch);
    try {
      for (const payload of [
        undefined,
        [],
        {},
        {characterId: "not-a-canonical-character"},
        {characterId, purpose: "unknown"},
        {characterId, admissionId: 7},
      ]) {
        const response = await app.inject({
          method: "POST",
          url: "/agent/live/token",
          headers: {authorization: "Bearer authorized"},
          ...(payload === undefined ? {} : {payload}),
        });
        expect(response.statusCode).toBe(400);
        expect(response.json()).toEqual({
          error: {code: "gateway.invalid_request", message: "Invalid request"},
        });
      }
      expect(authorize).not.toHaveBeenCalled();
      expect(provider).not.toHaveBeenCalled();
    } finally {
      await app.close();
    }
  });

  it("requires the original bearer and never invokes the provider on denial", async () => {
    const provider = vi.fn(async () => Response.json({name: "unexpected"}));
    const {app} = fixture(provider as typeof fetch);
    try {
      const response = await app.inject({
        method: "POST", url: "/agent/live/token",
        payload: {characterId},
        headers: {authorization: "Bearer denied"},
      });
      expect(response.statusCode).toBe(401);
      expect(response.body).not.toContain("private token identity");
      expect(provider).not.toHaveBeenCalled();
    } finally {
      await app.close();
    }
  });

  it("converts upstream rejection to a redacted 503 rather than a connected grant", async () => {
    const stderr = vi.spyOn(console, "error").mockImplementation(() => {});
    const {app} = fixture((async () => Response.json({
      error: {status: "INVALID_ARGUMENT", message: "private provider credential"},
    }, {status: 400})) as typeof fetch);
    try {
      const response = await app.inject({
        method: "POST", url: "/agent/live/token",
        payload: {characterId},
        headers: {authorization: "Bearer authorized"},
      });
      expect(response.statusCode).toBe(503);
      expect(response.json().error.code).toBe("agent.provider_unavailable");
      expect(response.body).not.toContain("private provider credential");
      expect(response.body).not.toContain("server-private-key");
      const diagnostics = stderr.mock.calls.map(([value]) => String(value)).join(" ");
      expect(diagnostics).toContain('"stage":"provider-rejection"');
      expect(diagnostics).not.toContain("private provider credential");
      expect(diagnostics).not.toContain("server-private-key");
    } finally {
      stderr.mockRestore();
      await app.close();
    }
  });

  it("keeps the approved voice and original canonical identity in a successful token route", async () => {
    const provider = vi.fn(async () => Response.json({name: "auth_tokens/provider-test-token-1234567"}));
    const {app, authorize} = fixture(provider as typeof fetch);
    try {
      const response = await app.inject({
        method: "POST", url: "/agent/live/token",
        payload: {characterId, purpose: "conversation"},
        headers: {authorization: "Bearer authorized"},
      });
      expect(response.statusCode).toBe(200);
      const grant = response.json();
      expect(grant.token).toBe("auth_tokens/provider-test-token-1234567");
      expect(grant.voiceName).toBe("Fora");
      expect(grant.websocketUrl).toContain("access_token=");
      expect(response.body).not.toContain("server-private-key");
      expect(authorize).toHaveBeenCalledWith({
        authorizationHeader: "Bearer authorized", characterId,
      });
      expect(provider).toHaveBeenCalledTimes(1);
    } finally {
      await app.close();
    }
  });
});
