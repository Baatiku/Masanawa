import { optionalAudioReply } from "./optional_audio_reply.js";
import { GeminiProviderError } from "./gemini_failure.js";
import {recordMasanaQuality} from "./masana_quality_signals.js";
import { observeSessionOpen } from "./agent_session_diagnostics.js";
import { compileConversationHistory } from "./conversation_history.js";
import { createHash } from "node:crypto";
import {
  PlatformError,
  createCanonicalId,
  parseCanonicalId,
} from "@masanawa/contracts";
import type {
  AgentRunRepository,
  AgentStrategy,
  AgentStrategyResult,
  CharacterSessionRepository,
  MobileShellRepository,
  MobileTurnCommand,
} from "@masanawa/agents";
import type {
  AgentConversationAuthorizer,
  AgentConversationAdmission,
  AgentConversationService,
} from "./agent_conversation_contract.js";
import type { NativeAudioRenderer, NativeAudioRenderResult } from "./native_audio.js";
import type { AgentBillingAssistant } from "./agent_billing_assistant.js";
import type { AgentTeachingAssistant } from "./agent_teaching_assistant.js";
import type { AgentCryptoAssistant } from "./agent_crypto_assistant.js";

/** Closed, non-sensitive failure categories for operational diagnostics. */
export function agentFailureCode(error: unknown, fallback: string): string {
  if (!(error instanceof GeminiProviderError)) return fallback;
  if (error.providerReason === "QUOTA_EXCEEDED") return "agent.provider_quota_exceeded";
  if (error.providerReason === "RATE_LIMIT_EXCEEDED") return "agent.provider_rate_limited";
  if (error.providerStatus === 429 || error.providerReason === "RESOURCE_EXHAUSTED") return "agent.provider_rate_limited";
  if ([
    "API_KEY_INVALID", "API_KEY_EXPIRED", "API_KEY_SERVICE_BLOCKED",
    "API_KEY_HTTP_REFERRER_BLOCKED", "API_KEY_IP_ADDRESS_BLOCKED",
    "UNAUTHENTICATED", "PERMISSION_DENIED",
  ].includes(error.providerReason)) return "agent.provider_auth_failed";
  return "agent.provider_unavailable";
}

/** Allowlisted failure signals only; never log provider messages, user prompts or URLs. */
export function agentFailureDiagnostic(error:unknown):string {
  if(error instanceof GeminiProviderError){
    if(error.providerStatus===429)return "google_http_429";
    if(error.providerStatus===503)return "google_http_503";
    if(error.providerStatus===400)return "google_http_400";
    if(error.providerStatus===404)return "google_http_404";
    if(error.providerStatus===403)return "google_http_403";
    if(error.providerStatus===401)return "google_http_401";
    return "google_http_other";
  }
  if(error instanceof Error){
    if(error.name==="TimeoutError"||error.name==="AbortError")return "timeout_or_cancel";
    const allowed=new Set([
      "Gemini returned no text","Gemini stream returned no body",
      "official_stream_limit","official_stream_empty",
      "civic_stream_limit","civic_stream_empty",
      "official_evidence_retrieval_unavailable","civic_evidence_retrieval_unavailable",
      "official_speech_unintelligible","civic_speech_unintelligible",
      "official_evidence_scope_changed","civic_evidence_scope_changed",
    ]);
    if(allowed.has(error.message))return error.message;
    if(error instanceof SyntaxError)return "response_parse_failed";
    if(error instanceof TypeError)return "invalid_response_or_transport";
  }
  return "unclassified";
}

function hashTurnPayload(value: string): string {
  return createHash("sha256").update(value, "utf8").digest("hex");
}


function assertConversationSessionOpen(session: {
  readonly state: "active" | "closed";
  readonly expiresAt: string;
  readonly characterVersionId?:string;
},expectedVersion?:string): void {
  if (
    (expectedVersion!==undefined&&session.characterVersionId!==expectedVersion) ||
    session.state !== "active" ||
    !Number.isFinite(Date.parse(session.expiresAt)) ||
    Date.parse(session.expiresAt) <= Date.now()
  ) {
    throw new PlatformError({
      code: "agents.session_closed",
      category: "conflict",
      message: "The conversation session is closed or expired.",
      retryable: true,
    });
  }
}

