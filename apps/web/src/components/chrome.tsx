import Link from "next/link";
import type {ReactNode} from "react";

export function Icon({name,size=21}:{name:string,size?:number}){
  const common={width:size,height:size,viewBox:"0 0 24 24",fill:"none",stroke:"currentColor",strokeWidth:1.8,strokeLinecap:"round" as const,strokeLinejoin:"round" as const,ariaHidden:true};
  const content:Record<string,ReactNode>={
    chat:<><path d="M21 11.5a8.5 8.5 0 0 1-8.5 8.5 9 9 0 0 1-4-.9L3 21l1.9-5.4a9 9 0 0 1-.9-4A8.5 8.5 0 0 1 12.5 3 8.5 8.5 0 0 1 21 11.5Z"/><path d="M8 11h9M8 15h5"/></>,
    sparkle:<><path d="m12 2 2.3 6.7L21 11l-6.7 2.3L12 20l-2.3-6.7L3 11l6.7-2.3L12 2ZM19 18l.7 1.3L21 20l-1.3.7L19 22l-.7-1.3L17 20l1.3-.7L19 18Z"/></>,
    status:<><circle cx="12" cy="12" r="9" strokeDasharray="3 4"/><circle cx="12" cy="12" r="4"/><path d="M12 10v2l2 1"/></>,
    wallet:<><path d="M3 6a3 3 0 0 1 3-3h13v16H6a3 3 0 0 1-3-3V6Zm0 2h17v10H6a3 3 0 0 1-3-3V8"/><path d="M15 12h6v4h-6a2 2 0 0 1 0-4Z"/></>,
    phone:<><path d="M21 16.3v3a2 2 0 0 1-2.2 2A19 19 0 0 1 2.7 5.2 2 2 0 0 1 4.7 3h3a2 2 0 0 1 2 1.7l.5 2.9a2 2 0 0 1-.6 1.9L8 10.8a15 15 0 0 0 5.2 5.2l1.3-1.6a2 2 0 0 1 1.9-.6l2.9.5a2 2 0 0 1 1.7 2Z"/></>,
    users:<><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M22 21v-2a4 4 0 0 0-3-3.9M16 3.2a4 4 0 0 1 0 7.6"/></>,
    search:<><circle cx="10.8" cy="10.8" r="6.8"/><path d="m16 16 5 5"/></>,
    arrow:<><path d="M4 12h16m-7-7 7 7-7 7"/></>,
    shield:<><path d="M12 22s9-4.5 9-11V5l-9-3-9 3v6c0 6.5 9 11 9 11Z"/><path d="m9 12 2 2 4-4"/></>,
    menu:<><path d="M4 6h16M4 12h16M4 18h16"/></>,
    close:<><path d="M18 6 6 18M6 6l12 12"/></>,
    settings:<><circle cx="12" cy="12" r="3"/><path d="M19.4 15a8.5 8.5 0 0 0 .1-6l2-2-2-3-2.7 1A8.5 8.5 0 0 0 11 3L10 1H7L6 4a8.5 8.5 0 0 0-2.5 3L1 8v4l2.5 1a8.5 8.5 0 0 0 2.2 4L6 20h4l1-2a8.5 8.5 0 0 0 5.8-2L20 17l2-3-2.6 1Z"/></>,
    logout:<><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4M16 17l5-5-5-5M21 12H9"/></>,
    plus:<><path d="M12 5v14M5 12h14"/></>,
    lock:<><rect x="5" y="10" width="14" height="11" rx="2"/><path d="M8 10V7a4 4 0 1 1 8 0v3"/></>,
    globe:<><circle cx="12" cy="12" r="9"/><path d="M3 12h18M12 3a15 15 0 0 1 0 18M12 3a15 15 0 0 0 0 18"/></>,
  };
  return <svg {...common} role="presentation">{content[name]||content.sparkle}</svg>;
}
export function Brand({compact=false}:{compact?:boolean}){
  return <Link className="brand" href="/" aria-label="Masanawa home"><img src="/masanawa-mark.png" width="42" height="42" alt=""/>{!compact&&<span>Masanawa</span>}</Link>;
}
export function Footer(){
  return <footer className="site-footer"><div className="content-width footer-inner"><Brand/><p>Human connections. Masana possibilities.</p><span>© {new Date().getFullYear()} Masanawa</span></div></footer>;
}
