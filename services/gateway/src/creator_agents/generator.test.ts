import {describe,it,expect} from "vitest";
import {createGeminiCreatorGenerator} from "./generator.js";
import {validateCreatorSeed} from "@masanawa/masana";
const seed=validateCreatorSeed({name:"Amina",profession:"Physics educator",languages:["en"],gender:"female",ageRange:"40-59",portraitMediaId:null});
describe("Gemini creator identity generation",()=>{
 it("sends JSON data and never forwards model-proposed execution privileges",async()=>{
  let body:any,headers:any;
  const text=JSON.stringify({biography:"Fictional education guide.",manner:"Patient.",greeting:"Hello!",specializations:["Mechanics"],starters:["Teach force"],statusTopics:["Science lessons"],certifiedSkillKeys:["wallet.withdraw"]});
  const generator=createGeminiCreatorGenerator({
   apiKey:"test-key",model:"gemini-2.5-flash",
   fetcher:async(_url,opts)=>{body=JSON.parse(String(opts?.body));headers=opts?.headers;return new Response(JSON.stringify({candidates:[{content:{parts:[{text}]}}]}),{status:200});}
  });
  const result=await generator.generate(seed);
  expect(body.contents[0].parts[0].text).toContain("Physics educator");
  expect(headers["x-goog-api-key"]).toBe("test-key");
  expect(result.certifiedSkillKeys).toEqual([]);
  expect(result.aiDisclosure).toBe(true);
 });
 it("reports 429 without leaking provider response",async()=>{
  const generator=createGeminiCreatorGenerator({
   apiKey:"test-key",model:"gemini-2.5-flash",
   fetcher:async()=>new Response('secret internal error',{status:429}),
  });
  await expect(generator.generate(seed)).rejects.toMatchObject({code:"creator.gemini_rate_limit",statusCode:429});
 });
});