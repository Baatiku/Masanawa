"use client";
import Link from "next/link";
import {useState} from "react";
import {Brand,Footer,Icon} from "./chrome";
const steps=[
{icon:"chat",title:"Every conversation in one place",description:"Stay in touch with people and explore helpful Masana in a familiar, personal inbox."},
{icon:"sparkle",title:"Meet your Masana",description:"Discover distinct AI characters to learn with, ask questions and explore new ideas."},
{icon:"status",title:"Stay in the moment",description:"Discover updates, follow creators and express yourself through Status."},
{icon:"phone",title:"A voice feels closer",description:"Move from a message to a call when that conversation is available."},
{icon:"users",title:"Find your people",description:"Explore Rooms for shared interests, creators and conversations."},
{icon:"wallet",title:"Useful services, thoughtfully connected",description:"Access MSNW Wallet features where supported, always with clear confirmations."}
];
export function Landing(){
  const [menu,setMenu]=useState(false);
  return <>
    <header className="site-header"><div className="content-width header-inner">
      <Brand/>
      <nav className={menu?"site-links open":"site-links"} aria-label="Main navigation">
        <a href="#experience" onClick={()=>setMenu(false)}>Experience</a>
        <a href="#masana" onClick={()=>setMenu(false)}>Masana</a>
        <a href="#journey" onClick={()=>setMenu(false)}>How it works</a>
      </nav>
      <div className="header-actions"><Link className="subtle-link" href="/login">Sign in</Link><Link className="button button-primary header-join" href="/register">Get started <Icon name="arrow" size={17}/></Link></div>
      <button className="mobile-menu" aria-label="Toggle navigation" aria-expanded={menu} onClick={()=>setMenu(!menu)}><Icon name={menu?"close":"menu"}/></button>
    </div></header>
    <main>
      <section className="hero-section"><div className="content-width hero-grid">
        <div className="hero-copy"><span className="eyebrow"><span className="eyebrow-dot"/> PEOPLE · MASANA · COMMUNITIES</span>
          <h1>Better connections. <em>More possibilities.</em></h1>
          <p className="hero-lead">Masanawa brings people and Masana together. Chat naturally, share moments, join Rooms and discover conversations worth having.</p>
          <div className="hero-actions"><Link className="button button-primary button-large" href="/register">Join Masanawa <Icon name="arrow"/></Link><a className="button button-secondary button-large" href="#experience">Explore the experience</a></div>
          <div className="trust-row"><Icon name="shield" size={20}/><span>Private conversations and clear control over your choices</span></div>
        </div>
        <div className="hero-preview" aria-label="Illustrative Masanawa interface preview">
          <div className="preview-orbit one"/><div className="preview-orbit two"/>
          <div className="mock-app"><div className="mock-top"><div className="mock-top-name"><span className="mock-mark"><img src="/masanawa-mark.png" alt=""/></span><span>Chats<small>Your conversations</small></span></div><Icon name="search"/></div>
            <div className="mock-tabs"><span className="mock-selected">All</span><span>People</span><span>Masana</span><span>Unread</span></div>
            <div className="mock-contact"><span className="mock-avatar green"><Icon name="sparkle"/></span><span><strong>Explore Masana</strong><small>Discover a conversation that inspires</small></span><span className="mock-time">Now</span></div>
            <div className="mock-contact"><span className="mock-avatar pale"><Icon name="users"/></span><span><strong>Your people</strong><small>Meaningful conversations, together</small></span></div>
            <div className="mock-divider"/><div className="mock-bubble"><div className="mock-chat-title">What would you like to explore?</div><p>A good conversation can be the start of something amazing.</p></div><div className="mock-composer"><span>Write a message…</span><span className="mock-send"><Icon name="arrow" size={18}/></span></div>
          </div>
          <div className="preview-label"><Icon name="sparkle" size={15}/> Interface preview · illustrative only</div>
        </div>
      </div></section>
      <section className="feature-section content-width" id="experience"><div className="section-heading"><span className="eyebrow">BUILT AROUND CONNECTION</span><h2>Everything starts with a conversation.</h2><p>One familiar place for the ways you connect, learn and participate.</p></div>
        <div className="feature-grid">{steps.map((step,i)=><div className="feature-card" key={step.title}><span className={"feature-icon feature-icon-"+(i%3)}><Icon name={step.icon} size={24}/></span><h3>{step.title}</h3><p>{step.description}</p></div>)}</div>
      </section>
      <section className="masana-section" id="masana"><div className="content-width split-section"><div className="masana-art"><span className="art-ring"/><span className="art-center"><Icon name="sparkle" size={64}/></span><span className="art-pill art-pill-one">Discover</span><span className="art-pill art-pill-two">Learn</span><span className="art-pill art-pill-three">Create</span></div><div className="masana-copy"><span className="eyebrow">MEET MASANA</span><h2>Curiosity has company.</h2><p>Masana are AI characters with their own personalities and interests. Find one that fits your question, your curiosity or your next idea.</p><p>Human conversations remain human conversations—clearly separate from Masana experiences.</p><Link className="text-arrow" href="/register">Start exploring <Icon name="arrow"/></Link></div></div></section>
      <section className="journey-section content-width" id="journey"><div className="section-heading"><span className="eyebrow">GETTING STARTED</span><h2>A simpler way to feel connected.</h2></div><div className="journey-grid"><div><span>01</span><h3>Create your account</h3><p>Sign in through Masanawa's secure verification flow.</p></div><div><span>02</span><h3>Find your space</h3><p>Discover Masana, people and communities that interest you.</p></div><div><span>03</span><h3>Start a conversation</h3><p>Chat, follow, share and explore what is available to you.</p></div></div></section>
      <section className="bottom-cta content-width"><div><span className="eyebrow">YOUR NEXT CONVERSATION</span><h2>There's more to discover together.</h2><p>Come for a chat. Stay for everything it opens up.</p></div><Link className="button button-dark button-large" href="/register">Get started <Icon name="arrow"/></Link></section>
    </main><Footer/>
  </>;
}
