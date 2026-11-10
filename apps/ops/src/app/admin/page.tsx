"use client";

import Link from "next/link";
import { useEffect, useState } from "react";

type Summary = { users: number; characters: number; active_sessions: number; running_agent_runs: number; reconciliation_cases: number; audit_events: number };
type Operation = { operationId: string; kind: string; state: string; provider: string | null; updatedAt: string };
type Readiness = { status: string; checks: { name: string; ready: boolean; reason?: string }[] };

export default function AdminOverview() {
  const [summary, setSummary] = useState<Summary | null>(null);
  const [operations, setOperations] = useState<Operation[]>([]);
  const [readiness, setReadiness] = useState<Readiness | null>(null);
  const [error, setError] = useState("");
  const [busy, setBusy] = useState(true);

  async function load() {
    setBusy(true); setError("");
    const paths = ["summary", "operations?limit=6", "../readyz"];
    const responses = await Promise.allSettled(paths.map(async path => {
      const route = path === "../readyz" ? "/api/ops/readyz" : `/api/ops/v1/admin/${path}`;
      const response = await fetch(route, { cache: "no-store" });
      if (!response.ok) throw new Error(`Unable to load ${route.split("/").pop()}: ${response.status}`);
      return response.json();
    }));
    if (responses[0].status === "fulfilled") setSummary(responses[0].value); else setSummary(null);
    if (responses[1].status === "fulfilled") setOperations(responses[1].value); else setOperations([]);
    if (responses[2].status === "fulfilled") setReadiness(responses[2].value); else setReadiness(null);
    if (responses.some(item => item.status === "rejected")) setError("Some live services could not be reached. The dashboard only shows verified values.");
    setBusy(false);
  }

  useEffect(() => { void load(); }, []);
  const cards = [
    { label: "Total users", value: summary?.users, glyph: "♙", note: "Registered accounts" },
    { label: "AI personas", value: summary?.characters, glyph: "✦", note: "Canonical characters" },
    { label: "Active sessions", value: summary?.active_sessions, glyph: "◉", note: "Current access sessions" },
    { label: "Running AI tasks", value: summary?.running_agent_runs, glyph: "⌁", note: "In progress now" },
  ];
  return <>
    <div className="admin-page-heading"><div><span className="admin-overline">PLATFORM OVERVIEW</span><h1>Good to have you here.</h1><p>Monitor your platform, review activity, and manage both Masanawa apps from one place.</p></div><button className="admin-outline" type="button" disabled={busy} onClick={() => void load()}>↻ &nbsp; Refresh data</button></div>
    {error && <div className="admin-warning" role="status">{error}</div>}
    <div className="admin-metric-grid">{cards.map(card => <div className="admin-metric-card" key={card.label}><div className="metric-top"><span>{card.label}</span><div className="metric-glyph">{card.glyph}</div></div><div className="metric-value">{card.value === undefined ? "—" : new Intl.NumberFormat("en-NG").format(card.value)}</div><div className="metric-note">{card.value === undefined ? "Waiting for live data" : card.note}</div></div>)}</div>
    <div className="admin-two-column">
      <section className="admin-surface"><div className="surface-heading"><div><h2>Platform health</h2><p>Real infrastructure readiness, not simulated uptime</p></div><span className={`admin-state ${readiness?.status === "ready" ? "good" : "warn"}`}>{readiness?.status === "ready" ? "Healthy" : "Not verified"}</span></div>
        {readiness?.checks?.length ? <div className="admin-health-list">{readiness.checks.map(check => <div key={check.name} className="admin-health-row"><span className={`health-dot ${check.ready ? "good" : ""}`}/><div><strong>{check.name}</strong><small>{check.reason || (check.ready ? "Ready" : "Not ready")}</small></div><span>{check.ready ? "Operational" : "Attention"}</span></div>)}</div> : <div className="admin-empty">No readiness report available. Start the Ops service and check its database connection.</div>}
      </section>
      <section className="admin-surface"><div className="surface-heading"><div><h2>Action centre</h2><p>Items needing a closer look</p></div></div><div className="admin-action-banner"><span className="action-banner-symbol">!</span><div><strong>{summary?.reconciliation_cases === undefined ? "Reconciliation status unavailable" : `${summary.reconciliation_cases} cases need reconciliation`}</strong><p>Financial and provider outcomes are reviewed through canonical operations. No manual balance edits.</p></div></div><Link href="/admin/operations" className="admin-text-link">View operations <span>→</span></Link></section>
    </div>
    <section className="admin-surface admin-recent"><div className="surface-heading"><div><h2>Recent operations</h2><p>Latest durable platform operations</p></div><Link href="/admin/operations" className="admin-text-link">View all →</Link></div>
      {operations.length ? <div className="admin-table-scroll"><table className="admin-table"><thead><tr><th>Operation</th><th>Category</th><th>Status</th><th>Updated</th></tr></thead><tbody>{operations.map(row => <tr key={row.operationId}><td className="mono-text">{row.operationId}</td><td>{row.kind}</td><td><span className={`admin-pill ${row.state === "succeeded" ? "good" : ""}`}>{row.state}</span></td><td>{new Date(row.updatedAt).toLocaleString("en-NG")}</td></tr>)}</tbody></table></div> : <div className="admin-empty">{busy ? "Loading live activity…" : "No recent operations were returned."}</div>}
    </section>
    <div className="admin-summary-foot"><span>Audit records: {summary?.audit_events === undefined ? "Not available" : summary.audit_events.toLocaleString("en-NG")}</span><span>All sensitive actions are checked by the Gateway/Ops service.</span></div>
  </>;
}
