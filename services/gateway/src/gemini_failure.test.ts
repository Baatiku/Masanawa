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
