import { Boom } from "@hapi/boom";
import makeWASocket, {
  DisconnectReason,
  downloadMediaMessage,
  fetchLatestBaileysVersion,
  useMultiFileAuthState,
  type WASocket,
} from "@whiskeysockets/baileys";
import QRCode from "qrcode";
import pino from "pino";
import { mkdir, rm } from "node:fs/promises";
import path from "node:path";
import type {
  CustomerChannelBridge,
  CustomerChannelInbound,
} from "./customer_channel_bridge.js";

export interface LinkedWhatsAppSnapshot {
  readonly mode: "linked-device";
  readonly status: "offline" | "connecting" | "qr" | "connected" | "reconnecting" | "logged-out";
  readonly connected: boolean;
  readonly phone: string | null;
  readonly qrDataUrl: string | null;
  readonly lastEvent: string;
  readonly reconnectAttempt: number;
}

export interface LinkedWhatsAppController {
  snapshot(): LinkedWhatsAppSnapshot;
  start(): Promise<void>;
  stop(): Promise<void>;
  reset(): Promise<void>;
}

export interface LinkedWhatsAppOptions {
  readonly bridge: CustomerChannelBridge;
  readonly authDir: string;
  readonly reconnectBaseMs?: number;
  readonly socketFactory?: typeof makeWASocket;
}

/** A WhatsApp LID is an opaque privacy identifier, not a phone number.
 * Never create/login a platform phone customer from a raw @lid value. */
export function linkedWhatsAppPhoneFromJid(jid: string): string | null {
  if (!jid.endsWith("@s.whatsapp.net")) return null;
  const local = jid.slice(0, -("@s.whatsapp.net".length)).split(":")[0] ?? "";
  if (!/^[1-9][0-9]{6,14}$/u.test(local)) return null;
  return `+${local}`;
}

/** Resolve a linked-device direct sender through WhatsApp's authenticated
 * PN/LID mapping. An absent mapping fails closed, never guesses a phone. */
export async function resolveLinkedWhatsAppSenderPhone(
  remoteJid: string,
  remoteJidAlt: string | undefined,
  pnForLid: (lid: string) => Promise<string | null | undefined>,
): Promise<string | null> {
  const direct = linkedWhatsAppPhoneFromJid(remoteJid);
  if (direct) return direct;
  if (!remoteJid.endsWith("@lid")) return null;
  const alt = remoteJidAlt ? linkedWhatsAppPhoneFromJid(remoteJidAlt) : null;
  if (alt) return alt;
  const mapped = await pnForLid(remoteJid);
  return mapped ? linkedWhatsAppPhoneFromJid(mapped) : null;
}

/**
 * WhatsApp commonly wraps direct messages in ephemeralMessage and
 * documentWithCaptionMessage. Unwrap only normal customer-visible envelopes.
 * View-once media must not be silently downloaded or replayed by an agent.
 */
export function unwrapLinkedWhatsAppMessage(
  source: unknown,
): Record<string, unknown> | null {
  let item: unknown = source;
  for (let depth = 0; depth < 4; depth++) {
    if (!item || typeof item !== "object" || Array.isArray(item)) return null;
    const message = item as Record<string, unknown>;
    if (
      message.viewOnceMessage ||
      message.viewOnceMessageV2 ||
      message.viewOnceMessageV2Extension
    ) return null;
    const wrapper = message.ephemeralMessage ??
      message.documentWithCaptionMessage;
    if (wrapper === undefined) return message;
    if (!wrapper || typeof wrapper !== "object" || Array.isArray(wrapper)) {
      return null;
    }
    item = (wrapper as Record<string, unknown>).message;
  }
  return null; // Never recursively parse attacker-supplied nested envelopes.
}

