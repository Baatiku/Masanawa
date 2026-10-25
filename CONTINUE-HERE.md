# Continue Masanawa — lightweight five-tab GB product

**Owner authorization, 24 October 2026.** The latest approved refactor replaces the original multi-asset Rooms/human-communication app with Masana-only Chats and Calls, Masana-authored Status, new MB Wallet and Flutterwave Data redemption. The original `Baatiku/Masanawa-App` repository is private and MUST NOT be modified. Reset commit `895e86a5` was not found on either GitHub remote; do not rewrite main history to chase it.

Read `AGENTS.md`, `docs/PRODUCT-ROADMAP-20261019.md` and `docs/SCREEN-JOURNEYS.md` — these replace the former 177-screen/820-item old product. Keep this one handoff as a status checkpoint; source, exact Git SHA, tests and provider verification are independently authoritative.

## Latest implementation checkpoint

Fetch latest GitHub main and follow the stable UX checklist in `docs/PRODUCT-ROADMAP-20261019.md#owner-ux-and-communication-repair-checklist`. Merged #423 (`ba638f48`) completes UX-P01/W01/N01; merged #424 (`f9a67387`) completes UX-C01/C02. Full Flutter 676 and all hosted checks passed on #424. Their UI/device follow-up and UX-C03/C04 remain open.

**Merged #425** (`53efc5ec`): durable MB call admission journal/leases, original target/key binding, internal server-proof timing, once-only settlement and crash/late-hold recovery. Real PG suite 1,971 passed (3 skipped), workspace TypeScript/build and hosted CI passed. Forward migration 0203 only; no historical money conversion or public activation.

**Current service batch:** branch `feat/mb-call-review-service`; inspect its PR/CI/merge status before duplicating. Adds domain-separated signed MB review/explicit acceptance, approved-revision and actor binding, original pending-admission resume/readback, strict optional Gateway routes and customer recovery protection. Main does not compose these ports and mobile is unchanged. Read `docs/MB-CALL-ADMISSION-AUTHORITY-20261025.md` for exact boundaries.

**Next P0: trusted provider relay + live-token integration + lifecycle recovery, then mobile MB call admission/outbox replacement.** Current mobile connects directly to Gemini, so client-reported seconds cannot prove charges. Bind a single relay lease, observe real provider setup/progress/disconnect, enforce the MB deadline, reconcile original operations and retain account/voice identity. Never restore retired Credits endpoints or bypass holds. UX-R02/R06/R08 stay unchecked; this is source progress, not working provider/device recovery. Text and recorded-note failures need separate diagnosis and MB-safe delivery recovery.

Remaining unchecked UX IDs are the queue. No APK; fixed-IP hosting on hold; preserve historical finances and separate Masanawa-App. Older sections below are historical checkpoints, not current PR statuses.

## Actual source work, separate non-overlapping paths

- [PR #377](https://github.com/Baatiku/Masanawa/pull/377), `feat/gb-wallet-rate-and-usage-foundation-oct24` (initial `f4d40201`): Gateway `services/gateway/src/gb_wallet` exact kobo, versioned packages, verified-amount quote, fractional remainder, welcome-restricted usage and focused tests; `services/gateway/src/app.ts` read-only quote/catalogue. No MB ledger, paid API, Billstack or production wallet. Hosted CI required at final exact head before safe merge.
- [PR #378](https://github.com/Baatiku/Masanawa/pull/378), `feat/gb-wallet-data-navigation-oct24` (initial `790fa97c`, **draft**): `apps/mobile/lib/src/gb_wallet`, shell/router, route tests. Wallet balances deliberately unavailable instead of falsely mapping MSNW; add-data packages read only, Send/Request/Data purchases disabled pending real MB ledger and provider. Calls/Chats old internal human/group behavior still needs pruning; not ready to merge/release. This branch depends on #377 APIs.
- [PR #379](https://github.com/Baatiku/Masanawa/pull/379), `feat/status-masana-only-root-oct24` (initial `5d5a2d79`, **draft**): `apps/mobile/lib/src/screens/status/status_screen.dart` removes Videos tab and human post composer; a first Mobile Analyze failure traced to obsolete `test/ui/status_tab_restoration_test.dart` and unused import was corrected. Recheck exact head. Backend human post/video routes and Saved video sources remain and need reference-based removal.
- Docs: `docs/gb-refactor-owner-authority-oct24` replaces the old active three canonical documents and this handoff. Historic specifications remain retrievable from Git history.

## Immediate next integrations

1. Verify CI for three exact PR heads and fix genuine tests, with no APK job.
2. Add canonical MB ledger + forward migration without importing old money and stable reconciliation/idempotency; bind Add data/Send/Request/tip receipts only after server authority exists.
3. Refactor Chats and Calls to **only** existing Masana; remove human/group start/listeners, video/doc chat modes and unneeded permissions; real audio/recovery must survive.
4. Remove remaining retired source/APIs/jobs/integrations/settings after reference and migration dependency audit; preserve account deletion, provider reconciliation, authorized platform publishing and historical obligations.
5. Billstack assignment/webhook eligibility and fees **UNVERIFIED** (previous official calls HTTP 403); do not invent API addresses/auth or tell users to deposit before verification. Flutterwave bundle GB allowance requires independently approved ID-to-allowance mapping, original-operation reconciliation and real verified outcome.
6. Qualify real PostgreSQL concurrency, Flutter/device/accessibility, server-enforced call seconds/reply charges, provider staging and original receipts, deployment and rollback. Do not mark source as VERIFIED_E2E or ship an APK without explicit owner request.

Independent workstreams should own exact paths (status, Chats/Calls, new MB modules, routing integrator) and merge only after tested dependency order; do not overwrite one another's heads. Update this exact handoff with merge SHAs/checks once delivered.

Latest owner priority: Status/wallet audit and plan in `docs/FEED-WALLET-UX-AUDIT-AND-PLAN-20261025.md`. Audit was refreshed against main 0be46268: Send/Request, bank assignment and Data purchase now exist; preserve their authorization and idempotency while improving UX. No APK; fixed-IP hosting hold persists. Retirement PRs #402–#406 are merged; current backend-source batch removes disconnected implementations while preserving historical reconciliation and applied migrations. Do not claim all legacy accounting helpers are gone.