function replayTurn(command: MobileTurnCommand) {
  if (
    command.state === "completed" &&
    command.reply !== null &&
    command.agentRunId !== null
  ) {
    return Object.freeze({
      reply: command.reply,
      agentRunId: command.agentRunId,
      parts: command.parts,
    });
  }
  if (command.state === "failed") {
    throw new PlatformError({
      code: command.failureCode || "agents.turn_failed",
      category: "conflict",
      message: "The original agent turn failed. Send a new request to try again.",
      retryable: false,
    });
  }
  throw new PlatformError({
    code: "agents.turn_pending",
    category: "conflict",
    message: "The original agent turn is still running or requires reconciliation.",
    retryable: true,
  });
}

export interface TwinConversationObserver {
  opened(input: {
    readonly tenantId: string;
    readonly userId: string;
    readonly characterId: string;
    readonly characterSessionId: string;
  }): Promise<void>;
  completed(input: {
    readonly tenantId: string;
    readonly userId: string;
    readonly characterId: string;
    readonly referenceId: string;
  }): Promise<void>;
}

export function createAgentConversationService(input: {
  readonly customerMemory?:{
    forScope(scope:import('@masanawa/agents').CharacterSessionScope,query:string):Promise<NonNullable<import('@masanawa/agents').AgentStrategyRequest['userMemory']>>;
    propose(scope:import('@masanawa/agents').CharacterSessionScope,text:string,requestId:string):Promise<void>;
  };
  readonly stageReplyAudio?:(scope:import('@masanawa/agents').CharacterSessionScope,requestId:string,audio:{dataBase64:string;mimeType:string})=>Promise<unknown>;
  readonly sessions: CharacterSessionRepository;
  readonly runs: AgentRunRepository;
  readonly authorizer: AgentConversationAuthorizer;
  readonly strategy: AgentStrategy;
  /** New paid turns require current account/recovery authority before any hold. */
  readonly beforeTurn?: (authorizationHeader:string|undefined)=>Promise<void>;
  readonly generateSpokenReply?: (text:string,system:string,signal?:AbortSignal,voice?:string)=>Promise<NativeAudioRenderResult>;
  readonly nativeAudio?: NativeAudioRenderer;
  readonly voiceForCharacter?: (scope: import("@masanawa/agents").CharacterSessionScope) => Promise<string | undefined>;
  readonly mobileShell?: MobileShellRepository;
  readonly twinObserver?: TwinConversationObserver;
  readonly billingAssistant?: AgentBillingAssistant;
  readonly teachingAssistant?: AgentTeachingAssistant;
  readonly cryptoAssistant?: AgentCryptoAssistant;
  readonly sessionDurationMs: number;
}): AgentConversationService {
  if (
    !Number.isSafeInteger(input.sessionDurationMs) ||
    input.sessionDurationMs < 60_000
  ) {
    throw new RangeError("Alpha session duration must be at least one minute");
  }

  function evidenceAccess(admission:AgentConversationAdmission,authorizationHeader:string|undefined){
    const official=!!admission.presentation.narrative?.publicOfficial;
    const civicId=admission.presentation.narrative?.civicAgency?.id;
    if(!official&&!civicId)return {};
    const reread=async(query:string)=>{
      const current=await input.authorizer.authorize({authorizationHeader,characterId:admission.scope.characterId,evidenceQuery:query.slice(0,500)});
      if(current.scope.tenantId!==admission.scope.tenantId||current.scope.userId!==admission.scope.userId||
        current.scope.characterId!==admission.scope.characterId||current.characterVersionId!==admission.characterVersionId)
        throw Error(official?'official_evidence_scope_changed':'civic_evidence_scope_changed');
      return current.presentation.narrative;
    };
    return {
      ...(official?{readPublicEvidence:async(query:string)=>{
        const narrative=await reread(query);
        if(!narrative?.publicOfficial)throw Error('official_evidence_scope_changed');
        return narrative.publicOfficial;
      }}:{}),
      ...(civicId?{readCivicEvidence:async(query:string)=>{
        const narrative=await reread(query);
        if(narrative?.civicAgency?.id!==civicId)throw Error('civic_evidence_scope_changed');
        return narrative.civicAgency;
      }}:{}),
    };
  }

  const spokenText=(reply:string,official:boolean)=>official?
    reply.replace(/\[([^\]]+)\]\(https?:\/\/[^)]+\)/g,'$1').replace(/https?:\/\/\S+/g,''):reply;

  async function renderAudio(
    reply: string,
    scope: import("@masanawa/agents").CharacterSessionScope,
    signal?: AbortSignal,
    onAudioPcmChunk?: (dataBase64: string) => void | Promise<void>,
    onAudioTranscriptDelta?: (delta: string) => void | Promise<void>,
    official=false,
    timeoutMs=18_000,
  ) {
    if (!input.nativeAudio || signal?.aborted) return undefined;
    return optionalAudioReply(async (audioSignal) => {
      const voiceName = await input.voiceForCharacter?.(scope);
      if (audioSignal.aborted) return undefined;
      return input.nativeAudio!.render(
        spokenText(reply,official), audioSignal,
        onAudioPcmChunk ? async (chunk) => {
          if (!audioSignal.aborted) await onAudioPcmChunk(chunk.toString("base64"));
        } : undefined,
        { ...(voiceName ? {voiceName} : {}),
          ...(onAudioTranscriptDelta ? {onTranscriptDelta: async (text: string) => {
            if (!audioSignal.aborted) await onAudioTranscriptDelta(text);
          }} : {}),
        },
      );
    }, signal, timeoutMs);
  }

  async function stagePairedAudio(scope:import("@masanawa/agents").CharacterSessionScope,
    requestId:string,audio:NativeAudioRenderResult|undefined,signal?:AbortSignal){
    // Audio is enrichment, not a condition for the durable text reply. An
    // unavailable TTS provider or media store must not invalidate completed
    // text inference (including a voice note's understood text response).
    if(!input.stageReplyAudio || !audio)return;
    signal?.throwIfAborted();
    try { await input.stageReplyAudio(scope,requestId,audio); }
    catch { console.warn(JSON.stringify({event:"agent.reply_audio_staging_failed",code:"agent.audio_optional"})); }
  }

  async function conversationHistory(scope: import("@masanawa/agents").CharacterSessionScope, requestId:string) {
    if(!input.mobileShell) return Object.freeze([]);
    return compileConversationHistory(await input.mobileShell.listHistory({scope,limit:16}),requestId);
  }

  const service: AgentConversationService = {
    async preflight(request){
      const admission=await input.authorizer.authorize({authorizationHeader:request.authorizationHeader,characterId:parseCanonicalId('character',request.characterId)});
      const session=await input.sessions.read({authority:admission.authority,scope:admission.scope,characterSessionId:parseCanonicalId('character-session',request.characterSessionId)});
      assertConversationSessionOpen(session,admission.presentation.narrative?.publicOfficial?admission.characterVersionId:undefined);
      await input.beforeTurn?.(request.authorizationHeader);
    },
    async open(request) {
      const characterId = parseCanonicalId("character", request.characterId);
      const admission = await observeSessionOpen("admission", () => input.authorizer.authorize({
        authorizationHeader: request.authorizationHeader,
        characterId,
      }));
      if (admission.scope.characterId !== characterId) {
        throw new TypeError("Agent conversation admission Character mismatch");
      }

      const characterSessionId = createCanonicalId("character-session");
      await observeSessionOpen("session-create", () => input.sessions.create({
        authority: admission.authority,
        scope: admission.scope,
        characterSessionId,
        characterVersionId: admission.characterVersionId,
        durationMs: input.sessionDurationMs,
        bindings: admission.bindings,
      }));
      await input.twinObserver?.opened({
        tenantId: admission.scope.tenantId,
        userId: admission.scope.userId,
        characterId: admission.scope.characterId,
        characterSessionId,
      }).catch(() => undefined);
      return Object.freeze({ characterSessionId });
    },

    async turn(request) {
      const characterSessionId = parseCanonicalId(
        "character-session",
        request.characterSessionId,
      );
      const text = request.text.trim();
      if (text.length < 1 || text.length > 32_000) {
        throw new RangeError("Agent turn text is invalid");
      }

      const admission = await input.authorizer.authorize({
        authorizationHeader: request.authorizationHeader,
        characterId: parseCanonicalId("character", request.characterId),
        evidenceQuery:text.slice(0,500),
      });
      const session = await input.sessions.read({
        authority: admission.authority,
        scope: admission.scope,
        characterSessionId,
      });
      assertConversationSessionOpen(session,admission.presentation.narrative?.publicOfficial?admission.characterVersionId:undefined);
      await input.beforeTurn?.(request.authorizationHeader);

      if (input.mobileShell) {
        const claim = await input.mobileShell.claimTurn({
          scope: admission.scope,
          characterSessionId,
          requestId: request.requestId,
          kind: "text",
          userText: text,
          payloadHash: hashTurnPayload(text),
        });
        if (claim.state === "existing") return replayTurn(claim.command);
        await Promise.resolve().then(() => request.onAccepted?.()).catch(() => undefined);
        await input.mobileShell.appendEvent({
          scope: admission.scope,
          characterSessionId,
          type: "turn.started",
          payload: { requestId: request.requestId, kind: "text" },
        }).catch(() => undefined);
      }

      const agentRunId = createCanonicalId("agent-run");
      let stage = "create_run";
      try {
      await input.runs.create({
        authority: admission.authority,
        scope: admission.scope,
        agentRunId,
        characterSessionId,
        characterVersionId: session.characterVersionId,
        lineage: {
          parentAgentRunId: null,
          rootAgentRunId: agentRunId,
          depth: 0,
        },
        trace: {
          requestId: request.requestId,
          correlationId: request.correlationId,
          taskId: null,
          workflowRunId: null,
          operationIds: [],
        },
      });

        stage = "generate_reply";
        const teachingPreparation = await input.teachingAssistant?.prepare({
          scope: admission.scope,
          text,
        });
        const billingDirect = teachingPreparation
          ? null
          : await input.billingAssistant?.beforeInference({
              authorizationHeader: request.authorizationHeader,
              characterId: admission.scope.characterId,
              text,
            });
        const cryptoDirect = teachingPreparation || billingDirect
          ? null
          : await input.cryptoAssistant?.beforeInference({
              authorizationHeader: request.authorizationHeader,
              characterId: admission.scope.characterId,
              scope: admission.scope,
              text,
            });
        const direct = billingDirect ?? cryptoDirect;
        const inferenceText = teachingPreparation?.text ?? text;
        const generated: AgentStrategyResult = direct ?? await input.strategy.execute({
          agentRunId,
          characterSessionId,
          characterVersionId: session.characterVersionId,
          skillVersionIds: session.bindings.skillVersionIds,
          presentation: admission.presentation,
          ...evidenceAccess(admission,request.authorizationHeader),
          conversationHistory: await conversationHistory(admission.scope,request.requestId),
          ...(input.customerMemory?{userMemory:await input.customerMemory.forScope(admission.scope,inferenceText)}:{}),
          surface: request.surface ?? "mobile",
          representation: request.representation ?? "platform-agent",
          ...(request.signal ? { signal: request.signal } : {}),
          // Machine directives are stripped after inference. Do not stream
          // them into the user-visible chat before server consumption.
          ...(!input.billingAssistant &&
              !input.cryptoAssistant &&
              !teachingPreparation &&
              request.onTextDelta
            ? { onTextDelta: request.onTextDelta }
            : {}),
          ...(!teachingPreparation&&!input.billingAssistant&&!input.cryptoAssistant&&input.generateSpokenReply?{
            speakReply: async ({message,system}:{message:string;system:string})=>{
              const audio=await optionalAudioReply(async signal=>{
                const voice=await input.voiceForCharacter?.(admission.scope);
                return input.generateSpokenReply!(message,system,signal,voice);
              },request.signal,15_000);
              request.signal?.throwIfAborted();
              return audio?.transcript?.trim()?{...audio,transcript:audio.transcript.trim()}:undefined;
            },
          }:{}),
          input: Object.freeze({ kind: "text" as const, text: inferenceText }),
        });
        const cryptoResult = direct || teachingPreparation
          ? null
          : await input.cryptoAssistant?.afterInference({
              authorizationHeader: request.authorizationHeader,
              characterId: admission.scope.characterId,
              scope: admission.scope,
              modelReply: generated.reply,
            });
        const result = direct
          ? direct
          : teachingPreparation && input.teachingAssistant
            ? await input.teachingAssistant.finish({
                preparation: teachingPreparation,
                modelReply: generated.reply,
              })
            : cryptoResult ??
              (await input.billingAssistant?.afterInference({
                authorizationHeader: request.authorizationHeader,
                characterId: admission.scope.characterId,
                modelReply: generated.reply,
              })) ??
              generated;
        const reply = result.reply.trim();
        if (!reply) throw new Error("empty strategy reply");
        recordMasanaQuality(admission.scope.characterId,reply);

        stage = "prepare_audio";
        const audio = (!direct && !teachingPreparation && !cryptoResult && !input.billingAssistant
          ? generated.spokenReply : undefined) ?? await renderAudio(
          reply,
          admission.scope,
          request.signal,
          request.onAudioPcmChunk,
          request.onAudioTranscriptDelta,
          !!(admission.presentation.narrative?.publicOfficial||admission.presentation.narrative?.civicAgency),
        );
        await stagePairedAudio(admission.scope,request.requestId,audio,request.signal);
        stage = "save_reply";

        await input.runs.finish({
          authority: admission.authority,
          scope: admission.scope,
          agentRunId,
          outcome: { state: "completed" },
        });

        if (input.mobileShell) {
          await input.mobileShell.completeTurn({
            scope: admission.scope,
            requestId: request.requestId,
            agentRunId,
            reply,
            parts: result.parts,
          });
          await input.mobileShell.appendEvent({
            scope: admission.scope,
            characterSessionId,
            type: "turn.completed",
            payload: {
              requestId: request.requestId,
              agentRunId,
              reply,
              parts: [...result.parts],
            },
          }).catch(() => undefined);
        }

        await input.twinObserver?.completed({
          tenantId: admission.scope.tenantId,
          userId: admission.scope.userId,
          characterId: admission.scope.characterId,
          referenceId: request.requestId,
        }).catch(() => undefined);

        await input.customerMemory?.propose(admission.scope,text,request.requestId).catch(()=>undefined);
        return Object.freeze({
          reply,
          agentRunId,
          parts: result.parts,
          ...(audio
            ? {
                audioBase64: audio.dataBase64,
                audioMimeType: audio.mimeType,
                audioDurationMs: audio.durationMs,
                audioTranscript:audio.transcript??spokenText(reply,!!(admission.presentation.narrative?.publicOfficial||admission.presentation.narrative?.civicAgency)),
              }
            : {}),
        });
      } catch (error) {
        const failureCode = agentFailureCode(error, "alpha.strategy_failed");
        console.warn(JSON.stringify({event:"agent.text_turn_failed",stage,failureCode,
          diagnostic:agentFailureDiagnostic(error),
          reason:request.signal?.aborted?"client_disconnected":"processing_failed"}));
        await input.runs
          .finish({
            authority: admission.authority,
            scope: admission.scope,
            agentRunId,
            outcome: {
              state: "failed",
              failureCode,
            },
          })
          .catch(() => undefined);
        if (input.mobileShell) {
          await input.mobileShell
            .failTurn({
              scope: admission.scope,
              requestId: request.requestId,
              agentRunId,
              failureCode,
            })
            .catch(() => undefined);
          await input.mobileShell
            .appendEvent({
              scope: admission.scope,
              characterSessionId,
              type: "turn.failed",
              payload: {
                requestId: request.requestId,
                agentRunId,
                failureCode,
              },
            })
            .catch(() => undefined);
        }
        throw error;
      }
    },

    async mediaTurn(request) {
      const characterSessionId = parseCanonicalId(
        "character-session",
        request.characterSessionId,
      );
      const characterId = parseCanonicalId("character", request.characterId);
      const caption = request.caption.trim();
      const mimeType = request.mimeType.trim().toLowerCase();
      if (
        !/^[a-z0-9.+-]+\/[a-z0-9.+-]+$/u.test(mimeType) ||
        request.dataBase64.length < 1 ||
        request.dataBase64.length > 12_000_000
      ) {
        throw new RangeError("Agent media turn is invalid");
      }

      const admission = await input.authorizer.authorize({
        authorizationHeader: request.authorizationHeader,
        characterId,
        ...(caption?{evidenceQuery:caption.slice(0,500)}:{}),
      });
      const session = await input.sessions.read({
        authority: admission.authority,
        scope: admission.scope,
        characterSessionId,
      });
      assertConversationSessionOpen(session,admission.presentation.narrative?.publicOfficial?admission.characterVersionId:undefined);
      await input.beforeTurn?.(request.authorizationHeader);

      if (input.mobileShell) {
        const claim = await input.mobileShell.claimTurn({
          scope: admission.scope,
          characterSessionId,
          requestId: request.requestId,
          kind: "media",
          userText: caption,
          payloadHash: hashTurnPayload(
            JSON.stringify([mimeType, caption, request.dataBase64]),
          ),
        });
        if (claim.state === "existing") return replayTurn(claim.command);
        await Promise.resolve().then(() => request.onAccepted?.()).catch(() => undefined);
        await input.mobileShell.appendEvent({
          scope: admission.scope,
          characterSessionId,
          type: "turn.started",
          payload: { requestId: request.requestId, kind: "media" },
        }).catch(() => undefined);
      }

      const agentRunId = createCanonicalId("agent-run");
      try {
      await input.runs.create({
        authority: admission.authority,
        scope: admission.scope,
        agentRunId,
        characterSessionId,
        characterVersionId: session.characterVersionId,
        lineage: {
          parentAgentRunId: null,
          rootAgentRunId: agentRunId,
          depth: 0,
        },
        trace: {
          requestId: request.requestId,
          correlationId: request.correlationId,
          taskId: null,
          workflowRunId: null,
          operationIds: [],
        },
      });

        const generated = await input.strategy.execute({
          agentRunId,
          characterSessionId,
          characterVersionId: session.characterVersionId,
          skillVersionIds: session.bindings.skillVersionIds,
          presentation: admission.presentation,
          ...evidenceAccess(admission,request.authorizationHeader),
          conversationHistory: await conversationHistory(admission.scope,request.requestId),
          ...(input.customerMemory?{userMemory:await input.customerMemory.forScope(admission.scope,caption)}:{}),
          surface: request.surface ?? "mobile",
          representation: request.representation ?? "platform-agent",
          ...(request.signal ? { signal: request.signal } : {}),
          ...(request.onTextDelta ? {onTextDelta:request.onTextDelta} : {}),
          input: Object.freeze({
            kind: "media" as const,
            caption,
            mimeType,
            dataBase64: request.dataBase64,
          }),
        });
        const result =
          (await input.billingAssistant?.afterInference({
            authorizationHeader: request.authorizationHeader,
            characterId: admission.scope.characterId,
            modelReply: generated.reply,
          })) ?? generated;
        const reply = result.reply.trim();
        if (!reply) throw new Error("empty strategy reply");
        recordMasanaQuality(admission.scope.characterId,reply);

        // Voice notes take longer to transcribe and synthesize than typed turns.
        // Give their optional spoken companion more time without holding text-only
        // requests hostage to the same longer TTS deadline.
        const audio = await renderAudio(reply, admission.scope, request.signal, request.onAudioPcmChunk, request.onAudioTranscriptDelta, !!(admission.presentation.narrative?.publicOfficial||admission.presentation.narrative?.civicAgency), 26_000);
        await stagePairedAudio(admission.scope,request.requestId,audio,request.signal);

        await input.runs.finish({
          authority: admission.authority,
          scope: admission.scope,
          agentRunId,
          outcome: { state: "completed" },
        });

        if (input.mobileShell) {
          await input.mobileShell.completeTurn({
            scope: admission.scope,
            requestId: request.requestId,
            agentRunId,
            reply,
            parts: result.parts,
          });
          await input.mobileShell.appendEvent({
            scope: admission.scope,
            characterSessionId,
            type: "turn.completed",
            payload: {
              requestId: request.requestId,
              agentRunId,
              reply,
              parts: [...result.parts],
            },
          }).catch(() => undefined);
        }

        await input.twinObserver?.completed({
          tenantId: admission.scope.tenantId,
          userId: admission.scope.userId,
          characterId: admission.scope.characterId,
          referenceId: request.requestId,
        }).catch(() => undefined);

        return Object.freeze({
          reply,
          agentRunId,
          parts: result.parts,
          ...(audio
            ? {
                audioBase64: audio.dataBase64,
                audioMimeType: audio.mimeType,
                audioDurationMs: audio.durationMs,
                audioTranscript:audio.transcript??spokenText(reply,!!(admission.presentation.narrative?.publicOfficial||admission.presentation.narrative?.civicAgency)),
              }
            : {}),
        });
      } catch (error) {
        const failureCode = agentFailureCode(error, "alpha.media_strategy_failed");
        console.warn(JSON.stringify({event:"agent.media_turn_failed",failureCode,
          diagnostic:agentFailureDiagnostic(error)}));
        await input.runs
          .finish({
            authority: admission.authority,
            scope: admission.scope,
            agentRunId,
            outcome: {
              state: "failed",
              failureCode,
            },
          })
          .catch(() => undefined);
        if (input.mobileShell) {
          await input.mobileShell
            .failTurn({
              scope: admission.scope,
              requestId: request.requestId,
              agentRunId,
              failureCode,
            })
            .catch(() => undefined);
        }
        throw error;
      }
    },

    async mediaSetTurn(request) {
      const characterSessionId = parseCanonicalId(
        "character-session",
        request.characterSessionId,
      );
      const characterId = parseCanonicalId("character", request.characterId);
      const caption = request.caption.trim();
      if (
        !Array.isArray(request.media) ||
        request.media.length < 2 ||
        request.media.length > 8
      ) {
        throw new RangeError("Agent media set is invalid");
      }
      let aggregate = 0;
      const media = request.media.map((item) => {
        const mimeType = item.mimeType.trim().toLowerCase();
        aggregate += item.dataBase64.length;
        if (
          aggregate > 16_000_000 ||
          !/^[a-z0-9.+-]+\/[a-z0-9.+-]+$/u.test(mimeType) ||
          item.dataBase64.length < 1 ||
          item.dataBase64.length > 12_000_000 ||
          (item.name !== undefined && item.name.length > 240)
        ) {
          throw new RangeError("Agent media set is invalid");
        }
        return Object.freeze({
          mimeType,
          dataBase64: item.dataBase64,
          ...(item.name?.trim() ? { name: item.name.trim() } : {}),
        });
      });

      const admission = await input.authorizer.authorize({
        authorizationHeader: request.authorizationHeader,
        characterId,
        ...(caption?{evidenceQuery:caption.slice(0,500)}:{}),
      });
      const session = await input.sessions.read({
        authority: admission.authority,
        scope: admission.scope,
        characterSessionId,
      });
      assertConversationSessionOpen(session,admission.presentation.narrative?.publicOfficial?admission.characterVersionId:undefined);
      await input.beforeTurn?.(request.authorizationHeader);

      if (input.mobileShell) {
        const claim = await input.mobileShell.claimTurn({
          scope: admission.scope,
          characterSessionId,
          requestId: request.requestId,
          kind: "media-set",
          userText: caption,
          payloadHash: hashTurnPayload(
            JSON.stringify([
              caption,
              ...media.map((item) => [
                item.mimeType,
                item.name ?? "",
                item.dataBase64,
              ]),
            ]),
          ),
        });
        if (claim.state === "existing") return replayTurn(claim.command);
        await Promise.resolve().then(() => request.onAccepted?.()).catch(() => undefined);
        await input.mobileShell.appendEvent({
          scope: admission.scope,
          characterSessionId,
          type: "turn.started",
          payload: { requestId: request.requestId, kind: "media-set" },
        }).catch(() => undefined);
      }

      const agentRunId = createCanonicalId("agent-run");
      try {
      await input.runs.create({
        authority: admission.authority,
        scope: admission.scope,
        agentRunId,
        characterSessionId,
        characterVersionId: session.characterVersionId,
        lineage: {
          parentAgentRunId: null,
          rootAgentRunId: agentRunId,
          depth: 0,
        },
        trace: {
          requestId: request.requestId,
          correlationId: request.correlationId,
          taskId: null,
          workflowRunId: null,
          operationIds: [],
        },
      });

        const generated = await input.strategy.execute({
          agentRunId,
          characterSessionId,
          characterVersionId: session.characterVersionId,
          skillVersionIds: session.bindings.skillVersionIds,
          presentation: admission.presentation,
          ...evidenceAccess(admission,request.authorizationHeader),
          conversationHistory: await conversationHistory(admission.scope,request.requestId),
          ...(input.customerMemory?{userMemory:await input.customerMemory.forScope(admission.scope,caption)}:{}),
          surface: request.surface ?? "mobile",
          representation: request.representation ?? "platform-agent",
          ...(request.signal ? { signal: request.signal } : {}),
          ...(request.onTextDelta ? {onTextDelta:request.onTextDelta} : {}),
          input: Object.freeze({
            kind: "media-set" as const,
            caption,
            media: Object.freeze(media),
          }),
        });
        const result =
          (await input.billingAssistant?.afterInference({
            authorizationHeader: request.authorizationHeader,
            characterId: admission.scope.characterId,
            modelReply: generated.reply,
          })) ?? generated;
        const reply = result.reply.trim();
        if (!reply) throw new Error("empty strategy reply");
        recordMasanaQuality(admission.scope.characterId,reply);

        const audio = await renderAudio(reply, admission.scope, request.signal, request.onAudioPcmChunk, request.onAudioTranscriptDelta, !!(admission.presentation.narrative?.publicOfficial||admission.presentation.narrative?.civicAgency));
        await stagePairedAudio(admission.scope,request.requestId,audio,request.signal);

        await input.runs.finish({
          authority: admission.authority,
          scope: admission.scope,
          agentRunId,
          outcome: { state: "completed" },
        });
        if (input.mobileShell) {
          await input.mobileShell.completeTurn({
            scope: admission.scope,
            requestId: request.requestId,
            agentRunId,
            reply,
            parts: result.parts,
          });
          await input.mobileShell.appendEvent({
            scope: admission.scope,
            characterSessionId,
            type: "turn.completed",
            payload: {
              requestId: request.requestId,
              agentRunId,
              reply,
              parts: [...result.parts],
            },
          }).catch(() => undefined);
        }

        return Object.freeze({
          reply,
          agentRunId,
          parts: result.parts,
          ...(audio
            ? {
                audioBase64: audio.dataBase64,
                audioMimeType: audio.mimeType,
                audioDurationMs: audio.durationMs,
                audioTranscript:audio.transcript??spokenText(reply,!!(admission.presentation.narrative?.publicOfficial||admission.presentation.narrative?.civicAgency)),
              }
            : {}),
        });
      } catch (error) {
        await input.runs
          .finish({
            authority: admission.authority,
            scope: admission.scope,
            agentRunId,
            outcome: {
              state: "failed",
              failureCode: "alpha.media_set_strategy_failed",
            },
          })
          .catch(() => undefined);
        if (input.mobileShell) {
          await input.mobileShell
            .failTurn({
              scope: admission.scope,
              requestId: request.requestId,
              agentRunId,
              failureCode: "alpha.media_set_strategy_failed",
            })
            .catch(() => undefined);
        }
        throw error;
      }
    },

    async close(request) {
      const characterSessionId = parseCanonicalId(
        "character-session",
        request.characterSessionId,
      );
      const admission = await input.authorizer.authorize({
        authorizationHeader: request.authorizationHeader,
        characterId: parseCanonicalId("character", request.characterId),
      });
      const session = await input.sessions.read({
        authority: admission.authority,
        scope: admission.scope,
        characterSessionId,
      });
      assertConversationSessionOpen(session);
      if (session.state === "closed") return;

      await input.sessions.close({
        authority: admission.authority,
        scope: admission.scope,
        characterSessionId,
        expectedRevision: session.revision,
      });
    },
  };
  return Object.freeze(service);
}
