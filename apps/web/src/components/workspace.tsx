"use client";
import Link from "next/link";
import {useEffect,useMemo,useState} from "react";
import {Brand,Icon} from "./chrome";
import {validCharacterId} from "@/lib/masana";
export type Section="chats"|"status"|"wallet"|"calls"|"rooms"|"masana"|"settings";
type LoadState="checking"|"guest"|"ready"|"unavailable";
type DataState="idle"|"loading"|"ready"|"empty"|"error"|"denied";
type Item={id:string;name:string;subtitle:string;portrait:string|null;unread:number};
const rootLinks=[{id:"chats",title:"Chats",icon:"chat"},{id:"status",title:"Status",icon:"status"},{id:"wallet",title:"Wallet",icon:"wallet"},{id:"calls",title:"Calls",icon:"phone"},{id:"rooms",title:"Rooms",icon:"users"}] as const;
const titles:Record<Section,string>={chats:"Chats",status:"Status",wallet:"Wallet",calls:"Calls",rooms:"Rooms",masana:"Discover Masana",settings:"Settings"};
const subtitles:Record<Section,string>={
  chats:"Pick up a conversation where you left off.",
  status:"Moments and stories from your connections.",
  wallet:"Your MSNW Wallet and qualified services.",
  calls:"Stay close through voice.",
  rooms:"Find people and Masana around shared interests.",
  masana:"Meet AI characters with their own voices and ideas.",
  settings:"Your Masanawa preferences and privacy."
};
const upcoming:Record<Section,{icon:string;title:string;message:string;action:string}>={
  chats:{icon:"chat",title:"Your inbox is quiet",message:"Discover a Masana to begin a new conversation. Existing chats appear here when available.",action:"Find Masana"},
  masana:{icon:"sparkle",title:"No Masana available",message:"The directory has no published Masana to show you right now. Check back later.",action:"Refresh directory"},
  status:{icon:"status",title:"Status is coming to web",message:"Status exists in the mobile experience. Its authorized feed and creation tools are being integrated here.",action:"Back to Chats"},
  wallet:{icon:"wallet",title:"Wallet access is not enabled on web yet",message:"No balance or financial action is displayed until the Masanawa Gateway can verify it. Your mobile wallet remains the source of truth.",action:"Back to Chats"},
  calls:{icon:"phone",title:"Calls are coming to web",message:"Browser microphone permissions, signaling and end-to-end call reliability still need qualification.",action:"Back to Chats"},
  rooms:{icon:"users",title:"Rooms are coming to web",message:"Room memberships, posting permissions and access checks will use the existing Masanawa service.",action:"Back to Chats"},
  settings:{icon:"settings",title:"Account settings on web",message:"The secure web account settings and privacy controls are being connected to Masanawa.",action:"Back to Chats"}
};
function text(value:unknown){return typeof value==="string"?value.trim():"";}
function safePortrait(value:unknown):string|null{
  const raw=text(value);try{const u=new URL(raw);return u.protocol==="https:"?raw:null;}catch{return null;}
}
function normalize(value:unknown,resource:"chats"|"masana"):Item[]{
  if(!value||typeof value!=="object")return [];
  const obj=value as Record<string,unknown>;
  const raw=resource==="chats"?obj.chats:obj.agents;
  if(!Array.isArray(raw))return [];
  return raw.slice(0,100).flatMap((entry,index)=>{
    if(!entry||typeof entry!=="object")return [];
    const a=entry as Record<string,unknown>;
    const name=text(a.displayName)||text(a.name)||text(a.characterName)||text(a.title)||text(a.handle)||"Masanawa conversation";
    const id=a.characterId;
    if(!validCharacterId(id))return [];
    const subtitle=text(a.lastMessage)||text(a.about)||text(a.roleLabel)||text(a.subtitle)||text(a.profession)||"Masana";
    return [{id,name,subtitle,portrait:safePortrait(a.avatarUrl||a.imageUrl||a.portraitUrl),unread:typeof a.unreadCount==="number"?Math.max(0,a.unreadCount):0}];
  });
}
export function Workspace({section}:{section:Section}){
  const [session,setSession]=useState<LoadState>("checking");
  const [dataState,setDataState]=useState<DataState>("idle");
  const [items,setItems]=useState<Item[]>([]);
  const [query,setQuery]=useState("");
  const [filter,setFilter]=useState("All");
  const [offline,setOffline]=useState(false);
  const [menu,setMenu]=useState(false);
  const [reload,setReload]=useState(0);
  const [refreshing,setRefreshing]=useState(false);
  const [lastSync,setLastSync]=useState<number|null>(null);
  useEffect(()=>{
    let active=true;
    const onOnline=()=>setOffline(!navigator.onLine);
    onOnline();window.addEventListener("online",onOnline);window.addEventListener("offline",onOnline);
    fetch("/api/auth/session",{cache:"no-store",credentials:"same-origin"}).then(async res=>{
      if(!active)return;
      if(res.ok)setSession("ready");
      else if(res.status===401)setSession("guest");
      else setSession("unavailable");
    }).catch(()=>{if(active)setSession("unavailable");});
    return()=>{active=false;window.removeEventListener("online",onOnline);window.removeEventListener("offline",onOnline);};
  },[]);
  useEffect(()=>{
    setItems([]);setDataState("idle");setQuery("");setFilter("All");setLastSync(null);
  },[section]);
  // The Gateway remains the sole source of truth. Revalidate quietly while the
  // page is visible; no fabricated unread badges, fake realtime, or AI routing
  // for human messages.
  useEffect(()=>{
    if(session!=="ready"||(section!=="chats"&&section!=="masana"))return;
    const refresh=()=>{if(document.visibilityState==="visible"&&navigator.onLine)setReload(v=>v+1);};
    const interval=window.setInterval(refresh,25000);
    document.addEventListener("visibilitychange",refresh);
    window.addEventListener("online",refresh);
    return()=>{window.clearInterval(interval);document.removeEventListener("visibilitychange",refresh);window.removeEventListener("online",refresh);};
  },[session,section]);
  useEffect(()=>{
    if(session!=="ready"||(section!=="chats"&&section!=="masana"))return;
    const controller=new AbortController();
    if(items.length){setRefreshing(true);}
    else setDataState("loading");
    fetch("/api/bridge/"+section,{signal:controller.signal,cache:"no-store",credentials:"same-origin"})
      .then(async res=>{
        const body:unknown=await res.json().catch(()=>null);
        if(res.status===401){setSession("guest");return;}
        if(res.status===403){setDataState("denied");return;}
        if(!res.ok){setDataState("error");return;}
        const normalized=normalize(body,section);
        setItems(normalized);setDataState(normalized.length?"ready":"empty");setLastSync(Date.now());setRefreshing(false);
      }).catch(error=>{if(!controller.signal.aborted){setDataState("error");setRefreshing(false);}});
    return()=>controller.abort();
  },[session,section,reload]);
  const visible=useMemo(()=>items.filter(item=>{
    const matches=(item.name+" "+item.subtitle).toLowerCase().includes(query.trim().toLowerCase());
    return matches&&(filter!=="Unread"||item.unread>0);
  }),[items,query,filter]);
  const findMasana=()=>window.location.assign("/masana");
  async function logout(){
    await fetch("/api/auth/logout",{method:"POST",credentials:"same-origin"}).catch(()=>null);
    window.location.assign("/");
  }
  const retry=()=>setReload(x=>x+1);
  const gated=session!=="ready";
  return <div className="workspace">
    <aside className={menu?"workspace-sidebar sidebar-open":"workspace-sidebar"}>
      <div className="sidebar-brand"><Brand/><button className="sidebar-mobile-close" aria-label="Close navigation" onClick={()=>setMenu(false)}><Icon name="close"/></button></div>
      <div className="nav-label">YOUR SPACE</div>
      <nav aria-label="Masanawa app" className="app-navigation">{rootLinks.map(x=><Link key={x.id} href={"/"+x.id} onClick={()=>setMenu(false)} aria-current={section===x.id?"page":undefined} className={section===x.id?"app-nav-active":""}><Icon name={x.icon}/><span>{x.title}</span></Link>)}</nav>
      <div className="nav-label nav-secondary-label">EXPLORE</div>
      <nav aria-label="Discover and account" className="app-navigation"><Link href="/masana" className={section==="masana"?"app-nav-active":""}><Icon name="sparkle"/><span>Discover Masana</span></Link><Link href="/settings" className={section==="settings"?"app-nav-active":""}><Icon name="settings"/><span>Settings</span></Link></nav>
      <div className="sidebar-bottom"><div className="sidebar-help"><Icon name="shield" size={21}/><div><strong>Your space, your choices</strong><small>Respectful connections and privacy.</small></div></div><button className="sidebar-signout" type="button" onClick={logout}><Icon name="logout" size={18}/> Sign out</button></div>
    </aside>
    {menu&&<button className="mobile-scrim" aria-label="Close menu" onClick={()=>setMenu(false)}/>}
    <div className="workspace-main">
      <header className="workspace-topbar"><button className="mobile-menu workspace-menu" aria-label="Open navigation" onClick={()=>setMenu(true)}><Icon name="menu"/></button><span className="topbar-breadcrumb">Masanawa <span>/</span> {titles[section]}</span><div className="topbar-right"><span className="privacy-caption"><Icon name="lock" size={15}/> Secure workspace</span><span className="topbar-user" aria-label="Your account"><Icon name="users" size={20}/></span></div></header>
      <div className="workspace-body">
        <div className="workspace-content">
          <div className="workspace-heading"><div><span className="eyebrow">MASANAWA WEB</span><h1>{titles[section]}</h1><p>{subtitles[section]}</p></div>{session==="ready"&&(section==="chats"||section==="masana")&&<Link href="/masana" className="button button-primary">{section==="chats"?"Discover Masana":"Browse Masana"} <Icon name="arrow" size={17}/></Link>}</div>
          {session==="ready"&&(section==="chats"||section==="masana")&&<div className="workspace-sync" role="status" aria-live="polite"><span className={"workspace-sync-dot"+(refreshing?" syncing":"")} aria-hidden="true"/><span>{refreshing?"Syncing with Masanawa…":lastSync?"Up to date · refreshes every 25 seconds":"Loading your account content…"}</span><button type="button" onClick={retry} disabled={refreshing}>Refresh now</button></div>}
          {offline&&<div className="notice warning" role="status">You're offline. Previously loaded information may be outdated. Reconnect to refresh.</div>}
          {gated?<div className="workspace-gate"><div className="gate-icon"><Icon name={session==="checking"?"globe":session==="guest"?"lock":"shield"} size={27}/></div><h2>{session==="checking"?"Checking your session…":session==="guest"?"Sign in to continue":"Unable to verify your session"}</h2><p>{session==="checking"?"Connecting securely to Masanawa.":session==="guest"?"Your messages, people and Masana belong to your account. Sign in to continue on the web.":"Account services could not be reached. We have not guessed at your account data."}</p>{session!=="checking"&&<div className="gate-actions"><Link className="button button-primary" href={"/login?next="+encodeURIComponent("/"+section)}>Sign in <Icon name="arrow" size={16}/></Link>{session==="unavailable"&&<button className="button button-secondary" onClick={()=>window.location.reload()}>Retry</button>}</div>}</div>:
            <>{(section==="chats"||section==="masana")?<>
              <div className="list-toolbar"><label className="search-input"><Icon name="search" size={19}/><span className="sr-only">Search {section}</span><input placeholder={section==="chats"?"Search conversations":"Search Masana"} value={query} onChange={e=>setQuery(e.target.value)} /></label><button className="button button-soft" onClick={retry} disabled={dataState==="loading"}>Refresh</button></div>
              {section==="chats"&&<div className="filter-bar">{["All","People","Masana","Unread"].map(f=><button className={filter===f?"active":""} key={f} onClick={()=>setFilter(f)}>{f}</button>)}</div>}
              {filter==="People"?<div className="state-panel"><Icon name="users" size={31}/><h3>Human conversations on web</h3><p>Human messaging is being connected to the web inbox. This view will show your authorized conversations once that integration is ready.</p></div>:
                dataState==="loading"?<div aria-busy="true" className="skeleton-list">{[1,2,3,4].map(i=><div key={i} className="skeleton-row"><span/><div><span/><span/></div></div>)}</div>:
                dataState==="error"||dataState==="denied"?<div className="state-panel" role="status"><Icon name="shield" size={32}/><h3>{dataState==="denied"?"Access not permitted":"Unable to load your content"}</h3><p>{dataState==="denied"?"This account cannot access the requested information.":"Your content hasn't been erased. Please retry when the connection is available."}</p><button className="button button-primary" onClick={retry}>Try again</button></div>:
                visible.length? <div className="conversation-list">{visible.map(item=><Link href={"/masana/"+encodeURIComponent(item.id)+(section==="chats"?"/chat":"")} className="conversation-row" key={item.id}><span className="contact-avatar">{item.portrait?<img src={item.portrait} alt=""/>:<Icon name={section==="masana"?"sparkle":"chat"}/>}</span><span className="row-main"><strong>{item.name}</strong><small>{item.subtitle}</small></span>{item.unread>0&&<span className="unread-indicator">{item.unread}</span>}</Link>)}</div>:
                <div className="state-panel"><Icon name={upcoming[section].icon} size={33}/><h3>{query?"No matching results":upcoming[section].title}</h3><p>{query?"Try a different search.":upcoming[section].message}</p>{section==="chats"&&<button className="button button-primary" onClick={findMasana}>Find Masana <Icon name="arrow" size={18}/></button>}{section==="masana"&&<button className="button button-primary" onClick={retry}>Refresh directory</button>}</div>}
              {section==="chats"&&<div className="gentle-note"><Icon name="shield" size={18}/> Human messages never pass through Masana AI endpoints.</div>}
            </>:<div className="workspace-feature"><span className="feature-icon"><Icon name={upcoming[section].icon} size={31}/></span><h2>{upcoming[section].title}</h2><p>{upcoming[section].message}</p><Link className="button button-secondary" href="/chats">Back to Chats <Icon name="arrow" size={16}/></Link></div>}</>}
        </div>
        <aside className="workspace-aside" aria-label="Discover Masanawa"><div className="aside-spotlight"><span className="eyebrow">GET MORE FROM MASANAWA</span><span className="aside-spark"><Icon name="sparkle" size={32}/></span><h3>Meet a Masana.</h3><p>Find a character to learn with, ask questions and explore ideas.</p><Link href="/masana">Explore Masana <Icon name="arrow" size={16}/></Link></div><div className="aside-tips"><h3>One connected experience</h3><div><Icon name="chat" size={20}/><span>Conversations stay tied to your account.</span></div><div><Icon name="shield" size={20}/><span>Your permissions follow you across devices.</span></div><div><Icon name="wallet" size={20}/><span>Wallet actions require clear authorization.</span></div></div></aside>
      </div>
      <nav className="workspace-bottom-nav" aria-label="Mobile app sections">{rootLinks.map(x=><Link key={x.id} href={"/"+x.id} className={section===x.id?"active":""} aria-current={section===x.id?"page":undefined}><Icon name={x.icon} size={21}/><span>{x.title}</span></Link>)}</nav>
    </div>
  </div>;
}
