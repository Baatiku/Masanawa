import { describe, expect, it } from "vitest";
import {
  linkedWhatsAppMediaKind,
  linkedWhatsAppMimeFor,
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
});
