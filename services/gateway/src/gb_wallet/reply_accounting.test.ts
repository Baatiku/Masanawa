import {describe,expect,it,vi} from "vitest";
import type {AgentConversationService,AgentConversationAuthorizer} from "../agent_conversation_contract.js";
import type {MobileShellRepository,MobileTurnCommand} from "@masanawa/agents";
import {createMbBilledConversation,type GbReplyReservations} from "./reply_accounting.js";

const scope={tenantId:"tenant_a",userId:"fan_a",characterId:"character_a",
  relationshipId:"relationship_a"};
const request={
  authorizationHeader:"Bearer actor",characterId:"character_a",
  characterSessionId:"char_session_1",requestId:"request_a",
  correlationId:"correlation_a",text:"Question",caption:"Please answer",
  mimeType:"audio/wav",dataBase64:"abc",
  media:[{mimeType:"image/png",dataBase64:"abc"}],
};
function fixture(){
  const events:string[]=[];
  let persisted:MobileTurnCommand|null=null;
  let ledgerState:"absent"|"reserved"|"completed"|"failed"="absent";
  let fail=false,ackLost=false;
  const reply={reply:"A meaningful answer",agentRunId:"run_a",parts:[]};
  const asCommand=(kind:"text"|"media"|"media-set",state:"pending"|"completed"|"failed")=>
    ({scope,characterSessionId:request.characterSessionId,
      requestId:request.requestId,kind,state,agentRunId:"run_a",
      reply:state==="completed"?reply.reply:null,parts:[],
      failureCode:state==="failed"?"provider_failed":null}) as unknown as MobileTurnCommand;
  const produce=vi.fn(async(kind:"text"|"media"|"media-set")=>{
    events.push("provider");
    if(fail){persisted=asCommand(kind,"failed");throw Error("provider_failed");}
    persisted=asCommand(kind,"completed");
    if(ackLost)throw Error("response_lost");
    return reply;
  });
  const delegate={
    open:async()=>({characterSessionId:request.characterSessionId}),
    turn:async()=>produce("text"),
    mediaTurn:async()=>produce("media"),
    mediaSetTurn:async()=>produce("media-set"),
    close:async()=>{},
  } as unknown as AgentConversationService;
  const readTurn=vi.fn(async()=>persisted);
  const shell={readTurn} as unknown as MobileShellRepository;
  const authorizer={authorize:vi.fn(async()=>({scope}))} as unknown as AgentConversationAuthorizer;
  const reserve=vi.fn(async(input:{amountMb:number})=>{
    events.push("reserve");
    expect(input.amountMb).toBe(1);
    if(ledgerState!=="absent")throw Error("duplicate reserve");
    ledgerState="reserved";
    return {state:"reserved" as const,amountMb:1,
      welcomeReservedMb:1,purchasedReservedMb:0,operationId:"reply_one"};
  });
  const capture=vi.fn(async (_actor:unknown,actualMb:number)=>{
    expect(actualMb).toBe(1);
    events.push("capture");
    if(ledgerState!=="reserved"&&ledgerState!=="completed")throw Error("not reserved");
    ledgerState="completed";
    return {state:"completed" as const,amountMb:1,
      welcomeReservedMb:1,purchasedReservedMb:0,operationId:"reply_one"};
  });
  const release=vi.fn(async()=>{
    events.push("release");ledgerState="failed";return true;
  });
  const read=vi.fn(async()=>{
    return ledgerState==="absent"?null:{
      state:ledgerState,operation_id:"reply_one",
      actor_id:scope.userId,request_sha256:"fingerprint",
      operation_kind:"reply",amount_mb:"1"};
  });
  const wrapped=createMbBilledConversation({delegate,authorizer,mobileShell:shell,
    reservations:{reserve,capture,release,read} as unknown as GbReplyReservations});
  return {wrapped,produce,reserve,capture,release,read,events,
    setFailure:(v:boolean)=>{fail=v;},setLost:(v:boolean)=>{ackLost=v;},
    setCommand:(kind:"text"|"media"|"media-set",
      state:"pending"|"completed"|"failed")=>{persisted=asCommand(kind,state);},
    getState:()=>ledgerState};
}
const input=request as unknown as Parameters<AgentConversationService["turn"]>[0];
describe("one MB for persisted successful Masana replies",()=>{
 it("reserves before provider and captures only a durable completed text reply",async()=>{
   const f=fixture();
   expect((await f.wrapped.turn(input)).reply).toBe("A meaningful answer");
   expect(f.events).toEqual(["reserve","provider","capture"]);
   expect(f.capture).toHaveBeenCalledTimes(1);
   expect(f.release).not.toHaveBeenCalled();
   expect(f.getState()).toBe("completed");
 });
 it("terminal failed provider releases reservation and cannot charge MB",async()=>{
   const f=fixture();f.setFailure(true);
   await expect(f.wrapped.turn(input)).rejects.toThrow("provider_failed");
   expect(f.events).toEqual(["reserve","provider","release"]);
   expect(f.capture).not.toHaveBeenCalled();
   expect(f.getState()).toBe("failed");
 });
 it("lost response after durable success captures exactly once and returns original",async()=>{
   const f=fixture();f.setLost(true);
   const reply=await f.wrapped.turn(input);
   expect(reply.reply).toBe("A meaningful answer");
   expect(f.events).toEqual(["reserve","provider","capture"]);
   expect(f.capture).toHaveBeenCalledTimes(1);
 });
 it("pending original cannot start inference again or release held MB",async()=>{
   const f=fixture();
   f.setCommand("text","pending");
   await expect(f.wrapped.turn(input)).rejects.toThrow("gb.reply.original_pending");
   expect(f.produce).not.toHaveBeenCalled();
   expect(f.release).not.toHaveBeenCalled();
   expect(f.capture).not.toHaveBeenCalled();
 });
 it("historical completed reply before enablement is not retroactively charged",async()=>{
   const f=fixture();f.setCommand("text","completed");
   await f.wrapped.turn(input);
   expect(f.reserve).not.toHaveBeenCalled();
   expect(f.capture).not.toHaveBeenCalled();
 });
 it("media and media-set replies carry the same one MB verified accounting",async()=>{
   const a=fixture();
   expect((await a.wrapped.mediaTurn(request as unknown as Parameters<
      AgentConversationService["mediaTurn"]>[0])).reply).toBe("A meaningful answer");
   expect(a.events).toEqual(["reserve","provider","capture"]);
   const b=fixture();
   expect((await b.wrapped.mediaSetTurn(request as unknown as Parameters<
      AgentConversationService["mediaSetTurn"]>[0])).reply).toBe("A meaningful answer");
   expect(b.events).toEqual(["reserve","provider","capture"]);
 });
});
