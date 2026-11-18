"use client";

import { useParams } from "next/navigation";
import { useEffect, useState } from "react";

type Row = Record<string, unknown>;
type ConnectedSection = { title: string; subtitle: string; endpoint: string; columns: { key: string; label: string }[]; states?: string[] };
const connected: Record<string, ConnectedSection> = {
  users: { title: "Users & accounts", subtitle: "Tenant-scoped accounts with safe identity and relationship details. Account-state changes require a reviewed canonical command.", endpoint: "users", columns: [ { key: "displayName", label: "Account" }, { key: "userId", label: "User ID" }, { key: "state", label: "Status" }, { key: "relationshipCount", label: "Relationships" }, { key: "createdAt", label: "Joined" } ], states: ["active", "disabled", "archived"] },
  runtime: { title: "AI runtime", subtitle: "Recent agent executions, failures, and trace correlation across both client apps.", endpoint: "agent-runs", columns: [ { key: "agentRunId", label: "Run ID" }, { key: "characterId", label: "Persona" }, { key: "state", label: "Status" }, { key: "failureCode", label: "Failure" }, { key: "startedAt", label: "Started" } ], states: ["running", "completed", "failed"] },
  operations: { title: "Operations & reconciliation", subtitle: "Durable provider and financial-operation readback. Uncertain payment outcomes must be reconciled through audited server commands.", endpoint: "operations", columns: [ { key: "operationId", label: "Operation" }, { key: "kind", label: "Type" }, { key: "state", label: "Status" }, { key: "provider", label: "Provider" }, { key: "updatedAt", label: "Updated" } ], states: ["unknown", "reconciling", "partial", "succeeded", "failed"] },
  audit: { title: "Audit trail", subtitle: "Append-only operational event metadata. Private payloads, secrets and financial evidence are intentionally not exposed.", endpoint: "audit", columns: [ { key: "auditEventId", label: "Event ID" }, { key: "eventType", label: "Activity" }, { key: "aggregateType", label: "Resource" }, { key: "correlationId", label: "Trace" }, { key: "occurredAt", label: "Occurred" } ] },
  news: { title: "News & publishers", subtitle: "Publisher approvals, rights status and ingestion freshness; editorial writes require an audited command.", endpoint: "news", columns: [ { key: "displayName", label: "Publisher" }, { key: "state", label: "State" }, { key: "rightsCurrent", label: "Current rights" }, { key: "lastPollAt", label: "Last import" }, { key: "lastError", label: "Last error" } ], states: ["pending", "approved", "suspended"] },
  wallet: { title: "NGN wallet & payments", subtitle: "Verified NGN funding, exchange and reversal entries in kobo. There is no manual balance editing.", endpoint: "wallet", columns: [ { key: "operationId", label: "Operation" }, { key: "userId", label: "Account" }, { key: "kind", label: "Kind" }, { key: "deltaKobo", label: "Delta (kobo)" }, { key: "createdAt", label: "Recorded" } ] },
  data: { title: "Buy Data", subtitle: "Direct NGN data orders and provider results from the canonical order journal.", endpoint: "data", columns: [ { key: "operationId", label: "Operation" }, { key: "billerCode", label: "Biller" }, { key: "itemCode", label: "Bundle" }, { key: "costKobo", label: "Cost (kobo)" }, { key: "state", label: "State" }, { key: "createdAt", label: "Created" } ], states: ["pending", "delivered", "failed"] },
  calls: { title: "Calls & voice billing", subtitle: "Connected-time admissions and captured charges without recording private audio or transcripts.", endpoint: "calls", columns: [ { key: "admissionId", label: "Admission" }, { key: "characterId", label: "Persona" }, { key: "state", label: "State" }, { key: "connectedMs", label: "Connected (ms)" }, { key: "chargedKobo", label: "Charged (kobo)" }, { key: "createdAt", label: "Created" } ], states: ["pending", "reserved", "connecting", "connected", "settling", "completed", "failed"] },
  moderation: { title: "Safety reports", subtitle: "Incoming abuse reports and current visibility decisions, without exposing reporter identities or private detail.", endpoint: "moderation", columns: [ { key: "reportId", label: "Report" }, { key: "targetKind", label: "Type" }, { key: "targetId", label: "Target" }, { key: "reason", label: "Reason" }, { key: "visibility", label: "Visibility" }, { key: "createdAt", label: "Reported" } ] },
};

const planned: Record<string, { title: string; subtitle: string; ready: string[]; pending: string[] }> = {
  providers: { title: "Provider connections", subtitle: "Monitor Gemini, payments, data, email/OTP, storage and news ingestion without exposing secrets.", ready: ["Provider keys remain server-side"], pending: ["Credential metadata and last-checked health readbacks", "Scoped rotate/revoke workflow with fresh authentication", "Per-provider failure, queue and cost dashboards"] },
  settings: { title: "Platform settings", subtitle: "Web-only administrator roles, release policies and operational configuration.", ready: ["Per-tenant admin grants configured privately on the Ops server", "OTP and current canonical PlatformSession sign-in"], pending: ["Grant management with audited two-person approvals", "Release flags and price revisions through a versioned policy API", "Operational alerts, quotas, backups and rollback controls"] },
};

