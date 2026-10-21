import { generateKeyPairSync } from "node:crypto";
import { expect, it, vi } from "vitest";
import { createFcmPushSender } from "../mobile_push.js";
import type { MobilePushRepository } from "@masanawa/agents";
it("uses account registrations and one bounded deadline for OAuth and delivery", async () => {
  const { privateKey } = generateKeyPairSync("rsa", { modulusLength: 2048 });
  const scope = { tenantId: "tenant-a", userId: "user-a" } as never;
  const list = vi.fn(async () => [
    { token: "registration-only", platform: "android" },
  ]);
  const requests: RequestInit[] = [];
  const fetchImpl = vi.fn(
    async (_url: string | URL | Request, init?: RequestInit) => {
      requests.push(init!);
      return requests.length === 1
        ? new Response(
            JSON.stringify({ access_token: "server-oauth", expires_in: 3600 }),
          )
        : new Response("{}", { status: 200 });
    },
  ) as typeof fetch;
  const sender = createFcmPushSender({
    serviceAccountJson: JSON.stringify({
      project_id: "local-test",
      client_email: "test@example.invalid",
      private_key: privateKey.export({ type: "pkcs8", format: "pem" }),
    }),
    repository: {
      list,
      readPreferences: vi.fn(async () => ({
        messages: true, calls: true, rooms: true, status: true,
        wallet: true, p2p: true,
        quietStart: null, quietEnd: null, utcOffsetMinutes: 0,
      })),
      appendNotice: vi.fn(async () => {}),
    } as unknown as MobilePushRepository,
    fetchImpl,
  });
  expect(
    await sender.send({
      scope,
      title: "Incoming Masana call",
      body: "Open Calls to respond",
      data: { type: "incoming_call", callId: "invitation" },
    }),
  ).toEqual({ attempted: 1, delivered: 1 });
  expect(list).toHaveBeenCalledWith(scope);
  expect(requests[0]!.signal).toBeInstanceOf(AbortSignal);
  expect(requests[1]!.signal).toBe(requests[0]!.signal);
  const payload = JSON.parse(requests[1]!.body as string);
  expect(payload.message).toMatchObject({
    token: "registration-only",
    data: { type: "incoming_call", callId: "invitation", masanawa: "1" },
  });
  expect(JSON.stringify(payload)).not.toContain("server-oauth");
  expect(payload.message.notification).toEqual({
    title: "Masanawa",
    body: "Open the app to view your update",
  });
  expect(payload.message.android.notification.visibility).toBe("PRIVATE");
  await sender.send({scope,title:"Incoming call",body:"Open Calls to respond",data:{type:"human_call",callId:"11111111-1111-4111-8111-111111111111",deepLink:"masanawa://human/call/11111111-1111-4111-8111-111111111111"}});
  const human=JSON.parse(requests[2]!.body as string).message;
  expect(human.notification).toBeUndefined();
  expect(human.android.notification).toBeUndefined();
  expect(human.android).toMatchObject({priority:"high",ttl:"60s"});
  expect(human.data.type).toBe("human_call");
});
