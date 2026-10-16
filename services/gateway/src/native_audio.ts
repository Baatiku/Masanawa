import { geminiFailure } from "./gemini_failure.js";
export interface NativeAudioRenderResult {
  readonly dataBase64: string;
  readonly mimeType: string;
  readonly durationMs: number;
}

export interface NativeAudioRenderer {
  render(
    text: string,
    signal?: AbortSignal,
    onPcmChunk?: (chunk: Buffer) => void | Promise<void>,
    context?: Readonly<{ voiceName?: string }>,
  ): Promise<NativeAudioRenderResult>;
}

interface GeminiAudioResponse {
  readonly steps?: readonly {
    readonly type?: string;
    readonly content?: readonly {
      readonly type?: string;
      readonly mime_type?: unknown;
      readonly data?: unknown;
    }[];
  }[];
  readonly candidates?: readonly {
    readonly content?: {
      readonly parts?: readonly {
        readonly inlineData?: {
          readonly mimeType?: unknown;
          readonly data?: unknown;
        };
        readonly inline_data?: {
          readonly mime_type?: unknown;
          readonly data?: unknown;
        };
      }[];
    };
  }[];
}

function audioPart(payload: GeminiAudioResponse): {
  readonly mimeType: string;
  readonly dataBase64: string;
} {
  for (const step of [...(payload.steps ?? [])].reverse()) {
    if (step.type !== "model_output") continue;
    for (const part of [...(step.content ?? [])].reverse()) {
      if (
        part.type === "audio" &&
        typeof part.data === "string" &&
        typeof part.mime_type === "string" &&
        part.data.length > 0
      ) {
        return {
          dataBase64: part.data,
          mimeType:
            part.mime_type === "audio/l16"
              ? "audio/l16;rate=24000"
              : part.mime_type,
        };
      }
    }
  }
  for (const candidate of payload.candidates ?? []) {
    for (const part of candidate.content?.parts ?? []) {
      const inline = part.inlineData;
      if (
        inline &&
        typeof inline.mimeType === "string" &&
        typeof inline.data === "string" &&
        inline.data.length > 0
      ) {
        return Object.freeze({
          mimeType: inline.mimeType,
          dataBase64: inline.data,
        });
      }
      const legacy = part.inline_data;
      if (
        legacy &&
        typeof legacy.mime_type === "string" &&
        typeof legacy.data === "string" &&
        legacy.data.length > 0
      ) {
        return Object.freeze({
          mimeType: legacy.mime_type,
          dataBase64: legacy.data,
        });
      }
    }
  }
  throw new Error("Gemini native audio returned no audio");
}

function durationMs(buffer: Buffer, mimeType: string): number {
  const rateMatch = /(?:^|;)\s*rate=(\d+)/iu.exec(mimeType);
  const sampleRate = rateMatch ? Number(rateMatch[1]) : 24_000;
  // Gemini native PCM is mono signed 16-bit PCM unless the MIME type says
  // otherwise. Duration is advisory metadata for mobile playback UI.
  if (/audio\/(?:pcm|l16)/iu.test(mimeType) && sampleRate > 0) {
    return Math.max(1, Math.round((buffer.byteLength / 2 / sampleRate) * 1000));
  }
  return 0;
}

export function createGeminiLiveAudioRenderer(input: {
  readonly apiKey: string;
  readonly model: string;
  readonly voiceName: string;
  readonly fetchImpl?: typeof fetch;
}): NativeAudioRenderer {
  const apiKey = input.apiKey.trim();
  const model = input.model.trim();
  const voiceName = input.voiceName.trim();
  if (!apiKey) throw new TypeError("Gemini API key is required");
  if (!model) throw new TypeError("Gemini native audio model is required");
  if (/live/iu.test(model))
    throw new TypeError("Recorded speech synthesis requires a TTS model");
  if (!voiceName) throw new TypeError("Gemini native audio voice is required");
  const fetchImpl = input.fetchImpl ?? fetch;

  const renderer: NativeAudioRenderer = {
    async render(text, signal, onPcmChunk, context) {
      const prompt = text.trim();
      if (!prompt || prompt.length > 32_000) {
        throw new RangeError("Native audio text is invalid");
      }

      const selectedVoice = context?.voiceName?.trim() || voiceName;
      const interactions = /^gemini-3\./u.test(model);
      const timeout = AbortSignal.timeout(30_000);
      const response = await fetchImpl(
        interactions
          ? "https://generativelanguage.googleapis.com/v1beta/interactions"
          : `https://generativelanguage.googleapis.com/v1beta/models/${encodeURIComponent(model)}:generateContent`,
        {
          method: "POST",
          signal: signal ? AbortSignal.any([signal, timeout]) : timeout,
          headers: {
            "content-type": "application/json",
            "x-goog-api-key": apiKey,
          },
          body: JSON.stringify(
            interactions
              ? {
                  model,
                  store: false,
                  input: [
                    {
                      type: "user_input",
                      content: [{ type: "text", text: prompt }],
                    },
                  ],
                  response_format: {
                    type: "audio",
                    mime_type: "audio/l16",
                    sample_rate: 24000,
                  },
                  generation_config: {
                    speech_config: [{ voice: selectedVoice }],
                  },
                }
              : {
                  contents: [{ role: "user", parts: [{ text: prompt }] }],
                  generationConfig: {
                    responseModalities: ["AUDIO"],
                    speechConfig: {
                      voiceConfig: {
                        prebuiltVoiceConfig: { voiceName: selectedVoice },
                      },
                    },
                  },
                },
          ),
        },
      );
      if (!response.ok) {
        throw await geminiFailure(response, "speech");
      }

      const audio = audioPart((await response.json()) as GeminiAudioResponse);
      const buffer = Buffer.from(audio.dataBase64, "base64");
      if (
        buffer.byteLength === 0 ||
        buffer.byteLength > 8 * 1024 * 1024 ||
        buffer.toString("base64") !== audio.dataBase64
      ) {
        throw new Error("Gemini native audio payload is invalid");
      }
      // Only raw PCM belongs on the native PCM stream; WAV/MP3 containers
      // remain playable attachments, never noise sent to a PCM output device.
      if (/^audio\/(?:pcm|l16)(?:;|$)/iu.test(audio.mimeType)) {
        if (buffer.byteLength % 2 !== 0)
          throw new Error("Gemini native PCM payload is invalid");
        await onPcmChunk?.(buffer);
      }
      return Object.freeze({
        dataBase64: audio.dataBase64,
        mimeType: audio.mimeType,
        durationMs: durationMs(buffer, audio.mimeType),
      });
    },
  };

  return Object.freeze(renderer);
}
