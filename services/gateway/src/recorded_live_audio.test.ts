import { expect, it, vi } from "vitest";
import {
  createGeminiRecordedLiveAudioRenderer,
  type RecordedLiveSocket,
} from "./recorded_live_audio.js";
class Socket extends EventTarget {
  binaryType: BinaryType = "blob";
  sent: Record<string, any>[] = [];
  close = vi.fn();
  send(data: string) {
    this.sent.push(JSON.parse(data));
  }
  open() {
    this.dispatchEvent(new Event("open"));
  }
  receive(value: unknown) {
    this.dispatchEvent(
      new MessageEvent("message", { data: JSON.stringify(value) }),
    );
  }
}
function fixture(voiceName = "Bodi") {
  const socket = new Socket();
  const socketFactory = vi.fn(() => socket as RecordedLiveSocket);
  return {
    socket,
    socketFactory,
    renderer: createGeminiRecordedLiveAudioRenderer({
      apiKey: "private-key",
      model: "gemini-3.8-live",
      voiceName,
      socketFactory,
    }),
  };
}
const audio = Buffer.from([1, 0, 2, 0, 3, 0, 4, 0]);
function audioTurn(socket: Socket, data = audio.toString("base64")) {
  socket.receive({
    serverContent: {
      modelTurn: {
        parts: [{ inlineData: { mimeType: "audio/pcm;rate=24000", data } }],
      },
      turnComplete: true,
    },
  });
}
it.each(["Bodi", "Fora"])(
  "returns a completed single recorded reply using exact %s voice",
  async (voiceName) => {
    const f = fixture();
    const chunk = vi.fn();
    const result = f.renderer.render("2 plus 3 is 5.", undefined, chunk, {
      voiceName,
    });
    f.socket.open();
    expect(
      f.socket.sent[0]?.setup.generationConfig.speechConfig.voiceConfig
        .prebuiltVoiceConfig.voiceName,
    ).toBe(voiceName);
    expect(f.socket.sent).toHaveLength(1);
    f.socket.receive({ setupComplete: {} });
    expect(f.socket.sent[1]?.clientContent.turns[0].parts[0].text).toContain(
      "2 plus 3 is 5.",
    );
    f.socket.receive({
      serverContent: {
        modelTurn: {
          parts: [
            {
              inlineData: {
                mimeType: "audio/pcm;rate=24000",
                data: audio.toString("base64"),
              },
            },
          ],
        },
      },
    });
    expect(chunk).not.toHaveBeenCalled();
    f.socket.receive({ serverContent: { turnComplete: true } });
    expect(await result).toMatchObject({
      dataBase64: audio.toString("base64"),
      mimeType: "audio/l16;rate=24000",
    });
    expect(chunk).toHaveBeenCalledOnce();
    expect(f.socket.close).toHaveBeenCalledOnce();
    f.socket.receive({ setupComplete: {} });
    expect(f.socket.sent).toHaveLength(2);
  },
);
it("closes on cancellation without emitting partial audio", async () => {
  const f = fixture();
  const controller = new AbortController();
  const chunk = vi.fn();
  const promise = f.renderer.render("Hello", controller.signal, chunk);
  f.socket.open();
  controller.abort();
  await expect(promise).rejects.toThrow();
  expect(f.socket.close).toHaveBeenCalledOnce();
  expect(chunk).not.toHaveBeenCalled();
});
it.each(["error", "close"])(
  "rejects %s without exposing transport credentials",
  async (event) => {
    const f = fixture();
    const promise = f.renderer.render("Hello");
    f.socket.dispatchEvent(new Event(event));
    await expect(promise).rejects.toThrow("Recorded speech connection failed");
    expect(f.socket.close).toHaveBeenCalledOnce();
  },
);
it.each([
  "missing",
  "truncated",
  "wrong-rate",
  "oversize",
  "interrupted",
  "provider-error",
])("rejects %s audio and closes", async (mode) => {
  const f = fixture();
  const chunk = vi.fn();
  const promise = f.renderer.render("Hello", undefined, chunk);
  f.socket.open();
  f.socket.receive({ setupComplete: {} });
  if (mode === "missing")
    f.socket.receive({ serverContent: { turnComplete: true } });
  if (mode === "truncated") audioTurn(f.socket, "AQ==");
  if (mode === "wrong-rate")
    f.socket.receive({
      serverContent: {
        modelTurn: {
          parts: [
            {
              inlineData: {
                mimeType: "audio/pcm;rate=16000",
                data: audio.toString("base64"),
              },
            },
          ],
        },
        turnComplete: true,
      },
    });
  if (mode === "oversize")
    f.socket.dispatchEvent(
      new MessageEvent("message", { data: "x".repeat(2 * 1024 * 1024 + 1) }),
    );
  if (mode === "interrupted")
    f.socket.receive({ serverContent: { interrupted: true } });
  if (mode === "provider-error")
    f.socket.receive({ error: { message: "private-key" } });
  await expect(promise).rejects.toThrow();
  expect(chunk).not.toHaveBeenCalled();
  expect(f.socket.close).toHaveBeenCalledOnce();
});
it("does not connect when already aborted", async () => {
  const f = fixture();
  const c = new AbortController();
  c.abort();
  await expect(f.renderer.render("Hello", c.signal)).rejects.toThrow();
  expect(f.socketFactory).not.toHaveBeenCalled();
});
it("enforces its deadline and closes", async () => {
  vi.useFakeTimers();
  try {
    const f = fixture();
    const promise = f.renderer.render("Hello");
    const rejected = expect(promise).rejects.toThrow();
    await vi.advanceTimersByTimeAsync(30000);
    await rejected;
    expect(f.socket.close).toHaveBeenCalledOnce();
  } finally {
    vi.useRealTimers();
  }
});

