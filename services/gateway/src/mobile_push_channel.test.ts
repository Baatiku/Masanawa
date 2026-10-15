import { describe, expect, it } from "vitest";
import { mobilePushAndroidChannel } from "./mobile_push.js";

describe("mobile FCM call channels", () => {
  const uuid = "6b943dad-7684-4ed3-9841-852588ae44ce";

  it("uses an urgent ringing channel for a canonical incoming call", () => {
    expect(mobilePushAndroidChannel({
      type: "incoming_call", callId: uuid,
    })).toBe("masanawa_calls");
  });

  it("never promotes ordinary updates or spoofed IDs to call priority", () => {
    expect(mobilePushAndroidChannel({
      type: "room_reply", callId: uuid,
    })).toBe("masanawa_work");
    expect(mobilePushAndroidChannel({
      type: "incoming_call", callId: "../../something",
    })).toBe("masanawa_work");
    expect(mobilePushAndroidChannel({
      type: "incoming_call",
    })).toBe("masanawa_work");
    expect(mobilePushAndroidChannel(undefined)).toBe("masanawa_work");
  });
});
