# Masanawa Platform Enhancement & OPay Reverse-Engineering Guide

## Current Wallet implementation contract — 21 October 2026

**Owner direction:** one multi-asset Masanawa Wallet. Users hold supported MSNW/USDT/USDC/BTC/ETH/SOL independently, deposit more, **Send internally** to another Masanawa account without blockchain movement, and **Withdraw externally** to a supported network/address. MSNW is the platform asset, not the denomination of all balances; no compulsory conversion through MSNW. Multi-asset custody is required scope, not an optional future exchange add-on.

The exact page tree, portfolio math, network/asset identity, state handling and P2P effects are canonical in [SCREEN-JOURNEYS WLT01–WLT10](SCREEN-JOURNEYS.md#multi-asset-wallet-contract--owner-clarification-21-october-2026). Task status and delivery batches live only in [roadmap W01–W15 and P7-P01–P04](PRODUCT-ROADMAP-20261019.md). Implement these together; reference patterns do not override the owner’s product direction or financial controls.

- **Portfolio:** estimated total in selected display currency (NGN by default for initial Nigeria onboarding), as-of/coverage, exact per-asset holdings and available/reserved. Exclude uncredited incoming funds; reserved ownership counted once. Mark partial/unpriced/stale explicitly. Inventory comes from authoritative holdings, not enabled deposit routes. MSNW reference is owner-fixed **1 MSNW = ₦1**, policy `msnw-ngn-1-v1`; no USD stablecoin parity assumed.
- **Navigation:** Deposit / Send / Withdraw / Swap primary; P2P / Bills / Activity secondary. One asset-detail pattern and shared asset/network pickers, review, server approval, result and receipts. No separate MSNW/crypto wallet homes or Funding/Trading balances.
- **Deposit:** asset → receive from Masanawa account/QR, eligible blockchain network/address-or-invoice, or qualified local payment purchase. Show memo/tag/minimum/expiry/confirmation requirements before payment. Reuse provider invoice contracts honestly; credit once only on verified settlement. P2P purchase is a link to the same marketplace with asset preselected.
- **Send:** supported held asset → account/@handle/QR → recipient inquiry → amount/fee review → exact server approval → internal custody debit/credit. No blockchain gas or required network choice for a fungible internal custody asset. Current MSNW implementation is the starting authority, not proof of other asset support.
- **Withdraw:** held asset → eligible network/address/memo → amount/Max/fee/net quote → approval → reserve → submission/readback → receipt. No forced conversion to/from MSNW. One original request across unknown outcomes.
- **Swap:** owned asset A → eligible B → executable quote → approval → held asset B. Existing MSNW-to-crypto external payout is conversion-and-withdrawal, not general in-Wallet Swap; reuse its adapter without duplicating screens or pretending capability.
- **P2P:** Buy/Sell/Orders marketplace, distinct from internal Send. Seller escrow is reserved from the same Wallet; buyer is credited on authoritative release. Cancellation/refund returns eligible seller reserves; fiat is counterparty payment, not an in-app fiat balance or direct platform payout. Current MSNW-only escrow needs qualified adapters before other assets are enabled.

## For AI Developers & Core Contributors

**Document ID:** `GUIDE-AI-DEV-OPAY-INTEGRATION-20261020`
**Purpose:** Comprehensive, open-ended architectural guide pointing directly to the decompiled OPay reference source code (`opay-decloned/`) to benchmark, compare, contrast, and adapt industry-leading mobile UX and infrastructure patterns across Masanawa.
**Design System Standard:** Clean Green/White WhatsApp Aesthetic (`#075E54`, `#00A884`, `#FFFFFF`, `#E9EDEF`, dark text `#111B21`, 48dp targets).
**Root Navigation:** Exactly 5 tabs: **Chats · Status · Wallet · Calls · Rooms** (Chats default).

**Execution authority:** Use this guide during P6-W01–W15, P7-S01–S07 and P8-X/U work in the [canonical roadmap](PRODUCT-ROADMAP-20261019.md). Its current task decisions resolve approximate paths or reference descriptions here. Observe and adapt actual reference artifacts; do not infer backend guarantees from resource names. Continue independent implementation when checks are unavailable, using the roadmap unresolved-check policy.

---

## 1. Context & Mandate for the AI Developer

You have deep context on the Masanawa codebase, its architecture, and its roadmap. Your mandate is **NOT** to blindly copy code or follow a narrow checklist, but to:
1. **Explore and Analyze:** Inspect the pruned reference codebase in [`opay-decloned/`](../opay-decloned/README.md).
2. **Compare & Contrast:** Benchmark OPay's real-world solutions for emerging markets (low data, poor networks, fraud prevention, instant settlement) against Masanawa's existing implementations.
3. **Identify Missed Gems:** Look beyond the wallet. Identify *any* mechanism, UX pattern, caching trick, or resilience layer in OPay that can improve Masanawa across **Chats, Calls, Rooms, Status, Settings, Security, and Wallet**.
4. **Adapt to Masanawa’s Identity:** Translate OPay’s high-conversion simplicity into Masanawa’s WhatsApp-style green/white interface, internal P2P token economy (**MSNW** & crypto), and international privacy standards.

---

## 2. Where the Reference Code Lives: `opay-decloned/` Map

The pruned OPay Android app (Target SDK 35 / Android 15) is committed directly in `opay-decloned/`. Below is your cross-reference map:

| Masanawa Domain / Target Area | OPay Reference Path (`opay-decloned/`) | Key Files & Layouts to Study |
| :--- | :--- | :--- |
| **Wallet Home & Balance Sync** | `smali_classes6/team/opay/pay/wallet/`<br/>`res/layout/omain_fragment_new_pay.xml` | `HomeSavingDetailsActivity.smali`<br/>`layout_total_assets.xml`<br/>Eye balance visibility toggle, real-time push invalidation |
| **Transfer Flow & Name Inquiry** | `smali_classes6/team/opay/pay/home/tabs/ac/`<br/>`res/layout/activity_choose_bank.xml` | `OpayBankTransferActivityV3.smali`<br/>`BankAccountInputText.smali`<br/>Instant recipient lookup on typing, name inquiry card |
| **Smart Clipboard Auto-Reader** | `smali_classes6/team/opay/pay/home/clipboard/`<br/>`res/layout/dialog_home_clipboard_*.xml` | `../ClipboardAutoReader.smali`<br/>`TransferClipboardParser.smali`<br/>`ACHomeClipboardDialog.smali`<br/>Regex extraction of IDs/numbers, contextual prompt dialog |
| **Duplicate Transfer Protection** | `res/layout/dialog_transfer_repeat_tips.xml` | Strings: `osdk_repeate_transfer`, `osdk_recharge_again_reminder`<br/>Repeat-transfer warning resources; implement Masanawa’s five-minute requirement under P6-W04 |
| **Cashier & Checkout Sheet** | `smali/cashier/`<br/>`res/layout/pay_activity_cashier.xml` | `CashierActivity.smali`<br/>`QuickPayActivity.smali`<br/>`CashierDelegate.smali`<br/>Modal checkout bottom sheet, fee summary |
| **In-App Keypad & Security** | `res/layout/cashier_layout_pin_keyboard_view.xml`<br/>`smali_classes6/team/opay/pay/pin/` | `PinAppLockActivity.smali`<br/>`BiometricSaveActivity.smali`<br/>In-app 3x4 numeric grid, biometric shortcut, weak PIN rules |
| **Airtime & Utility Bills** | `smali_classes6/team/opay/pay/payment/`<br/>`res/layout/fragment_airtime_data_topup.xml` | `AirtimeTopUpActivity.smali`<br/>`ConfirmInfomationListDialog.smali`<br/>Telco prefix auto-detection, denomination chips, 2-step verification |
| **QR Code Scanner & Generator** | `smali_classes2/team/opay/qrcode/`<br/>`smali_classes5/team/opay/opb/qrcode/` | `CommonQRScanActivity.smali`<br/>`MyQRCodeActivity.smali`<br/>`QRCodeEMVQRProtocolParserActivity.smali`<br/>High-contrast QR generation, camera scanner integration |
| **Deep Link Scheme Dispatcher** | `smali_classes6/team/opay/pay/home/scheme/`<br/>`AndroidManifest.xml` (metadata: `scheme_prefix`) | `SchemeDispatchActivity.smali`<br/>`otravel://schemedispatcher?action=...`<br/>URI router mapping push/web links to nested screens/modals |
| **Real-time Push & Connection** | `AndroidManifest.xml` (meta-data: `mqttHost`) | `tcp://message-platform.opayweb.com`<br/>Real-time socket events for balance invalidation & transaction alerts |
| **Device Security & Risk Control** | `smali_classes2/team/opay/risk/`<br/>`smali_classes6/team/opay/pay/sensesecurity/` | `RiskHeaderInterceptor.smali`<br/>Inspect actual device headers; evaluate binding/overlay defenses under P8-X03, without assuming they exist from this symbol |
| **UI Copy, Colors & Typography** | `res/values/strings.xml`<br/>`res/values/colors.xml`<br/>`res/values/styles.xml` | Master list of all user prompts, errors, micro-copy, and styling |

---

## 3. Platform-Wide Opportunities (Beyond the Wallet)

While researching `opay-decloned/`, look for cross-platform mechanisms that can elevate Masanawa:

### 1. Unified Deep Link Dispatcher (`SchemeDispatchActivity`)
- **OPay Pattern:** OPay uses a centralized deep-link URI dispatcher (`otravel://schemedispatcher?action=<target>&params=...`). Every push notification, marketing banner, SMS, or external link resolves through a single intent filter that decodes routing payloads; Masanawa must independently enforce authentication, authorization and allowlists.
- **Masanawa Opportunity:** Use this pattern in Flutter (`go_router` or custom URI handler) to ensure that in-chat links, push notifications, and payment requests deep-link straight to the exact chat, Room, Status post, or Send Money sheet seamlessly.

### 2. Smart Clipboard Integration Across the Entire App
- **OPay Pattern:** `ClipboardAutoReader` does not just read bank numbers; it is integrated across onboarding (`OnboardingViewModel$readClipboardPhone`), payment links, and recharge numbers.
- **Masanawa Opportunity:**
  - In Chats: Offer an explicit Paste action; recognize a complete 10-digit Masanawa ID and open the same internal Send review. Never read clipboard in the background.
  - In Registration/Login: Offer user-triggered Paste for a phone number or invitation code, validate it and allow correction; no background clipboard collection.

### 3. QR Code Subsystem (`team.opay.qrcode`)
- **OPay Pattern:** Supports both scanning merchant/user QRs and generating static/dynamic personal QR codes (`MyQRCodeActivity`).
- **Masanawa Opportunity:** Every Masanawa user has a 10-digit ID and public handle. Unify Profile QR (for adding friends) and Wallet QR (for receiving MSNW/crypto) into a single versatile Masanawa QR card that can be scanned from the chat screen or wallet screen.

### 4. Background Resilience & Connection State Handling
- **OPay Pattern:** Notice strings like `[osdk_result_net_tip]`, `[pay_net_error_label]`: OPay treats poor network as a normal state rather than an unexpected exception. It displays informative inline recovery banners, cached balances, and explicit retry buttons without locking the user out.
- **Masanawa Opportunity:** Ensure Masanawa's Chat and Wallet tabs handle spotty cellular connections gracefully—optimistic messaging UI, clear pending ticks and deduplicated retries. Financial balances change only after authoritative settlement/readback; cached balances are labelled with verification time.

---

## 4. Specific Wallet & Transfer Rules for Masanawa

When implementing the Wallet and Transfer subsystem, adhere strictly to these product decisions:

### A. Core Distinctions from OPay
1. **No Domestic Bank Lists:** Masanawa is an international app. Transfers do not route through domestic Nigerian NIBSS inter-bank clearing. They are:
   - **Send:** Internal, off-chain custody transfer of each supported asset between Masanawa users, **zero blockchain gas**; disclose any platform fee from the actual quote. Reserve “P2P” in UI for the marketplace.
   - **Withdraw:** External blockchain payout of the asset users already hold, to an eligible network/address with required memo/tag, exact quote and server-bound approval. Asset/network support is individually qualified.
2. **No NIP Session IDs & No "Money Saved" Metrics:** Keep receipts clean, fast, and minimal.
3. **No USSD:** Do not connect or prompt USSD gateways.
4. **10-Digit Masanawa Account Number:**
   - Generated upon account creation (format: `8012 345 678`, random 10-digit number starting with `8`, not based on phone number).
   - Displayed on Wallet Home with 1-tap copy.
   - Used for internal Send and receive request intents, not as a blockchain address.
5. **Global Verification Presentation:**
   - Do not implement domestic Tier 1/2/3 local banking restrictions.
   - Use Unverified → Verified ID → Pro Merchant only from actual verification evidence. Limits and permissions depend on jurisdiction, risk and provider agreements (P8-X04); do not promise universal coverage or high allowances.

### B. What to Adapt from OPay's Transfer Flow
1. **Instant Recipient Name Resolution:** Typing 10 digits immediately calls `GET /v1/wallet/lookup?query=...` and shows a server-resolved recipient card (permitted avatar, display name and handle; verification badge only from actual verification authority).
2. **Duplicate Transfer Guard:** Intercept duplicate submissions of identical amount to the same user within 5 minutes.
3. **In-App 3x4 Numeric Keypad:** Accessible custom keypad connected to existing server-bound financial step-up, with weak-PIN rules and platform-backed biometric shortcut where qualified (P6-W05). Client biometric success alone cannot authorize payment.
4. **Telco Detection for Airtime/Data:** Suggest carriers only from current region-qualified catalog evidence, allow correction and account for number portability (P7-S02); Nigerian examples are not global defaults.
5. **Two-Step Utility Lookup:** Customer name verification dialog for electricity and cable TV before debiting.

---

## 5. Existing Code & Next Execution Steps

### Inspected foundation — baseline `d340a97b` (21 October 2026):
- **`packages/security/migrations/0113_masanawa_account_number.sql`**: Added `masanawa_account_number` to user profiles with the generator function `security.generate_masanawa_account_number()`.
- **Schema proposal, not activated spendable authority — `packages/commerce/migrations/0134_multi_asset_wallet_and_transfers.sql`**: Multi-asset custody accounts (`MSNW`, `USDT`, `USDC`, `SOL`, `BTC`, `ETH`), P2P transfers journal, and crypto deposit addresses table.
- **`services/gateway/src/msn_wallet/custody_send.ts`**: Updated `resolve()` and `recipient()` to resolve 10-digit Masanawa IDs and `@handles`, plus added `lookupRecipient()`.
- **`services/gateway/src/msn_wallet/custody_routes.ts`**: Added `GET /v1/wallet/lookup?query=...` name inquiry route.

Wallet #230 is merged via `ab15bf7b`: 0114 assigns/backfills stable IDs, the parser resolves account/@handle and the mobile badge/inquiry is connected. Reuse it; W01 device/combined-tree qualification remains open. Tables or currency enums alone do not activate supported assets.

### Your Direct Execution Goals:
1. **Review & Compare:** Open `opay-decloned/res/layout/` and inspect how OPay lays out `omain_fragment_new_pay.xml`, `pay_activity_cashier.xml`, and `dialog_transfer_repeat_tips.xml`.
2. **Implement portfolio and authority together (W02/W12/W13):** Reuse `msnw_wallet_home.dart`, `wallet_screen.dart`, `crypto_state.dart` and the existing custody/provider adapters for one holdings inventory, covered portfolio estimate, account badge, primary `Deposit / Send / Withdraw / Swap`, shared asset detail and secondary P2P/Bills/Activity. Deposit routes must not determine held assets; exact MSNW quantity is not a USD total.
3. **Finish connected operations (W03/W05/W08/W14):** Internal Send and external Withdraw are distinct operations sharing the existing flow components, confirmation, durable recovery and receipts. Implement Deposit and true in-Wallet Swap; keep legacy links as aliases to shared flows. Extend qualified internal custody beyond MSNW before exposing other asset Send. Explicit Paste only, no background clipboard reader.
4. **Build the Custom In-App Keypad:** In `apps/mobile/lib/src/ui/components/pin_keyboard.dart`, implement the 3x4 numeric keypad with biometric button.
5. **Explore & Integrate Chat Synergy:** Enable in-chat transfers (`+ -> Pay`) and tap-to-pay on 10-digit IDs in conversation threads.
6. **Integrate same-Wallet P2P (P7-P01–P04):** asset-aware offers, canonical reserve/release/refund, authorized payment verification/dispute, portfolio effects and operation-linked receipts. Reuse current MSNW escrow; additional assets need real backing/adapter qualification. Complete connected source in larger batches before one focused validation pass. Assign any newly useful benchmark pattern to an existing roadmap task before implementation.

---

## 6. Pairing OPay Speed with WhatsApp UX (`whatsapp-decompiled/`)

To complement OPay's fintech architecture, we also reverse-engineered **WhatsApp v2.26.40.72** into [`whatsapp-decompiled/`](../whatsapp-decompiled/README.md) and documented the design system in [`docs/WHATSAPP-UI-ARCHITECTURE-BENCHMARK.md`](WHATSAPP-UI-ARCHITECTURE-BENCHMARK.md).

### The Synergy Model:
- **OPay (`opay-decloned/`) supplies the Engine:** 10-digit instant account inquiry, repeat-transfer warning patterns (Masanawa’s five-minute rule is P6-W04), custom 3x4 numeric security keyboard, offline JSON caching, and telco auto-detection.
- **WhatsApp (`whatsapp-decompiled/`) supplies the Shell:** Iconic green/white design system (`#25D366`, `#111B21`, `#202C33`), chat bubble tails and nip geometries, push-to-talk voice note animations (`kjt.json`), live voice equalizers (`kja.json`), and Masanawa’s adapted 5-tab root architecture (**Chats · Status · Wallet · Calls · Rooms**).

Use both trees during implementation to inspect patterns and recreate them with original Masanawa code/assets. Implement the assigned canonical tasks and acceptance criteria; do not directly bundle third-party artwork, sounds or code. Optional extracted ideas are assigned to P8-U03–U08, not an implicit expansion of the first release.


## Fixed pricing and real billing provider
Follow [MSNW NGN pricing/Flutterwave design](MSNW-NGN-PRICING-AND-FLUTTERWAVE-BILLING.md): 1 MSNW = NGN 1; six decimals; one kobo = 10,000 atomic units. W15 propagates versioned policy across funding, billing, conversion and portfolio without rewriting history. S05–S07 complete the existing real Flutterwave Bills adapter through fulfillment/readback; test mocks never count as service integration. Initial NG/NGN merchant scope does not imply global Bills coverage. Retain original references on uncertain outcomes and reconcile exact original charges/refunds.
