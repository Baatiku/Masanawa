import { describe, expect, it, vi } from "vitest";
import {
  createCanonicalId,
  nowInstant,
  toInstant,
} from "@masanawa/contracts";
import {
  createAuthorityContext,
} from "@masanawa/security";
import type {
  AgentRunRepository,
  AgentStrategy,
  CharacterSession,
  CharacterSessionRepository,
  CharacterSessionScope,
} from "@masanawa/agents";
import {
  emptyCharacterSessionBindings,
} from "@masanawa/agents";
import {
  createAgentConversationService,
} from "./agent_conversation.js";
import type {
  AgentConversationAdmission,
  AgentConversationAuthorizer,
} from "./agent_conversation_contract.js";

function fixture() {
  const scope: CharacterSessionScope = {
    tenantId: createCanonicalId("tenant"),
    userId: createCanonicalId("user"),
    characterId: createCanonicalId("character"),
    relationshipId: createCanonicalId("relationship"),
  };
  const characterVersionId = createCanonicalId("character-version");
  const at = nowInstant();
  const authority = createAuthorityContext({
    tenantId: scope.tenantId,
    principal: { kind: "user", userId: scope.userId },
    scopes: [],
    capabilities: [
      "agents.session.create",
      "agents.session.read",
      "agents.session.close",
      "agents.run.create",
      "agents.run.read",
      "agents.run.finish",
    ],
    resourceScope: { relationshipIds: [scope.relationshipId] },
    policyRevision: "alpha-1",
    approvalIds: [],
    delegationChain: [],
    requestId: createCanonicalId("request"),
    correlationId: createCanonicalId("correlation"),
    issuedAt: at,
  });
  const admission: AgentConversationAdmission = {
    scope,
    characterVersionId,
    bindings: emptyCharacterSessionBindings,
    authority,
    presentation: {
      displayName: "Amina",
      roleLabel: "Research Assistant",
      about: "Helps with practical research.",
    },
  };
  return { scope, characterVersionId, authority, admission, at };
}

function sessionFor(
  f: ReturnType<typeof fixture>,
  characterSessionId = createCanonicalId("character-session"),
): CharacterSession {
  return {
    schemaVersion: 1,
    ...f.scope,
    characterSessionId,
    characterVersionId: f.characterVersionId,
    bindings: emptyCharacterSessionBindings,
    state: "active",
    revision: 1,
    createdAt: f.at,
    updatedAt: f.at,
    expiresAt: toInstant(new Date(Date.now() + 60_000)),
    closedAt: null,
    closeReason: null,
    successorSessionId: null,
  };
}

