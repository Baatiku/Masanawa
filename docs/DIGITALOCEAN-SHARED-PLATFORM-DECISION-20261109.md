# Masanawa — DigitalOcean-first shared platform decision and execution design

**Decision date:** 9 November 2026 (Africa/Lagos)  
**Owner direction:** DigitalOcean is the canonical application/backend host, starting with **one $12/month Basic Droplet (2 GiB RAM, 1 vCPU, 50 GiB SSD)**. Cloudflare remains the frontend, DNS/CDN and optional R2 media edge. Railway is retired as a deployment dependency. **No Railway volume, trial, chat or database migration is required for this unreleased platform.** These decisions supersede older Railway deployment instructions and web-D1-as-chat-authority plans.  
**Stage:** **Architecture and execution specification — not deployed, load-tested, provider-qualified or end-to-end complete.**

## 1. The non-negotiable product contract

1. **One Masanawa account and backend** serve both the Flutter mobile application in `Baatiku/Masanawa` and the WhatsApp-style web companion. No parallel browser-only Gemini economy, guest authority, chat history or identity ledger. No ChatGPT subscription authentication or customer API-key requirement.
2. **One PostgreSQL source of truth** for identity, canonical persona IDs, chat messages, inbox, call events, memory, wallet, receipts, data purchases and account privacy. Mobile's local cache and web's IndexedDB/localStorage are explicitly non-authoritative, account-fenced offline conveniences. Cloudflare D1 may hold public news/directory/catalog caches if needed; **never** the authoritative private user or financial state.
3. **One API and domain contract:** both clients consume versioned Gateway endpoints and common server-specified response schemas. Web uses an appropriate secure browser session/BFF boundary; Flutter uses the same authenticated principal through mobile-suitable credentials. Neither client may infer identity from display names, cookies alone, or caller-supplied account IDs. API origin and allowed CORS origins must be explicit, not wildcard with credentials.
4. **One NGN model:** integer-kobo available/held balances; verified deposit settlement; ₦2 for one successful logical AI reply (voice + transcription charged once); ₦1 per started **connected** call second (ringing/setup free); Buy Data with reviewed NGN quote; Send/Request NGN. No new MB package sales, MB-valued chat charges, tips or fake wallet funds.
5. **Five mobile destinations:** Home (publisher-branded news only), Chats, Wallet, Calls and Profile. Directory and civic/persona profiles are reached from Contacts/Chats and profile links, not mixed into news. Web mobile behaves like a mobile WhatsApp-style shell, desktop like a desktop messenger, using **Masanawa's own icon/branding** and licensed assets rather than WhatsApp proprietary artwork.
6. **Persona truth:** full, sourced profiles for Nigerian current/former leaders and government institutions; typed relationships, source date/provenance, honest “AI simulation, not the office” disclosures, and no fabricated achievements or agency claims.
7. **One release gate:** complete the coordinated web/mobile/backend checklist implementation, then run one combined automated and browser matrix, repair failures and rerun. Separate implementation evidence from real-device, live-provider and real-money qualification. Do not claim 189-item completion, production wallet readiness or calls acceptance on source-only evidence.

## 2. Hosting boundaries and portability

| Layer | Chosen home | Portable contract | Not allowed |
| --- | --- | --- | --- |
| Browser frontend / news UI | Existing Cloudflare-hosted Site / Pages-style static delivery | Standards-based web build; configurable `API_BASE_URL` or same-origin proxy; own deploy artifact | Persisting private chat/wallet in localStorage or D1 as system of record |
| Flutter app | Existing Flutter repo/app channels | Same versioned API schemas and authentication principal | A separate wallet, persona mapping or incompatible message history |
| Node API / Gateway | $12 DigitalOcean Ubuntu Droplet, Docker container | Node 24, pnpm 12 workspace build, health/ready endpoints, env-based config, Docker image | Railway-only runtime variables, coupled build paths, provider-specific data contracts |
| Background workers / news ingress | Same Droplet initially, separately restartable containers or lightweight scheduler | Explicit queues, leases, idempotency and bounded concurrency; offload feeds/cache to Cloudflare where appropriate | Unbounded in-process tasks, unbounded timers or worker crashes taking down API |
| Database | Standard PostgreSQL on Droplet for pilot | Versioned forward-only migrations, logical dump/restore, tested recovery | D1 conversion of financial schema or public database listener |
| Files / voice notes | Private object storage behind Gateway-authorized grants; Cloudflare R2 where within allowance | S3-compatible client interface and object-key manifest | Permanent data referenced only by `blob:` URLs; unbounded public URLs |
| DNS/TLS/CDN | Cloudflare | Origin independent of Cloudflare-specific application logic, Caddy/Traefik reverse proxy | Hard-coded server IPs in Flutter release or browser bundle |
| AI / media | Gemini through server-gated configuration; per-channel provider adapters | Provider secrets on server only; bounded budgets, quotas, retries and graceful fallback | Gemini key in frontend, simulated provider success, unsupported E2EE claim |
| Observability / backups | Host monitoring + private logs + off-server PostgreSQL backups | Exportable logs/metrics and restore playbook | Secrets/PII in telemetry, backups only on the same disk |

