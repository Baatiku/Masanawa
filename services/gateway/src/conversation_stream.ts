import {replyWalletFailure} from "./gb_wallet/reply_errors.js";
import { once } from "node:events";
import type { FastifyReply } from "fastify";

export interface ConversationStreamCallbacks {
  onAccepted(): Promise<void>;
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
/** Once admitted to the durable turn journal, complete within a server deadline. */
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
  const disconnected = new AbortController();
  const deadline = setTimeout(() => controller.abort(), 115_000);
  let accepted = false;
  const abort = () => {
    disconnected.abort();
    if (!accepted) controller.abort();
  };
  reply.raw.once("close", abort);
  const emit = async (event: Record<string, unknown>) => {
    if (disconnected.signal.aborted || reply.raw.destroyed || reply.raw.writableEnded) return;
    if (!reply.raw.write(JSON.stringify(event) + "\n")) {
      await once(reply.raw, "drain", { signal: AbortSignal.any([disconnected.signal, controller.signal]) })
        .catch(error => { if (!disconnected.signal.aborted) throw error; });
    }
  };
  try {
    const result = await execute({
      async onAccepted() {
        if (controller.signal.aborted) return;
        accepted = true;
        await emit({ type: "accepted" });
      },
      onTextDelta: async text => { if (text) await emit({ type: "delta", text }); },
      onAudioPcmChunk: async dataBase64 => { if (dataBase64) await emit({ type: "audio", mimeType: "audio/pcm;rate=24000", sampleRate: 24000, dataBase64 }); },
      onAudioTranscriptDelta: async text => { if (text) await emit({ type: "audio-transcript", text }); },
    }, controller.signal);
    await emit({ type: "done", ...result });
  } catch (error) {
    const walletFailure=replyWalletFailure(error);
    if (!disconnected.signal.aborted) await emit({ type: "error",code:walletFailure?.code??"turn_failed",
      ...(walletFailure?{message:walletFailure.message}:{}) }).catch(() => undefined);
  } finally {
    clearTimeout(deadline);
    reply.raw.off("close", abort);
    if (!reply.raw.writableEnded && !reply.raw.destroyed) reply.raw.end();
  }
}
