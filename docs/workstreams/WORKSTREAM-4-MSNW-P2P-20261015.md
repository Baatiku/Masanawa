# Workstream 4 — MSNW P2P marketplace and escrow

Date: 2026-10-15. Branch: `feat/msnw-p2p-escrow-20261015`.
Baseline: `1d6d47fbd8065aa0ba6ee4d2cd94a3cfc4d338f4`.
Status: **IMPLEMENTED_UNVERIFIED (source)** for canonical custody reservations/releases/refunds, private evidence, automatic escrow expiry, Wallet and notifications. **Real funded customer acceptance remains blocked by Workstream 1's qualified custody issuance and provider/chain finality.** Historical checklist below was the earlier baseline; latest authoritative statuses follow.
This window owns P2P source only. Workstreams 1–3 remain with their independent owners. Legacy MSN/Cr/Credits are never a source of MSNW escrow.

## Current owner checklist — authoritative 2026-10-15

| Requirement | Current status | Source and remaining dependency |
|---|---|---|
| Offers, pricing, limits, payment methods | **IMPLEMENTED_UNVERIFIED** | Paystack verified seller beneficiary, account holder KYC match, exact BigInt price/fee, offer management: `p2p/bank_methods.ts`, `service.ts`, mobile Sell. Provider live acceptance remains external. |
| Authenticated discovery, order creation, reservation and escrow | **IMPLEMENTED_UNVERIFIED** | Canonical `commerce.msnw_custody_accounts` available→reserved atomic transfer in `p2p/custody_escrow.ts` and `0128_msnw_p2p_custody.sql`. Real spendable funding still requires WS1 independently backed issuance. |
| Buyer instructions, payment claims, live order status | **IMPLEMENTED_UNVERIFIED** | Verified account instructions, 30-minute deadline, owner/order-scoped claims and status, Flutter My Orders. Buyer screenshot/claim **never** releases custody. |
| Authorized private evidence | **IMPLEMENTED_UNVERIFIED** | `p2p/evidence_storage.ts`, `ReplayObjectStore.putObject`, authenticated 2 MB media inspection, SHA-256, immutable reference, participant/admin 60-second links; Flutter attach/view; **requires dedicated configured private S3 bucket**. Does not verify buyer fiat receipt. |
| Release, cancellation, expiry, refunds, disputes, admin adjudication | **IMPLEMENTED_UNVERIFIED** | Seller explicit confirmation, role-fenced admin release/refund; shared canonical SQL refund `0129_msnw_p2p_expiry.sql`; Worker auto polls bounded SKIP LOCKED overdue unpaid reservations, fails safely without funded reserve. Actual fiat receipt still depends seller's independently confirmed bank state or authorized admin evidence review. |
| Fees, receipts, idempotency, ledger entries, recovery | **IMPLEMENTED_UNVERIFIED** | `0128_msnw_p2p_custody.sql` exact conservation/deferred stage posting assertions, platform fee liabilities, append-only journal/receipts, order idempotency and terminal fencing. Worker expiry and notifications retry. Requires real PG/provider qualification and reconciliation against WS1 issuance/chain supply. |
| Customer mobile screens and admin dispute screens | **IMPLEMENTED_UNVERIFIED** | Mobile Buy/Sell/My Orders/Updates, payment evidence/receipts, admin operator evidence review and resolution, repaired pre-existing malformed Dart Sell section. No APK claimed. |
| Wallet balances/activity/history/notifications | **IMPLEMENTED_UNVERIFIED** | Uses same canonical custody accounts as WS1 Send; authenticated P2P activity & inbox plus Worker FCM `notifications.p2p` outbox/Wallet deep link; no duplicate customer credit. Provider settlement/chain finality and live device notifications not qualified. |
| Forward-only migrations, tests, operational recovery | **IN PROGRESS** | New PG18 integration `adapters/storage/postgres/src/commerce/msnw-p2p.integration.test.ts`, Gateway/Worker Vitest, CI `.github/workflows/msnw-p2p.yml`. Source authored; CI runner has not supplied successful executable results. Financial records preserved. |

**Dependency boundary:** live funded escrow requires Workstream 1 to prove genuine MSNW custody-backed issuance, on-chain configuration and reconciliation. Neither Paystack account verification nor buyer receipt image supplies fiat settlement proof. Staff may resolve a dispute only after human verification; no automated fiat payment claim issues or releases MSNW.

