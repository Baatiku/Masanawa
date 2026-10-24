import { NextRequest, NextResponse } from "next/server";
import { ACCESS_COOKIE, gatewayFetch, NO_STORE, type JsonRecord } from "@/lib/gateway";
import { allowedOrigin } from "@/lib/session";
import {readProfile,validCharacterId,validRequestId,validSessionId} from "@/lib/masana";

const message=(status:number,code:string)=>{
  if(status===401)return "Sign in again to continue this conversation.";
  if(status===403)return "This account is not permitted to access this Masana.";
  if(status===404)return "This Masana or conversation could not be found.";
  if(status===429)return "Too many requests right now. Please wait before trying again.";
  return "The Masanawa conversation service is currently unavailable. Please try again later.";
};
function respond(status:number,data:JsonRecord){return NextResponse.json(data,{status,headers:NO_STORE});}
function gatewayError(status:number,data:JsonRecord){
  const actual=status>=400&&status<=599?status:503;
  return respond(actual,{code:typeof data.code==="string"?data.code:"GATEWAY_ERROR",message:message(actual,typeof data.code==="string"?data.code:"")});
}
type Ctx={params:Promise<{characterId:string;action:string}>};
export const maxDuration=110;
export async function GET(request:NextRequest,{params}:Ctx){
  const {characterId,action}=await params;
  if(!validCharacterId(characterId))return respond(404,{code:"UNKNOWN_MASANA"});
  if(!["profile","history","status"].includes(action))return respond(404,{code:"NOT_FOUND"});
  const token=request.cookies.get(ACCESS_COOKIE)?.value;
  if(!token)return respond(401,{code:"UNAUTHORIZED",message:message(401,"")});
  if(action==="profile"){
    const result=await gatewayFetch("/agent/directory","GET",undefined,token);
    if(result.status!==200)return gatewayError(result.status,result.data);
    const directory=result.data.agents;
    if(!Array.isArray(directory))return respond(502,{code:"INVALID_DIRECTORY",message:"The Masana directory returned an unexpected response."});
    const match=directory.map(readProfile).find(agent=>agent?.characterId===characterId);
    return match?respond(200,{profile:match}):respond(404,{code:"UNKNOWN_MASANA",message:message(404,"")});
  }
  if(action==="history"){
    const result=await gatewayFetch("/agent/history?characterId="+encodeURIComponent(characterId)+"&limit=80","GET",undefined,token);
    if(result.status!==200)return gatewayError(result.status,result.data);
    return respond(200,{messages:result.data.messages});
  }
  const requestId=request.nextUrl.searchParams.get("requestId");
  if(!validRequestId(requestId))return respond(422,{code:"INVALID_REQUEST_ID"});
  const result=await gatewayFetch("/agent/turns/"+encodeURIComponent(requestId)+"/status?characterId="+encodeURIComponent(characterId),"GET",undefined,token);
  if(result.status!==200)return gatewayError(result.status,result.data);
  return respond(200,{state:result.data.state,reply:result.data.reply||null,failureCode:result.data.failureCode||null});
}
export async function POST(request:NextRequest,{params}:Ctx){
  const {characterId,action}=await params;
  if(!validCharacterId(characterId))return respond(404,{code:"UNKNOWN_MASANA"});
  if(!["open","turn"].includes(action))return respond(404,{code:"NOT_FOUND"});
  if(!allowedOrigin(request))return respond(403,{code:"INVALID_ORIGIN",message:"The request origin is not permitted."});
  const token=request.cookies.get(ACCESS_COOKIE)?.value;
  if(!token)return respond(401,{code:"UNAUTHORIZED",message:message(401,"")});
  let input:JsonRecord={};
  try{
    const raw=await request.text();
    if(raw.length>36000)return respond(413,{code:"TOO_LARGE"});
    const parsed:unknown=JSON.parse(raw);
    if(!parsed||typeof parsed!=="object"||Array.isArray(parsed))throw Error();
    input=parsed as JsonRecord;
  }catch{return respond(400,{code:"INVALID_REQUEST",message:"The message request is invalid."});}
  if(action==="open"){
    const result=await gatewayFetch("/agent/sessions/open","POST",{characterId},token,{timeoutMs:15000});
    if(result.status!==200)return gatewayError(result.status,result.data);
    if(!validSessionId(result.data.characterSessionId))return respond(502,{code:"INVALID_SESSION",message:"Unable to open a secure Masana session."});
    return respond(200,{characterSessionId:result.data.characterSessionId});
  }
  const {sessionId,requestId,text}=input;
  if(!validSessionId(sessionId)||!validRequestId(requestId)||typeof text!=="string"||!text.trim()||text.length>4000){
    return respond(422,{code:"INVALID_TURN",message:"Enter a message of up to 4,000 characters."});
  }
  // A single attempt with a caller-generated stable canonical key. Never automatically
  // replay a timed-out turn: provider work may already have run and incurred costs.
  const result=await gatewayFetch(
    "/agent/sessions/"+encodeURIComponent(sessionId)+"/turn",
    "POST",{characterId,text:text.trim()},token,{timeoutMs:95000,requestId},
  );
  if(result.status!==200)return gatewayError(result.status,result.data);
  if(typeof result.data.reply!=="string")return respond(502,{code:"INVALID_TURN_REPLY",message:"Unable to confirm the reply. Check the turn status before sending again."});
  return respond(200,{reply:result.data.reply,requestId});
}
