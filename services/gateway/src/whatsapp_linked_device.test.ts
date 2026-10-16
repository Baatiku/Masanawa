import { describe, expect, it, vi } from "vitest";
import {
  linkedWhatsAppMediaKind,
  linkedWhatsAppMimeFor,
  linkedWhatsAppPhoneFromJid,
  resolveLinkedWhatsAppSenderPhone,
  readBoundedLinkedWhatsAppMedia,
  unwrapLinkedWhatsAppMessage,
  linkedWhatsAppTextFromMessage,
} from "./whatsapp_linked_device.js";

describe("linked-device WhatsApp media transport", () => {
  it("unwraps normal disappearing messages for voice, photos and captions", () => {
    const wrapper = {
      ephemeralMessage: {
        message: {
          documentWithCaptionMessage: {
            message: { documentMessage: {
              mimetype: "application/pdf",
              caption: "Please summarize this assignment",
            } },
          },
        },
      },
    };
    const parsed = unwrapLinkedWhatsAppMessage(wrapper);
    expect(parsed).toEqual({ documentMessage: {
      mimetype: "application/pdf",
      caption: "Please summarize this assignment",
    } });
    expect(linkedWhatsAppMediaKind(parsed!)).toBe("document");
    expect(linkedWhatsAppTextFromMessage(parsed!))
      .toBe("Please summarize this assignment");
    const ephemeralAudio = unwrapLinkedWhatsAppMessage({
      ephemeralMessage: { message: { audioMessage: {
        mimetype: "audio/ogg; codecs=opus",
      } } },
    });
    expect(linkedWhatsAppMediaKind(ephemeralAudio!)).toBe("audio");
  });

  it("never opens view-once envelopes, even behind normal disappearing wrappers", () => {
    expect(unwrapLinkedWhatsAppMessage({
      ephemeralMessage: { message: {
        viewOnceMessageV2: { message: {
          imageMessage: { url: "provider-secret" },
        } },
      } },
    })).toBeNull();
    expect(unwrapLinkedWhatsAppMessage({
      viewOnceMessage: { message: { audioMessage: {} } },
    })).toBeNull();
    expect(unwrapLinkedWhatsAppMessage({
      viewOnceMessageV2Extension: { message: { videoMessage: {} } },
    })).toBeNull();
  });

  it("bounds nested provider wrappers and rejects malformed content", () => {
    let nested: unknown = { conversation: "Hello" };
    for (let i = 0; i < 8; i++) {
      nested = { ephemeralMessage: { message: nested } };
    }
    expect(unwrapLinkedWhatsAppMessage(nested)).toBeNull();
    expect(unwrapLinkedWhatsAppMessage({ ephemeralMessage: { message: [] } }))
      .toBeNull();
    expect(unwrapLinkedWhatsAppMessage(undefined)).toBeNull();
  });

  it("uses displayed interactive text, never hidden IDs or response payloads", () => {
    expect(linkedWhatsAppTextFromMessage({
      buttonsResponseMessage: {
        selectedButtonId: "charge-wallet-now",
        selectedDisplayText: "Show current bill quote",
      },
    })).toBe("Show current bill quote");
    expect(linkedWhatsAppTextFromMessage({
      listResponseMessage: { title: "Talk to Dr. Amina Yusuf", singleSelectReply: {
        selectedRowId: "withdraw-all-funds",
      } },
    })).toBe("Talk to Dr. Amina Yusuf");
    expect(linkedWhatsAppTextFromMessage({
      templateButtonReplyMessage: { selectedDisplayText: "Cancel bill" },
    })).toBe("Cancel bill");
    expect(linkedWhatsAppTextFromMessage({
      buttonsResponseMessage: { selectedButtonId: "billing.confirm" },
    })).toBe("");
  });

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
