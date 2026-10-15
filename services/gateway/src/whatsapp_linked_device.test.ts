import { describe, expect, it, vi } from "vitest";
import {
  linkedWhatsAppMediaKind,
  linkedWhatsAppMimeFor,
  linkedWhatsAppPhoneFromJid,
  resolveLinkedWhatsAppSenderPhone,
  readBoundedLinkedWhatsAppMedia,
} from "./whatsapp_linked_device.js";

describe("linked-device WhatsApp media transport", () => {
  it("recognizes customer videos in addition to audio, photos and documents", () => {
    const video = { videoMessage: { mimetype: "video/mp4", caption: "Explain this" } };
    expect(linkedWhatsAppMediaKind(video)).toBe("video");
    expect(linkedWhatsAppMimeFor(video, "video")).toBe("video/mp4");
    expect(linkedWhatsAppMimeFor({ videoMessage: {} }, "video")).toBe("video/mp4");
    expect(linkedWhatsAppMediaKind({ imageMessage: {} })).toBe("image");
    expect(linkedWhatsAppMediaKind({ documentMessage: {} })).toBe("document");
    expect(linkedWhatsAppMediaKind({ audioMessage: {} })).toBe("audio");
    expect(linkedWhatsAppMediaKind({ conversation: "Hello" })).toBeNull();
  });

  it("reads a small stream and preserves its exact byte order", async () => {
    async function* chunks() {
      yield Buffer.from([1, 2]);
      yield Buffer.from([3, 4]);
    }
    const bytes = await readBoundedLinkedWhatsAppMedia(chunks(), 4);
    expect([...bytes]).toEqual([1, 2, 3, 4]);
  });

  it("rejects oversized input before consuming the remainder", async () => {
    let consumed = 0;
    async function* chunks() {
      consumed++;
      yield Buffer.alloc(5);
      consumed++;
      yield Buffer.alloc(5);
      consumed++;
      yield Buffer.alloc(500);
    }
    await expect(readBoundedLinkedWhatsAppMedia(chunks(), 8)).rejects.toThrow(
      "channels.media_too_large",
    );
    expect(consumed).toBe(2);
  });

  it("rejects empty media instead of forwarding an empty conversation turn", async () => {
    async function* empty() {}
    await expect(readBoundedLinkedWhatsAppMedia(empty())).rejects.toThrow(
      "channels.media_empty",
    );
  });
  it("never treats an opaque WhatsApp LID as a customer phone", () => {
    expect(linkedWhatsAppPhoneFromJid("2348012345678@s.whatsapp.net"))
      .toBe("+2348012345678");
    expect(linkedWhatsAppPhoneFromJid("2348012345678:2@s.whatsapp.net"))
      .toBe("+2348012345678");
    expect(linkedWhatsAppPhoneFromJid("987654321@lid")).toBeNull();
    expect(linkedWhatsAppPhoneFromJid("55123@g.us")).toBeNull();
    expect(linkedWhatsAppPhoneFromJid("status@broadcast")).toBeNull();
    expect(linkedWhatsAppPhoneFromJid("abc@s.whatsapp.net")).toBeNull();
  });

  it("uses WhatsApp's signed alternate PN or persisted LID mapping", async () => {
    const lookup = vi.fn(async (_lid: string) => "2348012345678@s.whatsapp.net");
    expect(await resolveLinkedWhatsAppSenderPhone(
      "987654321@lid", "2348012345678@s.whatsapp.net", lookup,
    )).toBe("+2348012345678");
    expect(lookup).not.toHaveBeenCalled();
    expect(await resolveLinkedWhatsAppSenderPhone(
      "987654321@lid", undefined, lookup,
    )).toBe("+2348012345678");
    expect(lookup).toHaveBeenCalledWith("987654321@lid");
  });

  it("fails closed for unmapped or malformed identities", async () => {
    expect(await resolveLinkedWhatsAppSenderPhone(
      "987654321@lid", undefined, async () => null,
    )).toBeNull();
    expect(await resolveLinkedWhatsAppSenderPhone(
      "987654321@lid", "111111111@lid", async () => "987654321@lid",
    )).toBeNull();
    expect(await resolveLinkedWhatsAppSenderPhone(
      "123456@unsupported", undefined, async () => "2348012345678@s.whatsapp.net",
    )).toBeNull();
  });

});