The custom domain/API host is a **desired DNS target**, not a claim that `api.masanawa.com` has already been provisioned. Never change DNS until the authenticated Gateway, health, TLS, client configuration and rollback are tested.

### Why we are not converting the core to Cloudflare Workers/D1

The canonical Gateway already uses PostgreSQL transactions and related financial/messaging contracts. D1 is SQLite; a full rewrite increases migration risk and lock-in, especially for idempotent NGN settlement, cross-device history and private memory. Cloudflare remains valuable for static delivery, caching, DNS and S3-compatible R2 without owning the core data model.

### Why $12 can be tried, and when it stops being enough

The 2 GiB / 1 vCPU Droplet is a **low-concurrency pilot target, not a capacity guarantee**. Run PostgreSQL, one API container, a narrowly limited worker and reverse proxy only after measuring memory. Do not co-host heavy speech inference, large file transcoding, uncontrolled browser automation, or several unrelated high-traffic platforms at this size. Offload Gemini generation and static/frontend work. Set CPU, RSS, connection count, disk, queue lag and p95 latency alerts; test realistic simultaneous web/mobile requests and calls before public wallet enablement.

**Upgrades:** snapshot and logical PostgreSQL backup; perform a planned shutdown/resize (temporary downtime); restart and run smoke checks. Prefer CPU/RAM-only resize first to retain disk downgrade flexibility. The expected upgrade paths are $18/month for 2 GiB/2 vCPU, $24/month for 4 GiB/2 vCPU, and $48/month for 8 GiB/4 vCPU at the referenced November 2026 standard Droplet prices. Disk enlargement is not reversible. An alternative is to move heavy workers/PostgreSQL to separate nodes later without changing client API contracts. Backups, domain, storage, AI, telecom and payment-processing fees are **additional**; $12 is not a fixed all-in production budget.

## 3. Single contract between web and mobile

**Auth and privacy**
- Inventory the real current mobile authentication and Gateway routes before selecting tokens. Establish an authorization epoch/session version; enforce server account/persona ownership on every read, write, event subscription, media grant and callback. Use secure HttpOnly/SameSite cookies and CSRF/origin controls for web; mobile secure storage for mobile credentials.
- Auth refresh, revoke, logout, account switch, duplicate tabs, guest rejection and late-response fencing must be tested with two users. No cross-account cache hydration; clear private browser data and stop live streams immediately on account change.
- Since the owner confirms **no shipped users and no valued prelaunch history**, do not migrate Railway volumes or old D1 guest messages into the production account. Initialize a clean production PostgreSQL instance and reject historic unauthenticated cookies as an account authority. This is a **migration exclusion**, not permission to delete unrelated repository history, source migrations, or future users' records.

**Conversations**
- Shared canonical persona IDs, signed-in inbox, `/agent/history` cursor pagination, request status `/agent/turns/{requestId}/status`, authenticated events/stream resume, remote pin/archive/read/unread/search and server chronology. Verify endpoint existence and exact schema first; add missing contracts to Gateway, not to a new web-only database.
- Client-generated unique logical request IDs survive network uncertainty and duplicate submits; server stores a complete user+assistant turn transactionally and settles one successful billable reply once. Composer drafts/attachments can be optimistic but are never authoritative delivery receipts.
- Web voice capture/hold/slide/lock/pause/review, media upload, private media recovery, waveform/seek/speed and TTS transcript fallback align to supported Flutter contracts. Respect browser-only microphone, Bluetooth and background limitations honestly.
- Live calls use canonical authenticated admission, started-connected-second NGN meter, real call/turn IDs, acknowledged transcript journaling, reconnect/end idempotency and ordered cross-channel replay. No client-timer-only billing or unacknowledged fire-and-forget transcript as source of truth.

