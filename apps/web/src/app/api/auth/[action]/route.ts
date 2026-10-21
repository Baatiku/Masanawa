import { NextRequest, NextResponse } from "next/server";
import { ACCESS_COOKIE, REFRESH_COOKIE, NO_STORE, gatewayFetch } from "@/lib/gateway";
import { allowedOrigin, setSession, clearSession } from "@/lib/session";

function answer(data:Record<string,unknown>, status=200){return NextResponse.json(data,{status,headers:NO_STORE});}
const emailOk=(v:unknown):v is string=>typeof v==="string"&&v.length<=320&&/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(v);
const phoneOk=(v:unknown):v is string=>typeof v==="string"&&/^\+[1-9]\d{6,14}$/.test(v);
function contact(value:Record<string,unknown>){
  if(emailOk(value.email))return {email:value.email};
  if(phoneOk(value.phone))return {phone:value.phone};
  return null;
}
function errorMessage(code:unknown){switch(code){
  case "OTP_RATE_LIMITED":return "Please wait before requesting another verification code.";
  case "OTP_INVALID":return "This code is incorrect or expired.";
  case "OTP_LOCKED":return "Too many attempts. Try again later.";
  case "AUTH_UNAVAILABLE":case "GATEWAY_NOT_CONFIGURED":case "GATEWAY_UNAVAILABLE":return "Masanawa sign-in is temporarily unavailable. Please try later.";
  case "UNAUTHORIZED":return "Your session expired. Sign in again.";
  default:return "This request could not be completed. Please check your details and try again.";
}}
export async function GET(request:NextRequest,{params}:{params:Promise<{action:string}>}){
  const {action}=await params;
  if(action!=="session")return answer({code:"NOT_FOUND"},404);
  const token=request.cookies.get(ACCESS_COOKIE)?.value;
  if(!token)return answer({authenticated:false},401);
  const result=await gatewayFetch("/v1/account/summary","GET",undefined,token);
  if(result.status===200)return answer({authenticated:true});
  if(result.status===401)return answer({authenticated:false},401);
  return answer({authenticated:false,unavailable:true,message:"Unable to verify your session right now."},503);
}
export async function POST(request:NextRequest,{params}:{params:Promise<{action:string}>}){
  const {action}=await params;
  if(!allowedOrigin(request))return answer({code:"FORBIDDEN"},403);
  if(!["send","verify","recovery-start","recovery-complete","logout"].includes(action))return answer({code:"NOT_FOUND"},404);
  if(action==="logout"){
    const token=request.cookies.get(ACCESS_COOKIE)?.value;
    if(token)await gatewayFetch("/auth/logout","POST",{},token);
    const reply=answer({ok:true});clearSession(reply);return reply;
  }
  let input:Record<string,unknown>;
  try{
    const raw=await request.text();
    if(raw.length>1500)return answer({code:"INVALID_REQUEST"},413);
    const parsed:unknown=JSON.parse(raw);
    if(!parsed || typeof parsed!=="object" || Array.isArray(parsed))throw Error();
    input=parsed as Record<string,unknown>;
  }catch{return answer({code:"INVALID_REQUEST",message:"Invalid form details."},400);}
  const identity=contact(input);
  if(action!=="recovery-start"&&action!=="recovery-complete"&&!identity)
    return answer({code:"INVALID_CONTACT",message:"Enter a valid email or international phone number."},422);
  let path:string;let body:Record<string,unknown>;
  if(action==="send"){path="/auth/otp";body=identity!;}
  else if(action==="verify"){
    if(typeof input.code!=="string"||!/^\d{6}$/.test(input.code))return answer({code:"INVALID_CODE",message:"Enter the six-digit verification code."},422);
    if(input.name!==undefined&&(typeof input.name!=="string"||input.name.trim().length<1||input.name.length>160))
      return answer({code:"INVALID_NAME",message:"Enter a display name."},422);
    path="/auth/verify";body={...identity,code:input.code,...(input.name?{name:input.name}: {})};
  }
  else{
    if(!phoneOk(input.phone))return answer({code:"INVALID_PHONE",message:"Enter a phone number with its country code."},422);
    body={phone:input.phone};path="/v1/auth/password/recovery/start";
    if(action==="recovery-complete"){
      if(typeof input.code!=="string"||!/^\d{6}$/.test(input.code)||typeof input.password!=="string"||!/^\d{6}$/.test(input.password))return answer({code:"INVALID_CODE",message:"A six-digit code and six-digit new password are required."},422);
      path="/v1/auth/password/recovery/complete";body={phone:input.phone,code:input.code,password:input.password};
    }
  }
  const result=await gatewayFetch(path,"POST",body);
  if(result.status<200||result.status>=300)return answer({code:result.data.code||"GATEWAY_ERROR",message:errorMessage(result.data.code)},result.status);
  if(action==="verify"){
    const reply=answer({authenticated:true,isNewUser:result.data.isNewUser===true});
    if(!setSession(reply,result.data))return answer({code:"INVALID_GATEWAY_SESSION",message:"Authentication could not complete securely."},503);
    return reply;
  }
  return answer({ok:true,...(typeof result.data.resendInSeconds==="number"?{resendInSeconds:result.data.resendInSeconds}:{})});
}
