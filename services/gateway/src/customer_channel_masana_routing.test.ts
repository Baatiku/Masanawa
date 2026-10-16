import { describe, expect, it, vi } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import type {
  CustomerChannelRepository,
  PlatformSessionRepository,
} from "@masanawa/security";
import type { PlatformAgentProfileRepository } from "@masanawa/agents";
import type { AgentConversationService } from "./agent_conversation_contract.js";
import type { AgentDirectoryService } from "./agent_directory.js";
import { createCustomerChannelBridge } from "./customer_channel_bridge.js";

function base() {
  const tenantId = createCanonicalId("tenant");
  const userId = createCanonicalId("user");
  const gwani = createCanonicalId("character");
  const gwana = createCanonicalId("character");
  const amina = createCanonicalId("character");
  const aisha = createCanonicalId("character");
  const issueSession = vi.fn(async () => undefined);
  const revokeAccess = vi.fn(async () => undefined);
  const resolveProfile = vi.fn(async () => null);
  const sessions = {
    resolveProfile,
    issueSession,
    revokeAccess,
  } as unknown as PlatformSessionRepository;
  let link: any = {
    channel: "whatsapp",
    externalUserId: "+2348012345678",
    chatId: "2348012345678@s.whatsapp.net",
    tenantId,
    userId,
    characterId: gwani,
    characterSessionId: null,
    updatedAt: "2026-10-07T00:00:00.000Z",
  };
  const putLink = vi.fn(async (value: any) => { link = value; });
  const setCharacterSession = vi.fn(async (value: any) => { link = { ...link, ...value }; });
  const completeMessage = vi.fn(async () => undefined);
  const requestIds = new Map<string,string>();
  const channels = {
    async claimMessage({messageId}:{messageId:string}) {
      const requestId=requestIds.get(messageId)??createCanonicalId("request");
      requestIds.set(messageId,requestId);
      return { state: "claimed" as const,requestId };
    },
    async readLink() { return link; },
    putLink,
    setCharacterSession,
    completeMessage,
    async failMessage() {},
  } as unknown as CustomerChannelRepository;
  const platformProfiles = {
    async listSupportAgents() {
      return [
        { characterId: gwani, supportAgent: true, defaultForNewUsers: true, voiceName: "Bodi" },
        { characterId: gwana, supportAgent: true, defaultForNewUsers: false, voiceName: "Fora" },
      ];
    },
    async readForCharacter({ characterId }: { characterId: string }) {
      return [gwani, gwana, amina, aisha].includes(characterId as never)
        ? { characterId, supportAgent: characterId === gwani || characterId === gwana,
            defaultForNewUsers: characterId === gwani,
            voiceName: characterId === gwani ? "Bodi" : "Fora" }
        : null;
    },
  } as unknown as PlatformAgentProfileRepository;
  const list = vi.fn(async () => [
    { characterId: gwani, displayName: "Mallam Gwani" },
    { characterId: gwana, displayName: "Malamah Gwana" },
    { characterId: amina, displayName: "Dr. Amina Yusuf" },
    { characterId: aisha, displayName: "Dr. Aisha Tanko" },
    // Not on the canonical roster — even if visible in a stale directory,
    // no legacy user-created identity may become a channel target.
    { characterId: createCanonicalId("character"), displayName: "Personal Twin" },
  ]);
  const directory = { list } as unknown as Pick<AgentDirectoryService, "list">;
  const turn = vi.fn(async () => ({
    reply: "Masana reply", agentRunId: createCanonicalId("agent-run"), parts: [],
  }));
  const conversation = {
    async open() { return { characterSessionId: createCanonicalId("character-session") }; },
    async close() {},
    turn,
  } as unknown as AgentConversationService;
  const bridge = createCustomerChannelBridge({
    tenantId, sessions, channels, platformProfiles, directory, conversation,
  });
  const send = (text: string, channel: "whatsapp" | "telegram" = "whatsapp") =>
    bridge.handle({
      channel, messageId: "msg-" + text,
      externalUserId: channel === "telegram" ? "99" : "+2348012345678",
      chatId: channel === "telegram" ? "99" : "2348012345678@s.whatsapp.net",
      text,
    });
  return {
    tenantId, userId, gwani, gwana, amina, aisha,
    putLink, getLink: () => link, list, turn, send, issueSession, revokeAccess,completeMessage,resolveProfile,
  };
}