**Memory and persona**
- Preserve original immutable messages, distinct bounded recent AI context and summaries. Treat **durable semantic memory** as a separate, opt-in feature requiring proof of actual `packages/memory` extraction/retrieval runtime wiring, scope isolation, provenance, deletion/export and leakage tests. The existing web “18 recent messages” helper is **not** long-term memory.
- Resolve one persona revision/backstory/language/voice through text, notes and Live; avoid fabricated credentials, official representation or false memories. English/Hausa/code-switching and supported RTL states require explicit tests.

**Wallet/news/directory/profile**
- Server-authoritative NGN balance, virtual funding account only if assigned by verified provider, signed receipts/holds, idempotent deposits/refunds, Buy Data review/settlement, profile settings/privacy/export/deletion. No mock funding account or client-calculated balance.
- Publisher-branded Home news: source, verification meaning, timestamps, feed refresh/deduplication and rights-aware excerpts; authenticated likes/comments/hide/report behind server authority; keep public-servant feed separate.
- Directory: complete verified historic/current Nigerian leaders, all state governors + FCT minister, National Assembly representatives, agencies/directorates/tiers. Profiles must be comprehensive and source-backed, with visible provisional/unverified gaps instead of fabricated facts.

## 4. Tracking the full 189-item web register

**Canonical item-level source:** `docs/WEB-WHATSAPP-PARITY-CHECKLIST-20261108.md` in the Masanawa Civic Directory Site checkout. **Companion source audit:** `docs/WEB-MOBILE-GAP-AUDIT-20261109.md`. Preserve original IDs and per-item check marks; never replace 189 tracked requirements with a shorter paragraph. Baseline from source on 9 November: **189 total = 87 original A–G + 102 new H–O; 36 checked, 153 open**. “Checked” is existing source-level evidence, not real-money/device acceptance.

| Register | Items | Already checked | Open | Workstream / owner component |
| --- | ---: | ---: | ---: | --- |
| A Branding | 9 | 7 | 2 | Web design tokens/artwork/PWA |
| B Mobile shell | 17 | 11 | 6 | Web mobile parity |
| C Desktop shell | 10 | 4 | 6 | Web desktop parity |
| D Chat/voice/calls | 16 | 7 | 9 | Web + Gateway + providers |
| E Publisher Home | 12 | 5 | 7 | Web + news/engagement API |
| F Account/wallet/profile | 12 | 0 | 12 | Shared identity/NGN API |
| G Production/accessibility | 11 | 2 | 9 | Release/QA |
| H Identity/guest removal | 12 | 0 | 12 | Auth/privacy, fresh-start policy |
| I Durable history/inbox | 16 | 0 | 16 | Gateway history + both clients |
| J Message lifecycle | 12 | 0 | 12 | Idempotent Gateway turns |
| K Media/voice playback | 14 | 0 | 14 | Media service + web/Flutter |
| L Gemini Live | 12 | 0 | 12 | Calls, event journal and NGN meter |
| M Shared memory | 14 | 0 | 14 | `packages/memory` + consent UX |
| N Mobile/news/directory/settings | 12 | 0 | 12 | Shared product contracts |
| O Consolidated validation | 10 | 0 | 10 | CI/browser/provider/release |
| **Total** | **189** | **36** | **153** | **No release claim until evidence attached** |

**Other accepted registers, not merged into the 189 count:** mobile Chat 145-item second-pass audit and current acceptance artifacts (SP-001–SP-145), earlier 68-item visual audit, wallet parity audit, newsroom publishing verification, full civic directory blueprint, direct-NGN cutover and canonical product journeys. Mobile and web acceptance are related but have independent IDs. Retired paid-post/MB ideas are not implementation scope.

