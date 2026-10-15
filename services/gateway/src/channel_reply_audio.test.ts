import { describe, expect, it } from "vitest";
import { prepareChannelReplyAudio } from "./channel_reply_audio.js";

describe("channel voice reply media", () => {
  it("wraps actual signed 16-bit mono Gemini PCM as an ordinary WAV", () => {
    const pcm = Buffer.from([0, 0, 255, 127, 0, 128]);
    const audio = prepareChannelReplyAudio(
      pcm.toString("base64"), "audio/pcm;rate=24000",
    );
    expect(audio?.mimeType).toBe("audio/wav");
    expect(audio?.fileName).toBe("masana-reply.wav");
    expect(audio?.bytes.toString("ascii", 0, 4)).toBe("RIFF");
    expect(audio?.bytes.toString("ascii", 8, 12)).toBe("WAVE");
    expect(audio?.bytes.readUInt32LE(24)).toBe(24000);
    expect(audio?.bytes.readUInt32LE(40)).toBe(6);
    expect(audio?.bytes.subarray(44)).toEqual(pcm);
  });

  it("preserves actual MP3/M4A/OGG types without inventing conversions", () => {
    const payload = Buffer.from("bytes").toString("base64");
    expect(prepareChannelReplyAudio(payload, "audio/mpeg")?.fileName)
      .toBe("masana-reply.mp3");
    expect(prepareChannelReplyAudio(payload, "audio/m4a")?.mimeType)
      .toBe("audio/mp4");
    expect(prepareChannelReplyAudio(payload, "audio/ogg")?.fileName)
      .toBe("masana-reply.ogg");
  });

  it("refuses oversized, empty, odd PCM, unsupported or malformed media", () => {
    expect(prepareChannelReplyAudio("", "audio/pcm")).toBeNull();
    expect(prepareChannelReplyAudio("!", "audio/pcm")).toBeNull();
    expect(prepareChannelReplyAudio(Buffer.from([1]).toString("base64"), "audio/pcm"))
      .toBeNull();
    expect(prepareChannelReplyAudio(
      Buffer.from([1, 2]).toString("base64"), "audio/pcm;rate=999",
    )).toBeNull();
    expect(prepareChannelReplyAudio(
      Buffer.from([1, 2]).toString("base64"), "application/pdf",
    )).toBeNull();
  });
});
