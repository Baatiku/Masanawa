import { afterEach, describe, expect, it, vi } from "vitest";
import { customerChannelAudioResponse } from "./customer_channel_bridge.js";
import { sendTelegramAudio } from "./customer_channel_routes.js";

afterEach(() => vi.unstubAllGlobals());

describe("Masana channel voice reply media", () => {
  it("permits only bounded encoded playable audio", () => {
    const audio = Buffer.from("OggSvoice").toString("base64");
    expect(customerChannelAudioResponse(audio, "audio/ogg;codecs=opus")).toEqual({
      mimeType: "audio/ogg;codecs=opus",
      dataBase64: audio,
    });
    expect(customerChannelAudioResponse(audio, "audio/pcm;rate=16000")).toBeUndefined();
    expect(customerChannelAudioResponse("not base64!!", "audio/ogg")).toBeUndefined();
    expect(customerChannelAudioResponse("", "audio/wav")).toBeUndefined();
    expect(customerChannelAudioResponse(audio, "image/jpeg")).toBeUndefined();
    expect(customerChannelAudioResponse(
      Buffer.alloc(8 * 1024 * 1024 + 1).toString("base64"),
      "audio/wav",
    )).toBeUndefined();
  });

  it.each([
    ["audio/ogg", "sendVoice", "voice", "masanawa-voice.ogg"],
    ["audio/mpeg", "sendAudio", "audio", "masanawa-audio.mp3"],
    ["audio/m4a", "sendAudio", "audio", "masanawa-audio.m4a"],
    ["audio/wav", "sendDocument", "document", "masanawa-voice.wav"],
  ])("delivers %s using Telegram %s", async (
    mimeType, method, field, filename,
  ) => {
    const fetchMock = vi.fn(async () => new Response(
      JSON.stringify({ ok: true, result: { message_id: 10 } }),
      { status: 200, headers: { "content-type": "application/json" } },
    ));
    vi.stubGlobal("fetch", fetchMock);
    await sendTelegramAudio(
      { botToken: "bot-token", webhookSecret: "secret" },
      "123",
      { mimeType, dataBase64: Buffer.from("audio data").toString("base64") },
    );
    expect(fetchMock).toHaveBeenCalledTimes(1);
    const [url, init] = fetchMock.mock.calls[0]! as unknown as [string, RequestInit];
    expect(url).toContain(`/${method}`);
    expect(init.method).toBe("POST");
    const form = init.body as FormData;
    expect(form.get("chat_id")).toBe("123");
    const attachment = form.get(field);
    expect(attachment).toBeInstanceOf(Blob);
    expect((attachment as File).name).toBe(filename);
    expect(await (attachment as Blob).text()).toBe("audio data");
  });

  it("does not falsely confirm an upstream-rejected audio delivery", async () => {
    vi.stubGlobal("fetch", vi.fn(async () => new Response(
      JSON.stringify({ ok: false, description: "invalid file" }),
      { status: 200 },
    )));
    await expect(sendTelegramAudio(
      { botToken: "bot-token", webhookSecret: "secret" },
      "123",
      { mimeType: "audio/ogg", dataBase64: Buffer.from("data").toString("base64") },
    )).rejects.toThrow("channels.telegram_audio_rejected");
  });
});
