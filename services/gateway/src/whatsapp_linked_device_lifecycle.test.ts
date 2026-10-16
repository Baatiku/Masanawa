import { EventEmitter } from "node:events";
import { mkdtemp, rm } from "node:fs/promises";
import { tmpdir } from "node:os";
import { join } from "node:path";
import { afterEach, describe, expect, it, vi } from "vitest";
const mocked = vi.hoisted(() => ({
  auth: vi.fn(),
  version: vi.fn(),
  qr: vi.fn(),
}));
vi.mock("@whiskeysockets/baileys", () => ({
  default: vi.fn(),
  DisconnectReason: { loggedOut: 401 },
  downloadMediaMessage: vi.fn(),
  useMultiFileAuthState: mocked.auth,
  fetchLatestBaileysVersion: mocked.version,
}));
vi.mock("qrcode", () => ({ default: { toDataURL: mocked.qr } }));
import { createLinkedWhatsAppController } from "./whatsapp_linked_device.js";

const cleanups: Array<() => Promise<void>> = [];
afterEach(async () => {
  for (const cleanup of cleanups.splice(0)) await cleanup();
  vi.clearAllMocks();
});
async function fixture() {
  const dir = await mkdtemp(join(tmpdir(), "ws2-wa-lifecycle-"));
  const ev = new EventEmitter();
  const socket = {
    ev,
    end: vi.fn(),
    logout: vi.fn(async () => {}),
    user: { id: "2348012345678@s.whatsapp.net" },
    sendMessage: vi.fn(async () => {}),
  };
  const socketFactory = vi.fn(() => socket);
  const bridge = {
    handle: vi.fn(async () => ({ shouldDeliver: false })),
    delivered: vi.fn(),
  };
  mocked.auth.mockResolvedValue({ state: {}, saveCreds: vi.fn() });
  mocked.version.mockResolvedValue({ version: [2, 3000, 1] });
  mocked.qr.mockResolvedValue("data:image/png;base64,qr");
  const controller = createLinkedWhatsAppController({
    bridge,
    socketFactory,
    authDir: dir,
  } as never);
  cleanups.push(async () => {
    await controller.stop();
    await rm(dir, { recursive: true, force: true });
  });
  return { controller, socketFactory, socket, bridge };
}
describe("personal WhatsApp lifecycle recovery", () => {
  it("does not acknowledge a failed audio-only linked-device reply", async () => {
    const f = await fixture();
    f.bridge.handle.mockResolvedValueOnce({
      shouldDeliver: true,
      reply: "",
      audio: {
        bytes: Buffer.from("audio"),
        mimeType: "audio/wav",
        fileName: "reply.wav",
      },
    } as never);
    f.socket.sendMessage.mockRejectedValueOnce(new Error("upload failed"));
    await f.controller.start();
    f.socket.ev.emit("messages.upsert", {
      type: "notify",
      messages: [
        {
          key: { remoteJid: "2348012345678@s.whatsapp.net", id: "audio" },
          message: { conversation: "Hi" },
        },
      ],
    });
    await new Promise((resolve) => setTimeout(resolve, 10));
    expect(f.bridge.delivered).not.toHaveBeenCalled();
    expect(f.controller.snapshot().lastEvent).toBe("message-processing-failed");
  });
  it("retains delivery when a socket stops while the canonical turn is running", async () => {
    const f = await fixture();
    let finish!: (value: unknown) => void;
    let entered!: () => void;
    const started = new Promise<void>((resolve) => {
      entered = resolve;
    });
    f.bridge.handle.mockImplementationOnce(() => {
      entered();
      return new Promise((resolve) => {
        finish = resolve;
      }) as never;
    });
    await f.controller.start();
    f.socket.ev.emit("messages.upsert", {
      type: "notify",
      messages: [
        {
          key: { remoteJid: "2348012345678@s.whatsapp.net", id: "in-flight" },
          message: { conversation: "Hi" },
        },
      ],
    });
    await started;
    await f.controller.stop();
    finish({ shouldDeliver: true, reply: "Canonical reply" });
    await new Promise((resolve) => setTimeout(resolve, 10));
    expect(f.socket.sendMessage).not.toHaveBeenCalled();
    expect(f.bridge.delivered).not.toHaveBeenCalled();
  });
  it("allows admin recovery when reconnecting after a reset fails", async () => {
    const f = await fixture();
    await f.controller.start();
    mocked.auth.mockRejectedValueOnce(new Error("temporary reset failure"));
    await expect(f.controller.reset()).rejects.toThrow(
      "temporary reset failure",
    );
    await f.controller.start();
    expect(f.socketFactory).toHaveBeenCalledTimes(2);
  });
  it("allows an admin to retry start after initialization fails", async () => {
    const f = await fixture();
    mocked.auth.mockRejectedValueOnce(new Error("temporary storage error"));
    await expect(f.controller.start()).rejects.toThrow(
      "temporary storage error",
    );
    await f.controller.start();
    expect(f.socketFactory).toHaveBeenCalledTimes(1);
  });
  it("does not create a socket when stopped during asynchronous initialization", async () => {
    const f = await fixture();
    let complete!: (value: unknown) => void;
    let entered!: () => void;
    const waiting = new Promise<void>((resolve) => {
      entered = resolve;
    });
    mocked.auth.mockImplementationOnce(() => {
      entered();
      return new Promise((resolve) => {
        complete = resolve;
      });
    });
    const starting = f.controller.start();
    await waiting;
    await f.controller.stop();
    complete({ state: {}, saveCreds: vi.fn() });
    await starting;
    expect(f.socketFactory).not.toHaveBeenCalled();
    expect(f.controller.snapshot().status).toBe("offline");
  });
  it("does not replace a paired connection with a stale QR render", async () => {
    const f = await fixture();
    let rendered!: (value: string) => void;
    mocked.qr.mockImplementationOnce(
      () =>
        new Promise((resolve) => {
          rendered = resolve;
        }),
    );
    await f.controller.start();
    f.socket.ev.emit("connection.update", { qr: "pending-qr" });
    f.socket.ev.emit("connection.update", { connection: "open" });
    rendered("data:image/png;base64,stale");
    await Promise.resolve();
    expect(f.controller.snapshot()).toMatchObject({
      status: "connected",
      connected: true,
      qrDataUrl: null,
    });
  });
  it("ignores events from a stopped linked-device socket", async () => {
    const f = await fixture();
    await f.controller.start();
    await f.controller.stop();
    f.socket.ev.emit("messages.upsert", {
      type: "notify",
      messages: [
        {
          key: { remoteJid: "2348012345678@s.whatsapp.net", id: "old" },
          message: { conversation: "Hi" },
        },
      ],
    });
    await new Promise((resolve) => setTimeout(resolve, 10));
    expect(f.bridge.handle).not.toHaveBeenCalled();
  });
});

it("recovers only through the currently connected direct-message socket",async()=>{
 const f=await fixture();
 await expect(f.controller.sendReply!("2348012345678@s.whatsapp.net","Saved reply")).rejects.toThrow("not_connected");
 await f.controller.start();
 f.socket.ev.emit("connection.update",{connection:"open"});
 await f.controller.sendReply!("2348012345678@s.whatsapp.net","Saved reply");
 expect(f.socket.sendMessage).toHaveBeenCalledWith("2348012345678@s.whatsapp.net",{text:"Saved reply"});
 await expect(f.controller.sendReply!("123@g.us","Private reply")).rejects.toThrow("not_connected");
 await f.controller.stop();
 await expect(f.controller.sendReply!("2348012345678@s.whatsapp.net","Saved reply")).rejects.toThrow("not_connected");
});
