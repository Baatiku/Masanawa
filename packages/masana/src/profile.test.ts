import { describe, expect, it } from "vitest";
import {validateMasanaProfile} from "./index.js";
const profile={handle:"Gwani",displayName:"Gwani",profession:"Technology",biography:"Practical technology",lifeStory:"A fictional helpful technologist",languages:["en","ha"],talents:["teaching"],goals:["help fans"],roomId:null,portraitMediaId:null,bannerMediaId:null};
describe("Masana profile admission",()=>{
  it("normalizes handle and freezes published DTO",()=>{
    const parsed=validateMasanaProfile(profile);expect(parsed.handle).toBe("gwani");expect(Object.isFrozen(parsed)).toBe(true);
  });
  it("rejects bidi and control injection",()=>expect(()=>validateMasanaProfile({...profile,displayName:"Fake\u202eeman"})).toThrow());
  it("rejects excessive fields",()=>expect(()=>validateMasanaProfile({...profile,lifeStory:"a".repeat(8001)})).toThrow());
  it("rejects non-allowlisted media references",()=>expect(()=>validateMasanaProfile({...profile,portraitMediaId:"https://example.com/a"})).toThrow());
  it("accepts only curated personal WhatsApp and Telegram channel URLs",()=>{
    const parsed=validateMasanaProfile({...profile,socialChannels:[
      {platform:"whatsapp",url:"https://wa.me/2348012345678"},
      {platform:"telegram",url:"https://t.me/masanawaofficial"},
    ]});
    expect(parsed.socialChannels).toHaveLength(2);
    expect(Object.isFrozen(parsed.socialChannels)).toBe(true);
  });
  it.each([
    "https://wa.me.evil.example/2348012345678",
    "http://wa.me/2348012345678",
    "https://t.me/share/url",
    "https://t.me/masana?text=spam",
    "https://wa.me/2348012345678#spoof",
  ])("rejects forged or redirecting WhatsApp/Telegram channel %s",(url)=>{
    const platform=url.includes("wa.me")?"whatsapp":"telegram";
    expect(()=>validateMasanaProfile({...profile,socialChannels:[{platform,url}]})).toThrow();
  });
  it("blocks two links claiming the same approved social platform",()=>{
    expect(()=>validateMasanaProfile({...profile,socialChannels:[
      {platform:"telegram",url:"https://t.me/firstchannel"},
      {platform:"telegram",url:"https://t.me/otherchannel"},
    ]})).toThrow();
  });

});
