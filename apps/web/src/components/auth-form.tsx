"use client";
import Link from "next/link";
import {useSearchParams} from "next/navigation";
import {useEffect,useState,type FormEvent} from "react";
import {Brand,Icon} from "./chrome";
import {safeReturnPath,maskAccountContact} from "@/lib/paths";
type Mode="login"|"register"|"recovery";
type Stage="contact"|"code"|"done";
type Result={ok?:boolean;authenticated?:boolean;message?:string;code?:string};
async function submit(action:string,payload:Record<string,unknown>):Promise<Result>{
  const response=await fetch("/api/auth/"+action,{
    method:"POST",headers:{"content-type":"application/json"},
    cache:"no-store",credentials:"same-origin",body:JSON.stringify(payload),
  });
  const data=await response.json().catch(()=>({message:"Unexpected response from the account service."}));
  if(!response.ok)throw Error(typeof data.message==="string"?data.message:"This request could not be completed.");
  return data;
}
export function AuthForm({mode}:{mode:Mode}){
  const query=useSearchParams();
  const next=safeReturnPath(query.get("next"));
  const [stage,setStage]=useState<Stage>("contact");
  const [method,setMethod]=useState<"email"|"phone">("email");
  const [name,setName]=useState("");
  const [contact,setContact]=useState("");
  const [code,setCode]=useState("");
  const [password,setPassword]=useState("");
  const [busy,setBusy]=useState(false);
  const [error,setError]=useState("");
  const [notice,setNotice]=useState("");
  const [online,setOnline]=useState(true);
  const [gatewayState,setGatewayState]=useState<"checking"|"online"|"offline">("checking");
  const [otpChannels,setOtpChannels]=useState<readonly ("email"|"sms")[]|null>(null);
  const [gatewayRetry,setGatewayRetry]=useState(0);
  useEffect(()=>{
    const update=()=>setOnline(navigator.onLine);
    update();window.addEventListener("online",update);window.addEventListener("offline",update);
    return()=>{window.removeEventListener("online",update);window.removeEventListener("offline",update)};
  },[]);
  useEffect(()=>{
    const controller=new AbortController();
    setGatewayState("checking");
    fetch("/api/backend/status",{cache:"no-store",signal:controller.signal})
      .then(async response=>{
        const data:unknown=await response.json().catch(()=>null);
        if(controller.signal.aborted)return;
        setGatewayState(response.ok?"online":"offline");
        if(response.ok&&data&&typeof data==="object"&&"otpChannels" in data){
          const raw=(data as {otpChannels?:unknown}).otpChannels;
          if(Array.isArray(raw)){
            const supported=raw.filter((c):c is "email"|"sms"=>c==="email"||c==="sms");
            if(supported.length){setOtpChannels(supported);
              setMethod(current=>supported.includes(current==="phone"?"sms":"email")?current:supported[0]==="sms"?"phone":"email");
            }
          }
        }
      }).catch(()=>{if(!controller.signal.aborted)setGatewayState("offline");});
    return()=>controller.abort();
  },[gatewayRetry]);
  const recovery=mode==="recovery";
  const identifier=method==="email"?{email:contact.trim().toLowerCase()}:{phone:contact.trim()};
  const title=recovery?"Recover access":mode==="register"?"Join Masanawa":"Welcome back";
  const validContact=recovery||method==="phone"?/^\+[1-9]\d{6,14}$/.test(contact.trim()):/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(contact.trim());
  async function onSubmit(event:FormEvent){
    event.preventDefault();
    if(busy||!online)return;
    setError("");setNotice("");
    if(stage==="contact"&&!validContact){setError("Enter a valid "+((recovery||method==="phone")?"phone number, including +country code.":"email address."));return;}
    if(stage==="contact"&&mode==="register"&&!name.trim()){setError("Enter your name to create your profile.");return;}
    if(stage==="code"&&!/^\d{6}$/.test(code.trim())){setError("Enter the six-digit code we sent.");return;}
    if(recovery&&stage==="code"&&!/^\d{6}$/.test(password)){setError("Choose a six-digit numeric password.");return;}
    try {
      setBusy(true);
      if(stage==="contact"){
        const result=await submit(recovery?"recovery-start":"send",recovery?{phone:contact.trim()}:identifier);
        setStage("code");setNotice(result.ok?"A verification code has been requested. Check your messages.":"Continue with the code sent to you.");
      }else if(recovery){
        await submit("recovery-complete",{phone:contact.trim(),code:code.trim(),password});
        setPassword("");setStage("done");setNotice("Your password has been reset. Return to sign in.");
      }else{
        const response=await submit("verify",{...identifier,code:code.trim(),...(mode==="register"?{name:name.trim()}: {})});
        if(response.authenticated)window.location.assign(next);
        else throw Error("Sign-in was not completed. Please try again.");
      }
    }catch(e){setError(e instanceof Error?e.message:"Unable to complete this request.");}
    finally{setBusy(false);}
  }
  async function resend(){
    if(busy)return;setBusy(true);setError("");setNotice("");
    try{await submit(recovery?"recovery-start":"send",recovery?{phone:contact.trim()}:identifier);setNotice("A new code has been requested. Check your messages.");}
    catch(e){setError(e instanceof Error?e.message:"Unable to request another code.");}
    finally{setBusy(false);}
  }
  return <main className="auth-layout">
    <aside className="auth-story"><div className="auth-story-inner"><Brand/><div className="auth-story-copy"><span className="eyebrow">A PLACE TO CONNECT</span><h1>Good conversations make room for more.</h1><p>Stay close to people. Meet Masana. Find conversations worth sharing.</p><div className="auth-note"><Icon name="shield"/><span>Your account and conversations belong to you.</span></div></div><div className="auth-story-foot">Masanawa · People and Masana</div></div></aside>
    <section className="auth-panel"><div className="auth-mobile-brand"><Brand/></div><div className="auth-form-card"><Link href="/" className="small-back">← Back to home</Link>
      <div className="auth-icon"><Icon name={recovery?"lock":"chat"} size={26}/></div><span className="eyebrow">MASANAWA ACCOUNT</span><h2>{stage==="done"?"Password updated":stage==="code"?"Verify it's you":title}</h2>
      <p className="auth-subtitle">{stage==="code"?"Enter the code requested for "+maskAccountContact(contact)+".":stage==="done"?"Your account security has been updated.":recovery?"Reset your six-digit device password using your verified phone.":mode==="register"?"A few details, then you're ready to explore.":"Sign in securely with a verification code."}</p>
      {!online&&<div className="notice error" role="alert">You're offline. Reconnect before continuing.</div>}
      {!!error&&<div className="notice error" role="alert">{error}</div>}
      {!!notice&&<div className="notice success" role="status">{notice}</div>}
      {stage==="done"?<Link className="button button-primary button-fill" href="/login">Return to sign in <Icon name="arrow" size={17}/></Link>:
        <form onSubmit={onSubmit} noValidate>
          {stage==="contact"&&<>
            {!recovery&&(!otpChannels || otpChannels.length>1)&&<div className="segmented" role="group" aria-label="Verification channel">{(!otpChannels||otpChannels.includes("email"))&&<button type="button" className={method==="email"?"selected":""} onClick={()=>{setMethod("email");setContact("");setError("");}}>Email</button>}{(!otpChannels||otpChannels.includes("sms"))&&<button type="button" className={method==="phone"?"selected":""} onClick={()=>{setMethod("phone");setContact("");setError("");}}>Phone</button>}</div>}
            {mode==="register"&&<label className="input-group">Your name<input required autoComplete="name" maxLength={160} value={name} onChange={e=>setName(e.target.value)} placeholder="How should we call you?"/></label>}
            <label className="input-group">{recovery||method==="phone"?"Phone number":"Email address"}<input required type={recovery||method==="phone"?"tel":"email"} autoComplete={recovery||method==="phone"?"tel":"email"} value={contact} onChange={e=>setContact(e.target.value)} placeholder={recovery||method==="phone"?"+2348012345678":"you@example.com"} maxLength={320}/></label>
            <p className="input-help">Use the contact method registered to your Masanawa account. New accounts may require a display name.</p>
          </>}
          {stage==="code"&&<>
            <label className="input-group">Six-digit verification code<input required inputMode="numeric" autoComplete="one-time-code" pattern="[0-9]{6}" maxLength={6} value={code} onChange={e=>setCode(e.target.value.replace(/\D/g,"").slice(0,6))} placeholder="000000"/></label>
            {recovery&&<label className="input-group">New six-digit password<input required type="password" autoComplete="new-password" inputMode="numeric" pattern="[0-9]{6}" maxLength={6} value={password} onChange={e=>setPassword(e.target.value.replace(/\D/g,"").slice(0,6))} placeholder="••••••"/></label>}
            <div className="auth-row"><button type="button" className="inline-link" disabled={busy} onClick={()=>{setStage("contact");setCode("");}}>Change contact</button><button type="button" className="inline-link" disabled={busy} onClick={resend}>Resend code</button></div>
          </>}
          <button className="button button-primary button-fill" disabled={busy||!online} type="submit">{busy?"Please wait…":stage==="contact"?"Request verification code":recovery?"Reset password":"Verify and continue"}{!busy&&<Icon name="arrow" size={18}/>}</button>
        </form>}
      <div className="auth-alternatives">{mode!=="register"&&<p>New to Masanawa? <Link href="/register">Create an account</Link></p>}{mode==="register"&&<p>Already registered? <Link href="/login">Sign in</Link></p>}{!recovery&&<p><Link href="/recovery">Forgot your device password?</Link></p>}{recovery&&<p><Link href="/login">Back to sign in</Link></p>}</div>
      <div className="auth-security"><Icon name="shield" size={17}/> Account access is handled by the Masanawa Gateway.</div>
      <div className={"auth-gateway-status "+gatewayState} role="status" aria-live="polite">
        <span className="auth-gateway-dot" aria-hidden="true"/>
        <span>{gatewayState==="online"?"Connected to your Masanawa account service":gatewayState==="checking"?"Checking the live Masanawa connection…":"Masanawa account service is currently unavailable. Sign-in may fail."}</span>
        {gatewayState==="offline"&&<button type="button" onClick={()=>setGatewayRetry(n=>n+1)}>Check again</button>}
      </div>
    </div></section>
  </main>;
}
