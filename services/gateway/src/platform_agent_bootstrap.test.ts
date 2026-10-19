import {describe,it,expect,vi} from "vitest";
import {createCanonicalId,nowInstant} from "@masanawa/contracts";
import type {AgentPresentation,PlatformAgentProfile,CharacterSkillAssignment} from "@masanawa/agents";
import {ensureDefaultPlatformAgents,PROFESSIONAL_MASANA_CATALOG} from "./platform_agent_bootstrap.js";
import {MASANA_CHARACTER_DESIGNS} from "./masana_character_design.js";
function fixture(){
 const presentations:AgentPresentation[]=[],profiles:PlatformAgentProfile[]=[];
 const assignments=new Map<string,CharacterSkillAssignment>();
 const identity={provision:vi.fn(async()=>undefined)};
 return {identity,presentations,profiles,assignments,
  presentationsPort:{
    listAll:async()=>presentations,
    readForCharacter:async({characterId}:{characterId:string})=>presentations.find(p=>p.characterId===characterId)??null,
    listVisible:async()=>presentations.filter(p=>p.visibleInUserApp),
    put:async({presentation,expectedRevision}:{presentation:AgentPresentation;expectedRevision:number|null})=>{
       const i=presentations.findIndex(p=>p.characterId===presentation.characterId);
       if(i>=0){expect(presentations[i]?.revision).toBe(expectedRevision);presentations[i]=presentation;}
       else presentations.push(presentation);
       return presentation;
    },
  },
  profilesPort:{
    listSupportAgents:async()=>profiles.filter(p=>p.supportAgent),
    readForCharacter:async({characterId}:{characterId:string})=>profiles.find(p=>p.characterId===characterId)??null,
    put:async({profile,expectedRevision}:{profile:PlatformAgentProfile;expectedRevision:number|null})=>{
      const i=profiles.findIndex(p=>p.characterId===profile.characterId);
      if(i>=0){expect(profiles[i]?.revision).toBe(expectedRevision);profiles[i]=profile;}
      else {expect(expectedRevision).toBeNull();profiles.push(profile);}
      return profile;
    },
  },
  assignmentsPort:{
    readForCharacter:async({characterId}:{characterId:string})=>assignments.get(characterId)??null,
    put:async({assignment}:{assignment:CharacterSkillAssignment})=>{
      assignments.set(assignment.characterId,assignment);return assignment;
    },
  },
  skillsPort:{listForAudience:async()=>[{skillVersionId:createCanonicalId("skill-version"),installMode:"automatic"}]},
 };
}
function run(f:ReturnType<typeof fixture>,tenantId=createCanonicalId("tenant"),
 canonicalByHandle?:ReadonlyMap<string,import("@masanawa/contracts").CharacterId>){
 return ensureDefaultPlatformAgents({tenantId,identity:f.identity,
   ...(canonicalByHandle?{canonicalByHandle}:{}),
   presentations:f.presentationsPort as never,profiles:f.profilesPort as never,
   skillAssignments:f.assignmentsPort as never,skillDistribution:f.skillsPort as never,
   now:()=>nowInstant()});
}
describe("26 professional Masana production bootstrap",()=>{
 it("defines 2 support + 20 academic + 4 language tutors, all with dedicated Rooms and images",()=>{
   expect(PROFESSIONAL_MASANA_CATALOG).toHaveLength(26);
   expect(PROFESSIONAL_MASANA_CATALOG.filter(s=>s.supportAgent)).toHaveLength(2);
   expect(new Set(PROFESSIONAL_MASANA_CATALOG.map(s=>s.roomId)).size).toBe(26);
   expect(PROFESSIONAL_MASANA_CATALOG.slice(-4).map(s=>s.languages[0])).toEqual(["ar","en","hi","zh"]);
   expect(PROFESSIONAL_MASANA_CATALOG.every(s=>s.displayName.includes(" "))).toBe(true);
   expect(Object.keys(MASANA_CHARACTER_DESIGNS)).toHaveLength(26);
   const welcomes=PROFESSIONAL_MASANA_CATALOG.map(s=>MASANA_CHARACTER_DESIGNS[s.key]?.welcome);
   expect(new Set(welcomes).size).toBe(26);
   expect(PROFESSIONAL_MASANA_CATALOG.every(s=>
     MASANA_CHARACTER_DESIGNS[s.key]?.starters.length===3)).toBe(true);
 });
 it("provisions 26 chat/call identities, keeps Gwani default and is idempotent",async()=>{
   const f=fixture(),tenant=createCanonicalId("tenant");
   const first=await run(f,tenant);
   expect(first.changed).toBe(true);
   expect(first.characterIds).toHaveLength(26);
   expect(f.identity.provision).toHaveBeenCalledTimes(26);
   expect(f.presentations).toHaveLength(26);
   expect(f.profiles).toHaveLength(26);
   expect(new Set(f.profiles.map(p=>p.voiceName)).size).toBe(26);
   expect(f.assignments.size).toBe(26);
   expect(f.profiles.filter(p=>p.defaultForNewUsers)).toHaveLength(1);
   expect(f.profiles[0]).toMatchObject({supportAgent:true,voiceName:"Bodi"});
   expect(f.profiles[1]).toMatchObject({supportAgent:true,voiceName:"Fola"});
   expect(f.profiles.slice(2).every(p=>!p.supportAgent&&p.voiceProvider==="gemini")).toBe(true);
   expect(f.presentations[2]?.greeting).toBe(MASANA_CHARACTER_DESIGNS.amina?.welcome);
   expect(f.presentations[2]?.about).toContain("Communication style:");
   const second=await run(f,tenant);
   expect(second.changed).toBe(false);
   expect(f.identity.provision).toHaveBeenCalledTimes(26);
 });
 it.each([["Gwani","Gwana"],["Mallam Gwani Bodi","Malamah Gwana Sulafat"],["Gwani","Malamah Gwana Fora"]])("upgrades existing %s/%s without replacing their canonical identifiers",async(gwaniName,gwanaName)=>{
   const f=fixture(),tenant=createCanonicalId("tenant");
   const gwani=createCanonicalId("character"),gwana=createCanonicalId("character");
   for(const [id,name] of [[gwani,gwaniName],[gwana,gwanaName]] as const){
     f.presentations.push({schemaVersion:1,tenantId:tenant,characterId:id,
       characterVersionId:createCanonicalId("character-version"),
       displayName:name,roleLabel:"Masanawa Support",about:"Existing",greeting:null,
       visibleInUserApp:true,sortOrder:0,revision:1});
     f.profiles.push({schemaVersion:1,tenantId:tenant,characterId:id,
       supportAgent:true,defaultForNewUsers:id===gwani,
       voiceProvider:"gemini",voiceName:id===gwani?"Bodi":"Sulafat",revision:1});
   }
   const result=await run(f,tenant);
   expect(result.characterIds[0]).toBe(gwani);
   expect(result.characterIds[1]).toBe(gwana);
   expect(f.presentations[0]?.displayName).toBe("Mallam Gwani");
   expect(f.presentations[1]?.displayName).toBe("Malamah Gwana");
   expect(f.identity.provision).toHaveBeenCalledTimes(24);
   expect(f.profiles).toHaveLength(26);
   expect(f.profiles.find(p=>p.characterId===gwana)?.voiceName).toBe("Fola");
 });
 it("does not override hidden or administrator-customized characters",async()=>{
   const f=fixture(),tenant=createCanonicalId("tenant");
   f.presentations.push({schemaVersion:1,tenantId:tenant,
     characterId:createCanonicalId("character"),characterVersionId:createCanonicalId("character-version"),
     displayName:"Dr. Amina Yusuf",roleLabel:"Admin-owned",about:"Hidden",
     greeting:null,visibleInUserApp:false,sortOrder:18,revision:8});
   await run(f,tenant);
   expect(f.presentations.filter(p=>p.displayName==="Dr. Amina Yusuf")).toHaveLength(1);
   expect(f.presentations[0]?.roleLabel).toBe("Admin-owned");
   expect(f.identity.provision).toHaveBeenCalledTimes(25);
 });
 it('authors stock country affiliation explicitly and preserves administrator overrides',async()=>{
   const f=fixture(),tenant=createCanonicalId('tenant');await run(f,tenant);
   expect(f.presentations.find(p=>p.displayName==='Madam Asha Verma')?.countryCode).toBe('IN');
   expect(f.presentations.find(p=>p.displayName==='Prof. Mei Lin')?.countryCode).toBe('CN');
   expect(f.presentations.find(p=>p.displayName==='Ustazah Layla Hassan')?.countryCode).toBe('NG');
   f.presentations[0]={...f.presentations[0]!,countryCode:'GB',countryName:'United Kingdom'};
   await run(f,tenant);expect(f.presentations[0]?.countryCode).toBe('GB');
 });

 it("backfills missing country on renamed approved canonical stock identities",async()=>{
   const f=fixture(),tenant=createCanonicalId("tenant");
   const first=await run(f,tenant);
   const approvedId=first.characterIds[24]!;
   const index=f.presentations.findIndex(p=>p.characterId===approvedId);
   f.presentations[index]={...f.presentations[index]!,displayName:"Curated Hindi tutor",countryCode:null,countryName:null};
   await run(f,tenant,new Map([["masana.asha",approvedId]]));
   expect(f.presentations[index]).toMatchObject({characterId:approvedId,
     displayName:"Curated Hindi tutor",countryCode:"IN",countryName:"India"});
   expect(f.identity.provision).toHaveBeenCalledTimes(26);
   f.presentations[index]={...f.presentations[index]!,countryCode:"GB",countryName:"United Kingdom"};
   await run(f,tenant,new Map([["masana.asha",approvedId]]));
   expect(f.presentations[index]?.countryCode).toBe("GB");
 });

 it("does not overwrite administrator-selected voices or editorial welcomes",async()=>{
   const f=fixture(),tenant=createCanonicalId("tenant");
   await run(f,tenant);
   const earlier=f.profiles[2]!;
   f.profiles[2]={...earlier,voiceName:"CustomStudioVoice",revision:earlier.revision+1};
   f.presentations[2]={...f.presentations[2]!,greeting:"My curated introduction"};
   const next=await run(f,tenant);
   expect(next.changed).toBe(false);
   expect(f.profiles[2]?.voiceName).toBe("CustomStudioVoice");
   expect(f.presentations[2]?.greeting).toBe("My curated introduction");
 });

 it("keeps a renamed professional canonical identity and existing messages/Room",async()=>{
   const f=fixture(),tenant=createCanonicalId("tenant");
   const first=await run(f,tenant);
   const approvedId=first.characterIds[2]!;
   const existing=f.presentations.find(p=>p.characterId===approvedId)!;
   const index=f.presentations.indexOf(existing);
   f.presentations[index]={...existing,displayName:"Dr. Amina (curated name)"};
   const mapped=new Map([["masana.amina",approvedId]]);
   const again=await run(f,tenant,mapped);
   expect(again.characterIds[2]).toBe(approvedId);
   expect(f.presentations).toHaveLength(26);
   expect(f.identity.provision).toHaveBeenCalledTimes(26);
   expect(f.presentations[index]?.displayName).toBe("Dr. Amina (curated name)");
 });

});
