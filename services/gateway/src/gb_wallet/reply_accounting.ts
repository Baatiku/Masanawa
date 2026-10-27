import {createHash} from "node:crypto";
import type {AgentConversationService,AgentConversationAuthorizer} from "../agent_conversation_contract.js";
import type {MobileShellRepository,MobileTurnCommand} from "@masanawa/agents";
import type {createGbUsageReservations} from "@masanawa/postgres";

/** Authoritative, fail-closed 1 MB per durable completed Masana reply.
 * An accepted SSE delta or an HTTP 200 without a stored terminal turn never
 * qualifies. All reservations are welcome/purchased-bucket-aware and remain
 * tenant+actor+original-request bound in PostgreSQL.
 */
export type GbReplyReservations=Pick<ReturnType<typeof createGbUsageReservations>,
  "reserve"|"capture"|"release"|"read">;
export type GbReplyRequest={
  authorizationHeader:string|undefined;
  characterSessionId:string;
  characterId:string;
  requestId:string;
};
type MbScope={tenantId:string;userId:string;characterId:string};
function operationId(scope:MbScope,sessionId:string,requestId:string){
  const hash=createHash("sha256")
    .update(JSON.stringify(["masana-reply-v1",scope.tenantId,scope.userId,
      scope.characterId,sessionId,requestId])).digest("hex");
  return "reply_"+hash.slice(0,48);
}
export function createMbBilledConversation(input:{
  delegate:AgentConversationService;
  authorizer:AgentConversationAuthorizer;
  mobileShell:MobileShellRepository;
  reservations:GbReplyReservations;
}):AgentConversationService {
  const {delegate,authorizer,mobileShell,reservations}=input;
  async function billed<T extends {reply:string;agentRunId:string;parts:readonly unknown[]}>(
    request:GbReplyRequest,kind:"text"|"media"|"media-set",
    forward:()=>Promise<T>,
  ):Promise<T>{
    // Same canonical admission as the actual Masana request; no client wallet
    // claim/receipt, character URI, role header or provider callback can pay.
    const admission=await authorizer.authorize({
      authorizationHeader:request.authorizationHeader,
      characterId:request.characterId as Parameters<AgentConversationAuthorizer["authorize"]>[0]["characterId"],
    });
    const scope=admission.scope;
    const actor={tenantId:scope.tenantId,userId:scope.userId,
      operationId:operationId(scope,request.characterSessionId,request.requestId)};
    const original=await mobileShell.readTurn({
      scope,requestId:request.requestId as Parameters<MobileShellRepository["readTurn"]>[0]["requestId"],
    });
    const matches=(row:MobileTurnCommand|null)=>row!==null&&
      row.characterSessionId===request.characterSessionId&&row.kind===kind&&
      row.scope.tenantId===scope.tenantId&&row.scope.userId===scope.userId&&
      row.scope.characterId===scope.characterId;
    if(original && !matches(original))
      throw new Error("gb.reply.original_request_conflict");
    const existing=await reservations.read(actor.tenantId,actor.operationId,actor.userId);
    if(original){
      // Replay is read-only. The canonical command already holds the result:
      // never invoke inference again, even if a previous answer predates MB.
      if(original.state==="pending")
        throw new Error("gb.reply.original_pending");
      if(original.state==="failed"){
        if(existing?.state==="completed")
          throw new Error("gb.reply.inconsistent_financial_outcome");
        if(existing?.state==="reserved")
          await reservations.release(actor);
        throw new Error("gb.reply.original_failed");
      }
      if(!original.reply?.trim()||!original.agentRunId)
        throw new Error("gb.reply.terminal_confirmation_missing");
      if(existing?.state==="failed")
        throw new Error("gb.reply.inconsistent_financial_outcome");
      if(existing?.state==="reserved")
        await reservations.capture(actor,1);
      // There is intentionally no reserve for an old pre-rollout reply.
      return {reply:original.reply,agentRunId:original.agentRunId,
        parts:original.parts} as T;
    }
    // No provider work before a valid atomically held 1 MB. A previous
    // reservation without a persisted command may represent an unknown
    // outcome; do not automatically call inference on the same operation.
    if(existing)throw new Error("gb.reply.unreconciled_operation");
    const reserved=await reservations.reserve({
      ...actor,idempotencyKey:actor.operationId,use:"reply",amountMb:1,
    });
    if(reserved.state!=="reserved")
      throw new Error("gb.reply.unreconciled_operation");
    try{
      const response=await forward();
      const terminal=await mobileShell.readTurn({
        scope,requestId:request.requestId as Parameters<MobileShellRepository["readTurn"]>[0]["requestId"],
      });
      if(!matches(terminal)||terminal?.state!=="completed"||
         !terminal.reply?.trim()||terminal.reply!==response.reply)
        throw new Error("gb.reply.terminal_confirmation_missing");
      await reservations.capture(actor,1);
      return response;
    }catch(error){
      let terminal:MobileTurnCommand|null=null;
      try{terminal=await mobileShell.readTurn({
        scope,requestId:request.requestId as Parameters<MobileShellRepository["readTurn"]>[0]["requestId"],
      });}catch{/* Unknown outcome retains its hold for reconciliation. */}
      if(matches(terminal)&&terminal?.state==="completed"&&terminal.reply?.trim() &&
         terminal.agentRunId){
        // Persistence is confirmed, even if the response or settlement ACK
        // was lost. Capture exactly once and return that canonical reply.
        await reservations.capture(actor,1);
        return {reply:terminal.reply,agentRunId:terminal.agentRunId,
          parts:terminal.parts} as T;
      }
      if(matches(terminal)&&terminal?.state==="failed")
        await reservations.release(actor).catch(()=>undefined);
      // Missing, pending and failed readback are NOT proof to release funds.
      throw error;
    }
  }
  return {
    ...delegate,
    turn:request=>billed(request,"text",()=>delegate.turn(request)),
    mediaTurn:request=>billed(request,"media",()=>delegate.mediaTurn(request)),
    mediaSetTurn:request=>billed(request,"media-set",()=>delegate.mediaSetTurn(request)),
  };
}
