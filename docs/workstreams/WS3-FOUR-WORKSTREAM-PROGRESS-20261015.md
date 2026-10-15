# Masanawa four-workstream implementation checklist — 2026-10-15

**Scope of this window:** Workstream 3, with shared main moving concurrently as other financial and communication windows merge. This is an implementation tracker, not evidence of an accepted production release. `MSNW` is the only customer-facing asset; Bodi and Fora are the approved character voices. Do not infer new asset balances from historical Credits/MSN.

**Initial verified main:** `1d6d47fbd8065aa0ba6ee4d2cd94a3cfc4d338f4`. All feature development starts from freshly read main. The source changes listed below preserve the existing PostgreSQL, volumes, financial ledger and provider secrets.

**Already merged by this Workstream 3 window:**
- [PR #21](https://github.com/Baatiku/Masanawa/pull/21), `2ea5281a03fc5870b341796e49f942471224fdec`: canonical Worker polling for scheduled Status and YouTube outbox; PostgreSQL feed scheduled-release rights verification; admin Status editorial UI.
- [PR #26](https://github.com/Baatiku/Masanawa/pull/26), `4e9ac075fcc3adc62dfa0841fc6bf2c472e7ea41`: audited YouTube source composition and Android admin Videos control.
- [PR #30](https://github.com/Baatiku/Masanawa/pull/30), `d2a56cc62e8a51c55102bda4b46eb240374b96ef`: immediately visible authenticated fan Status comments rather than all being forced into pending staff review.
- [PR #34](https://github.com/Baatiku/Masanawa/pull/34), `40ca3759788f004ce39e4c919c98a75727d59558`: Android admin Room drafts, approved-teacher publication and lessons.
- [PR #39](https://github.com/Baatiku/Masanawa/pull/39), `a398edabf90b8bd191542875340f90a7356a8012`: Gateway Masana profiles, signed private portraits, rights-checked existing-media revisions, and Android admin Masana editor.
- [PR #43](https://github.com/Baatiku/Masanawa/pull/43), `24167e960d51d91bd4eef884fe9e8513c008b323`: canonical Room notification outbox consumer, shared original Firebase sender in `packages/mobile-push/`, account/Room/entitlement checks, retries and clean Worker shutdown. Preserves simultaneous incoming-call Firebase channel behavior.

Status: **DONE (source)** means a specific implementation was committed and merged, not that the full customer journey, providers or device acceptance were qualified. **IN PROGRESS** means real source exists but the listed integration remains unfinished. **BLOCKED** is reserved for a genuine external prerequisite or another owner-held financial authority.

## Workstream 1 — MSNW wallet / Paystack / billing / crypto

| Requirement | Status | Implemented foundation / remaining integration |
|---|---|---|
| Paystack customer enrollment, identity, consent, DVA | IN PROGRESS | `services/gateway/src/msn_wallet/paystack_customer_enrollment.ts`, Paystack DVA modules; see `docs/workstreams/WS1-msnw-wallet-paystack-billing-crypto-20261015.md` |
| Verified Paystack NGN settlement → backed MSNW issuance | IN PROGRESS | Existing Paystack webhook + MSNW funding journal; custody, issuance and backing reconciliation remain WS1-owned |
| Actual token contract, custody authority, supply mint/burn and reconciliation | IN PROGRESS | `contracts/msnw/` source; real chain deployment/contract and reconciliation still required |
| Canonical balances, pending/reserved/available, history and receipts | IN PROGRESS | MSNW wallet modules and customer Flutter Wallet; complete lifecycle not yet qualified |
| MSNW Send: recipient, funds, idempotency, receipts, mobile | IN PROGRESS | Historic credit send cannot be relabeled as MSNW; WS1 owns reconciliation and connection |
| MSNW→crypto quotes, fees, expiry, confirmation and settlement | IN PROGRESS | Existing NOWPayments adapters; disabled customer Convert must not claim execution |
| MSNW Receive, custody deposits and crypto withdrawals | IN PROGRESS | Existing chain balance read and custody adapters; real custody/recovery still required |
| NOWPayments conversions, payouts and relay recovery | IN PROGRESS | `adapters/crypto/nowpayments/`; fixed-egress/live reconciliation remains WS1-owned |
| Airtime, Data, Electricity, TV via real MSNW and Flutterwave | IN PROGRESS | `services/gateway/src/billing_routes.ts`, Flutterwave adapters and Flutter UI; WS1 integration ongoing |
| Convert Chat/Calls/gifts/paid legacy Credits/MSN to reconciled MSNW | IN PROGRESS | Legacy obligations must remain immutable; dependent financial migration not finished |
| Shared Gateway/PG/Worker/Flutter transaction and receipt identity | IN PROGRESS | Canonical ledger/outbox primitives exist; full MSNW receipt continuity outstanding |

## Workstream 2 — Chat / voice / calls / channels

| Requirement | Status | Implemented foundation / remaining integration |
|---|---|---|
| Authenticated persistent streaming Masana text chat and retries | IN PROGRESS | `services/gateway/src/agent_conversation.ts`, mobile chat; see `docs/workstreams/WS2-chat-voice-channels-20261015.md` |
| Voice note record/upload/playback/download/persistence | IN PROGRESS | Mobile voice-note and Gateway media modules; end-to-end qualifications outstanding |
| Photo/video/document/audio attachment pickers and transfer | IN PROGRESS | `apps/mobile/lib/src/screens/chat/`; actual provider media flows remain WS2-owned |
| Continuous Gemini Live, Bodi/Fora, interruptions and reconnection | IN PROGRESS | `services/gateway/src/live_voice_token.ts`, Flutter Live voice; external audio acceptance outstanding |
| Incoming/outgoing, background ringing, missed history, push | IN PROGRESS | Incoming call/FCM foundation exists; signed-device acceptance outstanding |
| Replace paid-call Credits with MSNW | IN PROGRESS | Dependent on WS1 canonical MSNW settlement |
| WhatsApp linked device QR, persistent session and shared context | IN PROGRESS | `services/gateway/src/whatsapp_linked_device.ts`, admin QR controls; WS2 follow-up |
| Telegram registration, identity, inbound/outbound and media | IN PROGRESS | Telegram webhook bridge exists; WS2 media/identity closure pending |
| Shared authorized Wallet/Billing commands and spend confirmation | IN PROGRESS | Existing agent shell and billing integration, needs MSNW authority |
| All 26 portraits, skills, conversations, voices, Room navigation | IN PROGRESS | `adapters/storage/postgres/src/masana/catalog_seed.ts`; approval, real portrait attachment and device acceptance pending |

## Workstream 3 — Status / Videos / Rooms / admin (this window)

| Requirement | Status | Exact source / remaining work |
|---|---|---|
| Private Status media storage, upload, playback, persistence | IN PROGRESS | `services/gateway/src/modules/home_feed/media_runtime.ts`, `media_routes.ts`; download signing exists, **authenticated upload initiation/finalization remains missing** |
| Scheduled Masana publishing, Worker, leases, retries, moderation/schedules | IN PROGRESS | **PR #21 merged** `services/worker/src/jobs/home_feed/postgres_runtime.ts` and existing `PgEditorialReviewRepository`; calendar/editor UI in PR #21; no separate global lease for tenants, status released by revision CAS |
| YouTube sync, external ingestion and recovery, approved YouTube/TikTok/Facebook playback | IN PROGRESS | **PRs #21/#26 merged** canonical YouTube outbox, source admin, video editorial UI; source creation paused by design, real provider authorizations and separate TikTok/Meta sync adapters outstanding |
| Reactions, comments, following, saves, navigation | IN PROGRESS | **PR #30 merged**, `packages/feed/src/index.ts`, `adapters/storage/postgres/src/home_feed/repository.ts` and Flutter feed; live social/media navigation still needs device/contract acceptance |
| 26 professional Rooms, lessons, questions and direct Gemini answers | IN PROGRESS | Canonical rooms repository and Worker teacher; **PR #34 merged** admin lesson/Room UI; recheck source seed coverage and actual Gemini runtime |
| Membership, invitations, MSNW subscriptions, renewals/cancellation/expiry | IN PROGRESS | `services/gateway/src/modules/rooms/membership_routes.ts`, subscription modules; **paid use still depends on WS1 MSNW**; no fake Play→MSNW mapping |
| Extend existing admin mobile + Ops, no separate app | DONE (source) | **PRs #21/#26/#34 merged** under `apps/admin_mobile/lib/src/screens/`; Ops and Gateway existing authority reused |
| Admin profiles/portraits/skills/schedules/social/posts/videos/Rooms/subscriptions/finance | IN PROGRESS | **PR #21 Status; PR #26 Videos; PR #34 Rooms; this branch Masana profiles and media**. Remaining schedules/social handles/subscription/finance admin are not finished |
| Firebase notifications for calls, Room replies, financial/service events | IN PROGRESS | Canonical `services/gateway/src/mobile_push.ts`; **PR #43 merged** `services/worker/src/jobs/rooms/notifications_runtime.ts` with canonical Firebase Room reply delivery. Financial/service notices and live device permission checks remain open |
| Remove obsolete Twins, human controls, Credits, fake placeholders, dead actions | IN PROGRESS | Shell removed legacy Twins UX; backend compatibility modules persist, paid legacy amounts not silently rewritten; audit remaining UI needed |

## Workstream 4 — MSNW P2P escrow

| Requirement | Status | Implemented foundation / remaining integration |
|---|---|---|
| Customer offers, pricing, limits, fiat method details | IN PROGRESS | `services/gateway/src/p2p/service.ts`, mobile P2P; see `docs/workstreams/WORKSTREAM-4-MSNW-P2P-20261015.md` |
| Offer discovery, authenticated order and actual MSNW escrow reservation | IN PROGRESS | Service and migration exist; financial reservation must be backed by real MSNW |
| Buyer instructions, payment claims and order status | IN PROGRESS | P2P backend/mobile foundation; actual payment lifecycle pending |
| Verified payment evidence, never screenshot-only release | IN PROGRESS | P2P evidence controls; authorized settlement evidence still required |
| Release/cancel/expiry/refund/dispute/admin resolution | IN PROGRESS | P2P state-machine/admin dispute screen exists; MSNW accounting qualification pending |
| Fees, receipts, idempotency, accounting and recovery | IN PROGRESS | Ledger adapters and P2P source; complete MSNW book/receipt reconciliation outstanding |
| P2P customer screens and admin disputes | IN PROGRESS | `apps/mobile/lib/src/finance/msnw_p2p_screen.dart`, `apps/admin_mobile/lib/src/screens/p2p_disputes_page.dart` |
| Canonical Wallet, history and notifications | IN PROGRESS | Depends on settled WS1 MSNW ledger and FCM delivery |

## Shared constraints and execution handoff

- Source checks: new Vitest suites exist for scheduled Status polling, YouTube single-flight and signed profile media; **not executed by this connector-only window**. Node 22 is present but private repo dependencies, pnpm and Flutter are not mounted locally. No Android APK was built or claimed.
- Operational dependencies: Status-media S3 configuration must be provided; new media uploads still require authenticated object-store admission; external YouTube/TikTok/Meta authorization and corresponding approved sources are required for automatic imports; Firebase credentials/push dispatcher must be integrated; chain custody/issuance belongs to WS1.
- Next exact code: authenticated Status upload initiation + integrity-confirmed finalization; qualify FCM Room notification delivery on the deployed Worker and wire financial/service events; implement remaining Masana administration (schedules/social handles), Room entitlement billing in canonical MSNW, and reduce legacy customer-facing Credits/Twins controls without touching historical ledger.
- Safe local checks after pulling latest main: `pnpm --filter @masanawa/gateway-service typecheck`, `pnpm --filter @masanawa/worker-service typecheck`, `pnpm exec vitest run services/gateway/src/modules/home_feed/runtime.test.ts services/gateway/src/modules/masana/profile_media.test.ts services/worker/src/jobs/home_feed/postgres_runtime.test.ts services/worker/src/jobs/youtube_websub/scheduler.test.ts`, `cd apps/admin_mobile && flutter analyze && flutter test`. Run on exact merged SHA and fix any introduced error.

**No test, live provider, production deploy, private media upload or signed Android qualification is asserted by this checklist.**
