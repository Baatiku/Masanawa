import { describe, expect, it } from "vitest";
import { pushAllowed, pushCategory, mobilePushSafePreview } from "@masanawa/mobile-push";

const prefs = {
  messages: true, calls: true, rooms: true, status: true,
  wallet: true, p2p: false, quietStart: 1320, quietEnd: 420,
  utcOffsetMinutes: 60,
};

describe("FCM notification policy", () => {
  it("maps generated events to the user's category, not a sender label", () => {
    expect(pushCategory({ type: "room_lesson" })).toBe("rooms");
    expect(pushCategory({ type: "p2p_order" })).toBe("p2p");
    expect(pushCategory({ type: "wallet_funding" })).toBe("wallet");
    expect(pushCategory({ type: "missed_call" })).toBe("calls");
    expect(pushCategory({ type: "status_post" })).toBe("status");
    expect(pushCategory({ type: "incoming_call" })).toBe("calls");
    expect(pushCategory({ type: "human_call" })).toBe("calls");
    expect(pushAllowed({...prefs,calls:false}, "calls", new Date(), {type:"human_call"})).toBe(false);
    expect(pushCategory(undefined)).toBe("messages");
  });

  it("silences nonurgent updates over midnight in selected offset", () => {
    expect(pushAllowed(prefs, "messages", new Date("2026-10-18T22:00:00Z"))).toBe(false);
    expect(pushAllowed(prefs, "messages", new Date("2026-10-18T12:00:00Z"))).toBe(true);
    expect(pushAllowed(prefs, "p2p", new Date("2026-10-18T12:00:00Z"))).toBe(false);
    expect(pushAllowed(prefs, "calls", new Date("2026-10-18T23:00:00Z"),
      { type: "incoming_call" })).toBe(true);
    expect(pushAllowed(prefs, "calls", new Date("2026-10-18T23:00:00Z"),
      { type: "missed_call" })).toBe(false);
  });

  it("never exposes a financial amount or chat body on a locked screen", () => {
    const preview = mobilePushSafePreview({
      type: "wallet_transfer", amount: "50000", body: "Private conversation",
    });
    expect(JSON.stringify(preview)).not.toMatch(/50000|Private conversation/);
    expect(preview).toEqual({
      title: "Masanawa", body: "Open the app to view your update",
    });
  });
});
