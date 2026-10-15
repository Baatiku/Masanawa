import { createSign } from "node:crypto";
import type {MobilePushRepository, MobileShellScope} from "@masanawa/agents";

export interface MobilePushSender {
  send(input: {
    readonly scope: Pick<MobileShellScope, "tenantId" | "userId">;
    readonly title: string;
    readonly body: string;
    readonly data?: Readonly<Record<string, string>>;
  }): Promise<{ readonly attempted: number; readonly delivered: number }>;
}

type ServiceAccount = {
  readonly project_id: string;
  readonly client_email: string;
  readonly private_key: string;
  readonly token_uri?: string;
};

function base64Url(value: string | Buffer): string {
  const data = typeof value === "string" ? Buffer.from(value, "utf8") : value;
  return data.toString("base64url");
}

function serviceAccount(raw: string): ServiceAccount {
  const parsed = JSON.parse(raw) as Partial<ServiceAccount>;
  if (
    typeof parsed.project_id !== "string" ||
    !parsed.project_id ||
    typeof parsed.client_email !== "string" ||
    !parsed.client_email ||
    typeof parsed.private_key !== "string" ||
    !parsed.private_key.includes("PRIVATE KEY")
  ) {
    throw new TypeError("Invalid Firebase service account");
  }
  return {
    project_id: parsed.project_id,
    client_email: parsed.client_email,
    private_key: parsed.private_key,
    token_uri:
      typeof parsed.token_uri === "string" && parsed.token_uri
        ? parsed.token_uri
        : "https://oauth2.googleapis.com/token",
  };
}

/** Incoming invitations are urgent but short-lived. Avoid routing them to
 * ordinary work channels or letting Firebase deliver stale call alerts. */
export function mobilePushAndroidChannel(
  data: Readonly<Record<string, string>> | undefined,
): "masanawa_calls" | "masanawa_work" {
  return data?.type === "incoming_call" && typeof data.callId === "string" &&
      /^[0-9a-fA-F]{8}(?:-[0-9a-fA-F]{4}){3}-[0-9a-fA-F]{12}$/u.test(data.callId)
    ? "masanawa_calls"
    : "masanawa_work";
}

export function createFcmPushSender(input: {
  readonly serviceAccountJson: string;
  readonly repository: MobilePushRepository;
  readonly fetchImpl?: typeof fetch;
  readonly now?: () => Date;
}): MobilePushSender {
  const credentials = serviceAccount(input.serviceAccountJson);
  const fetchImpl = input.fetchImpl ?? fetch;
  const now = input.now ?? (() => new Date());
  let cached: { token: string; expiresAt: number } | undefined;

  async function accessToken(signal: AbortSignal): Promise<string> {
    const current = now().getTime();
    if (cached && cached.expiresAt - 60_000 > current) return cached.token;
    const issued = Math.floor(current / 1000);
    const header = base64Url(JSON.stringify({ alg: "RS256", typ: "JWT" }));
    const claims = base64Url(
      JSON.stringify({
        iss: credentials.client_email,
        scope: "https://www.googleapis.com/auth/firebase.messaging",
        aud: credentials.token_uri,
        iat: issued,
        exp: issued + 3600,
      }),
    );
    const unsigned = `${header}.${claims}`;
    const signer = createSign("RSA-SHA256");
    signer.update(unsigned);
    signer.end();
    const assertion = `${unsigned}.${signer
      .sign(credentials.private_key)
      .toString("base64url")}`;
    const response = await fetchImpl(credentials.token_uri!, {
      signal,
      method: "POST",
      headers: { "content-type": "application/x-www-form-urlencoded" },
      body: new URLSearchParams({
        grant_type: "urn:ietf:params:oauth:grant-type:jwt-bearer",
        assertion,
      }),
    });
    if (!response.ok) throw new Error("Firebase OAuth failed");
    const payload = (await response.json()) as {
      access_token?: unknown;
      expires_in?: unknown;
    };
    if (typeof payload.access_token !== "string") {
      throw new Error("Firebase OAuth returned no token");
    }
    const expires =
      typeof payload.expires_in === "number" ? payload.expires_in : 3600;
    cached = {
      token: payload.access_token,
      expiresAt: current + Math.max(60, expires) * 1000,
    };
    return cached.token;
  }

  const sender: MobilePushSender = {
    async send(request) {
      const registrations = await input.repository.list(request.scope);
      if (registrations.length === 0) {
        return Object.freeze({ attempted: 0, delivered: 0 });
      }
      const signal = AbortSignal.timeout(10_000);
      const bearer = await accessToken(signal);
      let delivered = 0;
      for (const registration of registrations) {
        const response = await fetchImpl(
          `https://fcm.googleapis.com/v1/projects/${encodeURIComponent(
            credentials.project_id,
          )}/messages:send`,
          {
            method: "POST",
            signal,
            headers: {
              authorization: `Bearer ${bearer}`,
              "content-type": "application/json",
            },
            body: JSON.stringify({
              message: {
                token: registration.token,
                notification: {
                  title: request.title.slice(0, 120),
                  body: request.body.slice(0, 1000),
                },
                data: {
                  ...(request.data ?? {}),
                  masanawa: "1",
                },
                android: {
                  priority: "high",
                  ...(mobilePushAndroidChannel(request.data) === "masanawa_calls"
                    ? { ttl: "60s" }
                    : {}),
                  notification: {
                    channel_id: mobilePushAndroidChannel(request.data),
                    ...(mobilePushAndroidChannel(request.data) === "masanawa_calls"
                      ? {
                          sound: "default",
                          notification_priority: "PRIORITY_MAX",
                          tag: `masanawa-call-${request.data?.callId}`,
                        }
                      : {}),
                  },
                },
                apns: {
                  payload: { aps: { sound: "default" } },
                },
              },
            }),
          },
        );
        if (response.ok) delivered += 1;
      }
      return Object.freeze({
        attempted: registrations.length,
        delivered,
      });
    },
  };
  return Object.freeze(sender);
}
