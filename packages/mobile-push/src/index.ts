import { createSign, randomUUID } from "node:crypto";
import type { MobileNotificationCategory, MobileNotificationPreferences } from "@masanawa/agents";
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

/** Locked screens must never disclose a sender, message, balance or order.
 * Until a verified per-account private-preview opt-in exists, send only
 * generic OS-visible copy. Full context stays in the authorized app.
 */
export function mobilePushSafePreview(data: Readonly<Record<string, string>> | undefined): {
  readonly title: string;
  readonly body: string;
} {
  return mobilePushAndroidChannel(data) === "masanawa_calls"
    ? { title: "Incoming call", body: "Open Calls to respond" }
    : { title: "Masanawa", body: "Open the app to view your update" };
}

/** FCM data reaches the device outside the authenticated app. Carry only
 * bounded routing hints; message text, balances and payment details stay on
 * the server until the account owner opens an authorized screen. */
export function mobilePushSafeData(data: Readonly<Record<string, string>> | undefined):
    Readonly<Record<string, string>> {
  if (!data) return Object.freeze({});
  const safe: Record<string, string> = {};
  for (const key of ["type", "eventId", "kind", "talkId", "callId", "characterId", "conversationId",
    "orderId", "roomId", "postId", "questionId"] as const) {
    const value = data[key];
    if (typeof value === "string" && /^[A-Za-z0-9_:.-]{1,160}$/u.test(value)) safe[key] = value;
  }
  const rawLink = data.deepLink;
  if (typeof rawLink === "string" && rawLink.length <= 300 &&
      /^masanawa:\/\/(?:wallet\/transaction|calls\/incoming)\/[A-Za-z0-9_-]{1,128}$/u.test(rawLink)) {
    try {
      const link = new URL(rawLink);
      if (link.protocol === "masanawa:" && link.hostname && !link.username &&
          !link.password && !link.search && !link.hash && !/\s/u.test(rawLink)) {
        safe.deepLink = rawLink;
      }
    } catch { /* An invalid hint cannot be sent to a device. */ }
  }
  return Object.freeze(safe);
}

/** Per-category opt-out and quiet hours are enforced where delivery occurs,
 * so background workers and all Gateway senders use the same policy.
 */
export function pushCategory(data: Readonly<Record<string, string>> | undefined):
    MobileNotificationCategory {
  const type = data?.type ?? "";
  if (type === "incoming_call" || type === "human_call" || type === "missed_call") return "calls";
  if (type === "p2p_order" || type.startsWith("p2p_")) return "p2p";
  if (type.startsWith("wallet_") || type.startsWith("funding_") ||
      type.startsWith("transfer_") || type.startsWith("withdrawal_") ||
      type.startsWith("settlement_")) return "wallet";
  if (type.startsWith("room_")) return "rooms";
  if (type.startsWith("status_") || type.startsWith("post_")) return "status";
  return "messages";
}

/** Retired customer products must not create NEW push or Activity records,
 * even if an older account still has their preference bits enabled. Historic
 * records are retained by the database for audit and account export.
 */
function retiredNotification(category: MobileNotificationCategory,
  data: Readonly<Record<string, string>> | undefined): boolean {
  const type = data?.type ?? "";
  return category === "rooms" || category === "p2p" ||
    type === "room" || type.startsWith("room_") ||
    type.startsWith("p2p_") || type.startsWith("human_");
}

export function pushAllowed(
  preferences: MobileNotificationPreferences,
  category: MobileNotificationCategory,
  now: Date,
  data?: Readonly<Record<string, string>>,
): boolean {
  if (retiredNotification(category, data)) return false;
  if (!preferences[category]) return false;
  // Fraud/security warnings and money requiring timely action remain audible;
  // an unrelated caller cannot claim criticality by supplying arbitrary data.
  const critical = category === "calls" && data?.type === "incoming_call" ||
    category === "wallet" && data?.type === "wallet_security";
  if (critical) return true;
  const from = preferences.quietStart, to = preferences.quietEnd;
  if (from === null || to === null || from === to) return true;
  const local = ((now.getUTCHours() * 60 + now.getUTCMinutes() +
    preferences.utcOffsetMinutes) % 1440 + 1440) % 1440;
  const within = from < to
    ? local >= from && local < to
    : local >= from || local < to;
  return !within;
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
      const safeData = mobilePushSafeData(request.data);
      const category = pushCategory(safeData);
      if (retiredNotification(category,safeData)) {
        return Object.freeze({ attempted: 0, delivered: 0 });
      }
      const preview = mobilePushSafePreview(safeData);
      // History is durable even when push is disabled, device permission
      // denied, or quiet hours suppress a nonurgent notification.
      const eventId = safeData.eventId ?? `push-${randomUUID()}`;
      await input.repository.appendNotice({
        tenantId: request.scope.tenantId,
        userId: request.scope.userId,
        eventId: eventId.slice(0, 160),
        category,
        title: preview.title,
        deepLink: safeData.deepLink ?? null,
      });
      const preferences = await input.repository.readPreferences(request.scope);
      if (!pushAllowed(preferences, category, now(), safeData)) {
        return Object.freeze({ attempted: 0, delivered: 0 });
      }
      const registrations = await input.repository.list(request.scope);
      if (registrations.length === 0) {
        return Object.freeze({ attempted: 0, delivered: 0 });
      }
      const signal = AbortSignal.timeout(10_000);
      const bearer = await accessToken(signal);
      let delivered = 0;
      const safePreview = mobilePushSafePreview(safeData);
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
                  title: safePreview.title,
                  body: safePreview.body,
                },
                data: {
                  ...safeData,
                  masanawa: "1",
                },
                android: {
                  priority: "high",
                  ...(mobilePushAndroidChannel(safeData) === "masanawa_calls"
                    ? { ttl: "60s" }
                    : {}),
                  notification: {
                    channel_id: mobilePushAndroidChannel(safeData),
                    visibility: "PRIVATE",
                    ...(safeData.eventId
                      ? { tag: safeData.eventId.slice(0, 80) } : {}),
                    ...(mobilePushAndroidChannel(safeData) === "masanawa_calls"
                      ? {
                          sound: "default",
                          notification_priority: "PRIORITY_MAX",
                          tag: `masanawa-call-${safeData.callId}`,
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
