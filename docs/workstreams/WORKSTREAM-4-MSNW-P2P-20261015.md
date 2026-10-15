# Workstream 4 — MSNW P2P marketplace and escrow

Date: 2026-10-15. Branch: `feat/msnw-p2p-escrow-20261015`.
Baseline: `1d6d47fbd8065aa0ba6ee4d2cd94a3cfc4d338f4`.
Status: **PARTIAL_IMPLEMENTATION**; P2P **must not** be advertised as funded, money-movable or provider-qualified until Workstream 1 supplies tested atomic MSNW custody/ledger authority.
This window owns P2P source only. Workstreams 1–3 remain with their independent owners. Legacy MSN/Cr/Credits are never a source of MSNW escrow.

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
