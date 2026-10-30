import { afterEach, describe, expect, it } from "vitest";
import type { AgentDirectoryService } from "./agent_directory.js";
import { createGatewayApp } from "./app.js";

const apps: Array<ReturnType<typeof createGatewayApp>> = [];

afterEach(async () => {
  await Promise.all(apps.splice(0).map((app) => app.close()));
});

describe("agent directory route", () => {
  it("forwards authorization and omits Skill assignment", async () => {
    let seen: string | undefined;
    const directory: AgentDirectoryService = {
      async list(input) {
        seen = input.authorizationHeader;
        return [
          {
            characterId:
              "character_00000000-0000-4000-8000-000000000002",
            characterVersionId:
              "character-version_00000000-0000-4000-8000-000000000003",
            displayName: "Amina",
            roleLabel: "Sales & Outreach",
            about: "Handles prospects",
            greeting: "What should we work on?",
            presence: "available",
            activeWorkCount: 0,
            supportAgent: true,
            defaultPlatformAgent: true,
            voiceProvider: "gemini",
            voiceName: "Bodi",portraitKey:'amina',following:true,
            countryCode:'NG',countryName:'Nigeria',conversationStarters:['Hello'],
            socialChannels:[{platform:'x' as const,url:'https://x.com/example'}],
            publicOfficialSimulation:true,
            publicOfficial:{portrait:{url:'https://api.masanawa.com/public/persona-media/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',sourceUrl:'https://example.org/photo',credit:'Example photographer',licenseLabel:'CC BY 4.0'},party:{code:'APC',name:'All Progressives Congress',emblemUrl:'https://api.masanawa.com/public/persona-media/bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb',sourceUrl:'https://example.org/roster',checkedAt:'2026-10-29'},biography:'A full reviewed public biography.',biographicalFacts:{dateOfBirth:'1964-05-14',stateOfOrigin:'Kaduna'},officialName:'Example Official',office:'Governor',identitySourceUrl:'https://grokipedia.com/page/Example',
              reviewedAt:'2026-10-29T00:00:00Z',reviewExpiresAt:'2026-11-01T00:00:00Z',verification:'source_reviewed' as const,representation:'ai_simulation' as const},
            skillVersionIds:['must-not-leak'],privateCredential:'must-not-leak',

          },
        ];
      },
      async setDefaultPlatformAgent(input) {
        seen = input.authorizationHeader;
        return {
          characterId:
            "character_00000000-0000-4000-8000-000000000002" as never,
        };
      },
    };
    const app = createGatewayApp({ agentDirectory: directory });
    apps.push(app);

    const response = await app.inject({
      method: "GET",
      url: "/agent/directory",
      headers: { authorization: "Bearer user" },
    });

    expect(response.statusCode).toBe(200);
    expect(seen).toBe("Bearer user");
    const body = response.json();
    expect(body.agents[0].displayName).toBe("Amina");
    expect(body.agents[0]).not.toHaveProperty("skillVersionIds");
    expect(body.agents[0]).not.toHaveProperty('privateCredential');
    expect(body.agents[0].publicOfficial.portrait.credit).toBe('Example photographer');
    expect(body.agents[0].publicOfficial.party.code).toBe('APC');
    expect(body.agents[0]).toMatchObject({portraitKey:'amina',following:true,countryCode:'NG',
      conversationStarters:['Hello'],socialChannels:[{platform:'x',url:'https://x.com/example'}],
      publicOfficialSimulation:true,publicOfficial:{biography:'A full reviewed public biography.',biographicalFacts:{dateOfBirth:'1964-05-14',stateOfOrigin:'Kaduna'},verification:'source_reviewed',representation:'ai_simulation'}});
    expect(body.agents[0]).toMatchObject({
      supportAgent: true,
      defaultPlatformAgent: true,
      voiceProvider: "gemini",
      voiceName: "Bodi",
    });

    const update = await app.inject({
      method: "PUT",
      url: "/agent/preferences/default",
      headers: { authorization: "Bearer user" },
      payload: {
        characterId:
          "character_00000000-0000-4000-8000-000000000002",
      },
    });
    expect(update.statusCode).toBe(200);
    expect(seen).toBe("Bearer user");
  },20000);
});
