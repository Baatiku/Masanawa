import { describe, expect, it, vi } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import { createProductionAgentStrategy } from "./production_strategy.js";

describe("production strategy surface guidance", () => {
  it("tells WhatsApp public Twins about the real surface and free text boundary", async () => {
    const generate = vi.fn(async (request: { systemInstructions: readonly string[] }) => {
      return { text: "reply" };
    });
    const strategy = createProductionAgentStrategy({
      inference: { generate } as never,
      skills: {} as never,
      guides: {} as never,
    });

    await strategy.execute({
      agentRunId: createCanonicalId("agent-run"),
      characterSessionId: createCanonicalId("character-session"),
      characterVersionId: createCanonicalId("character-version"),
      skillVersionIds: [],
      presentation: {
        displayName: "Aisha",
        roleLabel: "AI Twin",
        about: "Public representation",
      },
      surface: "whatsapp",
      representation: "public-twin",
      input: { kind: "text", text: "hello" },
    });

    const instructions = generate.mock.calls[0]![0].systemInstructions.join("\n");
    expect(instructions).toContain("inside WhatsApp");
    expect(instructions).toContain("Never tell the user to tap app tabs");
    expect(instructions).toContain("free public Twin text chat");
    expect(instructions).toContain("real human owner");
    expect(instructions).toContain("Public Twin text conversation is free");
  });

  it("uses Telegram-specific guidance without pretending app UI exists", async () => {
    const generate = vi.fn(
      async (_request: { systemInstructions: readonly string[] }) => ({
        text: "reply",
      }),
    );
    const strategy = createProductionAgentStrategy({
      inference: { generate } as never,
      skills: {} as never,
      guides: {} as never,
    });

    await strategy.execute({
      agentRunId: createCanonicalId("agent-run"),
      characterSessionId: createCanonicalId("character-session"),
      characterVersionId: createCanonicalId("character-version"),
      skillVersionIds: [],
      presentation: {
        displayName: "Gwani",
        roleLabel: "Support",
        about: "",
      },
      surface: "telegram",
      representation: "platform-agent",
      input: { kind: "text", text: "buy data" },
    });

    const instructions = generate.mock.calls[0]![0].systemInstructions.join("\n");
    expect(instructions).toContain("inside Telegram");
    expect(instructions).toContain("billing");
    expect(instructions).toContain("wallet guidance");
    expect(instructions).toContain("Teaching");
    expect(instructions).toContain("app-only tabs");
  });
});

it("uses the native Live transcript as the reply without running a second model",async()=>{
  const generate=vi.fn(async()=>({text:"fallback"}));
  const audio={transcript:"Thanks for asking.",dataBase64:"AAAAAA==",mimeType:"audio/l16;rate=24000",durationMs:1};
  const speakReply=vi.fn(async()=>audio);
  const strategy=createProductionAgentStrategy({inference:{generate},skills:{} as never,guides:{} as never});
  const result=await strategy.execute({
    agentRunId:createCanonicalId("agent-run"),
    characterSessionId:createCanonicalId("character-session"),
    characterVersionId:createCanonicalId("character-version"),
    skillVersionIds:[],
    presentation:{displayName:"Amina",roleLabel:"Research",about:""},
    input:{kind:"text",text:"How are you?"},
    speakReply,
  });
  expect(result).toEqual({reply:audio.transcript,parts:[],spokenReply:audio});
  expect(speakReply).toHaveBeenCalledExactlyOnceWith({
    message:JSON.stringify({priorMessages:[],currentMessage:"How are you?"}),
    system:expect.stringContaining("Amina"),
  });
  expect(generate).not.toHaveBeenCalled();
});