## Complete owner checklist

| Requirement | Status | Implementation/dependency |
|---|---|---|
| 1. Customer offers, price, limits, payment methods | **IN PROGRESS** | `services/gateway/src/p2p/service.ts`, `routes.ts`, mobile `msnw_p2p_screen.dart`, `0123_msnw_p2p.sql`. Creates fixed-price seller offers, exact limits and verified-bank-method references; seller can close offers. **BLOCKED for first real seller** until server-side KYC/provider bank verification can populate trusted method records. No customer-submitted unverified bank details are accepted as verified. |
| 2. Authenticated offer discovery, orders, seller MSNW reservation/escrow | **IN PROGRESS** | Authenticated listing, idempotency keys, locked seller inventory, transactional reserve port. **BLOCKED for real orders** until Workstream 1 supplies canonical custody-backed MSNW reserve/release/refund (same database transaction and idempotent by order ID); current `main.ts` adapter deliberately returns HTTP 503 instead of touching historical MSN or issuing unbacked funds. |
| 3. Buyer instructions, payment claims, status | **DONE (source)** | Order-locked verified payment recipient reference, 30-minute deadline, buyer review/claim, polling detail and My Orders. Buyer claims never imply verified bank settlement. Source not production/provider tested. |
| 4. Authorized evidence handling; screenshot alone must not release | **IN PROGRESS** | Restricted evidence metadata and SHA-256 recorded only after trusted storage callback verifies object ownership. `recordEvidence` does not move MSNW. **BLOCKED** restricted object storage binding and verified receipt/bank-transfer authority. Manual screenshots cannot authorize settlement. |
| 5. Release, cancellation, expiry, refunds, disputes, admin resolution | **IN PROGRESS** | Locked state machine; buyer-only cancel before claim; claimed/disputed escrow frozen; seller receipt requires step-up callback; operator dispute adjudication is role-fenced; `expireDue` internal worker method. **BLOCKED** real financial adapter, seller confirmation authority, Worker scheduling/lease composition and provider evidence qualification. |
| 6. Fees, receipts, idempotency, ledger accounting and interrupted transaction recovery | **IN PROGRESS** | Exact BigInt price/fee math, atomic cross-transaction interface, idempotent order key, terminal state guard, balanced ledger delegated to canonical MSNW adapter, immutable order amount and append-only event/evidence tables, receipt references from wallet. **BLOCKED** canonical MSNW postings/history projection, reconciliation callbacks and worker scheduler. |
| 7. Customer P2P screens and admin disputes | **DONE (source)** | `apps/mobile/lib/src/finance/msnw_p2p_screen.dart`, `apps/mobile/lib/src/screens/wallet/wallet_screen.dart`, `apps/admin_mobile/lib/src/screens/p2p_disputes_page.dart`, `apps/admin_mobile/lib/src/screens/admin_shell.dart`. Loading/empty/error/retry, offer review, account fencing, order history, dispute file events/evidence and two-step admin confirmation. No compiled APK claimed. |
| 8. Canonical MSNW Wallet, balances, history and notifications | **IN PROGRESS** | Wallet P2P shortcut and P2P order list connected. **BLOCKED** Workstream 1 balance authority/ledger settlement and Workstream 3 notifications; no duplicate balance or fake receipts. |
| 9. Preserve money, migrations, integration and tests | **IN PROGRESS** | Forward-only SQL migration `packages/commerce/migrations/0123_msnw_p2p.sql`, no existing customer balance mutation, gateway dependency composition via shared app/main, Vitest source tests `services/gateway/src/p2p/service.test.ts`. Source merge and CI results must be recorded separately; no live production migration, device, provider or money-moving E2E work executed in this window. |

## Technical ownership and exact paths

P2P domain: `services/gateway/src/p2p/service.ts`, `routes.ts`, `service.test.ts`; `packages/commerce/migrations/0123_msnw_p2p.sql`; `apps/mobile/lib/src/finance/msnw_p2p_screen.dart`; `apps/admin_mobile/lib/src/screens/p2p_disputes_page.dart`.
Shared composition only: `services/gateway/src/app.ts`, `services/gateway/src/main.ts`, `apps/mobile/lib/src/screens/wallet/wallet_screen.dart`, `apps/admin_mobile/lib/src/screens/admin_shell.dart`. Reconcile all concurrent commits before merge; do not claim exclusive control of these shared paths.