it.each(["arraybuffer", "uint8array"])(
  "accepts binary JSON %s provider frames",
  async (mode) => {
    const f = fixture();
    const result = f.renderer.render("Hello");
    expect(f.socket.binaryType).toBe("arraybuffer");
    f.socket.open();
    const setup = new TextEncoder().encode(
      JSON.stringify({ setupComplete: {} }),
    );
    f.socket.dispatchEvent(
      new MessageEvent("message", {
        data: mode === "arraybuffer" ? setup.buffer : setup,
      }),
    );
    const response = new TextEncoder().encode(
      JSON.stringify({
        serverContent: {
          modelTurn: {
            parts: [
              {
                inlineData: {
                  mimeType: "audio/pcm;rate=24000",
                  data: audio.toString("base64"),
                },
              },
            ],
          },
          turnComplete: true,
        },
      }),
    );
    f.socket.dispatchEvent(
      new MessageEvent("message", {
        data: mode === "arraybuffer" ? response.buffer : response,
      }),
    );
    expect((await result).dataBase64).toBe(audio.toString("base64"));
  },
);

it("caps total audio across individually valid frames", async () => {
  const f = fixture();
  const chunk = vi.fn();
  const result = f.renderer.render("Hello", undefined, chunk);
  f.socket.open();
  f.socket.receive({ setupComplete: {} });
  const block = Buffer.alloc(1024 * 1024, 1).toString("base64");
  for (let i = 0; i < 9; i++)
    f.socket.receive({
      serverContent: {
        modelTurn: {
          parts: [
            { inlineData: { mimeType: "audio/pcm;rate=24000", data: block } },
          ],
        },
      },
    });
  await expect(result).rejects.toThrow();
  expect(chunk).not.toHaveBeenCalled();
  expect(f.socket.close).toHaveBeenCalledOnce();
});
it("closes before surfacing a playback callback failure", async () => {
  const f = fixture();
  const result = f.renderer.render("Hello", undefined, async () => {
    throw new Error("Playback unavailable");
  });
  f.socket.open();
  f.socket.receive({ setupComplete: {} });
  audioTurn(f.socket);
  await expect(result).rejects.toThrow("Playback unavailable");
  expect(f.socket.close).toHaveBeenCalledOnce();
});
