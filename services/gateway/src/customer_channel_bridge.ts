import {
  createCanonicalId,
  type CharacterId,
} from "@masanawa/contracts";
import type {
  PlatformAgentProfileRepository,
  UserAgentPreferenceRepository,
} from "@masanawa/agents";
import {
  hashPlatformSessionToken,
  mintPlatformSessionToken,
  normalizePlatformAuthIdentifier,
  type CustomerChannel,
  type CustomerChannelRepository,
  type PlatformSessionRepository,
} from "@masanawa/security";
import type { AgentConversationService } from "./agent_conversation_contract.js";
import type { AgentDirectoryService } from "./agent_directory.js";
import { PROFESSIONAL_MASANA_CATALOG } from "./platform_agent_bootstrap.js";
import { prepareChannelReplyAudio, type ChannelReplyAudio } from "./channel_reply_audio.js";

export interface CustomerChannelInbound {
  readonly channel: CustomerChannel;
  readonly messageId: string;
  readonly externalUserId: string;
  readonly chatId: string;
  readonly text: string;
  readonly phone?: string;
  readonly media?: Readonly<{
    mimeType: string;
    dataBase64: string;
    name?: string;
  }>;
}

export interface CustomerChannelResult {
  readonly handled: boolean;
  readonly duplicate: boolean;
  readonly reply: string | null;
  readonly requestContact: boolean;
  readonly shouldDeliver: boolean;
  /** Optional, best-effort media for the current provider response. The
   * canonical conversation/receipt is the text; provider retry uses stored
   * text if this transient media cannot be redelivered. */
  readonly audio?: ChannelReplyAudio;
}

export interface CustomerChannelBridge {
  handle(request: CustomerChannelInbound): Promise<CustomerChannelResult>;
  delivered(input: Readonly<{
    channel: CustomerChannel;
    messageId: string;
  }>): Promise<void>;
}

function instant(offsetMs = 0): string {
  return new Date(Date.now() + offsetMs).toISOString();
}


function recoverableSessionFailure(error: unknown): boolean {
  if (!error || typeof error !== "object") return false;
  const code = "code" in error ? String((error as { code?: unknown }).code ?? "") : "";
  return code === "agents.session_not_found" || code === "agents.session_closed";
}

function normalizePhone(value: string): string {
  const compact = value.trim().replace(/[\s()-]/gu, "");
  const international = compact.startsWith("+") ? compact : `+${compact}`;
  return normalizePlatformAuthIdentifier({ phone: international }).identifier;
}

