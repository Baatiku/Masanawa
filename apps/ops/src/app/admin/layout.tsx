"use client";

import Link from "next/link";
import Image from "next/image";
import { usePathname } from "next/navigation";
import { useEffect, useState, type ReactNode } from "react";

type Operator = { actorId: string; tenantId: string; name: string; capabilities: string[] };
const groups: { title: string; items: { label: string; href: string; icon: string; live: boolean }[] }[] = [
  { title: "WORKSPACE", items: [
    { label: "Overview", href: "/admin", icon: "◫", live: true },
    { label: "Users & accounts", href: "/admin/users", icon: "♙", live: true },
    { label: "AI personas", href: "/admin/agents", icon: "✦", live: true },
    { label: "AI runtime", href: "/admin/runtime", icon: "⌁", live: true },
  ] },
  { title: "MANAGEMENT", items: [
    { label: "News & publishers", href: "/admin/news", icon: "▤", live: true },
    { label: "Wallet & payments", href: "/admin/wallet", icon: "▣", live: true },
    { label: "Buy Data", href: "/admin/data", icon: "▥", live: true },
    { label: "Calls & voice", href: "/admin/calls", icon: "◉", live: true },
    { label: "Moderation", href: "/admin/moderation", icon: "◇", live: true },
  ] },
  { title: "SYSTEM", items: [
    { label: "Operations", href: "/admin/operations", icon: "⇄", live: true },
    { label: "Audit trail", href: "/admin/audit", icon: "≡", live: true },
    { label: "Providers", href: "/admin/providers", icon: "⬡", live: false },
    { label: "Settings", href: "/admin/settings", icon: "⚙", live: false },
  ] },
];

async function postJson(path: string, data: unknown) {
  const response = await fetch(path, { method: "POST", headers: { "content-type": "application/json" }, body: JSON.stringify(data), cache: "no-store" });
  const result = await response.json();
  if (!response.ok) throw new Error(result.error ?? "The request could not be completed.");
  return result;
}

function SignIn({ onSignedIn }: { onSignedIn: (operator: Operator) => void }) {
  const [identifier, setIdentifier] = useState("");
  const [code, setCode] = useState("");
  const [step, setStep] = useState<"identifier" | "code">("identifier");
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");

  async function submit(event: React.FormEvent) {
    event.preventDefault();
    setBusy(true);
    setError("");
    try {
      if (step === "identifier") {
        await postJson("/api/auth/otp", { identifier: identifier.trim() });
        setStep("code");
      } else {
        const result = await postJson("/api/auth/verify", { identifier: identifier.trim(), code: code.trim() });
        onSignedIn(result.operator);
      }
    } catch (cause) { setError(cause instanceof Error ? cause.message : "Please try again."); }
    finally { setBusy(false); }
  }

  return <main className="admin-auth-screen">
    <div className="auth-backdrop auth-backdrop-one"/><div className="auth-backdrop auth-backdrop-two"/>
    <section className="auth-card" aria-label="Administrator sign-in">
      <div className="auth-logo"><Image src="/masanawa-logo.png" alt="Masanawa" width={54} height={54}/></div>
      <div className="auth-kicker">MASANAWA · CONTROL CENTRE</div>
      <h1>Welcome back.</h1>
      <p>One secure workspace to oversee Masanawa across the web and mobile apps.</p>
      <form onSubmit={submit}>
        {step === "identifier" ? <label className="admin-field">Admin email or phone
          <input autoComplete="username" value={identifier} onChange={event => setIdentifier(event.target.value)} placeholder="you@masanawa.com" required minLength={5}/>
        </label> : <>
          <div className="auth-sent">A six-digit verification code was sent to <strong>{identifier}</strong>.</div>
          <label className="admin-field">Verification code
            <input inputMode="numeric" autoComplete="one-time-code" pattern="[0-9]{6}" maxLength={6} value={code} onChange={event => setCode(event.target.value.replace(/\D/g, ""))} placeholder="000000" required/>
          </label>
        </>}
        {error && <div role="alert" className="admin-error">{error}</div>}
        <button className="admin-primary auth-submit" disabled={busy}>{busy ? "Please wait…" : step === "identifier" ? "Continue securely" : "Verify and open dashboard"}<span>→</span></button>
        {step === "code" && <button type="button" className="auth-back" onClick={() => { setStep("identifier"); setCode(""); setError(""); }}>Use a different account</button>}
      </form>
      <div className="auth-lock">🔒 Access requires an active Masanawa admin grant. Your session stays on this device.</div>
    </section>
  </main>;
}

