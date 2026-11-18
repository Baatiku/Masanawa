import { describe, expect, it } from "vitest";
import { createFcmPushSender, pushAllowed, pushCategory, mobilePushSafePreview } from "@masanawa/mobile-push";
import { createCanonicalId } from "@masanawa/contracts";
import { vi } from "vitest";

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
    expect(pushAllowed({...prefs,calls:true}, "calls", new Date(), {type:"human_call"})).toBe(false);
    expect(pushCategory(undefined)).toBe("messages");
  });

  it("silences nonurgent updates over midnight in selected offset", () => {
    expect(pushAllowed(prefs, "messages", new Date("2026-10-18T22:00:00Z"))).toBe(false);
    expect(pushAllowed(prefs, "messages", new Date("2026-10-18T12:00:00Z"))).toBe(true);
    expect(pushAllowed(prefs, "p2p", new Date("2026-10-18T12:00:00Z"))).toBe(false);
    expect(pushAllowed({...prefs,p2p:true,rooms:true}, "p2p",
      new Date("2026-10-18T12:00:00Z"),{type:"p2p_deadline"})).toBe(false);
    expect(pushAllowed({...prefs,rooms:true}, "rooms",
      new Date("2026-10-18T12:00:00Z"),{type:"room_lesson"})).toBe(false);
    expect(pushAllowed(prefs,"messages",new Date("2026-10-18T12:00:00Z"),
      {type:"human_message"})).toBe(false);
    expect(pushAllowed(prefs, "calls", new Date("2026-10-18T23:00:00Z"),
      { type: "incoming_call" })).toBe(true);
    expect(pushAllowed(prefs, "calls", new Date("2026-10-18T23:00:00Z"),
      { type: "missed_call" })).toBe(false);
  });

  it("does not append new Activity rows or query FCM for retired sources",async()=>{
    const appendNotice=vi.fn();
    const readPreferences=vi.fn();
    const fetchImpl=vi.fn();
    const sender=createFcmPushSender({
      serviceAccountJson:JSON.stringify({
        project_id:"test",client_email:"test@example.com",
        private_key:"-----BEGIN PRIVATE KEY-----\nnot-used\n-----END PRIVATE KEY-----",
      }),
      repository:{appendNotice,readPreferences} as never,
      fetchImpl:fetchImpl as never,
    });
    for(const type of ["human_call","human_message","p2p_order","room_reply"]) {
      await expect(sender.send({scope:{tenantId:createCanonicalId("tenant"),
        userId:createCanonicalId("user")},
        title:"Retired",body:"Legacy",data:{type,eventId:"old"}}))
        .resolves.toEqual({attempted:0,delivered:0});
    }
    expect(appendNotice).not.toHaveBeenCalled();
    expect(readPreferences).not.toHaveBeenCalled();
    expect(fetchImpl).not.toHaveBeenCalled();
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