function display(value: unknown, key: string) {
  if (value === null || value === undefined || value === "") return "—";
  if (key.endsWith("At") && typeof value === "string") return Number.isNaN(Date.parse(value)) ? value : new Date(value).toLocaleString("en-NG");
  return String(value);
}

export default function SectionPage() {
  const { section } = useParams<{ section: string }>();
  const spec = connected[section];
  const plan = planned[section];
  const [rows, setRows] = useState<Row[]>([]);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState("");
  const [filter, setFilter] = useState("");
  const [offset, setOffset] = useState(0);
  const [refreshKey, setRefreshKey] = useState(0);

  useEffect(() => {
    if (!spec) return;
    let active = true;
    const query = new URLSearchParams({ limit: "40", offset: String(offset) });
    if (filter) query.set("state", filter);
    fetch(`/api/ops/v1/admin/${spec.endpoint}?${query}`, { cache: "no-store" }).then(async response => {
      if (!response.ok) throw new Error(response.status === 403 ? "Your role does not allow this view." : response.status === 401 ? "Your session has expired. Sign in again." : "The requested service is not connected or available.");
      return response.json();
    }).then(data => { if (active) { setRows(Array.isArray(data) ? data : []); setError(""); } })
      .catch(cause => { if (active) { setRows([]); setError(cause instanceof Error ? cause.message : "Could not load records."); } })
      .finally(() => { if (active) setBusy(false); });
    return () => { active = false; };
  }, [spec, offset, filter, refreshKey]);

  if (plan) return <>
    <div className="admin-page-heading"><div><span className="admin-overline">SHARED PLATFORM CONTROL</span><h1>{plan.title}</h1><p>{plan.subtitle}</p></div><span className="admin-state warn">Integration pending</span></div>
    <div className="admin-two-column"><section className="admin-surface"><div className="surface-heading"><div><h2>Existing foundations</h2><p>Real contracts already in the codebase</p></div></div><div className="admin-checklist">{plan.ready.map(item => <div key={item}><span className="check-icon">✓</span>{item}</div>)}</div></section><section className="admin-surface"><div className="surface-heading"><div><h2>Required for live administration</h2><p>Controls remain unavailable until wired and verified</p></div></div><div className="admin-checklist">{plan.pending.map(item => <div key={item}><span className="pending-icon">○</span>{item}</div>)}</div></section></div>
    <div className="admin-warning">No mock data or unsecured edit actions have been enabled for this module. The web console needs a verified capability-scoped backend for these operations.</div>
  </>;
  if (!spec) return <div className="admin-empty">This administration section does not exist.</div>;

  return <>
    <div className="admin-page-heading"><div><span className="admin-overline">LIVE RECORDS</span><h1>{spec.title}</h1><p>{spec.subtitle}</p></div><button className="admin-outline" type="button" onClick={() => setRefreshKey(key => key + 1)}>↻ &nbsp; Refresh</button></div>
    <section className="admin-surface admin-records"><div className="surface-heading records-controls"><div><h2>Records</h2><p>Showing {rows.length} {offset ? `after ${offset} earlier entries` : "most recent entries"}</p></div><div className="admin-record-filters">{spec.states && <select aria-label="Filter by status" value={filter} onChange={event => { setOffset(0); setFilter(event.target.value); }}><option value="">All statuses</option>{spec.states.map(value => <option key={value} value={value}>{value}</option>)}</select>}<span className="admin-state">Server data</span></div></div>
      {error && <div className="admin-warning" role="alert">{error}</div>}
      <div className="admin-table-scroll"><table className="admin-table"><thead><tr>{spec.columns.map(col => <th key={col.key}>{col.label}</th>)}</tr></thead><tbody>{rows.map((row, index) => <tr key={String(row[spec.columns[0]!.key] ?? index)}>{spec.columns.map(col => <td key={col.key} className={col.key.toLowerCase().includes("id") ? "mono-text" : undefined}>{col.key === "state" ? <span className={`admin-pill ${["active", "completed", "succeeded"].includes(String(row[col.key])) ? "good" : ""}`}>{display(row[col.key], col.key)}</span> : display(row[col.key], col.key)}</td>)}</tr>)}</tbody></table></div>
      {!busy && !rows.length && !error && <div className="admin-empty">No records match the selected filter.</div>}
      {busy && <div className="admin-empty">Loading authorized records…</div>}
      <div className="admin-pagination"><button type="button" disabled={busy || offset === 0} onClick={() => setOffset(value => Math.max(0, value - 40))}>← Previous</button><span>Page {1 + offset / 40}</span><button type="button" disabled={busy || rows.length < 40} onClick={() => setOffset(value => value + 40)}>Next →</button></div>
    </section>
  </>;
}
