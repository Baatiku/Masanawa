import { describe, expect, it } from "vitest";
import { GeminiProviderError } from "./gemini_failure.js";
import { agentFailureCode } from "./agent_conversation.js";

describe("safe AI turn failure diagnostics", () => {
  it("distinguishes invalid credentials, quota and rate limits without storing raw error text", () => {
    expect(agentFailureCode(new GeminiProviderError(401, "API_KEY_INVALID"), "alpha.strategy_failed"))
      .toBe("agent.provider_auth_failed");
    expect(agentFailureCode(new GeminiProviderError(429, "QUOTA_EXCEEDED"), "alpha.strategy_failed"))
      .toBe("agent.provider_quota_exceeded");
    expect(agentFailureCode(new GeminiProviderError(429, "RATE_LIMIT_EXCEEDED"), "alpha.strategy_failed"))
      .toBe("agent.provider_rate_limited");
    expect(agentFailureCode(new GeminiProviderError(503, "UNKNOWN"), "alpha.media_strategy_failed"))
      .toBe("agent.provider_unavailable");
  });
  it("retains stable fallback for internal errors without exposing exception strings", () => {
    expect(agentFailureCode(new Error("private-token-or-message"), "alpha.strategy_failed"))
      .toBe("alpha.strategy_failed");
  });
});
