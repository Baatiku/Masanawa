# OPay finance/service adaptation coverage — 20 October 2026

**Status:** initial candidate register; reference set opay-decloned/, [consolidated OPay source guide](../AI-DEVELOPER-WALLET-IMPLEMENTATION-GUIDE.md). Static Smali/layout strings are discovery and design evidence, NOT settlement correctness, regulatory authority or evidence the decompiled feature actually works. Use the existing 11 source-linked OPay findings O1–O11 and tasks P6-W01–W11, P7-S01–S04, P8-X01–X06 in the canonical roadmap, rather than duplicating underlying Wallet/ledger systems.

## Owner exclusions — absolute, not merely deferred Phase 7C–D

**DO NOT PLAN OR BUILD:** merchant onboarding/business accounts, merchant POS/storefront/catalogue/merchant checkout, virtual or physical card issuance or management, card spending products, or the proposed Phase 7C–D speculative additional regulated credit/savings/lending products. These are recorded as EXCLUDED_OWNER rows in [the global register](FEATURE-REGISTER.csv) for audit only. **Individual-to-individual P2P seller offers** are not a merchant account; preserve the existing individual P2P escrow and authorized bill/provider flows, with all financial liabilities and reconciliation intact.

## Finance adaptation domain coverage

| Family | Candidate rows | Canonical integration |
|---|---:|---|
| Wallet account, balance, history and data | 20 | Phase 6 P6-W01–W11 |
| Person-to-person transfer, receive, QR, chat payments | 33 | Phase 6 P6-W01–W12 |
| Airtime/data/TV/electricity, provider selection and recovery | 28 | Phase 7 P7-S01–S04 |
| Device, biometric, PIN, transfer risk, verification | 25 | Phase 8 P8-X03–X06 |
| Transaction help, outage, disputed/pending receipts | 22 | Phase 8 P8-X09 |
| Search, saved recipients, repeated purchases, alerts | 14 | Phase 6 P6-W11 and Phase 7 service refinements |
| Explicit merchant/card/financial-product exclusions | 8 | EXCLUDED_OWNER — no implementation |

**Total:** 150 OPay candidate and excluded rows in FEATURE-REGISTER.csv. This is NOT a full Smali enumeration or 150 verified runtime OPay behaviors; every candidate requires source location confirmation, existing-code check, final status and acceptance test. We intentionally preserve old bank/customer transaction obligations while excluding new product categories.

## Source-linked reference behaviors already established in canonical roadmap

- Existing P6-W01 recipient lookup/name inquiry has merged source from PR #230. It still needs physical device/real provider qualification.
- O1 and O2: saved recipient and service-disruption presentation.
- O3: transaction receipts routed into support.
- O4: clipboard awareness with privacy and freshness.
- O5: refund UI does NOT itself establish refunded money.
- O6: SchemeDispatchActivity handling shows need for canonical allowlisted link/QR dispatch.
- O7: network diagnosis lifecycle, redacted bounded recovery.
- O8: biometric enrollment-change risk and device/session revocation.
- O9: clipboard freshness must never become covert background harvesting.
- O10: accurate utility recipient lookup and amount constraints.
- O11: duplicate-transfer warning plus backend idempotency and ledger settlement.

## Audit and enforcement

1. Inventory Smali classes/res/layout/widgets for Wallet/send/receive/billing/support/security independently; map discoveries to exact anchor in register, including related handlers. Exclude payment provider app internals or sensitive keys.
2. Compare against current Gateway financial services, PostgreSQL canonical ledger, mobile Wallet, provider readback and existing tests. Never claim financial activation from static UI or provider signatures.
3. Every financial requirement must specify risk/account authorization, exact quote/fees, idempotency, provider callback verification, timeout, receipt readback, refunds/reconciliation and regional availability. A chat payment card is only a request to review; no Room/chat content authorizes a debit.
4. Close only with SHA-bound client+backend+ledger/device/provider acceptance; individual user P2P history and existing legacy liabilities must survive.

## P2P is a first-class product, not a merchant capability

The owner requires the existing individual **MSNW P2P trading** implementation to be actively completed, not hidden as an incidental Wallet page. Audit existing `apps/mobile/lib/src/finance/msnw_p2p_screen.dart` and `services/gateway/src/p2p` before changing UI: real Buy/Sell/Orders/Updates chips, offer quoting, seller bank verification, escrow reserve/release/refund, original-request recovery, late payments and dispute evidence already exist. Rename the *P2P internal* Updates to Order Activity, preserving events, while the root old Status becomes **Updates** (a persistent human/Masana social feed). The individual seller public `/u/:handle` profile should conditionally show **server-derived P2P trust statistics** inspired by Binance but no merchant admission. [P2P profile final spec](../P2P-AND-PROFILE-FINAL-SPEC.md) and Phase 7 P7-P01–P10 govern. [Full screen audit](../COMPLETE-SCREEN-AND-JOURNEY-BLUEPRINT.md) covers how this integrates with Wallet/auth.