describe("canonical Masana channel routing", () => {
  it("refuses to issue a session for a phone profile that differs from the durable channel owner",async()=>{
    const x=base();
    x.resolveProfile.mockResolvedValue({tenantId:x.tenantId,userId:createCanonicalId("user"),profile:{}} as never);
    await expect(x.send("My balance")).rejects.toThrow("channels.link_identity_mismatch");
    expect(x.issueSession).not.toHaveBeenCalled();
    expect(x.turn).not.toHaveBeenCalled();
  });
  it("reuses the original agent request when receipt persistence fails after a turn",async()=>{
    const x=base();x.completeMessage.mockRejectedValueOnce(new Error("temporary database failure"));
    await expect(x.send("Confirm bill")).rejects.toThrow("temporary database failure");
    await x.send("Confirm bill");
    expect(x.turn).toHaveBeenCalledTimes(2);
    const calls=x.turn.mock.calls as unknown as Array<[{requestId:string}]>;
    expect(calls[1]![0].requestId).toBe(calls[0]![0].requestId);
  });
  it("switches WhatsApp to the authorized named professional, preserving customer identity", async () => {
    const x = base();
    const result = await x.send("chat with Dr. Amina Yusuf");
    expect(result.reply).toContain("Dr. Amina Yusuf");
    expect(x.putLink).toHaveBeenCalledWith(expect.objectContaining({
      userId: x.userId, characterId: x.amina, characterSessionId: null,
    }));
    expect(x.list).toHaveBeenCalledWith({
      authorizationHeader: expect.stringMatching(/^Bearer /),
    });
    expect(x.issueSession).toHaveBeenCalledTimes(1);
    expect(x.revokeAccess).toHaveBeenCalledTimes(1);
  });

  it("resolves the seeded @masana.handle without a public-Twin search", async () => {
    const x = base();
    const result = await x.send("@masana.aisha");
    expect(result.reply).toContain("Dr. Aisha Tanko");
    expect(x.getLink().characterId).toBe(x.aisha);
  });

  it("does not switch a partial name that matches several professionals", async () => {
    const x = base();
    const result = await x.send("chat with Dr");
    expect(result.reply).toContain("Several Masana match");
    expect(result.reply).toContain("Dr. Amina Yusuf");
    expect(result.reply).toContain("Dr. Aisha Tanko");
    expect(x.getLink().characterId).toBe(x.gwani);
  });

  it("does not expose obsolete user-created people through the channel", async () => {
    const x = base();
    const result = await x.send("chat with Personal Twin");
    // An obsolete Twin command remains ordinary text for Gwani.
    expect(result.reply).toBe("Masana reply");
    expect(x.getLink().characterId).toBe(x.gwani);
    expect(x.list).not.toHaveBeenCalled();
  });

  it("routes professional Telegram turns as platform agents, never public twins", async () => {
    const x = base();
    await x.putLink({
      ...x.getLink(),
      channel: "telegram", externalUserId: "99", chatId: "99",
      characterId: x.amina,
    });
    const result = await x.send("Explain algebra", "telegram");
    expect(result.reply).toBe("Masana reply");
    expect(x.turn).toHaveBeenCalledWith(expect.objectContaining({
      surface: "telegram", representation: "platform-agent", characterId: x.amina,
    }));
  });

  it("returns to Gwani without changing the linked user", async () => {
    const x = base();
    await x.putLink({ ...x.getLink(), characterId: x.amina });
    const result = await x.send("back to Gwani");
    expect(result.reply).toContain("back with Gwani");
    expect(x.getLink()).toMatchObject({
      userId: x.userId, characterId: x.gwani, characterSessionId: null,
    });
  });

  it("selects Gwana by the current female Fora voice, not a retired voice", async () => {
    const x = base();
    const result = await x.send("talk to Gwana");
    expect(result.reply).toContain("Gwana");
    expect(x.getLink().characterId).toBe(x.gwana);
  });
});

