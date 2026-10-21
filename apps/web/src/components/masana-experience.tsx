"use client";
import Link from "next/link";
import {useCallback,useEffect,useRef,useState,type FormEvent, type KeyboardEvent} from "react";
import {Brand,Icon} from "./chrome";
import {readProfile,readHistory,validCharacterId,validRequestId,type MasanaProfile,type HistoryItem} from "@/lib/masana";

type ViewMode="chat"|"profile";
type ViewState="checking"|"signed-out"|"loading"|"ready"|"denied"|"not-found"|"error";
type TurnState="idle"|"opening"|"sending"|"unconfirmed"|"checking"|"pending";
type ResponseData={code?:string;message?:string;[key:string]:unknown};
function humanTime(date:string){
  const parsed=new Date(date);
  if(!Number.isFinite(parsed.getTime()))return "";
  return parsed.toLocaleTimeString([],{hour:"numeric",minute:"2-digit"});
}
function path(id:string,action:string){return "/api/masana/"+encodeURIComponent(id)+"/"+action;}
function savedKey(id:string){return "masanawa.web.unconfirmed."+id;}
async function requestJSON(url:string, options?:RequestInit):Promise<ResponseData>{
  const res=await fetch(url,{credentials:"same-origin",cache:"no-store",...options});
  const data:unknown=await res.json().catch(()=>null);
  const result=data&&typeof data==="object"&&!Array.isArray(data)?data as ResponseData:{code:"BAD_RESPONSE"};
  if(!res.ok)throw Object.assign(new Error(typeof result.message==="string"?result.message:"Unable to reach Masanawa."),{status:res.status});
  return result;
}
function Identity({profile,large=false}:{profile:MasanaProfile;large?:boolean}){
  return <span className={large?"masana-avatar large":"masana-avatar"} aria-hidden="true">
    {profile.avatarUrl?<img src={profile.avatarUrl} alt=""/>:<Icon name="sparkle" size={large?36:24}/>}
  </span>;
}
function ProfileDetails({profile}:{profile:MasanaProfile}){
  const availability=profile.presence==="available"?"Available":profile.presence==="listening"?"Listening":
    profile.presence==="working"?"Working":profile.presence==="on_call"?"On a call":
    profile.presence==="offline"?"Offline":"Status unverified";
  return <div className="masana-profile-details">
    <div className="masana-profile-top"><Identity profile={profile} large/><span className="eyebrow">MASANA PROFILE</span><h2>{profile.displayName}</h2><p>{profile.roleLabel||"AI character"}</p>
      <span className="masana-presence"><span className={profile.presence==="available"?"presence-dot online":"presence-dot"}/>{availability}</span></div>
    {profile.about&&<section><h3>About this Masana</h3><p>{profile.about}</p></section>}
    {profile.greeting&&<section><h3>Introduction</h3><p>{profile.greeting}</p></section>}
    {(profile.creatorName||profile.countryName)&&<section><h3>Details</h3>{profile.creatorName&&<p>Created by {profile.creatorName}</p>}{profile.countryName&&<p>Region: {profile.countryName}</p>}</section>}
    {profile.conversationStarters.length>0&&<section><h3>Conversation ideas</h3><div className="masana-starters">{profile.conversationStarters.slice(0,4).map((starter,i)=><span key={i}>{starter}</span>)}</div></section>}
    <div className="masana-disclaimer"><Icon name="shield" size={19}/><p>This is an AI character, not a human. Responses can be inaccurate. Avoid sharing sensitive information.</p></div>
  </div>;
}
export function MasanaExperience({characterId,mode}:{characterId:string;mode:ViewMode}){
  const [state,setState]=useState<ViewState>("checking");
  const [profile,setProfile]=useState<MasanaProfile|null>(null);
  const [history,setHistory]=useState<HistoryItem[]>([]);
  const [historyIssue,setHistoryIssue]=useState("");
  const [draft,setDraft]=useState("");
  const [sessionId,setSessionId]=useState("");
  const [pendingId,setPendingId]=useState("");
  const [turnState,setTurnState]=useState<TurnState>("idle");
  const [turnError,setTurnError]=useState("");
  const [reload,setReload]=useState(0);
  const [online,setOnline]=useState(true);
  const [showInfo,setShowInfo]=useState(mode==="profile");
  const listRef=useRef<HTMLDivElement>(null);
  const lock=useRef(false);
  const idValid=validCharacterId(characterId);
  const recoveryKey=idValid?savedKey(characterId):"";
  useEffect(()=>{
    const change=()=>setOnline(navigator.onLine);
    change();window.addEventListener("online",change);window.addEventListener("offline",change);
    return()=>{window.removeEventListener("online",change);window.removeEventListener("offline",change);};
  },[]);
  const loadHistory=useCallback(async()=>{
    const data=await requestJSON(path(characterId,"history"));
    const rows=readHistory(data);
    if(!rows)throw Error("Conversation history could not be verified.");
    setHistory(rows);setHistoryIssue("");
  },[characterId]);
  useEffect(()=>{
    if(!idValid){setState("not-found");return;}
    const controller=new AbortController();
    setState("checking");
    (async()=>{
      try{
        const auth=await fetch("/api/auth/session",{signal:controller.signal,cache:"no-store"});
        if(!auth.ok){if(!controller.signal.aborted)setState(auth.status===401?"signed-out":"error");return;}
        if(controller.signal.aborted)return;
        setState("loading");
        const data=await requestJSON(path(characterId,"profile"),{signal:controller.signal});
        if(controller.signal.aborted)return;
        const parsed=readProfile(data.profile);
        if(!parsed){setState("not-found");return;}
        setProfile(parsed);setState("ready");
        if(mode==="chat") {
          try{await loadHistory();}catch(e){if(!controller.signal.aborted)setHistoryIssue(e instanceof Error?e.message:"Unable to load history.");}
        }
        if(controller.signal.aborted)return;
        const stored=sessionStorage.getItem(recoveryKey);
        if(stored&&validRequestId(stored)){setPendingId(stored);setTurnState("unconfirmed");setTurnError("A previous message has not been confirmed. Check its status before sending another.");}
      }catch(e){
        if(controller.signal.aborted)return;
        const status=typeof e==="object"&&e!==null&&"status" in e?(e as {status:unknown}).status:0;
        setState(status===401?"signed-out":status===403?"denied":status===404?"not-found":"error");
      }
    })();
    return()=>controller.abort();
  },[characterId,mode,idValid,reload,recoveryKey,loadHistory]);
  useEffect(()=>{if(mode==="chat")listRef.current?.scrollTo({top:listRef.current.scrollHeight,behavior:"smooth"});},[history,turnState,mode]);
  async function checkStatus(){
    if(!validRequestId(pendingId)||lock.current)return;
    lock.current=true;setTurnState("checking");setTurnError("");
    try{
      const data=await requestJSON(path(characterId,"status")+"?requestId="+encodeURIComponent(pendingId));
      if(data.state==="completed"){
        setPendingId("");sessionStorage.removeItem(recoveryKey);setTurnState("idle");setDraft("");
        await loadHistory();
      }else if(data.state==="failed"){
        setPendingId("");sessionStorage.removeItem(recoveryKey);setTurnState("idle");setTurnError("The Gateway reported that the turn failed. You can edit and send a new message.");
        await loadHistory().catch(()=>setHistoryIssue("Unable to refresh conversation history."));
      }else{
        setTurnState(data.state==="pending"?"pending":"unconfirmed");
        setTurnError(data.state==="pending"?"Your message is still processing. Check again shortly.":"The Gateway has no confirmed record yet. Do not resend until its outcome is known.");
      }
    }catch(e){
      setTurnState("unconfirmed");
      setTurnError(e instanceof Error?e.message:"Status could not be checked; the message outcome remains unknown.");
    }finally{lock.current=false;}
  }
  async function send(event?:FormEvent){
    event?.preventDefault();
    if(lock.current||turnState!=="idle"||!online||!draft.trim()||draft.length>4000||state!=="ready")return;
    lock.current=true;setTurnError("");
    const original=draft.trim();
    let key="";
    try{
      let binding=sessionId;
      if(!binding){
        setTurnState("opening");
        const opened=await requestJSON(path(characterId,"open"),{method:"POST",headers:{"content-type":"application/json"},body:"{}"});
        if(typeof opened.characterSessionId!=="string")throw Error("Unable to create a secure conversation.");
        binding=opened.characterSessionId;setSessionId(binding);
      }
      key="request_"+crypto.randomUUID();
      setPendingId(key);sessionStorage.setItem(recoveryKey,key);
      setTurnState("sending");
      const reply=await requestJSON(path(characterId,"turn"),{method:"POST",headers:{"content-type":"application/json"},body:JSON.stringify({sessionId:binding,requestId:key,text:original})});
      if(typeof reply.reply!=="string")throw Error("The reply could not be confirmed.");
      sessionStorage.removeItem(recoveryKey);setPendingId("");setTurnState("idle");setDraft("");
      try{await loadHistory();}catch{setHistoryIssue("Your message was sent, but the history could not be refreshed. Use Refresh to check.");}
    }catch(e){
      if(key){
        setTurnState("unconfirmed");
        setTurnError("The turn outcome is not confirmed. Check its status before sending again. "+(e instanceof Error?e.message:""));
      }else{
        setTurnState("idle");setTurnError(e instanceof Error?e.message:"Unable to open your conversation.");
      }
    }finally{lock.current=false;}
  }
  function onComposerKey(e:KeyboardEvent<HTMLTextAreaElement>){
    if(e.key==="Enter"&&!e.shiftKey&&!e.nativeEvent.isComposing){e.preventDefault();void send();}
  }
  return <main className="masana-screen">
    <header className="masana-screen-header"><div className="content-width masana-header-inner"><Brand/><nav aria-label="Workspace navigation"><Link href="/chats"><Icon name="chat" size={18}/> Chats</Link><Link href="/masana"><Icon name="sparkle" size={18}/> Discover Masana</Link><Link href="/rooms"><Icon name="users" size={18}/> Rooms</Link></nav></div></header>
    <div className="content-width masana-breadcrumb"><Link href="/masana">Discover Masana</Link><span>/</span>{profile?.displayName||"Masana"}{mode==="chat"&&<><span>/</span>Conversation</>}</div>
    {state!=="ready"?<section className="masana-loading-card" aria-live="polite"><span className="masana-loading-icon"><Icon name={state==="signed-out"?"lock":"sparkle"} size={29}/></span>
      <h1>{state==="checking"||state==="loading"?"Loading Masana…":state==="signed-out"?"Sign in to continue":state==="denied"?"Not permitted":state==="not-found"?"Masana not found":"Unable to load Masana"}</h1>
      <p>{state==="signed-out"?"Sign in to see your private conversations and Masana.":state==="denied"?"This account does not have access to this profile.":state==="not-found"?"This profile is unavailable or has been removed.":state==="error"?"The Masanawa service did not respond. No messages were changed.":"Retrieving the profile securely."}</p>
      <div className="gate-actions">{state==="signed-out"?<Link className="button button-primary" href={"/login?next="+encodeURIComponent("/masana/"+characterId+(mode==="chat"?"/chat":""))}>Sign in</Link>:state==="error"?<button onClick={()=>setReload(x=>x+1)} className="button button-primary">Try again</button>:<Link href="/masana" className="button button-secondary">Back to discovery</Link>}</div>
    </section>:
      <div className={mode==="chat"?"masana-experience-grid chat-mode":"masana-experience-grid profile-mode"}>
        <div className="masana-primary">
          {mode==="profile"?<div className="masana-profile-main"><div className="masana-profile-hero"><span className="eyebrow">MAKE A CONNECTION</span><Identity profile={profile!} large/><h1>Meet {profile!.displayName}</h1><p>{profile!.roleLabel||"An AI character on Masanawa"}</p><Link href={"/masana/"+characterId+"/chat"} className="button button-primary button-large">Start a conversation <Icon name="arrow" size={18}/></Link></div><div className="masana-about-block"><h2>What can we talk about?</h2><p>{profile!.about||"Start a conversation to discover what this Masana can help with."}</p>{profile!.conversationStarters.length>0&&<div className="masana-prompt-grid">{profile!.conversationStarters.slice(0,6).map((starter,i)=><Link href={"/masana/"+characterId+"/chat"} key={i}>{starter}<Icon name="arrow" size={16}/></Link>)}</div>}</div></div>:
          <div className="masana-chat-card">
            <div className="masana-chat-top"><Identity profile={profile!}/><div><strong>{profile!.displayName}</strong><span>{profile!.roleLabel||"Masana · AI character"}</span></div><button type="button" className="masana-info-toggle" onClick={()=>setShowInfo(x=>!x)} aria-expanded={showInfo}>About <Icon name="users" size={18}/></button></div>
            <div className="masana-message-list" ref={listRef} role="log" aria-live="polite" aria-label="Conversation history">
              {historyIssue&&<div className="notice warning" role="status">{historyIssue} <button type="button" className="inline-link" onClick={()=>void loadHistory().catch(()=>setHistoryIssue("Unable to refresh history."))}>Refresh</button></div>}
              {history.length===0?<div className="masana-start-chat"><Identity profile={profile!} large/><h2>Talk with {profile!.displayName}</h2><p>{profile!.greeting||"Send a message to start your conversation with this Masana."}</p><span>Only verified account history appears here.</span></div>:
                history.map((item,i)=><div className={item.direction==="user"?"masana-message user":"masana-message assistant"} key={item.key||item.requestId+"-"+i}><div className="masana-message-author">{item.direction==="user"?"You":profile!.displayName+" · AI"}</div><p>{item.text}</p><time>{humanTime(item.createdAt)}</time></div>)}
              {turnState==="sending"&&<div className="masana-message assistant pending-message">Masana is preparing a reply…</div>}
            </div>
            {turnError&&<div className="notice warning chat-notice" role="status">{turnError}</div>}
            {turnState==="unconfirmed"||turnState==="checking"||turnState==="pending"?<div className="masana-turn-recovery"><Icon name="shield" size={20}/><span>Request outcome must be verified before another send.</span><button disabled={turnState==="checking"||!online} className="button button-secondary" onClick={()=>void checkStatus()}>{turnState==="checking"?"Checking…":"Check status"}</button></div>:null}
            <form className="masana-composer" onSubmit={send}><label htmlFor="masana-message" className="sr-only">Your message to {profile!.displayName}</label><textarea id="masana-message" rows={2} maxLength={4000} placeholder={"Message "+profile!.displayName+"…"} value={draft} onChange={e=>setDraft(e.target.value)} onKeyDown={onComposerKey} disabled={!online||turnState!=="idle"}/><button className="button button-primary" type="submit" disabled={!online||!draft.trim()||turnState!=="idle"}>{turnState==="opening"?"Connecting…":turnState==="sending"?"Sending…":"Send"} <Icon name="arrow" size={17}/></button></form>
            <p className="masana-chat-caution">{online?"":"Offline · You cannot send messages. "}AI replies may be inaccurate. Never share passwords or recovery codes.</p>
          </div>}
        </div>
        <aside className={showInfo?"masana-profile-aside visible":"masana-profile-aside"} aria-label="Masana details"><ProfileDetails profile={profile!}/>{mode==="chat"&&<Link className="button button-secondary masina-view-profile" href={"/masana/"+characterId}>View full profile <Icon name="arrow" size={16}/></Link>}</aside>
      </div>}
  </main>;
}