For each item keep: `ID | requirement | impacted files/routes | status | implementation commit/PR | test evidence | deployed verification | external/provider/device caveat`. Allowed statuses: `OPEN`, `IN_PROGRESS`, `SOURCE_DONE`, `TESTED`, `DEPLOYED_VERIFIED`, `BLOCKED_EXTERNAL`, `SUPERSEDED_WITH_REASON`. Do not auto-mark an item complete because a related page visually exists.

## 5. One coordinated implementation and release sequence

**0 — Inventory + freeze contracts.** Snapshot exact `Baatiku/Masanawa` main/head, Site v17 baseline, all active PRs and canonical route/schema files. Reconcile the previous local web checkpoint `wip/web-189-parity-gateway` (`8368c8a`, not established as published) by verified source only. Map every checklist ID to actual files and service contracts; resolve conflicts with the latest owner NGN/news-only/five-root instructions. No unverified lost local changes are treated as merged.

**1 — Portable infrastructure.** Add tested multi-stage Node 24/pnpm 12 Gateway image and versioned Compose stack for Gateway, PostgreSQL, reverse proxy and a constrained worker. Document secrets schema, deterministic migrations, health/ready probes, resource caps, non-root processes, firewall, TLS, backup/restore, logs, alerting and redeploy/rollback. Configure staging/prod separately; deployment must be possible on any Docker-capable host.

**2 — Canonical shared account/API.** Remove web guest/D1 chat writes, make signed-in Gateway identity authoritative on both clients, share persona IDs, auth refresh/revoke and cache fences. Implement inbox/cursor history/status/event resume and paired-turn idempotency with strict account tests before any paid media or calls.

**3 — Complete messaging, notes, calls and memory.** Port supported Flutter interactions to mobile web and desktop; persist media/call journals; qualify Live event and billing flow; activate semantic memory only when production wiring and opt-in tests pass. Implement all related H–M items as an integrated dependency group.

**4 — Product/data parity.** Connect real NGN Wallet, Add Money/receipts, Buy Data, Profile, source-linked full civic directory and Home publisher engagements. Complete A–G and N, preserve accessible mobile/desktop layouts, localization and branded PWA artifacts.

**5 — One full acceptance matrix.** Combined Gateway/type/build/unit/contract/DB/security tests, Flutter analyzer/widget/golden suites, Site type/build/browser visual and two-account/two-device e2e; retries, auth switches, long history, media, real Gemini and failure injection. Keep provider/device evidence truthful and untested services disabled.

**6 — Deploy exact green commits.** Provision DO only after owner account/billing exists; configure secrets without placing them in Git. Perform DB migration against **fresh** production DB; boot stack and check HTTP/TLS/CORS, jobs and metrics. Point Cloudflare web to authenticated API, deploy Site/mobile release from verified source, do end-to-end smoke tests, record commit IDs and endpoint results. Enable real funds/payment/provider paths only after independent qualification and rollback practice.

**7 — Operate and resize.** Observe CPU/RAM/DB/disk/p95/queue lag/Gemini and provider costs; defer extra business apps on $12 until measured headroom. At capacity threshold: independent PostgreSQL backup and snapshot, scheduled downtime, CPU/RAM-only resize, smoke checks and rollback. Document whether upgrades are sufficient before adding more independent workloads.

## 6. Security, disaster recovery and operational acceptance

- Admin access: SSH key, non-root sudo user, auto-updates/patch policy, UFW only 22/80/443 or reviewed ports, PostgreSQL bound to private loopback/container network, rate limiting and server-side input schemas. Avoid exposing DB, Docker socket or credentials to browser or logs.
- Secret management: `.env` kept outside Git, strict permissions; provider key scopes; rotate any previously disclosed credentials. Do not echo tokens, account keys or payment data. Ensure Cloudflare Worker never stores the canonical wallet database secret unless using an approved minimal proxy architecture.
- Data integrity: unique idempotency keys, ledger double-entry or equivalent invariant, provider webhook signature, terminal/readback reconciliation, outbox/job lease consistency, account-authorization checks. All authoritative money operations must be atomic and auditable.
- Backups: encrypted scheduled off-Droplet PostgreSQL logical backups (with recovery-point strategy appropriate to real financial use), private object manifests, at least one tested off-host restore; DigitalOcean snapshots/backups optional and charged separately. A weekly disk snapshot alone is not a substitute for verified database recovery.
- Recovery: tested restart after power loss; restart policy, worker idempotency and transaction reconciliation; staging restore without accidentally dispatching customer payments/calls; DNS rollback and old image retention. Record an achievable recovery time and acceptable data-loss window before launch, rather than asserting zero loss.
- Cost limits: $12 base Droplet + separate backup/storage/egress/AI/telecom/payment charges; Cloudflare Free only within current allowances. Track measured costs per feature and notification/usage limits. Warn the owner before resource upgrades or third-party paid commitments.

