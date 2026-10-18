# P2P-01–18: implementation handoff — 2026-10-18

**Status: IMPLEMENTED_UNVERIFIED / PARTIAL_IMPLEMENTATION.** This is code delivery, not user/handset/provider acceptance. Source branch: `feat/p2p-chat-style-recovery-20261018`; PR #183 against `main`. Original branch baseline `20159f616fdfcb962c0308a8ebe6444d55e04a2c`. Obtain **fresh PR head SHA** before executing or merging. Canonical requirements remain in `docs/workstreams/UI-MUI-07-wallet.md`. Do not convert their 18 open checkbox rows to DONE without actual tests and visual review.

## Source coverage, with honest acceptance state

| ID | Current source work | Still required to close |
|---|---|---|
| P2P-01 | Neutral compact cards/chips, inherited Masanawa theme, section hierarchy | Compare actual 320/360px renders against the Chats design language |
| P2P-02 | Buy/Sell/Orders/Updates pills, proper dedicated full pages, in-process tab/filter memory | Validate Back, deep links and surviving navigation on device |
| P2P-03 | Funded-capacity offer rows with rate/bank/ranges and Buy tap | Public counterparty identity requires verified, privacy-approved server data; never invent badges/ratings |
| P2P-04 | Offer details opened on row tap, separate explicit Close action and active/paused/closed labeling | Verify stale balance/capacity and double-tap cases |
| P2P-05 | Chat-like buyer/seller order cards with exact amount, NGN, friendly status and local date; server filter | Verify large history, statuses and alignment on handset |
| P2P-06 | Dedicated input with retained draft/limits/bank; GET server quote; exact terms and review | Verify input keyboard/validation and changed terms through full gateway |
| P2P-07 | Verified receiving bank selection, owner name, capacity-backed offer form, review and draft; legacy step-up preserved | Live provider identity/name mismatch and available-balance tests |
| P2P-08 | Prominent role/amount/status summary, compact stages, bound bank, server deadline; inactive payment details hidden | Full per-state UI render/acceptance |
| P2P-09 | Exact payment total, account/name/amount copy, status only after explicit claimed payment | Screen reader, transfer and no-copy-means-paid test |
| P2P-10 | Dedicated seller release review, exact order/fiat, type RECEIVED, duplicated-action disabled; existing server authority retained | Seller confirmation and 401/403/409/timeout/release negative tests |
| P2P-11 | Validated retained dispute/late-payment reason, support case state/reference copied | Full existing-case, dispute/freeze/late-refund acceptance; compare on device |
| P2P-12 | Private validated evidence, friendly file-type/size/date, upload indicator/denied errors, owner-scoped signed links | Device permission, expired signed URL, app lifecycle and actual file preview |
| P2P-13 | Original-order-linked read-only updates, receipt hierarchy, copy/native share | Real receipt data/net field qualification and native share test |
| P2P-14 | Loading skeletons, per-tab empty state, stale cached results, errors/retry, account-fenced data | Offline/resume and denial acceptance on handset |
| P2P-15 | Secure pending BUY/SELL request identity, original scoped lookup, retry same key; action failure re-read and disabled duplicate taps | Backend integration, concurrent replay, process kill/resume and network-loss qualification |
| P2P-16 | Exact read-only quote, changed-rate/fee guard under order lock, same server payment window for review/deadline; canonical escrow unchanged | DB/provider capacity/race tests and full customer authorization proof |
| P2P-17 | Seek pagination for offers, own offers, orders and updates; orders Active/Finished/All | Cursor continuity and long-scroll tests against database |
| P2P-18 | Keyboard choices, wrapping cards, accessible loading/error/copy labels; narrow/200%-font Flutter tests authored | **Tests not executed**, 320/360px screenshot review, Android TalkBack/RTL/dark/offline qualification |

## Exact changed implementation paths

- `apps/mobile/lib/src/finance/msnw_p2p_screen.dart` — marketplace, buy/sell/identity/orders/disputes/evidence/receipts.
- `apps/mobile/lib/src/finance/p2p_order_presentation.dart` — timer and status semantics, safe bank/payment copying.
- `apps/mobile/test/p2p_marketplace_journeys_test.dart` — widget regression scenarios (not yet run).
- `services/gateway/src/p2p/service.ts` and `routes.ts` — owner-scoped quote, replay recovery, capacity, seek pagination, stable seller offer creation.
- `services/gateway/src/p2p/evidence_storage.ts` — private, validated media metadata.
- `services/gateway/src/p2p/service.test.ts` and `evidence_storage.test.ts` — unit scenarios (not yet run).

No production database write, migration, provider payout, escrow release, APK build, or deployment was executed by this branch.

## Executable checks to run on exact PR SHA

```bash
cd services/gateway
pnpm exec vitest run src/p2p/service.test.ts src/p2p/order_read_clock.test.ts src/p2p/evidence_storage.test.ts
cd ../../apps/mobile
flutter analyze lib/src/finance/msnw_p2p_screen.dart lib/src/finance/p2p_order_presentation.dart
flutter test test/p2p_marketplace_journeys_test.dart test/p2p_order_presentation_test.dart test/wallet_redesign_journeys_test.dart
```

Also perform actual PostgreSQL-backed concurrency and tenant-fencing checks against a disposable test database, Android 320/360px and 200% font tests, denial/offline/back/resume journeys, active/disputed/terminal order review, native file permissions and share, and live escrow/provider reconciliation **before** production activation. Do not run financial tests against production customer balances.

## Execution/merge evidence

GitHub Actions on the first PR #183 head failed before job steps (no actual test result; runner allocation unavailable). The assistant environment used for this PR lacks Flutter/Dart and GitHub network access from its container, so no local toolchain run, rendered UI acceptance, or E2E claim is possible here. Earlier malformed source was repaired in commit `83ab1aa`; that repair was not a compiler run. Leave PR as draft until an actual compiler/test executor examines the final head. Missing runner is not a failing assertion; also not a passing test.

**Next exact step:** checkout the latest PR #183 head, run the commands above, address compiler or regression failures, inspect the full PR diff against updated main and current workstream claims, then merge only after a qualified review. Final device/provider acceptance remains a separate release gate.

## Customer security invariants

- MSNW is the only customer-facing wallet credit; legacy MSN/Credits remain separate historical obligations.
- The buyer's claim, screenshot and evidence upload do not release escrow.
- Seller confirmation and operator privileges remain backend-authoritative.
- No finance action uses device countdown, local prices or local capacity as settlement authority.
- Missing/uncertain operations retain their original owner-scoped request identity; do not fabricate receipts or balances.
- Actual custody, bank settlement, reconciliation and authorized release must be independently verified.