Initial commits: schema `9a0c24ae`, engine `5e96ada4`, routes `2c6d3f69`, tests `391a7819`, mobile `7b218a65`, app/main wiring `d18692a8`/`2fa836b8`, Wallet wiring `686d428c`, admin `80a9fb7e`/`6e21822b`, case file `0b6979b6`. Later commit and PR/merged SHA are appended in final delivery notes.

## Next executable integration

1. Workstream 1 hands off an *actual* authenticated, custody-backed MSNW settlement adapter satisfying `MsnwEscrowAuthority` with same-transaction `reserve/release/refund`, seller available/reserved ledger, platform fee receipt, explicit identity checks and idempotency by `orderId`. Replace fail-closed stub in Gateway `main.ts` only after qualified source exists. Never reinterpret old MSN ledger.
2. Add trusted payment method verification and evidence object authorization using existing provider identity/storage contracts; seller step-up/bank receipt confirmation must confirm actual counterparty settlement, not a screenshot.
3. Compose `expireDue` via canonical Worker scheduler/leases and reconciliation, and associate status events/receipt IDs with Wallet transaction history and notifications.
4. Recheck source with `pnpm --filter @masanawa/gateway-service typecheck`, `pnpm --filter @masanawa/gateway-service exec vitest run src/p2p/service.test.ts`, `flutter analyze` in `apps/mobile` and `apps/admin_mobile`, then perform real multi-account PG/provider/device acceptance. Runner availability here not established. Do not treat source tests as live payment qualification.

**Customer behavior delivered now:** authenticated offer discovery, seller offer drafting/management (only with verified methods), authenticated order drafts, source implementation for transactional escrow, buyer payment claim, dispute initiation, operator case-file inspection, and a safe rejection when real MSNW authority is missing.
**Customer behavior not delivered yet:** actual funded escrow, successful payment-confirmed release/refund, seller method provisioning, provider confirmation, expiry job scheduling and notification/Wallet accounting integration.

## Follow-on milestone — verified seller bank onboarding

**Source implementation added:** `packages/commerce/migrations/0124_msnw_p2p_bank_verification.sql`, `services/gateway/src/p2p/bank_methods.ts`, `bank_methods.test.ts`, updated `service.ts` and `routes.ts`, Gateway `main.ts` composition, mobile `msnw_p2p_screen.dart`.

- Paystack-supported Nigerian banks list is fetched server-side.
- An authenticated seller grants explicit account-verification consent and supplies bank code/number. Paystack resolves the recipient name. The server compares **all** normalized legal-name tokens with the independent Paystack-verified identity from `commerce.msnw_paystack_customer_onboarding`; no customer-supplied account-holder name is accepted.
- A bank method is recorded with an immutable bank code, account number, verified beneficiary and verification reference. Duplicate active methods return their existing identity.
- Source tests cover consent, mismatch, matching and injection rejection; they were **authored but not run** in this connector-only development environment.
- **Still not payment confirmation:** matching a name verifies bank destination eligibility, not actual NGN transfer, screenshot provenance or final beneficiary controls. Escrow release still needs independent bank settlement confirmation and qualified canonical MSNW custody adapter.

**Checklist status changes:** item 1 seller method creation is now source-implemented subject to Paystack provider responses/KYC; items 2, 4–6 and 8 remain partial as described. Financial settlement/custody scope remains blocked, never simulated.

## Wallet activity follow-on

Source: `apps/mobile/lib/src/finance/msnw_p2p_activity.dart` and
`apps/mobile/lib/src/screens/wallet/wallet_screen.dart`. Wallet Recent Activity now reads authenticated persisted P2P orders and shows directional Buy/Sell labels, exact MSNW amount, transaction state and receipt reference (if settled). Account isolation is rechecked after the network response. This is **not** a substitute for canonical completed ledger activity; P2P open orders are not token balances.

## Seller-authorized release and expiry recovery source

Source: `services/gateway/src/p2p/seller_confirmation.ts`,
`seller_confirmation.test.ts`, `services/gateway/src/p2p/routes.ts`,
`apps/mobile/lib/src/finance/msnw_p2p_screen.dart` and
`apps/admin_mobile/lib/src/screens/p2p_disputes_page.dart`.