export function createCustomerChannelBridge(input: Readonly<{
  tenantId: string;
  sessions: PlatformSessionRepository;
  channels: CustomerChannelRepository;
  platformProfiles: PlatformAgentProfileRepository;
  userPreferences?: UserAgentPreferenceRepository;
  conversation: AgentConversationService;
  directory?: Pick<AgentDirectoryService, "list">;
}>): Readonly<{
  handle(request: CustomerChannelInbound): Promise<CustomerChannelResult>;
  delivered(input: Readonly<{
    channel: CustomerChannel;
    messageId: string;
  }>): Promise<void>;
}> {
  async function chooseCharacter(
    identity: Readonly<{ tenantId: string; userId: string }>,
    requested?: "gwani" | "gwana",
  ): Promise<CharacterId> {
    const support = await input.platformProfiles.listSupportAgents({
      tenantId: identity.tenantId as never,
    });
    if (requested) {
      const voice = requested === "gwana" ? "fora" : "bodi";
      const named = support.find(
        (agent) => agent.voiceName.trim().toLowerCase() === voice,
      );
      if (named) return named.characterId;
    }
    const preference = await input.userPreferences?.readForUser({
      tenantId: identity.tenantId as never,
      userId: identity.userId as never,
    });
    if (preference) {
      const selected = await input.platformProfiles.readForCharacter({
        tenantId: identity.tenantId as never,
        characterId: preference.defaultPlatformCharacterId,
      });
      if (selected?.supportAgent) return selected.characterId;
    }
    const preferred =
      support.find((agent) => agent.defaultForNewUsers) ??
      support.find((agent) => agent.voiceName.trim().toLowerCase() === "bodi") ??
      support[0];
    if (!preferred) throw new Error("channels.support_agent_unavailable");
    return preferred.characterId;
  }

  type ChannelNavigation =
    | Readonly<{ kind: "support"; requested?: "gwani" | "gwana" }>
    | Readonly<{ kind: "masana"; query: string }>;

  // Route only explicit switch commands. Ordinary questions are always sent
  // to the active Masana and are never misinterpreted as a persona change.
  function navigationIntent(text: string): ChannelNavigation | null {
    const value = text.trim().replace(/\s+/gu, " ");
    if (!value || value.length > 240) return null;
    if (
      /^(?:go\s+)?back\s+to\s+(?:gwani|masanawa|support)[.!?]?$/iu.test(value) ||
      /^(?:talk|chat|switch)(?:\s+me)?\s+(?:to|with)\s+gwani[.!?]?$/iu.test(value)
    ) {
      return Object.freeze({ kind: "support", requested: "gwani" as const });
    }
    if (/^(?:talk|chat|switch)(?:\s+me)?\s+(?:to|with)\s+gwana[.!?]?$/iu.test(value)) {
      return Object.freeze({ kind: "support", requested: "gwana" as const });
    }
    if (/^(?:go\s+)?back\s+to\s+(?:my\s+)?(?:assistant|agent)[.!?]?$/iu.test(value)) {
      return Object.freeze({ kind: "support" });
    }

    const match =
      /^(?:talk|chat|switch)(?:\s+me)?\s+(?:to|with)\s+(.+?)[.!?]?$/iu.exec(value);
    const handle = /^@masana[._-]([a-z][a-z0-9_-]{1,63})$/iu.exec(value);
    const query = (handle?.[1] ?? match?.[1] ?? "").trim();
    if (!query || /(?:^|\s)twin(?:\s|$)/iu.test(query)) return null;
    return Object.freeze({ kind: "masana", query });
  }

  function normalizeLookup(value: string): string {
    return value.trim().toLowerCase().replace(/[^a-z0-9]+/gu, " ").trim();
  }

  // Never search user-created or legacy Twin identities. Resolve from the
  // published, user-authorized platform directory intersected with the 26
  // current canonical Masana professionals. Ambiguous matches do not switch.
  async function availableMasana(authorizationHeader: string) {
    const visible = await input.directory?.list({ authorizationHeader }) ?? [];
    const catalog = new Map(
      PROFESSIONAL_MASANA_CATALOG.map((seed) =>
        [normalizeLookup(seed.displayName), seed] as const
      ),
    );
    return visible.flatMap((agent) => {
      const seed = catalog.get(normalizeLookup(agent.displayName));
      return seed
        ? [{ characterId: agent.characterId as CharacterId, displayName: agent.displayName, key: seed.key }]
        : [];
    });
  }

  function matchMasana(
    query: string,
    available: Awaited<ReturnType<typeof availableMasana>>,
  ) {
    const wanted = normalizeLookup(query);
    if (!wanted) return [];
    const exact = available.filter(
      (agent) => normalizeLookup(agent.displayName) === wanted ||
        normalizeLookup(agent.key) === wanted,
    );
    if (exact.length > 0) return exact;
    // A partial name (e.g. Aisha) is acceptable only when unambiguous.
    return available.filter((agent) =>
      normalizeLookup(agent.displayName).split(" ").includes(wanted),
    );
  }

  async function resolveOrLink(
    request: CustomerChannelInbound,
  ) {
    const existing = await input.channels.readLink({
      channel: request.channel,
      externalUserId: request.externalUserId,
    });
    if (existing) return existing;

    let phone: string | undefined;
    if (request.channel === "whatsapp") {
      phone = normalizePhone(request.phone ?? request.externalUserId);
    } else if (request.phone) {
      phone = normalizePhone(request.phone);
    }
    if (!phone) return null;

    let profile = await input.sessions.resolveProfile({
      tenantId: input.tenantId as never,
      channel: "sms",
      identifier: phone,
      observedAt: instant(),
    });

    // A direct WhatsApp sender has already proven control of this phone number
    // to the linked WhatsApp account. Treat WhatsApp as a first-class Masanawa
    // signup surface instead of forcing the customer to install the mobile app
    // before Gwani can help them.
    if (
      !profile &&
      (request.channel === "whatsapp" ||
        (request.channel === "telegram" && request.phone))
    ) {
      try {
        profile = await input.sessions.createProfile({
          tenantId: input.tenantId as never,
          channel: "sms",
          identifier: phone,
          name:
            request.channel === "whatsapp"
              ? "WhatsApp customer"
              : "Telegram customer",
          locale: "ng",
          createdAt: instant(),
        });
      } catch {
        // Concurrent first messages may race profile creation. Resolve the
        // canonical row once more and only fail closed if it still does not exist.
        profile = await input.sessions.resolveProfile({
          tenantId: input.tenantId as never,
          channel: "sms",
          identifier: phone,
          observedAt: instant(),
        });
      }
    }
    if (!profile) return null;
    const characterId = await chooseCharacter(profile);
    const link = Object.freeze({
      channel: request.channel,
      externalUserId: request.externalUserId,
      chatId: request.chatId,
      tenantId: profile.tenantId,
      userId: profile.userId,
      characterId,
      characterSessionId: null,
      updatedAt: instant(),
    });
    await input.channels.putLink(link);
    return link;
  }

  async function withInternalSession<T>(
    link: NonNullable<Awaited<ReturnType<typeof resolveOrLink>>>,
    run: (authorizationHeader: string) => Promise<T>,
  ): Promise<T> {
    const profile = await input.sessions.resolveProfile({
      tenantId: link.tenantId,
      channel: "sms",
      identifier:
        requestPhoneCache.get(`${link.channel}:${link.externalUserId}`) ?? "",
      observedAt: instant(),
    }).catch(() => null);

    // Channel links are already foreign-keyed to an existing platform profile.
    // Resolve the durable profile directly from the link when a phone lookup is
    // unavailable by using a tiny synthetic identity only for issuing this
    // short-lived internal access session.
    const identity = profile
      ? { tenantId: profile.tenantId, userId: profile.userId, profile }
      : {
          tenantId: link.tenantId,
          userId: link.userId,
          profile: {
            tenantId: link.tenantId,
            userId: link.userId,
            name: "Masanawa customer",
            email: null,
            phone: null,
            locale: "ng",
            createdAt: instant(),
          },
        };

    const accessToken = mintPlatformSessionToken("access");
    const refreshToken = mintPlatformSessionToken("refresh");
    const issuedAt = instant();
    await input.sessions.issueSession({
      identity: identity as never,
      accessHash: hashPlatformSessionToken(accessToken),
      refreshHash: hashPlatformSessionToken(refreshToken),
      accessExpiresAt: instant(5 * 60 * 1000),
      refreshExpiresAt: instant(10 * 60 * 1000),
      issuedAt,
    });
    try {
      return await run(`Bearer ${accessToken}`);
    } finally {
      await input.sessions.revokeAccess({
        accessHash: hashPlatformSessionToken(accessToken),
        revokedAt: instant(),
      }).catch(() => undefined);
    }
  }

  const requestPhoneCache = new Map<string, string>();

  return Object.freeze({
    async handle(request) {
      const messageId = request.messageId.trim();
      const externalUserId = request.externalUserId.trim();
      const chatId = request.chatId.trim();
      if (!messageId || !externalUserId || !chatId) {
        throw new TypeError("channels.inbound_invalid");
      }
      if (request.phone) {
        requestPhoneCache.set(
          `${request.channel}:${externalUserId}`,
          normalizePhone(request.phone),
        );
      } else if (request.channel === "whatsapp") {
        requestPhoneCache.set(
          `${request.channel}:${externalUserId}`,
          normalizePhone(externalUserId),
        );
      }

      const claim = await input.channels.claimMessage({
        channel: request.channel,
        messageId,
        externalUserId,
        receivedAt: instant(),
      });
      if (claim.state !== "claimed") {
        return Object.freeze({
          handled: true,
          duplicate: true,
          reply:
            claim.state === "completed" || claim.state === "delivered"
              ? claim.reply
              : null,
          requestContact:
            request.channel === "telegram" &&
            claim.state === "completed" &&
            claim.reply ===
              "To connect Telegram securely, share the same phone number you use for your Masanawa account.",
          shouldDeliver: claim.state === "completed" && claim.reply !== null,
        });
      }

      try {
        const link = await resolveOrLink(request);
        if (!link) {
          const reply = request.channel === "telegram"
            ? "To connect Telegram securely, share the same phone number you use for your Masanawa account."
            : "Sign in to Masanawa with this WhatsApp phone number first, then message me again.";
          await input.channels.completeMessage({
            channel: request.channel,
            messageId,
            reply,
            completedAt: instant(),
          });
          return Object.freeze({
            handled: true,
            duplicate: false,
            reply,
            requestContact: request.channel === "telegram",
            shouldDeliver: true,
          });
        }

        const navigation = request.media ? null : navigationIntent(request.text);
        if (navigation) {
          const navigationReply = await withInternalSession(
            link,
            async (authorizationHeader) => {
              if (navigation.kind === "support") {
                if (link.characterSessionId) {
                  await input.conversation.close({
                    authorizationHeader,
                    characterSessionId: link.characterSessionId,
                    characterId: link.characterId,
                  }).catch(() => undefined);
                }
                const characterId = await chooseCharacter(
                  { tenantId: link.tenantId, userId: link.userId },
                  navigation.requested,
                );
                await input.channels.putLink({
                  ...link,
                  characterId,
                  characterSessionId: null,
                  updatedAt: instant(),
                });
                const label =
                  navigation.requested === "gwana"
                    ? "Gwana"
                    : navigation.requested === "gwani"
                      ? "Gwani"
                      : "your Masanawa assistant";
                return `You're back with ${label}. How can I help?`;
              }

              const roster = await availableMasana(authorizationHeader);
              const candidates = matchMasana(navigation.query, roster);
              if (candidates.length !== 1) {
                if (candidates.length === 0) {
                  return "That Masana is not available here. Send 'chat with Dr. Amina Yusuf' or another professional's full name.";
                }
                const choices = candidates
                  .slice(0, 8)
                  .map((item, index) => `${index + 1}. chat with ${item.displayName}`)
                  .join("\n");
                return `Several Masana match. Choose one by full name:\n${choices}`;
              }
              const selected = candidates[0]!;
              if (link.characterSessionId) {
                await input.conversation.close({
                  authorizationHeader,
                  characterSessionId: link.characterSessionId,
                  characterId: link.characterId,
                }).catch(() => undefined);
              }
              await input.channels.putLink({
                ...link,
                characterId: selected.characterId,
                characterSessionId: null,
                updatedAt: instant(),
              });
              return `You're now chatting with ${selected.displayName}. How can I help?`;
            },
          );
          await input.channels.completeMessage({
            channel: request.channel,
            messageId,
            reply: navigationReply,
            completedAt: instant(),
          });
          return Object.freeze({
            handled: true,
            duplicate: false,
            reply: navigationReply,
            requestContact: false,
            shouldDeliver: true,
          });
        }

        const requestId = createCanonicalId("request");
        const correlationId = createCanonicalId("correlation");

        const result = await withInternalSession(link, async (authorizationHeader) => {
          let characterSessionId = link.characterSessionId;
          const open = async () => {
            const created = await input.conversation.open({
              authorizationHeader,
              characterId: link.characterId,
            });
            characterSessionId = created.characterSessionId;
            await input.channels.setCharacterSession({
              channel: link.channel,
              externalUserId: link.externalUserId,
              characterId: link.characterId,
              characterSessionId,
              updatedAt: instant(),
            });
          };
          if (!characterSessionId) await open();

          const turn = async () => {
            if (!characterSessionId) throw new Error("channels.session_missing");
            const activeProfile = await input.platformProfiles.readForCharacter({
              tenantId: link.tenantId,
              characterId: link.characterId,
            });
            // All channel-accessible characters are platform-owned Masana.
            // Never downgrade a professional to a retired public-Twin mode.
            if (!activeProfile) {
              throw new Error("channels.masanawa_profile_missing");
            }
            const representation = "platform-agent" as const;
            if (request.media) {
              return input.conversation.mediaTurn({
                authorizationHeader,
                characterSessionId,
                characterId: link.characterId,
                caption: request.text,
                mimeType: request.media.mimeType,
                dataBase64: request.media.dataBase64,
                requestId,
                correlationId,
                surface: request.channel,
                representation,
              });
            }
            return input.conversation.turn({
              authorizationHeader,
              characterSessionId,
              characterId: link.characterId,
              text: request.text,
              requestId,
              correlationId,
              surface: request.channel,
              representation,
            });
          };

          try {
            return await turn();
          } catch (error) {
            if (!recoverableSessionFailure(error)) throw error;
            await open();
            return turn();
          }
        });

        await input.channels.completeMessage({
          channel: request.channel,
          messageId,
          reply: result.reply,
          completedAt: instant(),
        });
        const audio = prepareChannelReplyAudio(
          result.audioBase64, result.audioMimeType,
        );
        return Object.freeze({
          handled: true,
          duplicate: false,
          reply: result.reply,
          requestContact: false,
          shouldDeliver: true,
          ...(audio ? { audio } : {}),
        });
      } catch (error) {
        await input.channels.failMessage({
          channel: request.channel,
          messageId,
          failedAt: instant(),
        }).catch(() => undefined);
        throw error;
      }
    },

    async delivered(delivery) {
      await input.channels.markDelivered({
        channel: delivery.channel,
        messageId: delivery.messageId,
        deliveredAt: instant(),
      });
    },
  });
}
