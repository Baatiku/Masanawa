import { describe, expect, it, vi } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import type { AgentConversationAdmission, AgentConversationAuthorizer } from "./agent_conversation_contract.js";
import { createGeminiLiveTokenService } from "./live_voice_token.js";

const characterId = createCanonicalId("character");
const authorizer: AgentConversationAuthorizer = {
  async authorize({ authorizationHeader, characterId: requested }) {
    expect(authorizationHeader).toBe("Bearer valid-user");
    expect(requested).toBe(characterId);
    return {
      presentation:{displayName:"Amina",roleLabel:"Medicine",about:"Medical education"},
      scope: {
        tenantId: createCanonicalId("tenant"),
        userId: createCanonicalId("user"),
        characterId: requested,
        relationshipId: createCanonicalId("relationship"),
      },
    } as AgentConversationAdmission;
  },
};

describe("Gemini Live ephemeral token compatibility", () => {
  for (const [requestedVoice, expectedLiveVoice] of [
    ["Bodi", "Bodi"],
    ["Fora", "Fora"],
  ] as const) {
    it(`issues documented minimal constraints for ${requestedVoice} without leaking server key`, async () => {
      const sent: Array<{ url: string; init: RequestInit }> = [];
      const fakeFetch = (async (url: string, init: RequestInit) => {
        sent.push({ url, init });
        return Response.json({ name: "auth_tokens/safe-test-token-0123456789" });
      }) as typeof fetch;
      const service = createGeminiLiveTokenService({
        apiKey: "server-secret-api-key",
        authorizer,
        voiceName: requestedVoice,
        model: "gemini-3.8-live",
        fetchImpl: fakeFetch,
        now: () => new Date("2026-10-15T03:00:00Z"),
      });
      const grant = await service.mint({
        characterId,
        authorizationHeader: "Bearer valid-user",
      });
      expect(grant.systemInstruction).toContain("Do not introduce yourself");
      expect(grant.model).toBe("gemini-3.8-live");
      expect(grant.voiceName).toBe(expectedLiveVoice);
      expect(grant.token).toBe("auth_tokens/safe-test-token-0123456789");
      expect(sent).toHaveLength(1);
      expect(sent[0]!.url).toBe(
        "https://generativelanguage.googleapis.com/v1beta/auth_tokens",
      );
      const options = sent[0]!.init;
      expect(options.headers).toMatchObject({
        "x-goog-api-key": "server-secret-api-key",
      });
      const body = JSON.parse(String(options.body));
      expect(body).toMatchObject({
        uses: 1,
        fieldMask:"model,generationConfig",
        bidiGenerateContentSetup: {
          model:"models/gemini-3.8-live",
          generationConfig:{
            responseModalities:["AUDIO"],
            speechConfig:{voiceConfig:{prebuiltVoiceConfig:{voiceName:requestedVoice}}},
          },
        },
      });
      expect(body).not.toHaveProperty("liveConnectConstraints");
      expect(body.bidiGenerateContentSetup).not.toHaveProperty("sessionResumption");
      expect(JSON.stringify(body)).not.toContain("server-secret-api-key");

    });
  }

  it("exposes only a whitelisted rejection code, not upstream error details", async () => {
    const stderr = vi.spyOn(console, "error").mockImplementation(() => {});
    const fakeFetch = (async () => Response.json({
      error: { status: "INVALID_ARGUMENT", message: "sensitive user information", details: [{reason: "API_KEY_INVALID"}] },
    }, { status: 400 })) as typeof fetch;
    try {
      const service = createGeminiLiveTokenService({
        apiKey: "server-secret-api-key", authorizer, fetchImpl: fakeFetch,
      });
      await expect(service.mint({
        characterId, authorizationHeader: "Bearer valid-user",
      })).rejects.toMatchObject({code:"agent.provider_unavailable", statusCode:503, providerStatus:400});
      const logged = stderr.mock.calls.map(([item]) => String(item)).join(" ");
      expect(logged).toContain("API_KEY_INVALID");
      expect(logged).not.toContain("sensitive user information");
      expect(logged).not.toContain("server-secret-api-key");
    } finally {
      stderr.mockRestore();
    }
  });

  it("fails closed when identity authorization rejects without contacting provider", async () => {
    const fetchImpl = vi.fn(async () => Response.json({ name: "unexpected" }));
    const service = createGeminiLiveTokenService({
      apiKey: "server-secret-api-key",
      authorizer: { async authorize() { throw new Error("expired"); } },
      fetchImpl: fetchImpl as typeof fetch,
    });
    const stderr = vi.spyOn(console, "error").mockImplementation(() => {});
    try {
      await expect(service.mint({ characterId, authorizationHeader: undefined })).rejects.toThrow("expired");
      expect(fetchImpl).not.toHaveBeenCalled();
    } finally {
      stderr.mockRestore();
    }
  });

  it.each([
    ["masana-profile", "profile"],
    ["published-voice", "voice"],
    ["conversation-context", "history"],
    ["provider-transport", "transport"],
    ["provider-response", "response"],
    ["call-history", "call-history"],
  ] as const)("redacts private errors at the %s issuance stage", async (stage, failing) => {
    const sensitive = "Bearer hidden-private-token user@example.com API-KEY-secret";
    const stderr = vi.spyOn(console, "error").mockImplementation(() => {});
    const fetchImpl = vi.fn(async () => {
      if (failing === "transport") throw new Error(sensitive);
      if (failing === "response") return Response.json({ message: sensitive });
      return Response.json({ name: "auth_tokens/safe-test-token-0123456789" });
    });
    const service = createGeminiLiveTokenService({
      apiKey: "server-secret-api-key",
      authorizer,
      ...(failing === "profile" ? {platformProfiles: {readForCharacter: async () => {throw new Error(sensitive);}} as any} : {}),
      ...(failing === "voice" ? {creatorVoiceReader: {readPublished: async () => {throw new Error(sensitive);}}} : {}),
      ...(failing === "call-history" ? {creatorVoiceReader: {readPublished: async () => "Bodi"}} : {}),
      ...(failing === "history" ? {mobileShell: {listHistory: async () => {throw new Error(sensitive);}} as any} : {}),
      ...(failing === "call-history" ? {callHistory: {recordIssued: async () => {throw new Error(sensitive);}} as any} : {}),
      fetchImpl: fetchImpl as typeof fetch,
    });
    try {
      await expect(service.mint({
        characterId,
        authorizationHeader: "Bearer valid-user",
      })).rejects.toThrow();
      const messages = stderr.mock.calls.map(([item]) => JSON.parse(String(item)) as Record<string, unknown>);
      expect(messages).toContainEqual({event: "agent.live_token_failed", stage, code: "unknown"});
      expect(JSON.stringify(messages)).not.toContain(sensitive);
      expect(JSON.stringify(messages)).not.toContain("server-secret-api-key");
      expect(messages.every((message) => Object.keys(message).every((key) =>
        ["event", "stage", "code", "status"].includes(key)))).toBe(true);
    } finally {
      stderr.mockRestore();
    }
  });

  it("records a bounded provider rejection stage without logging provider secrets", async () => {
    const stderr = vi.spyOn(console, "error").mockImplementation(() => {});
    try {
      const service = createGeminiLiveTokenService({
        apiKey: "server-secret-api-key",
        authorizer,
        fetchImpl: async () => Response.json({
          error: {status: "INVALID_ARGUMENT", message: "private credential token", details: []},
        }, {status: 400}),
      });
      await expect(service.mint({characterId, authorizationHeader: "Bearer valid-user"}))
        .rejects.toMatchObject({code: "agent.provider_unavailable", providerStatus: 400});
      expect(stderr.mock.calls.map(([item]) => JSON.parse(String(item)))).toContainEqual({
        event: "agent.live_token_failed",
        stage: "provider-rejection",
        code: "agent.provider_unavailable",
        status: 400,
      });
      const logs = stderr.mock.calls.map(([item]) => String(item)).join(" ");
      expect(logs).not.toContain("private credential token");
      expect(logs).not.toContain("server-secret-api-key");
    } finally {
      stderr.mockRestore();
    }
  });
});