function textFromMessage(message: Record<string, unknown>): string {
  const conversation = typeof message.conversation === "string" ? message.conversation : "";
  const extended = message.extendedTextMessage;
  const extendedText =
    extended && typeof extended === "object" && !Array.isArray(extended) &&
    typeof (extended as Record<string, unknown>).text === "string"
      ? String((extended as Record<string, unknown>).text)
      : "";
  const image = message.imageMessage;
  const imageCaption =
    image && typeof image === "object" && !Array.isArray(image) &&
    typeof (image as Record<string, unknown>).caption === "string"
      ? String((image as Record<string, unknown>).caption)
      : "";
  const video = message.videoMessage;
  const videoCaption =
    video && typeof video === "object" && !Array.isArray(video) &&
    typeof (video as Record<string, unknown>).caption === "string"
      ? String((video as Record<string, unknown>).caption)
      : "";
  const document = message.documentMessage;
  const documentCaption = document && typeof document === "object" &&
      !Array.isArray(document) &&
      typeof (document as Record<string, unknown>).caption === "string"
    ? String((document as Record<string, unknown>).caption)
    : "";
  const button = message.buttonsResponseMessage;
  const buttonText = button && typeof button === "object" &&
      !Array.isArray(button) &&
      typeof (button as Record<string, unknown>).selectedDisplayText === "string"
    ? String((button as Record<string, unknown>).selectedDisplayText)
    : "";
  const list = message.listResponseMessage;
  const listTitle = list && typeof list === "object" && !Array.isArray(list) &&
      typeof (list as Record<string, unknown>).title === "string"
    ? String((list as Record<string, unknown>).title)
    : "";
  const template = message.templateButtonReplyMessage;
  const templateText = template && typeof template === "object" &&
      !Array.isArray(template) &&
      typeof (template as Record<string, unknown>).selectedDisplayText === "string"
    ? String((template as Record<string, unknown>).selectedDisplayText)
    : "";
  // IDs and native-flow params are not displayed customer text and must
  // never be silently interpreted as financial confirmation commands.
  return (
    conversation || extendedText || imageCaption || videoCaption ||
    documentCaption || buttonText || listTitle || templateText
  ).trim().slice(0, 16_000);
}

export function linkedWhatsAppMediaKind(
  message: Record<string, unknown>,
): "audio" | "image" | "video" | "document" | null {
  if (message.audioMessage) return "audio";
  if (message.imageMessage) return "image";
  if (message.videoMessage) return "video";
  if (message.documentMessage) return "document";
  return null;
}

export function linkedWhatsAppMimeFor(
  message: Record<string, unknown>,
  kind: "audio" | "image" | "video" | "document",
): string {
  const key = kind === "audio" ? "audioMessage" :
    kind === "image" ? "imageMessage" :
    kind === "video" ? "videoMessage" : "documentMessage";
  const node = message[key];
  if (node && typeof node === "object" && !Array.isArray(node)) {
    const mime = (node as Record<string, unknown>).mimetype;
    if (typeof mime === "string" && mime.trim()) return mime.trim();
  }
  return kind === "audio" ? "audio/ogg" :
    kind === "image" ? "image/jpeg" :
    kind === "video" ? "video/mp4" : "application/octet-stream";
}

function nameFor(message: Record<string, unknown>): string | undefined {
  const node = message.documentMessage;
  if (!node || typeof node !== "object" || Array.isArray(node)) return undefined;
  const name = (node as Record<string, unknown>).fileName;
  return typeof name === "string" && name.trim() ? name.trim().slice(0, 240) : undefined;
}

/** Stream in the decrypted bytes with a hard limit. Baileys documents
 * 'stream' downloads; the previous 'buffer' mode could allocate the entire
 * incoming video/document before checking its size. */
export async function readBoundedLinkedWhatsAppMedia(
  stream: AsyncIterable<Uint8Array | string>,
  maxBytes = 8 * 1024 * 1024,
): Promise<Buffer> {
  const chunks: Buffer[] = [];
  let total = 0;
  for await (const part of stream) {
    const chunk = Buffer.from(part);
    total += chunk.byteLength;
    if (total > maxBytes) throw new RangeError("channels.media_too_large");
    chunks.push(chunk);
  }
  if (total === 0) throw new RangeError("channels.media_empty");
  return Buffer.concat(chunks, total);
}

