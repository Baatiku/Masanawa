# P2P-01–18: implementation handoff — 2026-10-18

**Status: IMPLEMENTED_UNVERIFIED — owner-authorized merge despite unavailable test runners.** This is code delivery, not user/handset/provider acceptance. Source branch: `feat/p2p-chat-style-recovery-20261018`; PR #183 against `main`. Original branch baseline `20159f616fdfcb962c0308a8ebe6444d55e04a2c`. Obtain **fresh PR head SHA** before executing or merging. Canonical requirements remain in `docs/workstreams/UI-MUI-07-wallet.md`. Do not convert their 18 open checkbox rows to DONE without actual tests and visual review.

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

## Continuation after initial handoff — source checks and extra regression coverage

- Added `services/gateway/src/p2p/read_journeys.pglite.test.ts`: executes the actual P2P SQL on disposable embedded PostgreSQL for exact fiat/fee, funded offer visibility, buyer-versus-seller restrictions, cross-tenant isolation, tied-timestamp seek pagination, owned-offer and notification isolation. **Authored, not executed.**
- Added `apps/mobile/test/p2p_amount_bounds_test.dart`: invalid minimum/maximum, six-decimal precision, 320px/200%-text layout. **Authored, not executed.**
- The account-switch `Scaffold` constructor in `msnw_p2p_screen.dart` had an unmatched closing parenthesis; repaired at source commit `df50f9e13a6871b299697b7311248f4f66010cb4`. A local delimiter scan subsequently found no unmatched (), [] or {} in the current mobile and Gateway files. **This is not a Flutter compiler or runtime result.**
- Public paginated offers no longer return unverified internal seller account IDs; the new SQL regression asserts this privacy property.
- The order-progress stepper now labels its first stage as **Buyer reports** rather than implying buyer-reported payment was verified by the seller or bank.
- Latest source changes must be evaluated at the **actual PR head**; the commits above are intermediate checkpoints, not a pinned final integration SHA.
- The current GitHub Actions P2P run (`39107166261`) completed with a failed allocation and no executed steps. Its job had no step data; attempting to fetch logs returned 404 BlobNotFound. Do not call these test failures or passes.

### Additional execution commands

```bash
cd services/gateway
pnpm exec vitest run src/p2p/read_journeys.pglite.test.ts src/p2p/service.test.ts src/p2p/order_read_clock.test.ts src/p2p/evidence_storage.test.ts
cd ../../apps/mobile
flutter analyze lib/src/finance/msnw_p2p_screen.dart lib/src/finance/p2p_order_presentation.dart
flutter test test/p2p_amount_bounds_test.dart test/p2p_marketplace_journeys_test.dart test/p2p_order_presentation_test.dart test/wallet_redesign_journeys_test.dart
```

## Execution/merge evidence

GitHub Actions on the first PR #183 head failed before job steps (no actual test result; runner allocation unavailable). The assistant environment used for this PR lacks Flutter/Dart and GitHub network access from its container, so no local toolchain run, rendered UI acceptance, or E2E claim is possible here. Earlier malformed source was repaired in commit `83ab1aa`; that repair was not a compiler run. The owner explicitly authorized integrating source despite unavailable runners on 2026-10-18; do not represent this as compiled, tested, qualified, or deployed. Missing runner is not a failing assertion; also not a passing test.

**Next acceptance step:** after the owner-authorized development merge, run the commands above against integrated main, fix any compiler or regression failures, and perform rendered phone-size/device/provider acceptance. This acceptance does not block the owner's requested source integration. Final device/provider acceptance remains a separate release gate.

## Customer security invariants

- MSNW is the only customer-facing wallet credit; legacy MSN/Credits remain separate historical obligations.
- The buyer's claim, screenshot and evidence upload do not release escrow.
- Seller confirmation and operator privileges remain backend-authoritative.
- No finance action uses device countdown, local prices or local capacity as settlement authority.
- Missing/uncertain operations retain their original owner-scoped request identity; do not fabricate receipts or balances.
- Actual custody, bank settlement, reconciliation and authorized release must be independently verified.


## 2026-10-18 owner integration decision

The owner explicitly requested: **merge the implementation now**, leaving unexecuted test and handset checks for subsequent review. GitHub Actions jobs for this milestone failed before executing tests; code must remain designated **IMPLEMENTED_UNVERIFIED** after merge. No APK, customer custody validation, bank/provider confirmation, or signed handset qualification has been demonstrated by the merge. Carry these checks to the next work window without relabeling them as passed. Preserve financial safeguards, tenant fencing, prior financial records and original request identities.
