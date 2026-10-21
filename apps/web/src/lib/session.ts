import { NextResponse } from "next/server";
import { ACCESS_COOKIE, REFRESH_COOKIE, tokensFrom, type JsonRecord } from "./gateway";

export function setSession(response:NextResponse, data:JsonRecord) {
  const tokens=tokensFrom(data);
  if(!tokens)return false;
  const secure=process.env.NODE_ENV==="production";
  response.cookies.set(ACCESS_COOKIE,tokens.access,{httpOnly:true,secure,sameSite:"lax",path:"/",maxAge:tokens.expires});
  response.cookies.set(REFRESH_COOKIE,tokens.refresh,{httpOnly:true,secure,sameSite:"lax",path:"/",maxAge:60*60*24*30});
  return true;
}
export function clearSession(response:NextResponse) {
  for (const name of [ACCESS_COOKIE,REFRESH_COOKIE]) response.cookies.set(name,"",{path:"/",maxAge:0,httpOnly:true,sameSite:"lax",secure:process.env.NODE_ENV==="production"});
}
export function allowedOrigin(request:Request) {
  const origin=request.headers.get("origin");
  if(!origin)return false;
  try {
    // Compare actual public request URL; never trust attacker-supplied forwarded-host
    // values to authorize a credential-bearing state-changing request.
    return new URL(origin).origin===new URL(request.url).origin;
  }catch{return false;}
}
