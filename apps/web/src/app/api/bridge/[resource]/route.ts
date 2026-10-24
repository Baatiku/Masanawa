import { NextRequest, NextResponse } from "next/server";
import { ACCESS_COOKIE, REFRESH_COOKIE, gatewayFetch, NO_STORE } from "@/lib/gateway";
import { setSession, clearSession } from "@/lib/session";

/** Explicit read-only routes; no generic URL or write-through financial proxy. */
const resources:Record<string,string>={
  chats:"/v1/chats",
  masana:"/agent/directory",
  contacts:"/v1/profiles/contacts",
};
export async function GET(request:NextRequest,{params}:{params:Promise<{resource:string}>}){
  const {resource}=await params;
  const path=resources[resource];
  if(!path)return NextResponse.json({code:"UNKNOWN_RESOURCE"},{status:404,headers:NO_STORE});
  const token=request.cookies.get(ACCESS_COOKIE)?.value;
  if(!token)return NextResponse.json({code:"UNAUTHORIZED"},{status:401,headers:NO_STORE});
  let result=await gatewayFetch(path,"GET",undefined,token);
  let rotated:Record<string,unknown>|null=null;
  if(result.status===401){
    const refreshToken=request.cookies.get(REFRESH_COOKIE)?.value;
    if(refreshToken){
      const refreshed=await gatewayFetch("/auth/refresh","POST",{refreshToken});
      if(refreshed.status===200&&typeof refreshed.data.accessToken==="string"){
        rotated=refreshed.data;
        result=await gatewayFetch(path,"GET",undefined,refreshed.data.accessToken);
      }
    }
  }
  const response=NextResponse.json(result.data,{status:result.status,headers:NO_STORE});
  if(rotated)setSession(response,rotated);
  else if(result.status===401)clearSession(response);
  return response;
}
