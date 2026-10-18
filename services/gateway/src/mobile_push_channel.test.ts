import { describe, expect, it } from "vitest";
import { mobilePushAndroidChannel } from "./mobile_push.js";
import { mobilePushSafePreview } from "@masanawa/mobile-push";

describe("mobile FCM call channels", () => {
  const uuid = "6b943dad-7684-4ed3-9841-852588ae44ce";

  it("uses an urgent ringing channel for a canonical incoming call", () => {
    expect(mobilePushAndroidChannel({
      type: "incoming_call", callId: uuid,
    })).toBe("masanawa_calls");
  });

  it("does not expose private conversation or financial details in OS previews", () => {
    const data = { type: "p2p_order", amount: "100000", sender: "Private person" };
    const preview = mobilePushSafePreview(data);
    expect(preview).toEqual({
      title: "Masanawa",
      body: "Open the app to view your update",
    });
    expect(JSON.stringify(preview)).not.toMatch(/100000|Private person/);
    expect(mobilePushSafePreview({ type: "incoming_call", callId: uuid }))
      .toEqual({ title: "Incoming Masana call", body: "Open Calls to respond" });
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