export function createLinkedWhatsAppController(
  options: LinkedWhatsAppOptions,
): LinkedWhatsAppController {
  const authDir = path.resolve(options.authDir);
  const socketFactory = options.socketFactory ?? makeWASocket;
  const reconnectBaseMs = Math.max(500, options.reconnectBaseMs ?? 2_000);

  const logger = pino({ level: "silent" });
  let socket: WASocket | null = null;
  let stopped = true;
  let reconnectTimer: ReturnType<typeof setTimeout> | null = null;
  let generation = 0;
  const pendingByChat = new Map<string, Promise<void>>();
  let snapshot: LinkedWhatsAppSnapshot = Object.freeze({
    mode: "linked-device",
    status: "offline",
    connected: false,
    phone: null,
    qrDataUrl: null,
    lastEvent: "not-started",
    reconnectAttempt: 0,
  });

  const update = (patch: Partial<LinkedWhatsAppSnapshot>) => {
    snapshot = Object.freeze({ ...snapshot, ...patch });
  };

  async function processMessage(raw: any, sock: WASocket): Promise<void> {
    const key = raw?.key;
    const remoteJid = typeof key?.remoteJid === "string" ? key.remoteJid : "";
    const messageId = typeof key?.id === "string" ? key.id : "";
    if (!remoteJid || !messageId || key?.fromMe === true) return;
    if (remoteJid === "status@broadcast" || remoteJid.endsWith("@g.us")) return;
    const alt = typeof key?.remoteJidAlt === "string" ? key.remoteJidAlt : undefined;
    const phone = await resolveLinkedWhatsAppSenderPhone(
      remoteJid,
      alt,
      async (lid) => sock.signalRepository.lidMapping.getPNForLID(lid),
    );
    if (!phone) {
      // The owner may need to re-link/sync LID mappings. Do not create a
      // fictional +LID phone identity or leak data into the wrong account.
      update({ lastEvent: "sender-phone-unresolved" });
      return;
    }
    const message = unwrapLinkedWhatsAppMessage(raw?.message);
    if (!message) return; // Privacy-preserving view-once rejection.
    const text = textFromMessage(message);
    const kind = linkedWhatsAppMediaKind(message);

    let media: CustomerChannelInbound["media"] | undefined;
    if (kind) {
      const downloaded = await downloadMediaMessage(
        raw,
        "stream",
        {},
        {
          logger,
          reuploadRequest: sock.updateMediaMessage,
        },
      );
      try {
        const bytes = await readBoundedLinkedWhatsAppMedia(downloaded);
        media = Object.freeze({
          mimeType: linkedWhatsAppMimeFor(message, kind),
          dataBase64: bytes.toString("base64"),
          ...(nameFor(message) ? { name: nameFor(message)! } : {}),
        });
      } catch (error) {
        downloaded.destroy();
        if (error instanceof RangeError && error.message === "channels.media_too_large") {
          await sock.sendMessage(remoteJid, {
            text: "That file is too large. Please send a file smaller than 8 MB.",
          });
          return;
        }
        throw error;
      }
    }

    if (!text && !media) return;

    // Scope provider IDs to the chat, as with Telegram. A linked-device
    // message ID must not collide with a different customer's receipt.
    const durableMessageId = `${remoteJid}:${messageId}`;
    const result = await options.bridge.handle({
      channel: "whatsapp",
      messageId: durableMessageId,
      externalUserId: phone,
      chatId: remoteJid,
      phone,
      text: text || "Please help me with this attachment.",
      ...(media ? { media } : {}),
    });

    if (result.shouldDeliver && (result.reply || result.audio)) {
      if (result.reply) await sock.sendMessage(remoteJid, { text: result.reply });
      if (result.audio) {
        try {
          // WAV is valid as a file attachment, not as an Opus voice note.
          // Preserve the exact provider media type instead of faking a codec.
          await sock.sendMessage(remoteJid, {
            document: result.audio.bytes,
            mimetype: result.audio.mimeType,
            fileName: result.audio.fileName,
          });
        } catch (_) {
          // Text is the durable fallback; optional audio must not replay a
          // completed conversation or create duplicate text on retry.
        }
      }
      await options.bridge.delivered({
        channel: "whatsapp",
        messageId: durableMessageId,
      });
    }
  }

  function scheduleReconnect(): void {
    if (stopped || reconnectTimer) return;
    const attempt = snapshot.reconnectAttempt + 1;
    update({
      status: "reconnecting",
      connected: false,
      qrDataUrl: null,
      reconnectAttempt: attempt,
      lastEvent: "reconnect-scheduled",
    });
    const delay = Math.min(60_000, reconnectBaseMs * Math.max(1, 2 ** Math.min(attempt - 1, 5)));
    reconnectTimer = setTimeout(() => {
      reconnectTimer = null;
      void connect().catch(() => scheduleReconnect());
    }, delay);
  }

  async function connect(): Promise<void> {
    const myGeneration = ++generation;
    await mkdir(authDir, { recursive: true });
    const { state, saveCreds } = await useMultiFileAuthState(authDir);
    const { version } = await fetchLatestBaileysVersion();

    update({
      status: "connecting",
      connected: false,
      qrDataUrl: null,
      lastEvent: "connecting",
    });

    const sock = socketFactory({
      version,
      auth: state,
      printQRInTerminal: false,
      syncFullHistory: false,
      markOnlineOnConnect: true,
      generateHighQualityLinkPreview: false,
      logger,
    });
    socket = sock;

    sock.ev.on("creds.update", saveCreds);
    sock.ev.on("messages.upsert", ({ messages, type }) => {
      if (type !== "notify") return;
      for (const message of messages) {
        const jid = String(message.key?.remoteJid ?? "");
        // Keep each sender's persistent conversation/session turns ordered,
        // while unrelated customers can still be processed independently.
        const prior = pendingByChat.get(jid) ?? Promise.resolve();
        const task = prior.catch(() => undefined).then(() => processMessage(message, sock));
        pendingByChat.set(jid, task);
        void task.catch(() => {
          update({ lastEvent: "message-processing-failed" });
        }).finally(() => {
          if (pendingByChat.get(jid) === task) pendingByChat.delete(jid);
        });
      }
    });
    sock.ev.on("connection.update", (event) => {
      if (stopped || myGeneration !== generation) return;
      if (event.qr) {
        void QRCode.toDataURL(event.qr).then((qrDataUrl) => {
          if (stopped || myGeneration !== generation) return;
          update({
            status: "qr",
            connected: false,
            qrDataUrl,
            lastEvent: "qr-ready",
          });
        }).catch(() => undefined);
      }

      if (event.connection === "open") {
        const id = String(sock.user?.id ?? "");
        update({
          status: "connected",
          connected: true,
          phone: linkedWhatsAppPhoneFromJid(id) || snapshot.phone,
          qrDataUrl: null,
          lastEvent: "connected",
          reconnectAttempt: 0,
        });
      }

      if (event.connection === "close") {
        socket = null;
        const code = new Boom(event.lastDisconnect?.error).output.statusCode;
        if (code === DisconnectReason.loggedOut) {
          update({
            status: "logged-out",
            connected: false,
            qrDataUrl: null,
            lastEvent: "logged-out",
          });
          return;
        }
        scheduleReconnect();
      }
    });
  }

  return Object.freeze({
    snapshot: () => snapshot,

    async start() {
      if (!stopped) return;
      stopped = false;
      await connect();
    },

    async stop() {
      stopped = true;
      generation += 1;
      if (reconnectTimer) clearTimeout(reconnectTimer);
      reconnectTimer = null;
      socket?.end(undefined);
      socket = null;
      update({
        status: "offline",
        connected: false,
        qrDataUrl: null,
        lastEvent: "stopped",
      });
    },

    async reset() {
      stopped = true;
      generation += 1;
      if (reconnectTimer) clearTimeout(reconnectTimer);
      reconnectTimer = null;
      try { await socket?.logout(); } catch { /* already disconnected */ }
      socket?.end(undefined);
      socket = null;
      await rm(authDir, { recursive: true, force: true });
      await mkdir(authDir, { recursive: true });
      update({
        status: "offline",
        connected: false,
        phone: null,
        qrDataUrl: null,
        lastEvent: "session-reset",
        reconnectAttempt: 0,
      });
      stopped = false;
      await connect();
    },
  });
}
