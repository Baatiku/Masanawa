const reasons = new Set([
  "API_KEY_INVALID",
  "API_KEY_EXPIRED",
  "API_KEY_SERVICE_BLOCKED",
  "API_KEY_HTTP_REFERRER_BLOCKED",
  "API_KEY_IP_ADDRESS_BLOCKED",
  "CONSUMER_INVALID",
  "SERVICE_DISABLED",
  "BILLING_DISABLED",
  "RATE_LIMIT_EXCEEDED",
  "QUOTA_EXCEEDED",
  "LOCATION_POLICY_VIOLATED",
]);
export class GeminiProviderError extends Error {
  readonly code = "agent.provider_unavailable";
  readonly statusCode = 503;
  constructor(
    readonly providerStatus: number,
    readonly providerReason: string,
  ) {
    super("The voice or chat provider is unavailable. Please try again later.");
  }
}
export async function geminiFailure(
  response: Response,
  stage: "inference" | "live-token" | "speech",
): Promise<GeminiProviderError> {
  let reason = "UNKNOWN";
  let providerCode = "UNKNOWN";
  try {
    const payload = (await response.json()) as {
      error?: { details?: unknown; status?: unknown };
    };
    const status = payload.error?.status;
    if (
      typeof status === "string" &&
      [
        "INVALID_ARGUMENT",
        "FAILED_PRECONDITION",
        "NOT_FOUND",
        "UNAUTHENTICATED",
        "PERMISSION_DENIED",
        "RESOURCE_EXHAUSTED",
        "INTERNAL",
        "UNAVAILABLE",
        "DEADLINE_EXCEEDED",
      ].includes(status)
    )
      providerCode = status;
    if (Array.isArray(payload.error?.details)) {
      for (const detail of payload.error.details) {
        if (
          detail &&
          typeof detail === "object" &&
          typeof detail.reason === "string" &&
          reasons.has(detail.reason)
        ) {
          reason = detail.reason;
          break;
        }
      }
    }
  } catch {
    /* Non-JSON failures still keep their HTTP status. */
  }
  // Never include raw provider errors, URLs, credentials, prompts or user data.
  console.error(
    JSON.stringify({
      event: "gemini.request_failed",
      stage,
      status: response.status,
      providerCode,
      reason,
    }),
  );
  return new GeminiProviderError(response.status, reason);
}