## 7. Current evidence and explicit gates

| Gate | Status on 9 November 2026 | Evidence required to close |
| --- | --- | --- |
| Decision + portability design | **DECIDED / DOCUMENTED** | This ADR and both checklists retain exact scope |
| DigitalOcean account and $12 Droplet | **NOT PROVISIONED** | Owner billing/account; inspected plan/region/server ID |
| Dockerized Gateway/worker/PostgreSQL | **SOURCE CANDIDATE / HOST NOT VERIFIED** | `infra/deployment/digitalocean/` Compose, preflight, CI image build then clean host boot and migrations |
| Shared Flutter/web auth + history | **OPEN** | Real two-user cross-device Gateway contract/e2e |
| Safe NGN wallet, provider receipts | **OPEN / PROVIDER-GATED** | Live verified settlement and reversal tests, not mock |
| Cross-channel media/Live/memory | **OPEN** | Persisted, deduped calls/voice and scoped memory acceptance |
| Home/directory/mobile/desktop parity | **PARTIAL / OPEN** | 189 item receipts and screenshot/browser matrix |
| News autopublishing | **OPEN** | Scheduled ingest freshness, dedup and source-rights evidence |
| Security/backups/restore | **NOT RUN** | Vulnerability review, off-host restore and rollback drill |
| Complete release | **NOT APPROVED** | Exact green commit, deployed smoke, qualified payment/provider gates |

**Important:** This decision intentionally removes **prelaunch Railway data migration** from the work. It does **not** waive future customer-data retention, immutable transactions, secure deletion/account export or backups once Masanawa has users. The immediate deliverable is a single source-controlled plan and preserved 189-item checklist; deployment/feature work must be verified separately.

**9 November implementation addendum (source-only):** The shared backend now has a proposed DigitalOcean Compose stack, separate private config-file contract and fail-closed preflight tests, GitHub OCI image build/publish workflow, Caddy proxy profile, gated legacy worker, encrypted PostgreSQL backup script and restore runbook. Flutter API/Agent URL defaults and OTP helper no longer point at Railway; the Gateway has explicit HTTPS browser-origin CORS (with no credentialed wildcard). These are *implementation candidates*, not a claim of successful GitHub Actions image build, account provisioning, public TLS, real provider/wallet acceptance, shared Site identity or any additional completed checklist ID. See [`infra/deployment/digitalocean/README.md`](../infra/deployment/digitalocean/README.md); keep the 189-ID web register at 36 source-checked/153 open until separately evidenced.

## 8. Canonical references and handoff

- Main platform: `https://github.com/Baatiku/Masanawa` — `AGENTS.md`, `CONTINUE-HERE.md`, `docs/PRODUCT-ROADMAP-20261019.md`, `docs/SCREEN-JOURNEYS.md`, `docs/DIRECT-NGN-CUTOVER-20261107.md`.
- Site source: `masanawa-civic-directory`, docs `WEB-WHATSAPP-PARITY-CHECKLIST-20261108.md` and `WEB-MOBILE-GAP-AUDIT-20261109.md`; Site version 17 was a documentation/source checkpoint, **not** proof of backend activation.
- Prior source checkpoint (verification required): branch `wip/web-189-parity-gateway`, local commit `8368c8a`; do not invent its lost files or mark them released.
- Do **not** modify the separate `Baatiku/Masanawa-App` legacy repository. Continue only in the canonical primary repo and existing Site source, respecting exact-head CI/PR policies.

### First action for the next implementation agent

Read this decision and the full 189-line-item register first. Inspect exact current source and CI; construct a file/endpoint/test ownership matrix for **all** open requirements before applying the connected code changes. Preserve every item ID and its evidence; update the register only after verified source/tests, and never promote source-only completion to live financial or deployed acceptance.
