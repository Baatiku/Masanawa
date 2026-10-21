# Masanawa web — migration and screen acceptance contract

**Status:** APPROVED DIRECTION / PLANNED, not functional acceptance. **Source baseline:** `9f517836471f6cc92c4b71fd1a84e38f85cb6152` (21 October 2026).
**Authority:** [canonical product roadmap](../../docs/PRODUCT-ROADMAP-20261019.md), [screen and journey contract](../../docs/SCREEN-JOURNEYS.md), [Masanawa AGENTS](../../AGENTS.md), mobile [design tokens](../mobile/lib/src/tokens/masanawa_tokens.dart) and [security](../../docs/SECURITY-AUTHORITY.md). This is a **web implementation specification**, not a second product roadmap. Any later roadmap status belongs in the canonical roadmap.

## Implemented web conversation milestone — 21 October 2026
**Source and code checkpoint:** `apps/web/src/components/masana-experience.tsx`, `apps/web/src/lib/masana.ts`, `apps/web/src/app/api/masana/[characterId]/[action]/route.ts`. Implemented in PR #236, not deployed or live-provider accepted.

- **Discovery:** secure Masana directory cards link to one authorized character profile; Masana inbox items link directly into conversation history. A malformed/foreign character ID fails closed.
- **Profile:** role, creator, region, greeting, biography and conversation suggestions from the canonical directory; unknown presence displays **Status unverified**, not fabricated availability. AI identity and safety disclosure remain visible.
- **Conversation:** read-only history from the canonical account-scoped `/agent/history` endpoint; text submission uses `/agent/sessions/open` then `/agent/sessions/:id/turn`, with `x-request-id` and existing canonical correlation. No separate agent runtime, memory, wallet, room or identity service.
- **Failed/ambiguous turns:** one stable canonical request ID is generated client-side and retained in session storage without bearer credentials. A transport timeout, disconnect or malformed reply locks the composer until `/agent/turns/:requestId/status` confirms completed/failed. A missing/pending state stays blocked and invites another explicit status check; it **never automatically replays an uncertain turn**.
- **Auth:** server-side same-origin BFF and HTTP-only cookies, strict route/action allowlist and POST Origin validation. The signed-in scope and history permissions are enforced by the Gateway, not by claimed client identities.
- **States:** signed-out, auth-unavailable, loading, not-found, denied, empty history, history read error, offline, sending, unconfirmed, pending, completed, failed. The mobile bottom nav and five-root-tab rule remain intact.

**Current executable verification, head `72fd1ea303edfa3da62f2661812740a5ee8d33db`:** `npm test` **7/7 PASS**, `npm run typecheck` **PASS**, `npm run brand:check` **0 old-brand refs**, `npm run build` **PASS**. Chromium production-route smoke at **1440 px and 390 px** checked Masana profile, chat, invalid ID, directory and Chats routes: **10/10 HTTP 200** for page-shell responses, correct signed-out/not-found UI states, no page errors or horizontal overflow, no old brand text. **Authenticated journey, LOCAL MOCK only:** directory → Gwani profile → chat → POST turn → refresh shows persisted Gateway-fixture history, with zero page errors. **Ambiguous-delivery recovery, LOCAL MOCK only (390 px):** POST was recorded by mock then returned 503; UI locked sends, explicit status check confirmed completed; Gateway-fixture turn count remained **1**, and reload displayed history. These are test fixtures, **not** claims that an actual provider, production server or customer credential was exercised.

**Still open:** human conversation E2E, message media, richer shell parts/actions, websocket/SSE streaming, call/media device permission, multi-device conversation reconciliation, billing rules, real provider tests, deployed auth/CSRF/security review, automated authenticated-browser scenarios, full legacy snapshot retirement. Do not label the web application production complete or replace old snapshots without parity review.

## Observed imported baseline
- `apps/web` is now an HTTrack-style static snapshot of NasfamPay: **683 tracked tree entries and 104 HTML route snapshots**, 361 JS files and four CSS files; many `assets/*.js` files are compiled/minified and the original editable React components are not present. The prior minimal Next.js `apps/web/src/app` and `package.json` are no longer in this tree.
- Paths include `dashboard/` (44 mirrored HTML pages), `learn/` (25), `careers/` (11), standalone public pages, plus legacy cached `__api__` response paths. These are **preservation and layout references, not verified functioning Masanawa journeys**. Build, browser, provider and device validation were NOT_RUN when this specification was written.
- Marketing and source bundles still contain NasfamPay/Nasfam, old blue `#1E90FF`, the old asset `logo-Qu2QMe2Y.png`, old tracking/SEO links, `npay:` client keys and `nasfampay-backend.onrender.com` API references. Do not mass-replace operational identifiers or pretend changing a label migrates a wallet.
- The authoritative app is global human/Masana communication with **Chats · Status · Wallet · Calls · Rooms** (Chats first). The web adapts **layout proportions/card density/responsive patterns**, not the previous product's financial claims or its navigation hierarchy.

