import { describe, expect, it, vi } from "vitest";
import { sendTelegramReplyAudio } from "./customer_channel_routes.js";
import { prepareChannelReplyAudio } from "./channel_reply_audio.js";

describe("Telegram outgoing generated audio", () => {
  it("uploads WAV as a document with the correct chat and media type", async () => {
    const bytes = Buffer.from([1, 2, 3, 4]);
    const audio = prepareChannelReplyAudio(bytes.toString("base64"), "audio/pcm;rate=24000")!;
    const fetchMock = vi.fn(async (_url: RequestInfo | URL, init?: RequestInit) => {
      expect(init?.method).toBe("POST");
      expect(init?.body).toBeInstanceOf(FormData);
      const body = init?.body as FormData;
      expect(body.get("chat_id")).toBe("345");
      const file = body.get("document");
      expect(file).toBeInstanceOf(Blob);
      expect((file as File).name).toBe("masana-reply.wav");
      expect((file as File).type).toBe("audio/wav");
      expect(Buffer.from(await (file as File).arrayBuffer()).subarray(44))
        .toEqual(bytes);
      return new Response(JSON.stringify({ ok: true }), { status: 200 });
    });
    await sendTelegramReplyAudio({
      botToken: "dummy", webhookSecret: "secret",
    }, "345", audio, fetchMock as typeof fetch);
    expect(fetchMock).toHaveBeenCalledTimes(1);
    expect(String(fetchMock.mock.calls[0]?.[0])).toContain("/sendDocument");
  });

  it("does not acknowledge provider failure as successful audio delivery", async () => {
    const audio = prepareChannelReplyAudio(
      Buffer.from([1,2]).toString("base64"), "audio/pcm",
    )!;
    await expect(sendTelegramReplyAudio({
      botToken: "dummy", webhookSecret: "secret",
    }, "345", audio, async () => new Response(
      JSON.stringify({ ok: false }), { status: 200 },
    ))).rejects.toThrow("channels.telegram_audio_rejected");
  });
});
