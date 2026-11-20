import{describe,expect,it}from'vitest';
import{callGreeting,callOpeningTurn,audibleGreetingFrame}from'./greeting.js';
describe("call greeting and playback evidence",()=>{
 it("honors explicit salaam greetings and otherwise uses hello",()=>{
  expect(callGreeting("Assalamu alaikum, how can I help?")).toBe("Assalamu alaikum");
  expect(callGreeting("السلام عليكم ورحمة الله")).toBe("Assalamu alaikum");
  expect(callGreeting(null)).toBe("Hello");
  expect(callOpeningTurn("Hello").clientContent.turnComplete).toBe(true);
 });
 it("distinguishes PCM speech from silence, malformed data and setup frames",()=>{
  const frame=(data:string)=>({serverContent:{modelTurn:{parts:[{inlineData:{data,mimeType:"audio/pcm;rate=24000"}}]}}});
  expect(audibleGreetingFrame(frame("ABAAAA=="))).toBe(4);
  expect(audibleGreetingFrame(frame("AAAAAA=="))).toBe(0);
  expect(audibleGreetingFrame(frame("AA="))).toBe(0);
  expect(audibleGreetingFrame({setupComplete:{}})).toBe(0);
 });
});