An authenticated seller must independently affirm **I HAVE RECEIVED PAYMENT**
for the persisted exact order and fiat amount before the release route calls
the canonical MSNW custody port. The mobile screen requires a second, typed
RECEIVED action, explicitly warning the seller not to rely on buyer screenshots.
An optional stronger financial step-up authority can only add checks, not
bypass the mandatory seller affirmation. Underlying token movement remains
**unavailable** without the custody-backed MSNW adapter. Seller affirmation
is the seller's declaration, not independent bank-provider settlement proof.

Added authorized operator manual batch expiry/recovery endpoint
`POST /v1/admin/msnw/p2p/expire`, using existing `expireDue` under locked
order state and atomic refund port. An admin action lets staff recover overdue,
unclaimed orders. Automatic Worker leases/scheduling and custody-backed
refunds are **still required** for full end-to-end completion; this endpoint
does not substitute for them. New source tests are authored but not executed.

## 2026-10-15 private payment evidence end-to-end source

- Private storage: existing SigV4 `ReplayObjectStore` extended with bounded server-side signed SHA-256 PUT; a dedicated P2P bucket is configured using `MASANAWA_P2P_EVIDENCE_S3_ENDPOINT`, `_REGION`, `_BUCKET`, `_ACCESS_KEY`, `_SECRET_KEY` (no public bucket or raw credentials in mobile).
- Gateway: `services/gateway/src/p2p/evidence_storage.ts` validates PDF/PNG/JPEG/WEBP magic, canonical base64 and 2MB maximum; checks membership and claim/dispute state; securely uploads a server-generated key, verifies digest and records an immutable evidence reference; deletes orphan storage if journal recording fails. `routes.ts` composes upload/list/authorized 60-second participant/admin links. Nobody can submit a client-chosen object key; evidence never authorizes escrow release.
- Mobile: `apps/mobile/lib/src/finance/msnw_p2p_screen.dart` now has the order-bound file picker, evidence list and signed download action. **Fixed a pre-existing source corruption:** the P2P screen had a second, duplicated Dart tail after its closing class and was not build-valid; trimmed the duplicate while retaining all current features.
- Admin: `apps/admin_mobile/lib/src/screens/p2p_disputes_page.dart` lets privileged dispute reviewers retrieve a private evidence URL for 60 seconds; raw S3 credentials/keys are not displayed.
- Tests written: `services/gateway/src/p2p/evidence_storage.test.ts` checks valid upload, MIME spoof rejection, orphan cleanup and authorized download; `.github/workflows/msnw-p2p.yml` runs Gateway P2P Vitest, TypeScript/build and PostgreSQL 18 migration in PR CI.
- **Status:** evidence upload/display source **implemented, execution pending CI**. To activate at runtime configure the dedicated private S3 bucket with server-only credentials and verified storage policy. Canonical reserve/release/refund and automatic Worker expiry still depend on actually backed MSNW custody; fiat claims/screenshots still must never release assets.

## Latest source increment — canonical custody escrow, Worker expiry and notifications

- Integrates directly with Workstream 1 `0127_msnw_custody_send.sql` and `msnw_custody_accounts`, not legacy MSN/Cr. Existing unfunded accounts begin at zero; P2P never seeds them. Corrects a malformed PL/pgSQL dollar-quote in WS1's new custody migration (otherwise unexecutable).
- P2P custody migration `0128_msnw_p2p_custody.sql` adds seller available→reserved journaling and stage-specific deferred double-entry constraints; on release credits buyer available minus seller reserved and records platform fee liability; release cannot happen twice. `services/gateway/src/p2p/custody_escrow.ts` wires reserve/release into the established P2P transaction.
- Shared PostgreSQL `commerce.msnw_p2p_refund_custody` in `0129_msnw_p2p_expiry.sql` is used by BOTH Gateway cancellations/disputes and automatic Worker expiry, preventing competing refund semantics. `commerce.msnw_p2p_expire_due_batch` locks overdue unpaid orders with SKIP LOCKED and atomically refunds/resets inventory, marks expired and emits immutable events. `services/worker/src/jobs/msnw/p2p_expiry.ts` runs every 20s through the existing scheduler.
- `0127_msnw_p2p_notifications.sql` inserts tenant/customer-specific transition history plus canonical leased `events.outbox` records in the same order transaction. `services/worker/src/jobs/msnw/p2p_notifications.ts` uses existing FCM sender, customer membership and retries, and mobile Wallet routes notifications to its P2P Updates tab.
- `adapters/storage/postgres/src/commerce/msnw-p2p.integration.test.ts` seeds **isolated test-only** MSNW balances, verifies exact reservation, replay fencing, seller acknowledgment (buyer cannot confirm), conserved release and fee liability, refund and automatic expiry with buyer/seller outbox. No production data is seeded and no real funding is claimed.
- User must qualify payment provider/live wallet mint custody, real PostgreSQL schema application, Android builds/devices and financial/FCM notifications before describing this as VERIFIED_E2E. Newly delivered source has not independently executed those external checks.


