# OPay reference audit — source patterns for Masanawa Wallet and P2P

**Purpose:** A source-discovery guide to the checked-in `opay-decloned/` reference. **NOT a competing product roadmap, Wallet architecture, security policy, screen specification or verified OPay runtime behavior.** For all current product decisions follow [the canonical roadmap](PRODUCT-ROADMAP-20261019.md), [application screen blueprint](COMPLETE-SCREEN-AND-JOURNEY-BLUEPRINT.md), [individual P2P/trader profile design](P2P-AND-PROFILE-FINAL-SPEC.md) and [screen journeys](SCREEN-JOURNEYS.md). Reference candidate IDs and source-evidence statuses belong in [FEATURE-REGISTER.csv](reference-audit/FEATURE-REGISTER.csv).

**Owner decisions, 20 October 2026:** Chats · **Updates** · Wallet · Calls · Rooms (Chats default). Updates is a persistent Facebook-style human/Masana scrolling feed with paid human publication, **not** WhatsApp 24-hour Status. Individual P2P remains important. **No merchant enrollment/storefront/POS/checkout, card products or Phase 7C–D merchant-financial expansions.** Use original accessible Masanawa identity and assets, not WhatsApp/OPay copyrighted designs. Never use a second Ledger, database identity store or fake fiat/MSNW rate.

## Reference file map and source-confidence rules

`opay-decloned/` is a historical decoded APK sample, not a trusted implementation. Source paths/classes/resources suggest features but **do not prove** that the feature behaves, is enabled, is correct or is licensed to copy. Confirm every class, XML attribute, user action and backend/Smali call chain before marking a reference `SOURCE_CONFIRMED`. Keep exact path, sample version, inspected commit SHA and technical evidence in the canonical register. No sensitive bundled APK keys or external user data should enter reports.

| Discovery topic | Reference class/resource leads | Accepted Masanawa pattern | Roadmap owner |
|---|---|---|---|
| Wallet balance/privacy | `res/layout/omain_fragment_new_pay.xml`, `layout_total_assets.xml`, wallet Smali classes | Display authoritative available/reserved balance, last refresh and balance-eye toggle; do not invent a fiat conversion | P6-W, WALLET-01 |
| Recipient name inquiry | `OpayBankTransferActivityV3.smali`, `BankAccountInputText.smali`, `activity_choose_bank.xml` | Resolve a complete 10-digit Masanawa account/@handle via actual Gateway authority, invalidate after edits, preserve recipient privacy | P6-W01, W05 |
| Duplicate transfer safeguard | `res/layout/dialog_transfer_repeat_tips.xml` | Real server journal/idempotency, prior operation info and explicit intentional-repeat approval. OPay's local visual warning alone does NOT prove a 5-minute backend policy | P6-W04 |
| Clipboard UX | `ClipboardAutoReader.smali`, `TransferClipboardParser.smali`, `activity_access_to_clipboard.xml` | **Explicit Paste by default**, opt-in/freshness and no global/background harvest | P6-W03, W09, P8-X |
| Payment review/keypad | `res/layout/pay_activity_cashier.xml`, `cashier_layout_pin_keyboard_view.xml`, `PinAppLockActivity.smali`, biometric references | Exact user-approved amount, fee, recipient and transaction-specific device/server step-up; a keypad is NOT payment security by itself | P6-W02, P8-X03 |
| Request money | `res/layout/activity_request_money.xml`, `activity_recent_request.xml` | Authenticated, expiring, one-purpose request card from Chat/Rooms -> user Wallet review -> authoritative receipt, never automatic debit | P6-W12 |
| Bill services | `res/layout/fragment_airtime_data_topup.xml`, `ConfirmInfomationListDialog.smali`, `activity_kyc_level.xml` | Provider-qualified service/recipient verification, exact quote, ported-number caveat, no global KYC tier claims | P7-S01–S04, P8-X04 |
| QR and routes | `CommonQRScanActivity.smali`, `MyQRCodeActivity.smali`, `SchemeDispatchActivity.smali` | Allowlisted personal receive QR and canonical deep-link dispatcher; no arbitrary merchant acceptance or execute-from-QR | P6-W05, P8-X01 |
| Poor connectivity | `res/layout/activity_no_net.xml`, network diagnostics strings | Offline banners, bounded retry, cached read-only history, unknown outcome recovery, provider outage explanation | P6-W08, P8-X02 |
| Support and case routing | `res/layout/activity_ocustomer_service_home.xml`, transaction help UI | Receipt-linked help, actual support case with cross-account checks and real reconciliation status | P6-W10, P8-X09 |
| Security and risk | `BiometricSaveActivity.smali`, `res/layout/activity_kyc_level.xml`, device/risk classes | Device/session revocation, biometric enrollment-change safeguards, actual provider jurisdiction checks; no fictional merchant tier or universal transfer limits | P8-X03–X06 |
| Refund/late outcome | Transaction state Smali, `res/layout/dialog_transfer_repeat_tips.xml` | Never label an order refunded/settled solely from a UI, screenshot or "I have paid" flag; custody journal readback controls claims | P7-P08, P8-X09 |

