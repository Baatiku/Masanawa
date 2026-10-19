import {afterEach,describe,expect,it} from "vitest";
import {createCanonicalId} from "@masanawa/contracts";
import type {AgentConversationService} from "./agent_conversation_contract.js";
import {createGatewayApp} from "./app.js";

const apps:Array<ReturnType<typeof createGatewayApp>>=[];
afterEach(async()=>{await Promise.all(apps.splice(0).map(a=>a.close()));});
describe("Masana memory controls over authorized Gateway API",()=>{
  it("forwards bearer and character identity; correct/forget are guarded by revisions",async()=>{
    const characterId=createCanonicalId("character"),recordId=createCanonicalId("memory-record");
    const events:string[]=[];
    const service:AgentConversationService={
      async open(){return {characterSessionId:createCanonicalId("character-session")};},
      async turn(){return {reply:"hi",agentRunId:createCanonicalId("agent-run"),parts:[]};},
      async mediaTurn(){return {reply:"hi",agentRunId:createCanonicalId("agent-run"),parts:[]};},
      async mediaSetTurn(){return {reply:"hi",agentRunId:createCanonicalId("agent-run"),parts:[]};},
      async close(){},
      async memoryList(req){
        events.push("list:"+req.characterId+":"+req.authorizationHeader);
        return {automaticLearning:false,items:[{memoryRecordId:recordId,content:"I prefer short lessons",
          type:"preference",revision:2,lifecycleRevision:1,updatedAt:new Date().toISOString()}]};
      },
      async memoryPreferences(req){
        events.push("preferences:"+req.characterId+":"+req.automaticLearning);
        return {automaticLearning:req.automaticLearning};
      },
      async memoryCorrect(req){
        events.push("correct:"+req.recordId+":"+req.expectedRevision+":"+req.content);
      },
      async memoryForget(req){
        events.push("forget:"+req.recordId+":"+req.expectedLifecycleRevision);
      },
    };
    const app=createGatewayApp({agentConversation:service});apps.push(app);
    const root="/v1/agent/characters/"+characterId,headers={authorization:"Bearer user-A"};
    const list=await app.inject({method:"GET",url:root+"/memories",headers});
    expect(list.statusCode).toBe(200);
    expect(list.json().items[0].memoryRecordId).toBe(recordId);
    const exported=await app.inject({method:"GET",url:root+"/memories/export",headers});
    expect(exported.statusCode).toBe(200);
    expect(exported.json()).toMatchObject({schemaVersion:1,kind:"masana_relationship_memory",
      characterId,automaticLearning:false});
    expect(exported.json().items[0].content).toBe("I prefer short lessons");
    const consent=await app.inject({method:"PUT",url:root+"/memory-preferences",headers,
      payload:{automaticLearning:true}});
    expect(consent.statusCode).toBe(200);
    const invalid=await app.inject({method:"PATCH",url:root+"/memories/"+recordId,headers,
      payload:{expectedRevision:0,content:"Different"}});
    expect(invalid.statusCode).toBe(400);
    const correct=await app.inject({method:"PATCH",url:root+"/memories/"+recordId,headers,
      payload:{expectedRevision:2,content:"I prefer long lessons"}});
    expect(correct.statusCode).toBe(200);
    const forget=await app.inject({method:"DELETE",url:root+"/memories/"+recordId,headers,
      payload:{expectedLifecycleRevision:1}});
    expect(forget.statusCode).toBe(200);
    expect(events).toEqual([
      "list:"+characterId+":Bearer user-A",
      "list:"+characterId+":Bearer user-A",
      "preferences:"+characterId+":true",
      "correct:"+recordId+":2:I prefer long lessons",
      "forget:"+recordId+":1",
    ]);
  });
});
