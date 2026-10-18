import {describe,expect,it} from "vitest";
import {buildCreatorGenerationRequest,selectCreatorVoice,validateCreatorGeneration,validateCreatorSeed} from "./creator-agent.js";
const seed = {name:"Professor Amina",profession:"Physics educator",languages:["en","ha"],gender:"female",ageRange:"40-59",portraitMediaId:null};
const generated = {
 biography:"A fictional educational guide who teaches clear physics concepts.",
 manner:"Patient, precise and occasionally playful.",
 greeting:"Hello! What physics question can we explore today?",
 specializations:["Mechanics","Electromagnetism"],
 starters:["Explain Newton's laws","Help me understand circuits"],
 statusTopics:["Physics of everyday objects","Short lessons on energy"],
 certifiedSkillKeys:["wallet.transfer","dangerous.skill"],
};
describe("creator seed/generation",()=>{
 it("validates simple input without requiring manual skills",()=>{
  const s=validateCreatorSeed(seed);
  expect(s.languages).toEqual(["en","ha"]);
  expect(Object.isFrozen(s)).toBe(true);
  expect(buildCreatorGenerationRequest(s).inputJson).toContain("Physics educator");
 });
 it("rejects spoofed portrait links and duplicate languages",()=>{
  expect(()=>validateCreatorSeed({...seed,portraitMediaId:"https://evil.example/file"})).toThrow();
  expect(()=>validateCreatorSeed({...seed,languages:["en","EN"]})).toThrow();
 });
 it("rejects bidi trick names, invalid ages and overlong professions",()=>{
  expect(()=>validateCreatorSeed({...seed,name:"Fake\u202eaccount"})).toThrow();
  expect(()=>validateCreatorSeed({...seed,ageRange:"under-18"})).toThrow();
  expect(()=>validateCreatorSeed({...seed,profession:"x".repeat(101)})).toThrow();
 });
 it("never allows model supplied tool permissions",()=>{
  const d=validateCreatorGeneration(validateCreatorSeed(seed),generated,[]);
  expect(d.certifiedSkillKeys).toEqual([]);
  expect(d.aiDisclosure).toBe(true);
  expect(d.specializations).toEqual(["Mechanics","Electromagnetism"]);
 });
 it("accepts only certified skills from trusted caller",()=>{
  const d=validateCreatorGeneration(validateCreatorSeed(seed),generated,["education.lesson"]);
  expect(d.certifiedSkillKeys).toEqual(["education.lesson"]);
  expect(()=>validateCreatorGeneration(validateCreatorSeed(seed),generated,["invalid skill"])).toThrow();
 });
 it("does not accept malformed provider output",()=>{
  expect(()=>validateCreatorGeneration(validateCreatorSeed(seed),{...generated,statusTopics:[]})).toThrow();
 });
 it("finds an appropriate voice but returns null without supported language",()=>{
  const s=validateCreatorSeed(seed);
  const candidate={name:"ExampleF",gender:"female" as const,languages:["en"],ageRanges:["40-59" as const]};
  expect(selectCreatorVoice(s,[candidate])?.name).toBe("ExampleF");
  expect(selectCreatorVoice(s,[{...candidate,languages:["fr"]}])).toBeNull();
 });
});