## Migration architecture
1. Recover editable original source if available. Otherwise rebuild reusable React components **from the snapshot's layout evidence** into a normal pnpm workspace app, with typed Masanawa Gateway API clients and no parallel financial/auth/agent authority. Compare reuse of the previous Next.js foundation versus a buildable Vite/React shell; choose after checking SEO, secure session/BFF needs, preview hosting costs, portability and testability.
2. Keep the snapshot read-only until there is screen/behavior parity and rollback; **no payment/auth calls from mirrored bundles in a production Masanawa app**. Do not publish captured `__api__` payloads without a confidentiality and staleness review. Old snapshots are reference material, not new public legal text.
3. Adopt the **mobile tokens** as the source of truth. Desktop uses a responsive side navigation and content rail; narrow layouts use the same five destinations. The public unauthenticated marketing site has separate navigation.
4. Share identity, server session, character ID, conversation ID, memory scope, financial ledger, and moderation through Masanawa Gateway/PostgreSQL. Web never calls model providers or wallet ledgers directly. Human messages never route to an AI turn endpoint.

## First visual/content pass — strict order
**A. Inventory and quarantine (prerequisite):** classify route snapshots, compiled assets, stale API responses, old tracking/marketing links and PII; record viewport screenshots or DOM baselines for mobile and desktop; stop any automatic deployment of old mirrored assets.

**B. Global identity:** replace *visible* old product name, wordmark, favicon, PWA icons, social preview image, page titles and OG/Twitter/schema metadata with **Masanawa**. Reuse and test the canonical mobile logo asset for web; generate distinct compliant 192/512 PWA and masked icons if needed. Avoid replacing historical source provenance, business contracts, database fields, API URLs or analytics configuration blindly.

