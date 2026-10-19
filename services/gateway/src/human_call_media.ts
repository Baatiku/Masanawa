import { createHmac } from "node:crypto";

/** Only the server may tear down a human call; never accepts arbitrary Room IDs. */
export function createHumanCallRoomTerminator(input: {
  serverUrl: string; apiKey: string; apiSecret: string;
  fetchImpl?: typeof fetch; now?: () => Date;
}): (room: string) => Promise<void> {
  const base = new URL(input.serverUrl);
  if (base.protocol !== "wss:" || base.username || base.password || base.search || base.hash) {
    throw new TypeError("LIVEKIT_URL must be a secure server URL");
  }
  base.protocol = "https:";
  base.pathname = "/twirp/livekit.RoomService/DeleteRoom";
  const fetchImpl = input.fetchImpl ?? fetch;
  return async (room) => {
    if (!/^human_[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12}$/u.test(room)) {
      throw new TypeError("Invalid human call room");
    }
    const issued = Math.floor((input.now?.() ?? new Date()).getTime() / 1000);
    const encode = (value: unknown) => Buffer.from(JSON.stringify(value)).toString("base64url");
    const signing = `${encode({ alg: "HS256", typ: "JWT" })}.${encode({
      iss: input.apiKey, iat: issued, nbf: issued - 5, exp: issued + 30,
      video: { roomCreate: true },
    })}`;
    const signature = createHmac("sha256", input.apiSecret).update(signing).digest("base64url");
    const response = await fetchImpl(base, {
      method: "POST", signal: AbortSignal.timeout(10_000),
      headers: { authorization: `Bearer ${signing}.${signature}`, "content-type": "application/json" },
      body: JSON.stringify({ room }),
    });
    if (response.ok || response.status === 404) return;
    throw new Error("Human call media teardown failed");
  };
}
