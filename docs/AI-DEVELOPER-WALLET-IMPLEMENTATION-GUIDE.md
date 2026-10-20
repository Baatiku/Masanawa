# Masanawa Platform Enhancement & OPay Reverse-Engineering Guide
## For AI Developers & Core Contributors

**Document ID:** `GUIDE-AI-DEV-OPAY-INTEGRATION-20261020`  
**Purpose:** Comprehensive, open-ended architectural guide pointing directly to the decompiled OPay reference source code (`opay-decloned/`) to benchmark, compare, contrast, and adapt industry-leading mobile UX and infrastructure patterns across Masanawa.  
**Design System Standard:** Clean Green/White WhatsApp Aesthetic (`#075E54`, `#00A884`, `#FFFFFF`, `#E9EDEF`, dark text `#111B21`, 48dp targets).  
**Root Navigation:** Exactly 5 tabs: **Chats · Status · Wallet · Calls · Rooms** (Chats default).

---

## 1. Context & Mandate for the AI Developer

You have deep context on the Masanawa codebase, its architecture, and its roadmap. Your mandate is **NOT** to blindly copy code or follow a narrow checklist, but to:
1. **Explore and Analyze:** Inspect the pruned reference codebase in [`opay-decloned/`](file:///c:/Users/Besta/Masanawa/opay-decloned/README.md).
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
| **Smart Clipboard Auto-Reader** | `smali_classes6/team/opay/pay/home/clipboard/`<br/>`res/layout/dialog_home_clipboard_*.xml` | `ClipboardAutoReader.smali`<br/>`TransferClipboardParser.smali`<br/>`ACHomeClipboardDialog.smali`<br/>Regex extraction of IDs/numbers, contextual prompt dialog |
| **Duplicate Transfer Protection** | `res/layout/dialog_transfer_repeat_tips.xml` | Strings: `osdk_repeate_transfer`, `osdk_recharge_again_reminder`<br/>5-minute repeat transfer intercept modal |
| **Cashier & Checkout Sheet** | `smali/cashier/`<br/>`res/layout/pay_activity_cashier.xml` | `CashierActivity.smali`<br/>`QuickPayActivity.smali`<br/>`CashierDelegate.smali`<br/>Modal checkout bottom sheet, fee summary |
| **In-App Keypad & Security** | `res/layout/cashier_layout_pin_keyboard_view.xml`<br/>`smali_classes6/team/opay/pay/pin/` | `PinAppLockActivity.smali`<br/>`BiometricSaveActivity.smali`<br/>In-app 3x4 numeric grid, biometric shortcut, weak PIN rules |
| **Airtime & Utility Bills** | `smali_classes6/team/opay/pay/payment/`<br/>`res/layout/fragment_airtime_data_topup.xml` | `AirtimeTopUpActivity.smali`<br/>`ConfirmInfomationListDialog.smali`<br/>Telco prefix auto-detection, denomination chips, 2-step verification |
| **QR Code Scanner & Generator** | `smali_classes2/team/opay/qrcode/`<br/>`smali_classes5/team/opay/opb/qrcode/` | `CommonQRScanActivity.smali`<br/>`MyQRCodeActivity.smali`<br/>`QRCodeEMVQRProtocolParserActivity.smali`<br/>High-contrast QR generation, camera scanner integration |
| **Deep Link Scheme Dispatcher** | `smali_classes6/team/opay/pay/home/scheme/`<br/>`AndroidManifest.xml` (metadata: `scheme_prefix`) | `SchemeDispatchActivity.smali`<br/>`otravel://schemedispatcher?action=...`<br/>URI router mapping push/web links to nested screens/modals |
| **Real-time Push & Connection** | `AndroidManifest.xml` (meta-data: `mqttHost`) | `tcp://message-platform.opayweb.com`<br/>Real-time socket events for balance invalidation & transaction alerts |
| **Device Security & Risk Control** | `smali_classes2/team/opay/risk/`<br/>`smali_classes6/team/opay/pay/sensesecurity/` | `RiskControlHost.smali`<br/>Device binding, root/jailbreak detection, screen overlay guards |
| **UI Copy, Colors & Typography** | `res/values/strings.xml`<br/>`res/values/colors.xml`<br/>`res/values/styles.xml` | Master list of all user prompts, errors, micro-copy, and styling |

---

## 3. Platform-Wide Opportunities (Beyond the Wallet)

While researching `opay-decloned/`, look for cross-platform mechanisms that can elevate Masanawa:

### 1. Unified Deep Link Dispatcher (`SchemeDispatchActivity`)
- **OPay Pattern:** OPay uses a centralized deep-link URI dispatcher (`otravel://schemedispatcher?action=<target>&params=...`). Every push notification, marketing banner, SMS, or external link resolves through a single intent filter that decodes the payload, validates authentication, and pushes the exact target view.
- **Masanawa Opportunity:** Use this pattern in Flutter (`go_router` or custom URI handler) to ensure that in-chat links, push notifications, and payment requests deep-link straight to the exact chat, Room, Status post, or Send Money sheet seamlessly.

### 2. Smart Clipboard Integration Across the Entire App
- **OPay Pattern:** `ClipboardAutoReader` does not just read bank numbers; it is integrated across onboarding (`OnboardingViewModel$readClipboardPhone`), payment links, and recharge numbers.
- **Masanawa Opportunity:**
  - In Chats: Detect copied text containing a 10-digit Masanawa ID and suggest sending a tip or transfer.
  - In Registration/Login: Detect copied phone number or invitation code and auto-fill.

### 3. QR Code Subsystem (`team.opay.qrcode`)
- **OPay Pattern:** Supports both scanning merchant/user QRs and generating static/dynamic personal QR codes (`MyQRCodeActivity`).
- **Masanawa Opportunity:** Every Masanawa user has a 10-digit ID and public handle. Unify Profile QR (for adding friends) and Wallet QR (for receiving MSNW/crypto) into a single versatile Masanawa QR card that can be scanned from the chat screen or wallet screen.

### 4. Background Resilience & Connection State Handling
- **OPay Pattern:** Notice strings like `[osdk_result_net_tip]`, `[pay_net_error_label]`: OPay treats poor network as a normal state rather than an unexpected exception. It displays informative inline recovery banners, cached balances, and explicit retry buttons without locking the user out.
- **Masanawa Opportunity:** Ensure Masanawa's Chat and Wallet tabs handle spotty cellular connections gracefully—optimistic UI updates, clear pending ticks, and deduplicated retries.

---

## 4. Specific Wallet & Transfer Rules for Masanawa

When implementing the Wallet and Transfer subsystem, adhere strictly to these product decisions:

### A. Core Distinctions from OPay
1. **No Domestic Bank Lists:** Masanawa is an international app. Transfers do not route through domestic Nigerian NIBSS inter-bank clearing. They are:
   - **Internal P2P:** Instant, off-chain, **zero gas fee** between Masanawa users.
   - **External Crypto:** On-chain withdrawals to verified crypto addresses (USDT, SOL, BTC, ETH).
2. **No NIP Session IDs & No "Money Saved" Metrics:** Keep receipts clean, fast, and minimal.
3. **No USSD:** Do not connect or prompt USSD gateways.
4. **10-Digit Masanawa Account Number:**
   - Generated upon account creation (format: `8012 345 678`, random 10-digit number starting with `8`, not based on phone number).
   - Displayed on Wallet Home with 1-tap copy.
   - Used for zero-gas P2P transfers.
5. **Universal Global KYC:**
   - Do not implement domestic Tier 1/2/3 local banking restrictions.
   - Implement universal identity verification (Unverified -> Verified ID -> Pro Merchant) with high international volume allowances.

### B. What to Adapt from OPay's Transfer Flow
1. **Instant Recipient Name Resolution:** Typing 10 digits immediately calls `GET /v1/wallet/lookup?query=...` and slides in a verified recipient card (Avatar, Display Name, Handle, Verified badge).
2. **Duplicate Transfer Guard:** Intercept duplicate submissions of identical amount to the same user within 5 minutes.
3. **In-App 3x4 Numeric Keypad:** Custom in-app keypad (`cashier_layout_pin_keyboard_view.xml`) bypassing OS keyboards, with biometric shortcut (Fingerprint / Face ID) and weak PIN rejection.
4. **Telco Auto-Detection for Airtime/Data:** Auto-detect MTN, Airtel, Glo, 9mobile by phone number prefix.
5. **Two-Step Utility Lookup:** Customer name verification dialog for electricity and cable TV before debiting.

---

## 5. Existing Code & Next Execution Steps

### What Was Just Built & Committed:
- **`packages/security/migrations/0113_masanawa_account_number.sql`**: Added `masanawa_account_number` to user profiles with the generator function `security.generate_masanawa_account_number()`.
- **`packages/commerce/migrations/0134_multi_asset_wallet_and_transfers.sql`**: Multi-asset custody accounts (`MSNW`, `USDT`, `USDC`, `SOL`, `BTC`, `ETH`), P2P transfers journal, and crypto deposit addresses table.
- **`services/gateway/src/msn_wallet/custody_send.ts`**: Updated `resolve()` and `recipient()` to resolve 10-digit Masanawa IDs and `@handles`, plus added `lookupRecipient()`.
- **`services/gateway/src/msn_wallet/custody_routes.ts`**: Added `GET /v1/wallet/lookup?query=...` name inquiry route.

### Your Direct Execution Goals:
1. **Review & Compare:** Open `opay-decloned/res/layout/` and inspect how OPay lays out `omain_fragment_new_pay.xml`, `pay_activity_cashier.xml`, and `dialog_transfer_repeat_tips.xml`.
2. **Upgrade Mobile Wallet Home:** Refactor `apps/mobile/lib/src/finance/msnw_wallet_home.dart` and `wallet_screen.dart` into a consolidated portfolio view showing total balance (USD/MSNW), 10-digit ID badge with 1-tap copy, action buttons (`Send`, `Deposit`, `Swap`, `Bills`), and the "My Assets" token list.
3. **Build Dual-Rail Send Sheet:** In `apps/mobile/lib/src/finance/wallet_flow_page.dart`, implement the P2P tab (10-digit ID lookup card, duplicate guard, clipboard auto-reader) and the External Crypto tab.
4. **Build the Custom In-App Keypad:** In `apps/mobile/lib/src/ui/components/pin_keyboard.dart`, implement the 3x4 numeric keypad with biometric button.
5. **Explore & Integrate Chat Synergy:** Enable in-chat transfers (`+ -> Pay`) and tap-to-pay on 10-digit IDs in conversation threads.
6. **Feel Empowered to Surface More:** If you spot other smart implementations in `opay-decloned/` (such as transaction caching, haptic feedback hooks, or notification deduplication), adapt them into Masanawa and keep our codebase world-class!

---

## 6. Pairing OPay Speed with WhatsApp UX (`whatsapp-ref/`)

To complement OPay's fintech architecture, we also reverse-engineered **WhatsApp v2.26.40.72** into [`whatsapp-ref/`](file:///c:/Users/Besta/Masanawa/whatsapp-ref/README.md) and documented the design system in [`docs/WHATSAPP-UI-ARCHITECTURE-BENCHMARK.md`](file:///c:/Users/Besta/Masanawa/docs/WHATSAPP-UI-ARCHITECTURE-BENCHMARK.md).

### The Synergy Model:
- **OPay (`opay-decloned/`) supplies the Engine:** 10-digit instant account inquiry, 5-minute duplicate transfer interception, custom 3x4 numeric security keyboard, offline JSON caching, and telco auto-detection.
- **WhatsApp (`whatsapp-ref/`) supplies the Shell:** Iconic green/white design system (`#25D366`, `#111B21`, `#202C33`), chat bubble tails and nip geometries, push-to-talk voice note animations (`kjt.json`), live voice equalizers (`kja.json`), and the 5-tab root architecture (**Chats · Status · Wallet · Calls · Rooms**).

Use both reference trees freely to craft the most fluid, resilient, and beautiful communication and fintech app in the world.

