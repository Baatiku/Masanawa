import {describe,expect,it} from "vitest";
import {suggestedCreatorVoice,createPgCreatorVoiceReader} from "./voice.js";
import {APPROVED_MASANA_VOICES} from "../masana_voice_catalog.js";
import type {CreatorSeed} from "@masanawa/masana";
const seed:CreatorSeed={name:"Amina",profession:"Educator",languages:["en"],
 gender:"female",ageRange:"25-39",portraitMediaId:null};
describe("creator Gemini voice selection",()=>{
 it("uses exact approved owner voices with age/gender input",()=>{
  expect(suggestedCreatorVoice(seed)).toBe("Fola");
  expect(suggestedCreatorVoice({...seed,gender:"male"})).toBe("Bodi");
  for(const gender of ["male","female","neutral"] as const)
   for(const ageRange of ["18-24","25-39","40-59","60+"] as const)
    expect(APPROVED_MASANA_VOICES).toContain(suggestedCreatorVoice({...seed,gender,ageRange}));
 });
 it("does not grant voice to unpublished or suspended creators",async()=>{
  let query="";
  const reader=createPgCreatorVoiceReader({async query(sql){query=sql;return {rows:[]};}});
  expect(await reader.readPublished({tenantId:"tenant_test" as never,characterId:"character_test" as never})).toBeNull();
  expect(query).toContain("a.state='published'");
  expect(query).toContain("r.state='approved'");
  expect(query).toContain("c.state='active'");
 });
 it("rejects arbitrary stored provider voices",async()=>{
  const reader=createPgCreatorVoiceReader({async query(){return {rows:[{seed,voice_profile_id:"hacked"}]};}});
  await expect(reader.readPublished({tenantId:"tenant_test" as never,characterId:"character_test" as never})).rejects.toThrow("creator.voice_invalid");
 });
});
