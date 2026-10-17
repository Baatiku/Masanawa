import {describe,expect,it,vi} from "vitest";
import {createCanonicalId} from "@masanawa/contracts";
import {createPgAgentRoomDirectory,createPgAgentMasanaIdentityReader} from "./agent_directory_rooms.js";
import {createAgentDirectoryService} from "./agent_directory.js";
describe("platform Masana to published classroom directory",()=>{
 it("batches one tenant's visible characters and denies paused, paid or unapproved room entries",async()=>{
  const tenant=createCanonicalId("tenant");
  const character=createCanonicalId("character");
  const query=vi.fn(async(sql:string,params:readonly unknown[])=>{
   expect(sql).toContain("room.tenant_id=$1");
   expect(sql).toContain("room.teacher_character_id=ANY($2::text[])");
   expect(sql).toContain("room.state='published'");
   expect(sql).toContain("room.plan_mode='free'");
   expect(sql).toContain("revision.state='approved'");
   expect(params).toEqual([tenant,[character]]);
   return {rows:[{teacher_character_id:character,room_id:"room_masana_02_amina"}]};
  });
  const rooms=createPgAgentRoomDirectory({query} as never);
  expect((await rooms.readPublished({tenantId:tenant,characterIds:[]})).size).toBe(0);
  expect(query).not.toHaveBeenCalled();
  const result=await rooms.readPublished({tenantId:tenant,characterIds:[character]});
  expect(result.get(character)).toBe("room_masana_02_amina");
  expect(query).toHaveBeenCalledTimes(1);
 });
 it("projects published Room only for authorized, visible Masana",async()=>{
  const tenant=createCanonicalId("tenant"),user=createCanonicalId("user");
  const allowed=createCanonicalId("character"),other=createCanonicalId("character");
  const profile=(id:string)=>({
   schemaVersion:1,tenantId:tenant,characterId:id,characterVersionId:createCanonicalId("character-version"),
   displayName:"Dr. Amina Yusuf",roleLabel:"Medicine",about:"AI tutor",greeting:null,
   visibleInUserApp:true,sortOrder:1,revision:1,
  });
  const rooms={readPublished:vi.fn(async()=>new Map([[allowed,"room_masana_02_amina"]]))};
  const service=createAgentDirectoryService({
   authorizer:{authorize:async()=>({tenantId:tenant,userId:user,characterIds:[allowed]})},
   presentations:{listVisible:async()=>[profile(allowed),profile(other)]} as never,
   rooms:rooms as never,
  });
  const entries=await service.list({authorizationHeader:"Bearer user"});
  expect(entries).toHaveLength(1);
  expect(entries[0]).toMatchObject({characterId:allowed,roomId:"room_masana_02_amina"});
  expect(rooms.readPublished).toHaveBeenCalledWith({tenantId:tenant,characterIds:[allowed]});
 });
});

describe("approved canonical Masana portrait and followed metadata",()=>{
 it("reads identity by tenant and canonical character ID, with a private user-scoped follow",async()=>{
   const tenant=createCanonicalId("tenant"),user=createCanonicalId("user"),character=createCanonicalId("character");
   const query=vi.fn(async(sql:string,params:unknown[])=>{
     expect(sql).toContain("revision.state='approved'");
     expect(sql).toContain("owner.kind='platform'");
     expect(sql).toContain("following.fan_user_id=$3");
     expect(sql).toContain("revision.character_id=ANY($2::text[])");
     expect(params).toEqual([tenant,[character],user]);
     return {rows:[{character_id:character,handle:"masana.amina",following:true}]};
   });
   const port=createPgAgentMasanaIdentityReader({query} as never);
   expect((await port.read({tenantId:tenant,userId:user,characterIds:[]})).size).toBe(0);
   const identities=await port.read({tenantId:tenant,userId:user,characterIds:[character]});
   expect(identities.get(character)).toEqual({portraitKey:"amina",following:true,socialChannels:[]});
   expect(query).toHaveBeenCalledTimes(1);
 });
 it("does not bind lookalike custom handles to stock images",async()=>{
   const character=createCanonicalId("character");
   const port=createPgAgentMasanaIdentityReader({
     query:async()=>({rows:[{character_id:character,handle:"masana.aminax",following:false}]})
   } as never);
   const result=await port.read({tenantId:createCanonicalId("tenant"),
     userId:createCanonicalId("user"),characterIds:[character]});
   expect(result.get(character)).toEqual({portraitKey:null,following:false,socialChannels:[]});
 });
 it("rejects server identity rows for a different character",async()=>{
   const character=createCanonicalId("character"),other=createCanonicalId("character");
   const port=createPgAgentMasanaIdentityReader({
     query:async()=>({rows:[{character_id:other,handle:"masana.gwani",following:true}]})
   } as never);
   await expect(port.read({tenantId:createCanonicalId("tenant"),
     userId:createCanonicalId("user"),characterIds:[character]})).rejects.toThrow("invalid_masana_identity_projection");
 });
 it("projects only approved official WhatsApp/Telegram URLs",async()=>{
   const character=createCanonicalId("character");
   const port=createPgAgentMasanaIdentityReader({query:async()=>({
     rows:[{character_id:character,handle:"masana.gwani",following:true,
       social_channels:[{platform:"telegram",url:"https://t.me/masanawaofficial"},
         {platform:"whatsapp",url:"https://wa.me/2348012345678"}]}],
   })} as never);
   const found=await port.read({tenantId:createCanonicalId("tenant"),
     userId:createCanonicalId("user"),characterIds:[character]});
   expect(found.get(character)?.socialChannels).toHaveLength(2);
   expect(found.get(character)?.socialChannels[0]?.url).toBe("https://t.me/masanawaofficial");
 });

});
