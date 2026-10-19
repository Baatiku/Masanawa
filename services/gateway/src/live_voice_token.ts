import { livePersonaInstruction } from './persona_continuity.js';
import { compileConversationHistory } from './conversation_history.js';
import type { MobileShellRepository } from '@masanawa/agents';
import type { ConsumerMasanaMemoryStore } from '@masanawa/postgres';
import type { AgentConversationAuthorizer } from "./agent_conversation_contract.js";
import type { PlatformAgentProfileRepository } from "@masanawa/agents";
import type { LiveVoiceTokenService } from "./agent_shell_contract.js";
import { parseCanonicalId } from "@masanawa/contracts";
import { geminiFailure } from "./gemini_failure.js";
import {
  CallHistoryError,
  type CallHistoryRecorder,
} from "./call_history/service.js";

export function createGeminiLiveTokenService(input: {
  readonly mobileShell?: MobileShellRepository;
  readonly memory?: ConsumerMasanaMemoryStore;
  readonly apiKey: string;
  readonly authorizer: AgentConversationAuthorizer;
  readonly platformProfiles?: PlatformAgentProfileRepository;
  readonly creatorVoiceReader?: {
    readPublished(input:{tenantId:import('@masanawa/contracts').TenantId;characterId:import('@masanawa/contracts').CharacterId}):Promise<string|null>;
  };
  readonly model?: string;
  readonly voiceName?: string;
  readonly fetchImpl?: typeof fetch;
  readonly now?: () => Date;
  readonly callHistory?: CallHistoryRecorder;
  readonly paidVoiceAdmission?: {
    validate(input: {
      readonly tenantId: import("@masanawa/contracts").TenantId;
      readonly userId: import("@masanawa/contracts").UserId;
      readonly characterId: import("@masanawa/contracts").CharacterId;
      readonly admissionId: string | null;
    }): Promise<void>;
    tokenIssued(input: {
      readonly tenantId: import("@masanawa/contracts").TenantId;
      readonly userId: import("@masanawa/contracts").UserId;
      readonly characterId: import("@masanawa/contracts").CharacterId;
      readonly admissionId: string | null;
    }): Promise<void>;
  };
}): LiveVoiceTokenService {
  const apiKey = input.apiKey.trim();
  if (!apiKey) throw new TypeError("Gemini API key is required");
  const model = input.model?.trim() || "gemini-3.8-live";
  const voiceName = input.voiceName?.trim() || "Bodi";
  const fetchImpl = input.fetchImpl ?? fetch;
  const now = input.now ?? (() => new Date());

  async function observe<T>(
    stage: string,
    operation: () => Promise<T>,
  ): Promise<T> {
    try {
      return await operation();
    } catch (error) {
      const code =
        error &&
        typeof error === "object" &&
        "code" in error &&
        typeof error.code === "string" &&
        [
          "UNAUTHORIZED",
          "FORBIDDEN",
          "AUTH_UNAVAILABLE",
          "authority.policy_unavailable",
          "authority.stale_policy",
          "authority.revoked",
        ].includes(error.code)
          ? error.code
          : "unknown";
      console.error(
        JSON.stringify({ event: "agent.live_token_failed", stage, code }),
      );
      throw error;
    }
  }
  const service: LiveVoiceTokenService = {
    async mint(request) {
      // Incoming calls may never fall back to a token service without canonical
      // per-Masana paid/trial admission, including alpha/partial configuration.
      if (request.historyCallId && !input.paidVoiceAdmission) {
        throw new CallHistoryError("calls.paid_admission_unavailable", 403);
      }
      const characterId = parseCanonicalId("character", request.characterId);
      const admission = await observe("admission", () =>
        input.authorizer.authorize({
          authorizationHeader: request.authorizationHeader,
          characterId,
        }),
      );
      await observe("paid-voice-admission", async () =>
        input.paidVoiceAdmission?.validate({
          tenantId: admission.scope.tenantId,
          userId: admission.scope.userId,
          characterId,
          admissionId: request.admissionId ?? null,
        }),
      );
      const profile = input.platformProfiles
        ? await input.platformProfiles.readForCharacter({
            tenantId: admission.scope.tenantId,
            characterId,
          })
        : null;
      const creatorVoice = profile ? null : await input.creatorVoiceReader?.readPublished({
        tenantId:admission.scope.tenantId,characterId,
      }) ?? null;
      const selectedVoiceName =
        profile?.voiceProvider.toLowerCase() === "gemini" &&
        profile.voiceName.trim()
          ? profile.voiceName.trim()
          : creatorVoice ?? voiceName;
      // Do not substitute owner-selected Gemini voices. Bodi and Fora are
      // passed unchanged to the mobile Live setup, exactly as configured.
      // Provider acceptance is verified at runtime, never guessed here.
      if (input.callHistory && !profile && !creatorVoice) {
        throw new CallHistoryError("calls.masana_unavailable", 403);
      }
      const twinSetup = request.purpose === "twin-setup";
      if (twinSetup && profile && !profile.supportAgent) {
        throw new TypeError("Twin setup live voice requires a support agent");
      }

      const saved=input.mobileShell?await observe('conversation-context',()=>input.mobileShell!.listHistory({scope:admission.scope,limit:64})):[];
      let remembered:readonly string[]=[];
      if (input.memory) {
        try { remembered=await input.memory.recall(admission.scope,"continue"); }
        catch { console.warn("Masana Live remembered context unavailable"); }
      }
      const systemInstruction=livePersonaInstruction(admission.presentation,compileConversationHistory(saved,''),remembered);
      const issued = now();
      const expiresAt = new Date(issued.getTime() + 30 * 60 * 1000);
      const newSessionExpireTime = new Date(issued.getTime() + 60 * 1000);
      let issuanceStarted = false;
      let awaitingProviderResponse = true;
      try {
        const response = await fetchImpl(
          "https://generativelanguage.googleapis.com/v1beta/auth_tokens",
          {
            method: "POST",
            signal: AbortSignal.timeout(20_000),
            headers: {
              "x-goog-api-key": apiKey,
              "content-type": "application/json",
            },
            body: JSON.stringify({
              uses: 1,
              expireTime: expiresAt.toISOString(),
              newSessionExpireTime: newSessionExpireTime.toISOString(),
              // liveConnectConstraints is an SDK input, not an AuthToken REST
              // field. Lock top-level generation config while allowing client
              // persona/transcription and session-resumption setup to merge.
              fieldMask: "model,generationConfig",
              bidiGenerateContentSetup: {
                model: "models/" + model,
                generationConfig: {
                  responseModalities: ["AUDIO"],
                  speechConfig: {
                    voiceConfig: { prebuiltVoiceConfig: {voiceName:selectedVoiceName} },
                  },
                },
              },
            }),
          },
        );
        awaitingProviderResponse = false;
        issuanceStarted = response.ok;
        if (!response.ok) {
          throw await geminiFailure(response,"live-token");
        }
        const payload = (await response.json()) as { name?: unknown };
        if (typeof payload.name !== "string" || payload.name.length < 16) {
          console.error(
            JSON.stringify({
              event: "agent.live_token_failed",
              stage: "provider-response",
              status: response.status,
            }),
          );
          throw new Error("Gemini Live token provisioning returned no token");
        }
        await observe("token-issued", async () =>
          input.paidVoiceAdmission?.tokenIssued({
            tenantId: admission.scope.tenantId,
            userId: admission.scope.userId,
            characterId,
            admissionId: request.admissionId ?? null,
          }),
        );
        if (request.historyCallId && !input.callHistory?.attachIssued)
          throw new CallHistoryError("calls.incoming_unavailable", 409);
        const callId = input.callHistory
          ? request.historyCallId
            ? await input.callHistory.attachIssued!({
                tenantId: admission.scope.tenantId,
                userId: admission.scope.userId,
                characterId,
                callId: request.historyCallId,
                expiresAt: expiresAt.toISOString(),
              })
            : await input.callHistory.recordIssued({
                tenantId: admission.scope.tenantId,
                userId: admission.scope.userId,
                characterId,
                expiresAt: expiresAt.toISOString(),
              })
          : undefined;
        return Object.freeze({
          ...(callId ? { callId } : {}),
          token: payload.name,
          websocketUrl:
            "wss://generativelanguage.googleapis.com/ws/" +
            "google.ai.generativelanguage.v1beta.GenerativeService." +
            "BidiGenerateContentConstrained?access_token=" +
            encodeURIComponent(payload.name),
          model,
          voiceName: selectedVoiceName,
          systemInstruction,
          expiresAt: expiresAt.toISOString(),
        });
      } catch (error) {
        if (
          request.historyCallId &&
          (issuanceStarted || awaitingProviderResponse)
        ) {
          const unknown = new Error(
            "Incoming media issuance outcome is unknown",
            { cause: error },
          );
          Object.assign(unknown, { issuanceUnknown: true });
          throw unknown;
        }
        throw error;
      }
    },
  };
  return Object.freeze(service);
}

