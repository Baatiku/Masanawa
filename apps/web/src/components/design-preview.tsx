"use client";
import Link from "next/link";
import { useState } from "react";
import { Brand, Icon } from "./chrome";

const destinations = [
  { id: "chats", label: "Chats", icon: "chat", subtitle: "Messages and Masana" },
  { id: "status", label: "Status", icon: "status", subtitle: "Moments and stories" },
  { id: "wallet", label: "Wallet", icon: "wallet", subtitle: "MSNW and financial services" },
  { id: "calls", label: "Calls", icon: "phone", subtitle: "Voice communication" },
  { id: "rooms", label: "Rooms", icon: "users", subtitle: "Groups and shared interests" },
  { id: "masana", label: "Masana", icon: "sparkle", subtitle: "AI characters to explore" },
] as const;
type Section = (typeof destinations)[number]["id"];
const samples = [
  { name: "Demo Masana", preview: "Explore ideas and ask questions", icon: "sparkle", time: "Now" },
  { name: "Demo conversation", preview: "An example of a human chat", icon: "users", time: "Yesterday" },
  { name: "Explore Masanawa", preview: "Discover new conversations", icon: "chat", time: "" },
];
export function DesignPreview() {
  const [section, setSection] = useState<Section>("chats");
  const active = destinations.find(x => x.id === section)!;
  return <div className="visual-preview">
    <div className="preview-warning"><Icon name="shield" size={17}/><strong>Design preview only</strong><span>Sample content. No account data, messaging, payments, or live features are available on this page.</span><Link href="/">Return to website</Link></div>
    <div className="workspace preview-workspace">
      <aside className="workspace-sidebar preview-sidebar">
        <div className="sidebar-brand"><Brand/></div><div className="nav-label">YOUR SPACE</div>
        <nav className="app-navigation" aria-label="Preview sections">{destinations.slice(0,5).map(item=><button type="button" key={item.id} aria-current={section===item.id?"page":undefined} className={section===item.id?"app-nav-active":""} onClick={()=>setSection(item.id)}><Icon name={item.icon}/><span>{item.label}</span></button>)}</nav>
        <div className="nav-label nav-secondary-label">EXPLORE</div>
        <nav className="app-navigation"><button type="button" className={section==="masana"?"app-nav-active":""} onClick={()=>setSection("masana")}><Icon name="sparkle"/><span>Discover Masana</span></button></nav>
        <div className="sidebar-bottom"><div className="sidebar-help"><Icon name="shield"/><div><strong>Illustrative interface</strong><small>No live services connected.</small></div></div></div>
      </aside>
      <div className="workspace-main">
        <header className="workspace-topbar"><span className="topbar-breadcrumb">Masanawa <span>/</span> {active.label}</span><span className="preview-top-label">LAYOUT PREVIEW</span></header>
        <div className="workspace-body"><section className="workspace-content">
          <div className="workspace-heading"><div><span className="eyebrow">MASANAWA WEB</span><h1>{active.label}</h1><p>{active.subtitle}</p></div><span className="button button-soft"><Icon name={active.icon} size={18}/> Demo view</span></div>
          {section==="chats"||section==="masana" ? <>
            <div className="list-toolbar"><div className="search-input"><Icon name="search" size={19}/><span>Search {section==="chats"?"conversations":"Masana"}</span></div></div>
            <div className="filter-bar"><span className="preview-pill active">All</span><span className="preview-pill">People</span><span className="preview-pill">Masana</span><span className="preview-pill">Unread</span></div>
            <div className="conversation-list">{samples.filter(x=>section==="chats"||x.icon==="sparkle").map(x=><div className="conversation-row" key={x.name}><span className="contact-avatar"><Icon name={x.icon}/></span><span className="row-main"><strong>{x.name}</strong><small>{x.preview}</small></span><small>{x.time}</small></div>)}</div>
            <div className="gentle-note"><Icon name="shield" size={17}/> All items above are fictional placeholders for layout review.</div>
          </> : <div className="workspace-feature preview-empty-state"><span className="feature-icon"><Icon name={active.icon} size={31}/></span><h2>{active.label} on Masanawa</h2><p>{section==="wallet"?"A wallet shell with no balances or payment functionality in this demo.":"This section shows the intended navigation, spacing, typography and empty-state design. Its live functionality is still under development."}</p><span className="button button-secondary">Feature preview · no actions</span></div>}
        </section>
        <aside className="workspace-aside"><div className="aside-spotlight"><span className="eyebrow">MEET MASANA</span><span className="aside-spark"><Icon name="sparkle" size={30}/></span><h3>Discover a new conversation.</h3><p>AI characters and conversations, presented separately from people.</p><button type="button" className="preview-inline-action" onClick={()=>setSection("masana")}>View Masana design <Icon name="arrow" size={16}/></button></div></aside>
        </div>
        <nav className="workspace-bottom-nav" aria-label="Preview mobile sections">{destinations.slice(0,5).map(item=><button key={item.id} type="button" aria-current={section===item.id?"page":undefined} className={section===item.id?"active":""} onClick={()=>setSection(item.id)}><Icon name={item.icon} size={21}/><span>{item.label}</span></button>)}</nav>
      </div>
    </div>
  </div>;
}