## 2026-10-16 source integration and CI checkpoint

- P2P implementation branch `feat/msnw-p2p-evidence-recovery-20261015`, PR [#45](https://github.com/Baatiku/Masanawa/pull/45). Reconciled latest WS1 chain-finality Worker, new Wallet Send Gateway composition and all concurrent main changes at main SHA `a37302f55373ae5c234124811b82089dadd5f9fd`, two-parent merge commit `ee618bab6853c158c84de9db71099288fac1d98f` prior to later source tightening.
- Hard syntax repair: `apps/mobile/lib/src/finance/msnw_p2p_screen.dart` contained duplicate generated Dart UI (removed) and damaged price regex (repaired; commit `c50eeece411675ec583b6b1321fdfaa17abeaf2d`). `0127_msnw_custody_send.sql` had malformed `AS $`/`$;` PL/pgSQL tags in the WS1 custody balance trigger; corrected with literal `$$` in `09b3ff2e838bb637ca2f479067364d646a3dddfa` so the canonical custody schema can migrate.
- P2P custody source: `services/gateway/src/p2p/custody_escrow.ts`, `services/gateway/src/p2p/service.ts`, `packages/commerce/migrations/0128_msnw_p2p_custody.sql`; removes fail-closed reserve/release/refund stub. Deducts existing genuine WS1 MSNW available account into reserved; credits buyer on independently authorized release; tracks fee liability and balances all stage postings; refund reuses the same locked PostgreSQL function for both Gateway and Worker. **Never seeds customer balances**, never credits Paystack fiat alone, never reads legacy MSN/Cr.
- Recovery source: `packages/commerce/migrations/0129_msnw_p2p_expiry.sql`, `services/worker/src/jobs/msnw/p2p_expiry.ts` and Worker composition. Bounded `FOR UPDATE SKIP LOCKED` auto-expiry and atomic custody refund with outbox, while buyer claims/disputes remain frozen.
- Notifications source: `packages/commerce/migrations/0127_msnw_p2p_notifications.sql`, `services/worker/src/jobs/msnw/p2p_notifications.ts`, `services/gateway/src/p2p/service.ts`, `routes.ts`, mobile P2P Updates tab, and `apps/mobile/lib/src/core/shell_deep_link.dart`. Uses existing canonical FCM sender/leased event outbox; inbox acknowledgment and actual delivery metadata post atomically with outbox acknowledgment. Unregistered devices do not fabricate delivery.
- Tests authored: `adapters/storage/postgres/src/commerce/msnw-p2p.integration.test.ts` (test-only starting MSNW fixture), `services/gateway/src/p2p/evidence_storage.test.ts`, `services/worker/src/jobs/msnw/p2p_notifications.test.ts`, `apps/mobile/test/p2p_deeplink_test.dart`. `.github/workflows/msnw-p2p.yml` checks Gateway/Worker Vitest and compilation and real PG18 P2P journey. Existing mobile workflow checks Flutter.
- **Actual CI result**: Pull-request head `ee618bab6853c158c84de9db71099288fac1d98f` queued P2P run `38885021974`, Mobile Build `38885021940`, Foundation `38885021987`; jobs each returned `completed/failure` but neither workflow steps nor logs were available (job log fetch returned GitHub BlobNotFound 404). Consequently **tests have NOT been demonstrated to pass**, and APK/provider/real-wallet acceptance has NOT been claimed.
- **Real external dependencies and residual tasks**: WS1 verified custody issuance/chain deployment/finality and reconciled available balances; private S3 evidence bucket configuration `MASANAWA_P2P_EVIDENCE_S3_*`; configured Firebase and connected registrations for pushes; live PostgreSQL migrations and two-account finance/provider acceptance. A buyer's claim, image or screenshot never authorizes release.

