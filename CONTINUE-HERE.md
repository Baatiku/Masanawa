# Continue Masanawa — lightweight five-tab GB product

**Owner authorization, 24 October 2026.** The latest approved refactor replaces the original multi-asset Rooms/human-communication app with Masana-only Chats and Calls, Masana-authored Status, new MB Wallet and Flutterwave Data redemption. The original `Baatiku/Masanawa-App` repository is private and MUST NOT be modified. Reset commit `895e86a5` was not found on either GitHub remote; do not rewrite main history to chase it.

Read `AGENTS.md`, `docs/PRODUCT-ROADMAP-20261019.md` and `docs/SCREEN-JOURNEYS.md` — these replace the former 177-screen/820-item old product. Keep this one handoff as a status checkpoint; source, exact Git SHA, tests and provider verification are independently authoritative.

## Latest implementation checkpoint

Use the stable UX checklist in `docs/PRODUCT-ROADMAP-20261019.md#owner-ux-and-communication-repair-checklist` and inspect latest GitHub main before starting. **PR #423 merged** at `ba638f481e34fde07893ba224238c1f64b067246`: UX-P01/W01/N01 completed (canonical call-history portraits after cache hydration, Redeem/Add data then Request/Send, Activity-first Notifications with account reset). Local full Flutter **673 passed**; hosted Foundation and Mobile checks passed. No APK.

**Chats batch:** branch `fix/single-recent-masana-inbox` implements UX-C01/C02: removes the three filter chips and orders existing threads by confirmed message time, preserving archived history/unread/pin metadata. Thirteen focused tests pass. Check this branch's PR/CI/merge status before duplicating its work. UX-C03/C04 remain open for complete history/search integration and remaining journey/device coverage.

**Next P0 priority: UX-R01–R08.** Mobile still calls retired `/agent/twin/voice/quote` (observed 404); live-token 500s and recorded-note/text errors require separate diagnosis. Connect MB admission/reservation/settlement with original-operation recovery, never legacy Credits restoration or bypassed balances. `gb_wallet/usage.ts` and `adapters/storage/postgres/src/gb_wallet/reservations.ts` are existing foundations. Current mobile Gemini Live WebSocket connects directly to provider, so server-verifiable connected usage must be designed and qualified before charging. Neither UI batch claims audio recovery. Preserve approved voices and canonical identity.

Read the two linked audit documents for source/runtime evidence and OPay reference findings. Remaining unchecked UX IDs are the continuation queue. Fixed-IP hosting stays on hold; preserve historical finances and separate Masanawa-App. Older sections below are historical checkpoints, not current PR statuses.

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
