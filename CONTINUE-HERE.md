# Continue Masanawa — current implementation handoff
**Reconciled:** 20 October 2026 · **Baseline:** `c944045e` · **Repository:** Baatiku/Masanawa.

Read [canonical tasks/status/release path](docs/PRODUCT-ROADMAP-20261019.md) → [screens/journeys](docs/SCREEN-JOURNEYS.md) → [contributor rules](AGENTS.md). Use the [wallet guide](docs/AI-DEVELOPER-WALLET-IMPLEMENTATION-GUIDE.md) and [communication benchmark](docs/WHATSAPP-UI-ARCHITECTURE-BENCHMARK.md) when implementing their mapped tasks. These are practical instructions; task status and release sequencing live only in the roadmap.

## Current source and next work
- Phase 4 foundation is merged; messaging/privacy/calls source is in open [#227](https://github.com/Baatiku/Masanawa/pull/227), head `24b0801d3da0245e55e9df973029ad4931b68e8f`. Integrator reconciles fresh main, repairs scoped failures and merges completed source. Real handset/provider acceptance is separate. Do not restart contacts or claim full Phase 4 delivery.
- Phase 5 is being implemented in local `feat/phase5-rooms-creators-20261020`, no published PR yet: canonical Room community/membership/media/mentions, worker checks, account-fenced mobile and creator media/revisions. Preserve unfinished P5-C earnings producer, actual Status cadence and qualified optional voice work until implemented/explicitly dispositioned. No source completion inferred from partial tests.
- Wallet [#230](https://github.com/Baatiku/Masanawa/pull/230) is merged via `ab15bf7b88ec4c45b27c60c8b14e99d67d78b7e2`. Reuse assigned account numbers, lookup, badge and Send authority; continue P6-W01 verification and W02–W11.
- Roadmap [#231](https://github.com/Baatiku/Masanawa/pull/231) is merged via `b957161fa7bbcb1e5f2a01c516883570a000456c`. Preserve W/S/X task additions when reconciling older branches.
- Memory [#228](https://github.com/Baatiku/Masanawa/pull/228) remains open at `97bfa5e59a09d0b424bcd034236e6e94de38fcda`; one integrator reconciles shared router/composition/migrations, without granting financial authority to memory.

## Execution and ownership
Finish Phase 4 → Phase 5 → remaining Wallet/services → initial-release shared polish and P8-APK01–05. Independent scoped work can proceed concurrently; one integrator owns shared router, app/main, migration composition and financial authority. Keep five tabs Chats / Status / Wallet / Calls / Rooms, Chats default; one canonical MSNW ledger; preserve historical liabilities. First lifetime creator publication free, additional publication default 5,000 MSNW quoted/authorized/captured once. Bodi male/Fora female supported voices; cloning only when qualified.

## Keep moving with honest evidence
Use the roadmap forward-progress policy: inspect failures, bounded repair and practical fallback, record unresolved checks with task/SHA/reason/owner/next action, then continue independent implementation. No unavailable SDK/device/provider can stall unrelated source. Never convert skipped checks to passes or activate a known unsafe capability. Run available Node/PostgreSQL/Flutter/Android checks; source integration, APK build and production acceptance are separate states.

## Release target
Produce the signed APK, checksum, expected certificate, version, source SHA and provenance using existing CI. Owner/device operator validates the installed candidate; backend operator validates matching deployment/migrations/backup/recovery and enabled providers. Record evidence in the canonical roadmap; no production-ready claim from compilation alone. Preserve database volumes, keys, receipts and rollback obligations.
