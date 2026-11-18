import {replyWalletFailure} from "./gb_wallet/reply_errors.js";
import { once } from "node:events";
import type { FastifyReply } from "fastify";

export interface ConversationStreamCallbacks {
  onTextDelta(delta: string): Promise<void>;
  onAudioPcmChunk(dataBase64: string): Promise<void>;
  onAudioTranscriptDelta(delta: string): Promise<void>;
}
interface StreamReply {
  readonly reply: string;
  readonly agentRunId: string;
  readonly parts: readonly unknown[];
  readonly audioBase64?: string;
  readonly audioMimeType?: string;
  readonly audioDurationMs?: number;
  readonly audioTranscript?: string;
}
/** Shared by text, voice-note and attachment streams; client close cancels work. */
export async function streamConversationReply(
  reply: FastifyReply,
  execute: (callbacks: ConversationStreamCallbacks, signal: AbortSignal) => Promise<StreamReply>,
): Promise<void> {
  reply.hijack();
  reply.raw.statusCode = 200;
  reply.raw.setHeader("content-type", "application/x-ndjson; charset=utf-8");
  reply.raw.setHeader("cache-control", "no-cache, no-transform");
  reply.raw.setHeader("x-content-type-options", "nosniff");
  const controller = new AbortController();
  let finished = false;
  const abort = () => { if (!finished) controller.abort(); };
  reply.raw.once("close", abort);
  const emit = async (event: Record<string, unknown>) => {
    if (controller.signal.aborted || reply.raw.destroyed || reply.raw.writableEnded) return;
    if (!reply.raw.write(JSON.stringify(event) + "\n")) {
      await once(reply.raw, "drain", { signal: controller.signal });
    }
  };
  try {
    const result = await execute({
      onTextDelta: async text => { if (text) await emit({ type: "delta", text }); },
      onAudioPcmChunk: async dataBase64 => { if (dataBase64) await emit({ type: "audio", mimeType: "audio/pcm;rate=24000", sampleRate: 24000, dataBase64 }); },
      onAudioTranscriptDelta: async text => { if (text) await emit({ type: "audio-transcript", text }); },
    }, controller.signal);
    await emit({ type: "done", ...result });
  } catch (error) {
    const walletFailure=replyWalletFailure(error);
    if (!controller.signal.aborted) await emit({ type: "error",code:walletFailure?.code??"turn_failed",
      ...(walletFailure?{message:walletFailure.message}:{}) }).catch(() => undefined);
  } finally {
    finished = true;
    reply.raw.off("close", abort);
    if (!reply.raw.writableEnded && !reply.raw.destroyed) reply.raw.end();
  }
}
