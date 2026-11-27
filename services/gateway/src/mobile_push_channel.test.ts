import { describe, expect, it } from "vitest";
import { mobilePushAndroidChannel } from "./mobile_push.js";
import { mobilePushSafeData, mobilePushSafePreview, pushCategory, pushAllowed } from "@masanawa/mobile-push";

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
      .toEqual({ title: "Incoming call", body: "Open Calls to respond" });
  });

  it("previews bounded public news without leaking private notifications", () => {
    const safe = mobilePushSafeData({type:"news_update",headline:"  Important  public  announcement ",
      summary:"Latest public update <script>ignored</script> from publisher",body:"PRIVATE",amount:"1000"});
    expect(safe).toEqual({type:"news_update",headline:"Important public announcement",
      summary:"Latest public update ignored from publisher"});
    expect(mobilePushSafePreview(safe)).toEqual({
      title:"Important public announcement",body:"Latest public update ignored from publisher"});
    expect(mobilePushSafeData({type:"wallet_transfer",headline:"Sensitive title",summary:"Private details"}))
      .toEqual({type:"wallet_transfer"});
  });

  it("sends only bounded navigation hints as FCM data", () => {
    const safe = mobilePushSafeData({
      type: "wallet_transfer", eventId: "wallet-event-1",
      deepLink: "masanawa://wallet/transaction/reference_1",
      amount: "100000", sender: "Private person", body: "Secret conversation",
      paymentToken: "secret", masanawa: "forged",
    });
    expect(safe).toEqual({
      type: "wallet_transfer", eventId: "wallet-event-1",
      deepLink: "masanawa://wallet/transaction/reference_1",
    });
    expect(mobilePushSafeData({
      type: "human_call", callId: uuid,
      deepLink: "masanawa://human/call/" + uuid + "?token=private",
    })).toEqual({ type: "human_call", callId: uuid });
    expect(mobilePushSafeData({
      type: "human_message", deepLink: "masanawa://human/chat/" + uuid,
    })).toEqual({ type: "human_message" });
    expect(mobilePushSafeData({
      type: "room_post", roomId: uuid, postId: uuid,
      orderId: "p2p_order_1", body: "Hidden Room text",
      deepLink: "masanawa://wallet/transaction/order_1/private",
    })).toEqual({ type: "room_post", roomId: uuid, postId: uuid, orderId: "p2p_order_1" });
  });

  it("never routes retired human-call hints into the urgent call channel", () => {
    expect(mobilePushAndroidChannel({type:"human_call",callId:uuid})).toBe("masanawa_work");
    expect(mobilePushSafePreview({type:"human_call",callId:uuid,sender:"Private"})).toEqual({title:"Masanawa",body:"Open the app to view your update"});
    expect(mobilePushAndroidChannel({type:"human_call",callId:"invalid"})).toBe("masanawa_work");
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

 it("allows only scoped Forum updates using the existing explicit preference and generic previews",()=>{
  const prefs={messages:true,calls:true,rooms:true,status:true,wallet:true,p2p:false,quietStart:null,quietEnd:null,utcOffsetMinutes:60};
  const forum={type:"forum_update",eventId:"forum-"+"a".repeat(64),deepLink:"masanawa://forum"};
  expect(pushCategory(forum)).toBe("rooms");expect(pushAllowed(prefs,"rooms",new Date(),forum)).toBe(true);
  expect(pushAllowed({...prefs,rooms:false},"rooms",new Date(),forum)).toBe(false);
  expect(pushAllowed(prefs,"rooms",new Date(),{type:"room_reply"})).toBe(false);
  expect(mobilePushSafeData({...forum,body:"Sensitive moderation details"})).toEqual(forum);
  expect(mobilePushSafePreview(forum)).toEqual({title:"Citizen Forum",body:"Open Forum to view your update"});
  expect(mobilePushSafeData({type:"room_reply",deepLink:"masanawa://forum"})).toEqual({type:"room_reply"});
 });
