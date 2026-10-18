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
});
