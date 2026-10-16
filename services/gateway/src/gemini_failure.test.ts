import { describe, it, expect, vi } from "vitest";
import { geminiFailure } from "./gemini_failure.js";
describe("safe Gemini connection failures", () => {
  it("identifies invalid credentials without exposing provider messages or keys", async () => {
    const log = vi.spyOn(console, "error").mockImplementation(() => {});
    try {
      const error = await geminiFailure(
        Response.json(
          {
            error: {
              status: "INVALID_ARGUMENT",
              message: "sensitive provider text private-key",
              details: [{ reason: "API_KEY_INVALID" }],
            },
          },
          { status: 400 },
        ),
        "live-token",
      );
      expect(error).toMatchObject({
        code: "agent.provider_unavailable",
        statusCode: 503,
        providerReason: "API_KEY_INVALID",
        providerStatus: 400,
      });
      expect(error.message).not.toContain("private-key");
      expect(JSON.stringify(log.mock.calls)).toContain("INVALID_ARGUMENT");
      expect(JSON.stringify(log.mock.calls)).not.toContain("sensitive");
    } finally {
      log.mockRestore();
    }
  });
  it("does not log unrecognized upstream fields", async () => {
    const log = vi.spyOn(console, "error").mockImplementation(() => {});
    try {
      const error = await geminiFailure(
        Response.json(
          {
            error: {
              status: "private-user-data",
              details: [{ reason: "private-user-data" }],
            },
          },
          { status: 400 },
        ),
        "inference",
      );
      expect(error.providerReason).toBe("UNKNOWN");
      expect(JSON.stringify(log.mock.calls)).not.toContain("private-user-data");
    } finally {
      log.mockRestore();
    }
  });
});

// Provider rejection diagnostics must use a fixed vocabulary, never raw text.
it.each([
  ['Unknown name "voice" at generation_config.speech_config: private-key', 'UNKNOWN_FIELD', 'voice'],
  ['Voice Bodi is not supported. secret-prompt', 'UNSUPPORTED', 'voice'],
  ['Model does not support audio output. secret-prompt', 'UNSUPPORTED', 'audio'],
])('classifies rejected speech safely: %s', async (message, kind, field) => {
  const log=vi.spyOn(console,'error').mockImplementation(()=>{});
  try {
    await geminiFailure(Response.json({error:{status:'INVALID_ARGUMENT',message}},{status:400}),'speech');
    const entry=JSON.parse(String(log.mock.calls[0]?.[0]));
    expect(entry.rejection).toEqual({kind,field});
    expect(JSON.stringify(log.mock.calls)).not.toMatch(/private-key|secret-prompt|Bodi/);
  } finally {log.mockRestore();}
});
