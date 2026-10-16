import { createHmac } from "node:crypto";
import Fastify from "fastify";
import { describe, expect, it, vi } from "vitest";
import { registerCustomerChannelRoutes } from "./customer_channel_routes.js";

function bridge() {
  return {
    handle: vi.fn(async () => ({
      duplicate: false,
      reply: "",
      shouldDeliver: false,
      requestContact: false,
    })),
    delivered: vi.fn(async () => undefined),
  };
}

function whatsappPayload() {
  return {
    object: "whatsapp_business_account",
    entry: [{
      id: "business",
      changes: [{
        field: "messages",
        value: {
          messaging_product: "whatsapp",
          messages: [{
            id: "wamid.1",
            from: "2348012345678",
            type: "text",
            text: { body: "Hello Gwani" },
          }],
        },
      }],
    }],
  };
}

describe("customer channel webhook routes", () => {
  it.each([false,true])("keeps failed audio-only replies retryable; text fallback=%s",async(hasText)=>{
    const app=Fastify();const channelBridge=bridge();
    channelBridge.handle.mockResolvedValue({duplicate:false,reply:hasText?"Voice transcript":"",shouldDeliver:true,requestContact:false,
      audio:{bytes:Buffer.from("audio"),mimeType:"audio/wav",fileName:"reply.wav"}} as never);
    vi.stubGlobal("fetch",vi.fn(async(input)=>new Response(JSON.stringify(
      String(input).includes("sendDocument")?{ok:false}:{ok:true}),{status:200})));
    try {
      registerCustomerChannelRoutes(app,{bridge:channelBridge,telegram:{botToken:"bot-token",webhookSecret:"telegram-secret"}});
      const result=await app.inject({method:"POST",url:"/channels/telegram/webhook",headers:{"x-telegram-bot-api-secret-token":"telegram-secret"},
        payload:{message:{message_id:502,from:{id:123},chat:{id:123,type:"private"},text:"Hi"}}});
      expect(result.statusCode).toBe(hasText?200:500);
      expect(channelBridge.delivered).toHaveBeenCalledTimes(hasText?1:0);
    } finally {vi.unstubAllGlobals();await app.close();}
  });
  it("aborts stalled provider delivery without acknowledging the receipt",async()=>{
    const app=Fastify();const channelBridge=bridge();const controller=new AbortController();
    channelBridge.handle.mockResolvedValue({duplicate:false,reply:"Pending reply",shouldDeliver:true,requestContact:false});
    let entered!:()=>void;const started=new Promise<void>(resolve=>{entered=resolve;});
    let signal:AbortSignal|undefined;
    const deadline=vi.spyOn(AbortSignal,"timeout").mockReturnValue(controller.signal);
    vi.stubGlobal("fetch",vi.fn(async(_url,init?:RequestInit)=>{
      signal=init?.signal??undefined;entered();
      if(!signal)return new Response("{}",{status:503});
      return await new Promise<Response>((_resolve,reject)=>{
        signal!.addEventListener("abort",()=>reject(new Error("provider timeout")),{once:true});
      });
    }));
    try {
      registerCustomerChannelRoutes(app,{bridge:channelBridge,telegram:{botToken:"bot-token",webhookSecret:"telegram-secret"}});
      const response=app.inject({method:"POST",url:"/channels/telegram/webhook",headers:{"x-telegram-bot-api-secret-token":"telegram-secret"},payload:{message:{message_id:503,from:{id:123},chat:{id:123,type:"private"},text:"Hi"}}}).then(value=>value);
      await started;controller.abort();
      expect((await response).statusCode).toBe(500);
      expect(signal?.aborted).toBe(true);
      expect(deadline).toHaveBeenCalledWith(20_000);
      expect(channelBridge.delivered).not.toHaveBeenCalled();
    } finally {deadline.mockRestore();vi.unstubAllGlobals();await app.close();}
  });
  it("verifies WhatsApp GET challenge with the configured token", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    registerCustomerChannelRoutes(app, {
      bridge: channelBridge,
      whatsapp: {
        verifyToken: "verify-secret",
        appSecret: "app-secret",
        accessToken: "access-token",
        phoneNumberId: "phone-id",
        graphVersion: "v23.0",
      },
    });

    const accepted = await app.inject({
      method: "GET",
      url: "/channels/whatsapp/webhook?hub.mode=subscribe&hub.verify_token=verify-secret&hub.challenge=12345",
    });
    expect(accepted.statusCode).toBe(200);
    expect(accepted.body).toBe("12345");

    const rejected = await app.inject({
      method: "GET",
      url: "/channels/whatsapp/webhook?hub.mode=subscribe&hub.verify_token=wrong&hub.challenge=12345",
    });
    expect(rejected.statusCode).toBe(403);
    await app.close();
  });

  it("rejects a WhatsApp POST before execution when the raw-body signature is invalid", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    registerCustomerChannelRoutes(app, {
      bridge: channelBridge,
      whatsapp: {
        verifyToken: "verify-secret",
        appSecret: "app-secret",
        accessToken: "access-token",
        phoneNumberId: "phone-id",
        graphVersion: "v23.0",
      },
    });

    const response = await app.inject({
      method: "POST",
      url: "/channels/whatsapp/webhook",
      headers: {
        "content-type": "application/json",
        "x-hub-signature-256": "sha256=deadbeef",
      },
      payload: JSON.stringify(whatsappPayload()),
    });

    expect(response.statusCode).toBe(401);
    expect(channelBridge.handle).not.toHaveBeenCalled();
    await app.close();
  });

  it("accepts an exactly signed WhatsApp message and preserves provider identity", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    const raw = JSON.stringify(whatsappPayload());
    const signature =
      "sha256=" + createHmac("sha256", "app-secret").update(raw).digest("hex");

    registerCustomerChannelRoutes(app, {
      bridge: channelBridge,
      whatsapp: {
        verifyToken: "verify-secret",
        appSecret: "app-secret",
        accessToken: "access-token",
        phoneNumberId: "phone-id",
        graphVersion: "v23.0",
      },
    });

    const response = await app.inject({
      method: "POST",
      url: "/channels/whatsapp/webhook",
      headers: {
        "content-type": "application/json",
        "x-hub-signature-256": signature,
      },
      payload: raw,
    });

    expect(response.statusCode).toBe(200);
    expect(channelBridge.handle).toHaveBeenCalledTimes(1);
    expect(channelBridge.handle.mock.calls[0]![0]).toEqual({
      channel: "whatsapp",
      messageId: "wamid.1",
      externalUserId: "2348012345678",
      chatId: "2348012345678",
      phone: "2348012345678",
      text: "Hello Gwani",
    });
    await app.close();
  });

  it("rejects Telegram updates with the wrong webhook secret before execution", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    registerCustomerChannelRoutes(app, {
      bridge: channelBridge,
      telegram: {
        botToken: "bot-token",
        webhookSecret: "telegram-secret",
      },
    });

    const response = await app.inject({
      method: "POST",
      url: "/channels/telegram/webhook",
      headers: {
        "content-type": "application/json",
        "x-telegram-bot-api-secret-token": "wrong",
      },
      payload: {
        update_id: 1,
        message: {
          message_id: 9,
          from: { id: 123 },
          chat: { id: 123 },
          text: "Hello",
        },
      },
    });

    expect(response.statusCode).toBe(401);
    expect(channelBridge.handle).not.toHaveBeenCalled();
    await app.close();
  });

  it("accepts Telegram text with the configured secret and canonical provider IDs", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    registerCustomerChannelRoutes(app, {
      bridge: channelBridge,
      telegram: {
        botToken: "bot-token",
        webhookSecret: "telegram-secret",
      },
    });

    const response = await app.inject({
      method: "POST",
      url: "/channels/telegram/webhook",
      headers: {
        "content-type": "application/json",
        "x-telegram-bot-api-secret-token": "telegram-secret",
      },
      payload: {
        update_id: 1,
        message: {
          message_id: 9,
          from: { id: 123 },
          chat: { id: 456 },
          text: "Teach me algebra",
        },
      },
    });

    expect(response.statusCode).toBe(200);
    expect(channelBridge.handle).toHaveBeenCalledWith({
      channel: "telegram",
      messageId: "456:9",
      externalUserId: "123",
      chatId: "456",
      text: "Teach me algebra",
    });
    await app.close();
  });

  it("never trusts a Telegram contact phone unless contact.user_id matches the sender", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    registerCustomerChannelRoutes(app, {
      bridge: channelBridge,
      telegram: {
        botToken: "bot-token",
        webhookSecret: "telegram-secret",
      },
    });

    const response = await app.inject({
      method: "POST",
      url: "/channels/telegram/webhook",
      headers: {
        "content-type": "application/json",
        "x-telegram-bot-api-secret-token": "telegram-secret",
      },
      payload: {
        update_id: 2,
        message: {
          message_id: 10,
          from: { id: 123 },
          chat: { id: 123 },
          text: "Connect this number",
          contact: {
            user_id: 999,
            phone_number: "+2348000000000",
          },
        },
      },
    });

    expect(response.statusCode).toBe(200);
    expect(channelBridge.handle).toHaveBeenCalledTimes(1);
    expect(channelBridge.handle.mock.calls[0]![0]).toEqual({
      channel: "telegram",
      messageId: "123:10",
      externalUserId: "123",
      chatId: "123",
      text: "Connect this number",
    });
    await app.close();
  });

  it("ignores Telegram group and supergroup messages before Agent execution", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    registerCustomerChannelRoutes(app, {
      bridge: channelBridge,
      telegram: {
        botToken: "bot-token",
        webhookSecret: "telegram-secret",
      },
    });

    const response = await app.inject({
      method: "POST",
      url: "/channels/telegram/webhook",
      headers: {
        "content-type": "application/json",
        "x-telegram-bot-api-secret-token": "telegram-secret",
      },
      payload: {
        update_id: 3,
        message: {
          message_id: 11,
          from: { id: 123 },
          chat: { id: -100123, type: "supergroup" },
          text: "buy airtime for me",
        },
      },
    });

    expect(response.statusCode).toBe(200);
    expect(channelBridge.handle).not.toHaveBeenCalled();
    await app.close();
  });


  it("renders Masana choices as tappable conversation commands", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    channelBridge.handle.mockResolvedValueOnce({
      duplicate: false,
      reply: "Several Masana match. Choose one by full name:\n1. chat with Dr. Amina Yusuf\n2. chat with Dr. Aisha Tanko",
      shouldDeliver: true,
      requestContact: false,
    });
    const fetchMock = vi.fn(
      async (_input: RequestInfo | URL, _init?: RequestInit) =>
        new Response(JSON.stringify({ ok: true, result: {} }), {
          status: 200,
          headers: { "content-type": "application/json" },
        }),
    );
    vi.stubGlobal("fetch", fetchMock);
    registerCustomerChannelRoutes(app, {
      bridge: channelBridge,
      telegram: {
        botToken: "bot-token",
        webhookSecret: "telegram-secret",
      },
    });

    const response = await app.inject({
      method: "POST",
      url: "/channels/telegram/webhook",
      headers: {
        "content-type": "application/json",
        "x-telegram-bot-api-secret-token": "telegram-secret",
      },
      payload: {
        update_id: 4,
        message: {
          message_id: 12,
          from: { id: 123 },
          chat: { id: 123, type: "private" },
          text: "chat with Dr",
        },
      },
    });

    expect(response.statusCode).toBe(200);
    expect(fetchMock).toHaveBeenCalledTimes(1);
    const request = fetchMock.mock.calls[0]![1] as RequestInit;
    const body = JSON.parse(String(request.body));
    expect(body.reply_markup).toEqual({
      keyboard: [[{ text: "chat with Dr. Amina Yusuf" }], [{ text: "chat with Dr. Aisha Tanko" }]],
      resize_keyboard: true,
      one_time_keyboard: true,
    });
    expect(channelBridge.delivered).toHaveBeenCalledWith({
      channel: "telegram",
      messageId: "123:12",
    });
    vi.unstubAllGlobals();
    await app.close();
  });

  it("keeps provider retries distinct across Telegram private chats", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    registerCustomerChannelRoutes(app, {
      bridge: channelBridge,
      telegram: { botToken: "bot-token", webhookSecret: "telegram-secret" },
    });
    for (const chatId of [101, 202]) {
      const result = await app.inject({
        method: "POST",
        url: "/channels/telegram/webhook",
        headers: { "x-telegram-bot-api-secret-token": "telegram-secret" },
        payload: {
          update_id: chatId,
          message: {
            message_id: 1,
            from: { id: chatId },
            chat: { id: chatId, type: "private" },
            text: "Hello",
          },
        },
      });
      expect(result.statusCode).toBe(200);
    }
    expect(channelBridge.handle.mock.calls[0]![0]).toMatchObject({
      messageId: "101:1",
    });
    expect(channelBridge.handle.mock.calls[1]![0]).toMatchObject({
      messageId: "202:1",
    });
    await app.close();
  });

  it.each([
    ["audio", "audio/mpeg", "lesson.mp3"],
    ["video", "video/mp4", "lesson.mp4"],
  ])("downloads Telegram %s to the existing authenticated media conversation", async (
    type, mimeType, name,
  ) => {
    const app = Fastify();
    const channelBridge = bridge();
    const bytes = Buffer.from("sample-media-content");
    const fetchMock = vi.fn(async (input: RequestInfo | URL) => {
      const url = String(input);
      if (url.includes("/getFile?")) {
        return new Response(JSON.stringify({
          ok: true,
          result: { file_path: `uploads/${name}` },
        }), { status: 200, headers: { "content-type": "application/json" } });
      }
      if (url.includes("/file/bot")) {
        return new Response("sample-media-content", { status: 200 });
      }
      throw new Error("Unexpected Telegram URL");
    });
    vi.stubGlobal("fetch", fetchMock);
    try {
      registerCustomerChannelRoutes(app, {
        bridge: channelBridge,
        telegram: { botToken: "bot-token", webhookSecret: "telegram-secret" },
      });
      const response = await app.inject({
        method: "POST",
        url: "/channels/telegram/webhook",
        headers: { "x-telegram-bot-api-secret-token": "telegram-secret" },
        payload: {
          update_id: 100,
          message: {
            message_id: 45,
            from: { id: 123 },
            chat: { id: 123, type: "private" },
            caption: "Explain this",
            [type]: { file_id: "provider-file", mime_type: mimeType, file_name: name },
          },
        },
      });
      expect(response.statusCode).toBe(200);
      expect(channelBridge.handle).toHaveBeenCalledWith({
        channel: "telegram",
        messageId: "123:45",
        externalUserId: "123",
        chatId: "123",
        text: "Explain this",
        media: {
          mimeType,
          name,
          dataBase64: bytes.toString("base64"),
        },
      });
    } finally {
      vi.unstubAllGlobals();
      await app.close();
    }
  });


  it("acknowledges oversized Telegram media with a useful retry instruction", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    const oversizedBytes = "x".repeat(8 * 1024 * 1024 + 1);
    const fetchMock = vi.fn(async (input: RequestInfo | URL, _init?: RequestInit) => {
      const url = String(input);
      if (url.includes("/getFile?")) {
        return new Response(JSON.stringify({
          ok: true, result: { file_path: "uploads/big.mp4" },
        }), { status: 200 });
      }
      if (url.includes("/file/bot")) {
        return new Response(oversizedBytes, { status: 200 });
      }
      if (url.includes("/sendMessage")) {
        return new Response(JSON.stringify({ ok: true }), { status: 200 });
      }
      throw new Error("Unexpected URL");
    });
    vi.stubGlobal("fetch", fetchMock);
    try {
      registerCustomerChannelRoutes(app, {
        bridge: channelBridge,
        telegram: { botToken: "bot-token", webhookSecret: "telegram-secret" },
      });
      const response = await app.inject({
        method: "POST",
        url: "/channels/telegram/webhook",
        headers: { "x-telegram-bot-api-secret-token": "telegram-secret" },
        payload: {
          message: {
            message_id: 1,
            from: { id: 77 },
            chat: { id: 77, type: "private" },
            video: { file_id: "large", mime_type: "video/mp4" },
          },
        },
      });
      expect(response.statusCode).toBe(200);
      expect(channelBridge.handle).not.toHaveBeenCalled();
      const sent = fetchMock.mock.calls.find(([url]) => String(url).includes("/sendMessage"));
      expect(sent).toBeDefined();
      const payload = JSON.parse(String((sent![1] as RequestInit).body));
      expect(payload.text).toContain("smaller than 8 MB");
    } finally {
      vi.unstubAllGlobals();
      await app.close();
    }
  });

  it("does not mark a Telegram reply delivered when provider returns HTTP 200 ok:false", async () => {
    const app = Fastify();
    const channelBridge = bridge();
    channelBridge.handle.mockResolvedValueOnce({
      duplicate: false,
      reply: "The canonical reply",
      shouldDeliver: true,
      requestContact: false,
    });
    const fetchMock = vi.fn(async () =>
      new Response(JSON.stringify({ ok: false, description: "chat unavailable" }), {
        status: 200,
        headers: { "content-type": "application/json" },
      }),
    );
    vi.stubGlobal("fetch", fetchMock);
    try {
      registerCustomerChannelRoutes(app, {
        bridge: channelBridge,
        telegram: { botToken: "bot-token", webhookSecret: "telegram-secret" },
      });
      const response = await app.inject({
        method: "POST",
        url: "/channels/telegram/webhook",
        headers: { "x-telegram-bot-api-secret-token": "telegram-secret" },
        payload: {
          message: {
            message_id: 501,
            from: { id: 123 },
            chat: { id: 123, type: "private" },
            text: "Hi",
          },
        },
      });
      expect(response.statusCode).toBe(500);
      expect(channelBridge.handle).toHaveBeenCalledWith(
        expect.objectContaining({ messageId: "123:501" }),
      );
      expect(channelBridge.delivered).not.toHaveBeenCalled();
    } finally {
      vi.unstubAllGlobals();
      await app.close();
    }
  });

});


it("does not bypass a recovery lease held by another worker",async()=>{
 const app=Fastify();const channelBridge=bridge();
 channelBridge.handle.mockResolvedValue({duplicate:false,reply:"Saved reply",shouldDeliver:true,requestContact:false});
 const claimed=vi.fn(async()=>false);
 const fetchImpl=vi.fn();vi.stubGlobal("fetch",fetchImpl);
 try {
 registerCustomerChannelRoutes(app,{bridge:{...channelBridge,delivery:{deliver:claimed,recover:async()=>{}}},telegram:{botToken:"bot-token",webhookSecret:"telegram-secret"}});
 const result=await app.inject({method:"POST",url:"/channels/telegram/webhook",headers:{"x-telegram-bot-api-secret-token":"telegram-secret"},payload:{message:{message_id:502,from:{id:123},chat:{id:123,type:"private"},text:"Hi"}}});
 expect(result.statusCode).toBe(200);expect(claimed).toHaveBeenCalled();
 expect(fetchImpl).not.toHaveBeenCalled();expect(channelBridge.delivered).not.toHaveBeenCalled();
 }finally{vi.unstubAllGlobals();await app.close();}
});