### Wallet scope

Preserve the real Masanawa MSNW account-number/name inquiry and merged source from PR #230; current source routes and the canonical ledger in `services/gateway/src/msn_wallet/`, account/session authority in `services/gateway/src/customer_auth.ts`, and existing mobile screens under `apps/mobile/lib/src/finance/`. For **internal user-to-user transfer**, quote amount/fee, review recipient, authorize exactly and read back a single ledger receipt. Crypto rails operate only where qualified, not because a token symbol exists in reference UI. For **individual buy/sell P2P escrow**, preserve the separate real order lifecycle in `services/gateway/src/p2p/` and `apps/mobile/lib/src/finance/msnw_p2p_screen.dart`; bank payment is external and a buyer's paid flag is not settlement proof.

### Useful cross-app techniques

- A single allowlisted route/push/QR entrypoint shared by Chats, Updates posts, Rooms, Wallet and P2P; reauthorize under current user and never auto-authorize spending.
- Recover a prior transaction by the **same idempotency key** after a timeout or app restart; no optimistic transfer completion.
- Exact support/receipt context tied to canonical IDs with redacted sharing, not guessed success messages.
- Explicit, interruptible provider-offline and connection states. No hidden background clipboard polling or duplicate socket protocol unless actual architecture requires it.
- Authenticated server-derived customer/trader identity and service eligibility with an honest Unknown/Pending presentation.

## Reference research, test and documentation process

1. Read the current `AGENTS.md` and [roadmap](PRODUCT-ROADMAP-20261019.md), including owner exclusions; do not copy this study's old candidate behavior blindly.
2. Inspect actual OPay XML/Smali only as evidence of *possible* flows; pair with current public official documentation if availability/law/provider changes matter.
3. Compare against existing actual Flutter/Gateway/PostgreSQL code and tests on a pinned commit, then enter a row status in [the reference register](reference-audit/FEATURE-REGISTER.csv).
4. Design complete screen/error/accessibility journeys within the [screen contract](SCREEN-JOURNEYS.md), not inside another parallel implementation roadmap.
5. Require real account, exact quote/review, purpose-bound authorization, server idempotency, provider callback, immutable receipt/reversal and actual device/provider evidence before calling any financial behavior shipped.
6. Reject merchant/card, unsupported KYC/limits, auto-harvesting clipboard, pre-approved generic MSNW/fiat pegs and OPay-exclusive graphical assets.

**Related documentation:** [OPay feature coverage](reference-audit/OPAY-COVERAGE.md), [global acceptance matrix](reference-audit/ACCEPTANCE-MATRIX.md), [individual trader profile](P2P-AND-PROFILE-FINAL-SPEC.md), [WhatsApp feature coverage](reference-audit/WHATSAPP-COVERAGE.md). Technical finance authority remains the real service/ledger and [security contract](SECURITY-AUTHORITY.md). No additional Phase 7C–D or separate Wallet roadmap.
