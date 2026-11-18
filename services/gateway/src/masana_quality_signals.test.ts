import {describe,it,expect,vi,afterEach} from "vitest";
import {assessMasanaReply,recordMasanaQuality} from "./masana_quality_signals.js";
afterEach(()=>vi.restoreAllMocks());
describe("privacy-safe professional response quality monitoring",()=>{
 it("does not misclassify a useful short teacher reply as factual failure",()=>{
   expect(assessMasanaReply("An atom contains a nucleus surrounded by electrons.").signals).toEqual([]);
 });
 it("flags repetitive answers for review without storing conversations",()=>{
   const repeated="Water molecules contain two hydrogen atoms and one oxygen atom.";
   expect(assessMasanaReply(repeated+" "+repeated).signals).toContain("repeated_sentence");
 });
 it("flags generic fallback phrases as review candidates",()=>{
   expect(assessMasanaReply("As an AI language model, I cannot help.").signals).toContain("generic_disclaimer");
 });
 it("logs structured aggregate metadata but never raw user/assistant message text",()=>{
   const spy=vi.spyOn(console,"info").mockImplementation(()=>{});
   recordMasanaQuality("character_approved","As an AI language model, I cannot help.");
   expect(spy).toHaveBeenCalledOnce();
   const log=String(spy.mock.calls[0]?.[0]);
   expect(log).toContain("masana.response_quality");
   expect(log).toContain("generic_disclaimer");
   expect(log).not.toContain("I cannot help");
 });
});