**C. Global palette/layout preservation:** use `brand/masanawa-tokens.css` once the maintainable web app imports it. Light surfaces are white (#FFFFFF), primary green #25D366, strong green #075E54, text #111B21, secondary #54656F, border #E9EDEF. Dark surfaces use #0B141A/#202C33 with #00A884 green. Remove Nasfam blue/crypto-neon decorations and arbitrary shadows. Retain the existing container widths, card rhythms, typography scale and responsive column arrangements where they serve the new flows. Check contrast, 200% text and keyboard.

**D. Rewrite content and semantics:** every public page should describe human/Masana communication first and **capability-qualified MSNW Wallet** second. No claim of 30+ supported blockchains, naira-only account, guaranteed gas fee sales, Nigerian-company registrations, licensed rails, live token deployment or active services without current proof. Original Nasfam legal/privacy/career/support identities cannot simply be relabelled as Masanawa: write legitimate Masanawa policies and show an unavailable/coming-soon state until authorized.

**E. Functional port:** page-by-page typed API integration, server-enforced identity, text/media/voice, profile/creator, Rooms/Status, Wallet quotes/receipts and all negative paths. Hide unavailable actions explicitly, not as fake success or zero balance.

## Screen routes and rewrite/copy acceptance
| Web screen | Legacy visual reference | Proposed web route / content | Required primary controls and journeys |
|---|---|---|---|
| Public home | `/`, `about/`, public cards/hero | `/`: **Masanawa — conversations that connect people and Masana.** Discover, chat, call, follow Status and join Rooms. MSNW Wallet only where eligible. | Masana discovery preview, About, Help, Sign in; public claims individually verified; persistent navigation |
| Sign in/recovery | `login/`, `register/`, `reset-password/` | `/login`, `/register`, `/recovery`: welcome to Masanawa; canonical email/phone and currently supported credentials | Validation, password recovery, rate limits, verification, session restore, return-to-deep-link |
| Chats inbox | `dashboard/` list/card chrome | `/chats`: Chats (default), All / People / Masana / Unread, recent conversations | Search, new chat, archive/mute, pagination, chat request admission |
| Human/Masana conversation | `dashboard/chatbot/` panel layout | `/chats/:conversationId`: real human or Masana conversation, unambiguous identity and context | Text, voice note, media, attachment, retry same request, history, profile, call; no model for human chat |
| Masana discovery/profile | Legacy service/grid/marketing card proportions | `/masana`, `/masana/:id`: authentic identity, owner attribution, profession, disclosure and capability | Search, follow, start chat or permitted call, preview, moderation/restricted state |
| Status | Public cards/feed references | `/status`, `/status/:id`: followed and discoverable authorized updates | Media, reactions, comments, follow, report, honest expired/private status |
| Wallet home | `dashboard/`, addmoney, coins/history cards | `/wallet`: MSNW available/reserved/pending and history; provider qualified services | Privacy eye, Refresh, Send, Fund, Convert, P2P, Bills, transaction receipts; capability gates |
| Wallet details | `dashboard/addmoney`, `coins`, `history`, `swap`, `bills` | `/wallet/*`: **new Masanawa contracts only** | Quote→review→authorization→pending→settled/failed receipt; no legacy balance substitution |
| Calls | Old dashboard support/call affordances | `/calls` and active session overlay | Human/Masana picker, incoming/missed/history, reconnect/teardown, browser mic permission |
| Rooms | Legacy grid/list patterns | `/rooms`, `/rooms/:id`, `/rooms/new`, `/rooms/:id/manage` | Discover/join, create public/private, post or broadcast, invite, moderation, agent mention |
| Own/public profile & creator | `dashboard/profile`, settings/card chrome | `/settings`, `/u/:handle`, `/my-masana` | Account, preferences, one public profile, creator wizard, privacy/data/delete, logout |
| Help/support | `support/`, `dashboard/support-requests` | `/help`, `/help/requests`: Masanawa help centre | FAQ, report/request, receipt-to-support, status; remove unverified channels |
| About & policies | `about`, `privacy`, `terms`, `careers` | `/about`, `/privacy`, `/terms` with validated owner, entity and capabilities | Contact/legal notice, current policy version, links; do not claim Nasfam entity belongs to Masanawa |
| Content / retired legacy | `learn/*`, crypto landing, gifts, referrals, streaks, premium, careers | Selectively reauthor relevant educational help or remove from public nav; preserve snapshot while assessing | No unsupported cash-out, growth rewards or fintech product redirects; intentional 404/410 or redirect after approval |

### Web-specific interaction contract
For **every** migrated route: first-load skeleton, authorized empty state, partial/stale refresh, error with retry, offline read/draft capability, permission denied, rate-limited, account-switch invalidation, inaccessible/revoked target, responsive 320px→desktop, 200% zoom, keyboard/screen-reader navigation, reduced motion, RTL/low-bandwidth. No unauthorized cache, private metadata or media after logout. Monetary actions are not offline-queued and ambiguous submissions reconcile by request ID before retry.

### Web launch acceptance
- Customer sees only Masanawa names, approved imagery, canonical colors and truthful product copy in **DOM, JavaScript-rendered content, titles, favicon, PWA, Open Graph, search/robots/sitemap, emails, dialogs, error messages and translated text**; no old outbound analytics, support or download URL unless explicitly approved.
- `node apps/web/brand-audit.mjs --strict` passes on the **runnable web source + shipped build**, including generated chunks, excluding a deliberately preserved **non-shipped** reference snapshot. Until migration, the audit is expected to FAIL; do not disguise failure by adding global exclusions.
- All reference flows preserve layout geometry wherever appropriate, and each accepted web flow runs against the **same Masanawa Gateway** as mobile; verified cross-device user data, permission checks and server session/memory continuity, with signed-in account switch tests.
- Before release: executable web build/typecheck/unit/Playwright smoke (desktop/mobile); privacy and CSP/CORS/cookie checks; backend staging proof; deployed SHA/URL and rollback. Track NOT_RUN separately from PASS_REAL.

## Current implementation checkpoint — 21 October 2026

Web application sources now exist under `apps/web/src` using **Next.js 16 / React 19**, the legacy `apps/web` snapshot is preserved separately in place but is **not imported** into the Next.js build.

**Shipped by source, browser-tested but not deployed:**
- Responsive branded marketing homepage (`/`), registration (`/register`), sign-in (`/login`), six-digit phone password recovery (`/recovery`).
- Shared `/chats`, `/status`, `/wallet`, `/calls`, `/rooms`, `/masana`, `/settings` shell with Masanawa green/white visual design; unavailable features show truthful pending text rather than fabricated data.
- Authenticated **read-only** Masana directory and Masana inbox projection against canonical Gateway, with session-gated loading/empty/error/permission states.
- Same-origin Next.js BFF at `/api/auth/*` and narrowly allowlisted `/api/bridge/*`, HTTP-only SameSite cookies, origin validation on state-changing requests, server-only access to Gateway, no client-side provider tokens or wallet ledger.
- Brand audit of `apps/web/src` passes. **The full imported legacy snapshot still contains NasfamPay references and must not be publicly served as the Masanawa application.**

**Remaining:** original authenticated conversation screens, human messaging, status feed, voice calls, rooms, wallet operations, creator work, authoritative public policy/about/help copy, regional/financial provider qualification, and deployment. Visual parity to every old layout and real provider/account E2E are **NOT_RUN**; review those before deleting the old static snapshots. Next milestone should complete a full chat/profile user journey, not another disconnected landing page.

**Execution evidence:** Higgsfield Linux checkout of commit `ba7dd0ebdd07bb69bf7f2143e1214707dd100089`, with local subsequent fixes committed as follow-on to the same PR: `node --test` 3/3; `tsc --noEmit` PASS; production `next build` PASS after adding auth Suspense; browser route smoke 1440px and 390px across 7 routes returned 200 with no JS errors, overflow or visible old-brand text. Backend/provider/authentication success were not verified against live accounts. `brand-audit.mjs --root src --strict` PASS (zero); entire legacy `apps/web` root audit still expected FAIL (snapshot is not converted).