export default function AdminLayout({ children }: { children: ReactNode }) {
  const pathname = usePathname();
  const [operator, setOperator] = useState<Operator | null>(null);
  const [loading, setLoading] = useState(true);
  const [menuOpen, setMenuOpen] = useState(false);
  const [sessionError, setSessionError] = useState("");

  useEffect(() => {
    let current = true;
    fetch("/api/auth/session", { cache: "no-store" }).then(async response => {
      if (response.status === 503) throw new Error("The Gateway or admin service is unavailable. Check its configuration and readiness.");
      return response.ok ? response.json() : { operator: null };
    }).then(data => { if (current) setOperator(data.operator); })
      .catch(error => { if (current) setSessionError(error instanceof Error ? error.message : "Could not restore session."); })
      .finally(() => { if (current) setLoading(false); });
    return () => { current = false; };
  }, []);

  async function signOut() {
    await postJson("/api/auth/logout", {}).catch(() => undefined);
    setOperator(null);
    setMenuOpen(false);
  }

  if (loading) return <div className="admin-loading"><Image src="/masanawa-logo.png" alt="Masanawa" width={60} height={60}/><p>Securing your workspace…</p></div>;
  if (!operator) return <>{sessionError && <div className="auth-service-alert" role="alert">{sessionError}</div>}<SignIn onSignedIn={setOperator}/></>;

  const title = groups.flatMap(group => group.items).find(item => item.href === pathname)?.label ?? "Administration";
  return <div className="admin-layout">
    {menuOpen && <button className="admin-mobile-shade" type="button" aria-label="Close menu" onClick={() => setMenuOpen(false)}/>}
    <aside className={`admin-sidebar ${menuOpen ? "open" : ""}`}>
      <div className="admin-brand"><div className="admin-brand-mark"><Image src="/masanawa-logo.png" alt="" width={37} height={37}/></div><div><strong>Masanawa</strong><small>ADMIN CONSOLE</small></div></div>
      <div className="admin-tenant"><span className="tenant-dot"/> Platform workspace <span className="tenant-chevron">⌄</span></div>
      <nav aria-label="Admin sections" className="admin-navigation">
        {groups.map(group => <div className="admin-nav-group" key={group.title}>
          <div className="admin-nav-title">{group.title}</div>
          {group.items.map(item => <Link key={item.href} href={item.href} onClick={() => setMenuOpen(false)} aria-current={pathname === item.href ? "page" : undefined} className={`admin-nav-link ${pathname === item.href ? "active" : ""}`}>
            <span className="admin-nav-icon" aria-hidden>{item.icon}</span><span>{item.label}</span>{!item.live && <span className="nav-pending" title="Service integration pending"/>}
          </Link>)}
        </div>)}
      </nav>
      <div className="admin-sidebar-foot"><span className="sidebar-foot-dot"/> Operations are governed by server permissions <small>v1 · Web administration</small></div>
    </aside>
    <div className="admin-workspace">
      <header className="admin-topbar"><div className="admin-topbar-left"><button type="button" className="admin-menu-button" onClick={() => setMenuOpen(true)} aria-label="Open menu">☰</button><span className="admin-breadcrumb">Workspace</span><span className="breadcrumb-slash">/</span><strong>{title}</strong></div><div className="admin-topbar-right"><div className="admin-env"><span/> Shared platform</div><div className="operator-avatar" title={operator.actorId}>{operator.name.slice(0, 1).toUpperCase()}</div><div className="operator-copy"><strong>{operator.name}</strong><small>Administrator</small></div><button className="admin-signout" type="button" onClick={() => void signOut()} title="Sign out">Sign out</button></div></header>
      <div className="admin-content">{children}</div>
    </div>
  </div>;
}