describe("Alpha conversation service", () => {
  it("uses canonical session/run custody for text and media turns", async () => {
    const f = fixture();
    let session = sessionFor(f);
    const events: string[] = [];

    const sessions: CharacterSessionRepository = {
      async create(input) {
        session = sessionFor(f, input.characterSessionId);
        events.push("session:create");
        return session;
      },
      async read() {
        events.push("session:read");
        return session;
      },
      async updateBindings() {
        throw new Error("not used");
      },
      async close() {
        events.push("session:close");
        session = {
          ...session,
          state: "closed",
          revision: 2,
          updatedAt: f.at,
          closedAt: f.at,
          closeReason: "ended",
        };
        return session;
      },
      async reset() {
        throw new Error("not used");
      },
    };

    const runs: AgentRunRepository = {
      async create(input) {
        events.push(`run:create:${input.agentRunId}`);
        return {} as never;
      },
      async read() {
        throw new Error("not used");
      },
      async finish(input) {
        events.push(`run:finish:${input.outcome.state}`);
        return {} as never;
      },
    };

    const authorizer: AgentConversationAuthorizer = {
      async authorize(input) {
        expect(input.characterId).toBe(f.scope.characterId);
        return f.admission;
      },
    };

    const priorRequestId=createCanonicalId("request");
    const listHistory=vi.fn(async(_input:{scope:CharacterSessionScope;limit:number})=>[
      {requestId:priorRequestId,direction:"user",text:"Remember the fruit mango"},
      {requestId:priorRequestId,direction:"assistant",text:"Mango is our fruit"},
    ]);
    const strategy: AgentStrategy = {
      async execute(input) {
        expect(input.presentation.displayName).toBe("Amina");
        expect(input.rememberedFacts).toEqual(input.input.kind==="media"
          ? [] : ["I prefer calm explanations"]);
        expect(input.conversationHistory).toEqual([{role:"user",text:"Remember the fruit mango"},{role:"assistant",text:"Mango is our fruit"}]);
        expect(input.presentation.roleLabel).toBe("Research Assistant");
        if (input.input.kind === "text") {
          return { reply: `Text: ${input.input.text}`, parts: [] };
        }
        if (input.input.kind === "media") {
          expect(input.input.mimeType).toBe("audio/mp4");
          expect(input.input.dataBase64).toBe("YWJj");
          return { reply: "I heard the voice note.", parts: [] };
        }
        expect(input.input.media).toHaveLength(2);
        return { reply: "I reviewed both attachments.", parts: [] };
      },
    };

    const render=vi.fn(async()=>({dataBase64:"AAAAAA==",mimeType:"audio/pcm;rate=24000",durationMs:1}));
    const remembered=vi.fn(async(_scope:CharacterSessionScope,_query:string)=>["I prefer calm explanations"]);
    const stored=vi.fn(async(_scope:CharacterSessionScope,_source:{requestId:string;text:string})=>true);
    const service = createAgentConversationService({
      memory:{recall:remembered,ingest:stored} as never,
      sessions,
      runs,
      authorizer,
      strategy,
      mobileShell:{listHistory,claimTurn:async()=>({state:"created"}),appendEvent:async()=>{},completeTurn:async()=>{},failTurn:async()=>{}} as never,
      nativeAudio:{render},
      voiceForCharacter:async(scope)=>{expect(scope).toEqual(f.scope);return "Fora";},
      sessionDurationMs: 60_000,
    });

    const opened = await service.open({
      authorizationHeader: "Bearer alpha",
      characterId: f.scope.characterId,
    });

    const text = await service.turn({
      authorizationHeader: "Bearer alpha",
      characterSessionId: opened.characterSessionId,
      characterId: f.scope.characterId,
      text: "hello",
      requestId: createCanonicalId("request"),
      correlationId: createCanonicalId("correlation"),
    });
    expect(text.reply).toBe("Text: hello");
    expect(text.agentRunId).toMatch(/^agent-run_/u);

    const media = await service.mediaTurn({
      authorizationHeader: "Bearer alpha",
      characterSessionId: opened.characterSessionId,
      characterId: f.scope.characterId,
      caption: "",
      mimeType: "audio/mp4",
      dataBase64: "YWJj",
      requestId: createCanonicalId("request"),
      correlationId: createCanonicalId("correlation"),
    });
    expect(media.reply).toBe("I heard the voice note.");

    const mediaSet = await service.mediaSetTurn({
      authorizationHeader: "Bearer alpha",
      characterSessionId: opened.characterSessionId,
      characterId: f.scope.characterId,
      caption: "Compare these",
      media: [
        { mimeType: "image/jpeg", dataBase64: "YWJj", name: "one.jpg" },
        { mimeType: "image/jpeg", dataBase64: "ZGVm", name: "two.jpg" },
      ],
      requestId: createCanonicalId("request"),
      correlationId: createCanonicalId("correlation"),
    });
    expect(mediaSet.reply).toBe("I reviewed both attachments.");
    expect(remembered).toHaveBeenCalledTimes(2);
    for(const call of remembered.mock.calls)expect(call[0]).toEqual(f.scope);
    expect(stored).toHaveBeenCalledTimes(2);
    expect(stored.mock.calls[0]?.[0]).toEqual(f.scope);
    expect(listHistory).toHaveBeenCalledTimes(3);
    for(const call of listHistory.mock.calls) expect(call[0]).toEqual({scope:f.scope,limit:16});
    expect(render).toHaveBeenNthCalledWith(1,"Text: hello",undefined,undefined,{voiceName:"Fora"});
    expect(render).toHaveBeenNthCalledWith(2,"I heard the voice note.",undefined,undefined,{voiceName:"Fora"});
    expect(render).toHaveBeenNthCalledWith(3,"I reviewed both attachments.",undefined,undefined,{voiceName:"Fora"});

    await service.close({
      authorizationHeader: "Bearer alpha",
      characterSessionId: opened.characterSessionId,
      characterId: f.scope.characterId,
    });

    expect(events.filter((event) => event.startsWith("run:create"))).toHaveLength(3);
    expect(events.filter((event) => event === "run:finish:completed")).toHaveLength(3);
    expect(events).toContain("session:close");
  });

  it("records a failed terminal run when inference fails", async () => {
    const f = fixture();
    const session = sessionFor(f);
    const outcomes: string[] = [];

    const sessions: CharacterSessionRepository = {
      async create() {
        return session;
      },
      async read() {
        return session;
      },
      async updateBindings() {
        throw new Error("not used");
      },
      async close() {
        return session;
      },
      async reset() {
        throw new Error("not used");
      },
    };
    const runs: AgentRunRepository = {
      async create() {
        return {} as never;
      },
      async read() {
        throw new Error("not used");
      },
      async finish(input) {
        outcomes.push(
          input.outcome.state === "failed"
            ? input.outcome.failureCode
            : input.outcome.state,
        );
        return {} as never;
      },
    };
    const authorizer: AgentConversationAuthorizer = {
      async authorize() {
        return f.admission;
      },
    };
    const strategy: AgentStrategy = {
      async execute() {
        throw new Error("provider down");
      },
    };
    const service = createAgentConversationService({
      sessions,
      runs,
      authorizer,
      strategy,
      sessionDurationMs: 60_000,
    });

    await expect(
      service.turn({
        authorizationHeader: "Bearer alpha",
        characterSessionId: session.characterSessionId,
        characterId: f.scope.characterId,
        text: "hello",
        requestId: createCanonicalId("request"),
        correlationId: createCanonicalId("correlation"),
      }),
    ).rejects.toThrow("provider down");

    expect(outcomes).toEqual(["alpha.strategy_failed"]);
  });

  it("rejects expired sessions before inference or financial side effects", async () => {
    const f = fixture();
    const expired = {
      ...sessionFor(f),
      expiresAt: toInstant(new Date(Date.now() - 1_000)),
    };
    const execute = vi.fn(async () => ({ reply: "should not run", parts: [] }));
    const sessions: CharacterSessionRepository = {
      async create() { return expired; },
      async read() { return expired; },
      async updateBindings() { throw new Error("not used"); },
      async close() { return expired; },
      async reset() { throw new Error("not used"); },
    };
    const runs: AgentRunRepository = {
      async create() { throw new Error("run must not start"); },
      async read() { throw new Error("not used"); },
      async finish() { throw new Error("run must not finish"); },
    };
    const authorizer: AgentConversationAuthorizer = {
      async authorize() { return f.admission; },
    };
    const service = createAgentConversationService({
      sessions,
      runs,
      authorizer,
      strategy: { execute },
      sessionDurationMs: 60_000,
    });

    await expect(
      service.turn({
        authorizationHeader: "Bearer alpha",
        characterSessionId: expired.characterSessionId,
        characterId: f.scope.characterId,
        text: "confirm",
        requestId: createCanonicalId("request"),
        correlationId: createCanonicalId("correlation"),
      }),
    ).rejects.toMatchObject({ code: "agents.session_closed" });
    expect(execute).not.toHaveBeenCalled();
  });

});
