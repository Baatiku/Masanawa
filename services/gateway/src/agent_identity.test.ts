import {describe,expect,it,vi} from "vitest";
import {createCanonicalId} from "@masanawa/contracts";
import {createPgAgentMasanaIdentityReader} from "./agent_identity.js";
describe("approved canonical Masana portrait and followed metadata",()=>{
 it("reads identity by tenant and canonical character ID, with a private user-scoped follow",async()=>{
   const tenant=createCanonicalId("tenant"),user=createCanonicalId("user"),character=createCanonicalId("character");
   const query=vi.fn(async(sql:string,params:unknown[])=>{
     expect(sql).toContain("revision.state='approved'");
     expect(sql).toContain("owner.kind='platform'");
     expect(sql).toContain("following.fan_user_id=$3");
     expect(sql).toContain("revision.character_id=ANY($2::text[])");
     expect(params).toEqual([tenant,[character],user]);
     return {rows:[{character_id:character,portrait_media_id:"masana_portrait_amina",following:true}]};
   });
   const port=createPgAgentMasanaIdentityReader({query} as never);
   expect((await port.read({tenantId:tenant,userId:user,characterIds:[]})).size).toBe(0);
   const identities=await port.read({tenantId:tenant,userId:user,characterIds:[character]});
   expect(identities.get(character)).toEqual({portraitKey:"amina",following:true,socialChannels:[]});
   expect(query).toHaveBeenCalledTimes(1);
 });
 it("does not bind unapproved/lookalike custom media to stock images",async()=>{
   const character=createCanonicalId("character");
   const port=createPgAgentMasanaIdentityReader({
     query:async()=>({rows:[{character_id:character,portrait_media_id:"masana_portrait_aminax",following:false}]})
   } as never);
   const result=await port.read({tenantId:createCanonicalId("tenant"),
     userId:createCanonicalId("user"),characterIds:[character]});
   expect(result.get(character)).toEqual({portraitKey:null,following:false,socialChannels:[]});
 });
 it("retains a portrait when a Masana's approved display handle changes",async()=>{
   const character=createCanonicalId("character");
   const port=createPgAgentMasanaIdentityReader({query:async()=>({rows:[{
      character_id:character,portrait_media_id:"masana_portrait_amina",following:false,
   }]})} as never);
   const identity=await port.read({tenantId:createCanonicalId("tenant"),userId:createCanonicalId("user"),characterIds:[character]});
   expect(identity.get(character)?.portraitKey).toBe("amina");
 });
 it("rejects server identity rows for a different character",async()=>{
   const character=createCanonicalId("character"),other=createCanonicalId("character");
   const port=createPgAgentMasanaIdentityReader({
     query:async()=>({rows:[{character_id:other,portrait_media_id:"masana_portrait_gwani",following:true}]})
   } as never);
   await expect(port.read({tenantId:createCanonicalId("tenant"),
     userId:createCanonicalId("user"),characterIds:[character]})).rejects.toThrow("invalid_masana_identity_projection");
 });
 it("projects only approved official WhatsApp/Telegram URLs",async()=>{
   const character=createCanonicalId("character");
   const port=createPgAgentMasanaIdentityReader({query:async()=>({
     rows:[{character_id:character,portrait_media_id:"masana_portrait_gwani",following:true,
       social_channels:[{platform:"telegram",url:"https://t.me/masanawaofficial"},
         {platform:"whatsapp",url:"https://wa.me/2348012345678"}]}],
   })} as never);
   const found=await port.read({tenantId:createCanonicalId("tenant"),
     userId:createCanonicalId("user"),characterIds:[character]});
   expect(found.get(character)?.socialChannels).toHaveLength(2);
   expect(found.get(character)?.socialChannels[0]?.url).toBe("https://t.me/masanawaofficial");
 });

});
