# Decompiled OPay Nigeria Reference Codebase

**Package:** `team.opay.pay`  
**Platform Target:** Android 15 (API Level 35)  
**Source Origin:** Production Release APK (SHA-256: `a3430f6e91c856b3143f5fc5cce4acaf363899c51a0851842a77136d945b1bc2`)  
**Decompiler Tooling:** REA & Apktool  

---

## Purpose & Scope for Masanawa Developers

This folder contains the reverse-engineered reference source code, layouts, and configurations from the OPay Android application, specifically preserved to guide the implementation of **Masanawa’s Wallet, Payments, Transfers, Bills, Cashier, and KYC subsystems**.

All non-essential third-party dependencies, advertising telemetry, native compiled binaries (`.so`), synthetic R8 compiler artifacts, and irrelevant lending/credit modules (e.g., EaseMoni, OKash) have been stripped to keep this repository lean while preserving 100% of the proprietary fintech business logic.

---

## Directory Structure & Key Modules

### 1. `AndroidManifest.xml`
The canonical manifest detailing all activities, services, deep link URI schemes (`otravel://schemedispatcher?action=...`), push notifications, permissions, and service endpoint metadata (`https://api.opayweb.com/`, `tcp://message-platform.opayweb.com`, etc.).

### 2. `res/` (Resources & Layouts)
- **`res/layout/`**: Over 2,200 layout XML files representing every screen, dialog, and component:
  - `pay_activity_cashier.xml`, `cashier_fragment_pay_pin_input.xml` (Cashier checkout sheet & PIN input).
  - `cashier_layout_pin_keyboard_view.xml` (Custom in-app secure 3x4 numeric keypad).
  - `dialog_transfer_repeat_tips.xml` (Duplicate transfer guard modal).
  - `dialog_bank_unstable.xml`, `dialog_bank_useless_tips.xml` (Bank network downtime alerts).
  - `bank_fragment_bank_choose.xml`, `bank_item_bank_list.xml` (Bank selector & status indicator).
  - `fragment_airtime_data_topup.xml`, `layout_topup_airtime_custom_amount.xml` (Airtime & data recharge flows).
  - `activity_kyc_level.xml`, `dialog_kyc2_bvn_check.xml` (Tiered KYC progression & BVN check).
  - `share_view_pdf.xml`, `share_fragment_receipt_result.xml` (Transaction receipt templates).
- **`res/values/`**:
  - `strings.xml`: Every user-facing Nigerian banking string, error message, toast, and prompt.
  - `colors.xml`: Full color palette, including the signature green (`#00B876`), neutrals, and surface colors.
  - `styles.xml`, `dimens.xml`, `attrs.xml`: Typography styles, component dimensions, and custom widget attributes.
- **`res/drawable/`**: Vector drawables, state list selectors, shape backgrounds, and SVG icons.

### 3. Core Smali Packages (Decompiled Smali Code)
- **`smali/cashier/`**:
  - Unified Cashier bottom-sheet checkout system (`CashierActivity`, `QuickPayActivity`, `CashierDelegate`).
  - Payment channel selection, fee computation, and PIN/Biometric verification (`PayVerificationActivity`).
- **`smali_classes2/team/opay/`**:
  - Payment base architecture, QR code engines (`qrcode`), and security interceptors (`security`, `risk`).
- **`smali_classes3/com/opay/`**:
  - Facial liveness detection and selfie verification (`face`), security token manager, webview bridge (`webview`).
- **`smali_classes4/team/opay/`**:
  - `business/`: Transfer transaction flows (`TransferFlowActivity`, `TransactionActivity`), receipt layout (`ReceiptLayout`).
  - `core/`: Custom UI components (`CorpActionBar`, `PulseLoaderView`), base network helpers.
  - `sme/`: Virtual account generation and SME transfer management.
- **`smali_classes5/team/opay/`**:
  - `opb/`: OPay banking services, bank transfers (`BankActivity`, `BankRepository`, `BankViewModel`).
  - `pay/`: Payment repositories, cashback, transaction histories, push notification receivers.
- **`smali_classes6/team/opay/pay/`** *(The Primary Core Subsystem)*:
  - `wallet/`: Balance management, account details, hide/show balance state.
  - `transfer/`: Inter-bank transfer dispatch (`OpayBankTransferActivityV3`), bank status monitor (`BankStatusActivity`, `BankAVGTimeConfig`, `BankUnStableDialog`).
  - `home/clipboard/`: Smart clipboard reader (`ClipboardAutoReader`, `TransferClipboardParser`) detecting 10-digit NUBANs and phone numbers.
  - `payment/`: Airtime & mobile data topup (`AirtimeTopUpActivity`, `DataTopUpActivity`), electricity and cable TV validation (`ConfirmInfomationListDialog`, `ElectricityCustomerInfo`), recent beneficiaries.
  - `kyc/`: BVN/NIN verification flows, tiered limits display.
  - `pin/` & `settings/`: App lock (`PinAppLockActivity`), biometric preferences (`BiometricSaveActivity`), gesture lock, privacy toggles.
- **`smali_classes7/team/opay/`**:
  - `spos/`: POS and merchant transaction handling, receipt printer bridges.

---

## Stripped / Excluded Content

To keep the repository fast and focused:
- All native `.so` ELF binaries (`lib/`) were removed.
- Third-party SDKs (Google Play Services, Firebase, Huawei HMS, Tencent, Facebook, ByteDance AppLog, AppsFlyer) were stripped.
- AndroidX and Kotlin runtime libraries were stripped.
- Obfuscated R8 synthetic compiler classes in root namespaces were purged.
- High-interest loans and credit modules (EaseMoni, OKash) were discarded.
- Raw APK binary is git-ignored.
