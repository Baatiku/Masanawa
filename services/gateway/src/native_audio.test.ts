import { describe, it, expect, vi } from "vitest";
import { createGeminiLiveAudioRenderer } from "./native_audio.js";
describe("independent Gemini voice reply synthesis", () => {
  it.each(["Bodi", "Fora"])(
    "synthesizes verbatim text with the selected %s voice using TTS, independently of calls",
    async (voiceName) => {
      const bytes = Buffer.from([0, 0, 1, 0, 2, 0, 3, 0]);
      const fetchImpl = vi.fn<typeof fetch>(async (url, init) => {
        expect(String(url)).toBe(
          "https://generativelanguage.googleapis.com/v1beta/interactions",
        );
        expect(new Headers(init?.headers).get("x-goog-api-key")).toBe(
          "private-test-key",
        );
        const body = JSON.parse(String(init?.body));
        expect(body.model).toBe("gemini-3.8-flash-tts");
        expect(body.input[0].content[0].text).toBe("Hello there");
        expect(body.generation_config.speech_config).toEqual([
          { voice: voiceName },
        ]);
        expect(body.store).toBe(false);
        return Response.json({
          steps: [
            {
              type: "model_output",
              content: [
                {
                  type: "audio",
                  mime_type: "audio/l16",
                  data: bytes.toString("base64"),
                },
              ],
            },
          ],
        });
      });
      const chunks: Buffer[] = [];
      const renderer = createGeminiLiveAudioRenderer({
        apiKey: "private-test-key",
        model: "gemini-3.8-flash-tts",
        voiceName: "Bodi",
        fetchImpl,
      });
      const result = await renderer.render(
        "Hello there",
        undefined,
        async (chunk) => {
          chunks.push(chunk);
        },
        { voiceName },
      );
      expect(result.dataBase64).toBe(bytes.toString("base64"));
      expect(result.mimeType).toBe("audio/l16;rate=24000");
      expect(Buffer.concat(chunks)).toEqual(bytes);
    },
  );
  it("rejects a Live-call model configured as a recorded-message renderer", () => {
    expect(() =>
      createGeminiLiveAudioRenderer({
        apiKey: "private-test-key",
        model: "gemini-3.8-live",
        voiceName: "Bodi",
      }),
    ).toThrow("speech synthesis requires a TTS model");
  });
});

it("rejects truncated PCM even when no streaming listener is attached", async () => {
  const renderer = createGeminiLiveAudioRenderer({
    apiKey: "key",
    model: "gemini-3.8-flash-tts",
    voiceName: "Bodi",
    fetchImpl: async () =>
      Response.json({
        steps: [
          {
            type: "model_output",
            content: [{ type: "audio", mime_type: "audio/l16", data: "AQ==" }],
          },
        ],
      }),
  });
  await expect(renderer.render("Hello")).rejects.toThrow(
    "PCM payload is invalid",
  );
});
it("does not send audio containers into a raw PCM player", async () => {
  const onPcmChunk = vi.fn();
  const renderer = createGeminiLiveAudioRenderer({
    apiKey: "key",
    model: "gemini-3.8-flash-tts",
    voiceName: "Bodi",
    fetchImpl: async () =>
      Response.json({
        steps: [
          {
            type: "model_output",
            content: [
              { type: "audio", mime_type: "audio/wav", data: "UklGRg==" },
            ],
          },
        ],
      }),
  });
  expect((await renderer.render("Hello", undefined, onPcmChunk)).mimeType).toBe(
    "audio/wav",
  );
  expect(onPcmChunk).not.toHaveBeenCalled();
});

it.each(["Bodi", "Fora"])(
  "recovers an explicit Interactions rejection using the same %s TTS voice and text",
  async (voiceName) => {
    let requests = 0;
    const bytes = Buffer.from([1, 0, 2, 0]);
    const fetchImpl = vi.fn<typeof fetch>(async (url, init) => {
      requests++;
      if (requests === 1)
        return Response.json(
          { error: { status: "INVALID_ARGUMENT" } },
          { status: 400 },
        );
      expect(String(url)).toBe(
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-3.8-flash-tts:generateContent",
      );
      const body = JSON.parse(String(init?.body));
      expect(body.contents[0].parts[0].text).toBe("Exact reply");
      expect(body.generationConfig.speechConfig.voiceConfig).toEqual({
        voice: voiceName,
      });
      return Response.json({
        candidates: [
          {
            content: {
              parts: [
                {
                  inlineData: {
                    mimeType: "audio/l16;rate=24000",
                    data: bytes.toString("base64"),
                  },
                },
              ],
            },
          },
        ],
      });
    });
    const renderer = createGeminiLiveAudioRenderer({
      apiKey: "key",
      model: "gemini-3.8-flash-tts",
      voiceName,
      fetchImpl,
    });
    expect((await renderer.render("Exact reply")).dataBase64).toBe(
      bytes.toString("base64"),
    );
    expect(requests).toBe(2);
  },
);

it.each([401, 403, 429, 503])(
  "does not add a second speech request for provider status %s",
  async (status) => {
    const log = vi.spyOn(console, "error").mockImplementation(() => {});
    const fetchImpl = vi.fn<typeof fetch>(async () =>
      Response.json({ error: { status: "UNAVAILABLE" } }, { status }),
    );
    try {
      const renderer = createGeminiLiveAudioRenderer({
        apiKey: "key",
        model: "gemini-3.8-flash-tts",
        voiceName: "Bodi",
        fetchImpl,
      });
      await expect(renderer.render("Hello")).rejects.toThrow();
      expect(fetchImpl).toHaveBeenCalledTimes(1);
    } finally {
      log.mockRestore();
    }
  },
);
it("does not repeat an accepted speech generation when its audio payload is missing", async () => {
  const fetchImpl = vi.fn<typeof fetch>(async () =>
    Response.json({ steps: [] }),
  );
  const renderer = createGeminiLiveAudioRenderer({
    apiKey: "key",
    model: "gemini-3.8-flash-tts",
    voiceName: "Fora",
    fetchImpl,
  });
  await expect(renderer.render("Hello")).rejects.toThrow();
  expect(fetchImpl).toHaveBeenCalledTimes(1);
});
