import {describe,expect,it,vi} from "vitest";
import {createMasanaQualityFeedbackPort} from "./quality_feedback.js";

describe("Masana privacy-preserving quality reports",()=>{
 it("writes a category only for an active fan and approved active platform Masana",async()=>{
   const query=vi.fn(async(_sql:string,_params:unknown[])=>({rows:[],rowCount:1}));
   const port=createMasanaQualityFeedbackPort({query} as never);
   expect(await port.submit({tenantId:"tenant_one",fanId:"fan_one",
     characterId:"character_one",reason:"factual_error"})).toEqual({accepted:true});
   const [sql,params]=query.mock.calls[0]!;
   expect(sql).toContain("fan.user_id=$2");
   expect(sql).toContain("fan.state='active'");
   expect(sql).toContain("c.state='active'");
   expect(sql).toContain("owner.kind='platform'");
   expect(sql).toContain("approved.state='approved'");
   expect(sql).toContain("ON CONFLICT DO NOTHING");
   expect(params).toEqual(["tenant_one","fan_one","character_one","factual_error"]);
   expect(sql).not.toContain("transcript");
   expect(sql).not.toContain("message_body");
 });
 it("reveals no identity information through duplicate or nonmatching reports",async()=>{
   const query=vi.fn(async(_sql:string,_params:unknown[])=>({rows:[],rowCount:0}));
   const port=createMasanaQualityFeedbackPort({query} as never);
   expect(await port.submit({tenantId:"tenant",fanId:"fan",characterId:"missing",
     reason:"off_topic"})).toEqual({accepted:true});
 });
 it("rejects invented categories before the database is touched",async()=>{
   const query=vi.fn();
   const port=createMasanaQualityFeedbackPort({query} as never);
   await expect(port.submit({tenantId:"t",fanId:"f",characterId:"c",
     reason:"any" as never})).rejects.toThrow("invalid_quality_reason");
   expect(query).not.toHaveBeenCalled();
 });
 it("aggregates 30-day counts without exposing individual fans or private text",async()=>{
   const query=vi.fn(async(_sql:string,_params:unknown[])=>({rows:[
     {reason:"unhelpful",total:3},{reason:"repetition",total:2},
   ]}));
   const port=createMasanaQualityFeedbackPort({query} as never);
   const summary=await port.summary({tenantId:"tenant",characterId:"professional"});
   expect(summary).toEqual({characterId:"professional",windowDays:30,
     counts:{factual_error:0,off_topic:0,repetition:2,unhelpful:3,unprofessional:0}});
   expect(query.mock.calls[0]?.[0]).toContain("created_at>=now()-INTERVAL '30 days'");
   expect(query.mock.calls[0]?.[1]).toEqual(["tenant","professional"]);
   expect(JSON.stringify(summary)).not.toContain("fan_user_id");
 });
});
