/** Keep optional generated voice replies bounded and genuinely playable.
 * Gemini returns signed 16-bit mono PCM; messaging providers usually expect
 * a container. We wrap native PCM as WAV rather than inventing audio codecs. */
export interface ChannelReplyAudio {
  readonly bytes: Buffer;
  readonly mimeType: "audio/wav" | "audio/mpeg" | "audio/mp4" | "audio/ogg";
  readonly fileName: string;
}

const maxAudioBytes = 8 * 1024 * 1024;

export function prepareChannelReplyAudio(
  dataBase64: string | undefined,
  mimeType: string | undefined,
): ChannelReplyAudio | null {
  if (!dataBase64 || !mimeType ||
      dataBase64.length > Math.ceil(maxAudioBytes * 4 / 3) + 4 ||
      !/^[A-Za-z0-9+/]+={0,2}$/u.test(dataBase64)) return null;
  const bytes = Buffer.from(dataBase64, "base64");
  if (bytes.length === 0 || bytes.length > maxAudioBytes) return null;
  const mime = mimeType.toLowerCase().trim();
  if (mime.startsWith("audio/pcm") || mime.startsWith("audio/l16")) {
    const match = /(?:^|;)\s*rate=(\d{4,6})/iu.exec(mime);
    const rate = match ? Number(match[1]) : 24000;
    if (!Number.isSafeInteger(rate) || rate < 8000 || rate > 48000 ||
        bytes.length % 2 !== 0 || bytes.length + 44 > maxAudioBytes) return null;
    const wav = Buffer.allocUnsafe(bytes.length + 44);
    wav.write("RIFF", 0, "ascii");
    wav.writeUInt32LE(wav.length - 8, 4);
    wav.write("WAVEfmt ", 8, "ascii");
    wav.writeUInt32LE(16, 16);
    wav.writeUInt16LE(1, 20); // signed PCM
    wav.writeUInt16LE(1, 22); // mono
    wav.writeUInt32LE(rate, 24);
    wav.writeUInt32LE(rate * 2, 28);
    wav.writeUInt16LE(2, 32);
    wav.writeUInt16LE(16, 34);
    wav.write("data", 36, "ascii");
    wav.writeUInt32LE(bytes.length, 40);
    bytes.copy(wav, 44);
    return Object.freeze({ bytes: wav, mimeType: "audio/wav", fileName: "masana-reply.wav" });
  }
  const supported: Record<string, readonly ["audio/wav" | "audio/mpeg" | "audio/mp4" | "audio/ogg", string]> = {
    "audio/wav": ["audio/wav", "masana-reply.wav"],
    "audio/x-wav": ["audio/wav", "masana-reply.wav"],
    "audio/mpeg": ["audio/mpeg", "masana-reply.mp3"],
    "audio/mp4": ["audio/mp4", "masana-reply.m4a"],
    "audio/m4a": ["audio/mp4", "masana-reply.m4a"],
    "audio/ogg": ["audio/ogg", "masana-reply.ogg"],
  };
  const valid = supported[mime.split(";")[0] ?? ""];
  return valid
    ? Object.freeze({ bytes, mimeType: valid[0], fileName: valid[1] })
    : null;
}
