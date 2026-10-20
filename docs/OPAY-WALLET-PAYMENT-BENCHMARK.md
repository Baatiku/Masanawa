# OPay Reverse-Engineering Benchmark & Best Practices for Masanawa Wallet

**Document ID:** `MASANAWA-DOC-OPAY-BENCHMARK-20261020`  
**Target Focus:** Wallet (A11), Transfers & Send (A13), Billing & Utilities (A18), Cashier/Security, KYC, and Receipts (A15).  
**Source Target:** OPay Nigeria (`team.opay.pay`, Android Target SDK 35 / Android 15, Release APK SHA-256: `a3430f6e91c856b3143f5fc5cce4acaf363899c51a0851842a77136d945b1bc2`).  
**Audience:** Masanawa Mobile (Flutter), Backend (NestJS/PostgreSQL), and Product Engineering.

---

## 1. Executive Summary & Context

To support the development of **Masanawa’s Wallet tab** (one of the 5 canonical root tabs: *Chats · Status · Wallet · Calls · Rooms*), we performed deep reverse engineering on the market-leading Nigerian fintech application (OPay) using REA analysis tools and decoded smali/resource trees.

OPay's market dominance in Nigeria is driven not by loans or savings, but by its **near-instant settlement reliability, low friction on transfer flows, proactive handling of banking infrastructure failures, and frictionless utility recharges**. 

This document details the architectural mechanisms, UX design patterns, and security guardrails extracted from OPay's implementation, translated into actionable specifications for the Masanawa Flutter app and NestJS backend.

---

## 2. Wallet Core & Balance State Machine (Screen A11)

### 2.1 Balance Privacy & Visibility
* **OPay Smali Pattern:** `team.opay.pay.home.balance.HomeSavingDetailsActivity`, `omain_fragment_new_pay.xml`
* **Mechanism:**
  - An eye toggle icon (`iv_eye_status`) sits next to the balance.
  - Toggling updates an encrypted local key (`KEY_BALANCE_VISIBILITY`) in `SharedPreferences`/`EncryptedSharedPreferences`.
  - When hidden, all balance numbers format to `••••••` or `****`.
  - Crucially, balance amounts in child fragments and transaction list items respect this global state.
* **Masanawa Implementation:**
  - Implement `BalanceVisibilityNotifier` in Flutter using `flutter_secure_storage` or persistent Riverpod state.
  - Display both local fiat (NGN) and **MSNW** custody token balance. When toggled off, both values mask synchronously.

### 2.2 Real-time Balance Invalidation (Push vs Poll)
* **OPay Smali Pattern:** Manifest metadata: `mqttHost: tcp://message-platform.opayweb.com`, `mqttOfflineHost: https://api-im.opayweb.com`.
* **Mechanism:**
  - Balance is never solely reliant on manual pull-to-refresh or aggressive HTTP polling.
  - Upon transaction completion or incoming credit alert, the backend pushes an event across a persistent socket (`balance_delta` or `transaction_settled`).
  - The client animates the balance counter upward or downward, followed by a silent reconciliation fetch if the nonce/hash deviates.
* **Masanawa Implementation:**
  - Reuse Masanawa’s existing real-time WebSocket connection to send a `WALLET_BALANCE_UPDATED` event whenever the backend ledger commits a ledger entry.

### 2.3 Unified "Add Money" Hub
* **OPay Smali Pattern:** `team.opay.sme.va.TransferActivity`
* **Mechanism:**
  - Tapping "Add Money" opens a modal bottom sheet displaying 4 distinct channels:
    1. **Bank Transfer:** Dedicated virtual NUBAN account (NinePSB / Wema) assigned to the user. Features a one-tap copy button with haptic feedback and clear guidance: *"Transfer from any bank app to this account to fund your wallet instantly."*
    2. **Debit Card Top-up:** Tokenized Visa/Mastercard/Verve debit via 3D-Secure.
    3. **USSD Transfer:** Pre-formatted USSD code based on user's bank (e.g., `*737*50*AMOUNT*ACCOUNT#` for GTBank).
    4. **QR Code / Payment Tag:** Displays the user's personal QR code for P2P scan-to-pay.

---

## 3. Payments & Transfer Engine (Screen A13)

### 3.1 Smart Clipboard Detection & Auto-Fill
* **OPay Smali Pattern:** 
  - `team.opay.pay.home.clipboard.ClipboardAutoReader`
  - `team.opay.pay.home.clipboard.TransferClipboardParser`
  - `team.opay.pay.home.clipboard.dialog.ACHomeClipboardDialog`
  - `team.opay.pay.home.security.AccessToClipboardSettingActivity`
* **Mechanism:**
  - When the app is opened or foregrounded, `ClipboardAutoReader` inspects the OS clipboard for text matching:
    1. Nigerian 10-digit NUBAN account numbers.
    2. Nigerian phone numbers: `^\\+?(?:234)?0?[789][0-9]{9}`.
    3. Deep payment links or amounts (`ClipboardRecipientInfo: amount, phone, account, gateway`).
  - If a valid recipient is detected, a bottom banner appears:
    > *"Account number detected in clipboard: 0123456789. Transfer to this account now?"*
  - Tapping "Transfer" opens the transfer view with the account number pre-filled, destination bank auto-selected (if known), and triggers name enquiry immediately.
  - **Privacy Guard:** Includes an explicit toggle in Privacy & Security (`Access to Clipboard`) allowing users to opt out.
* **Masanawa Value:** In Masanawa, where users frequently copy bank details out of chat threads, clipboard auto-detection cuts transfer initiation from 6 taps down to 1.

### 3.2 Real-time Bank Network Health & Delay Indicator
* **OPay Smali Pattern:**
  - `team.opay.pay.home.tabs.ac.BankStatusActivity`
  - `team.opay.pay.home.tabs.ac.BankAVGTimeConfig`
  - `team.opay.pay.home.tabs.ac.BankUnStableDialog`
  - Resource layout: `dialog_bank_unstable.xml`
* **Mechanism:**
  - Nigerian inter-bank NIP transfer delays are frequent. OPay exposes real-time network statuses alongside the bank list:
    - 🟢 **Normal:** Average settlement < 10 seconds.
    - 🟡 **Degraded / High Traffic:** Settlement delays of 5–30 minutes possible.
    - 🔴 **Bank Unstable / Down:** Significant downtime on destination bank switch.
  - When a user chooses a bank currently marked unstable, `BankUnStableDialog` intercepts:
    > *"Recipient Bank Unstable: [Bank Name] is experiencing network issues. Transactions may be delayed. Continue anyway or try another method?"*
* **Masanawa Value:** Eliminates the #1 driver of fintech support tickets—users assuming the app failed when the destination bank is down.

### 3.3 Internal P2P Intercept Guide
* **OPay Smali Pattern:** `GuideToOpayAccountTransferDialog.smali`
* **Mechanism:**
  - When a user enters a 10-digit number in the "To Bank" form, the client checks if that number or linked phone belongs to a registered OPay user.
  - If registered, an inline banner or dialog suggests:
    > *"This recipient has an OPay account! Switch to Transfer to OPay for FREE, instant delivery and rewards."*
* **Masanawa Value:** Routes external NIP transfers into zero-fee internal transfers, saving Masanawa NIP switch processing fees and accelerating ecosystem retention.

### 3.4 Duplicate Transfer Guard
* **OPay Smali Pattern:** `dialog_transfer_repeat_tips.xml`, string `osdk_repeate_transfer` ("Duplicate Transfer Detected")
* **Mechanism:**
  - If a user submits a transfer with the exact same amount to the same beneficiary within a 10-minute window, the app intercepts the submission:
    - Displays a warning modal with the timestamp, amount, and status of the prior transaction.
    - Requires an explicit confirmation click to prevent accidental double debits caused by slow network retries.
* **Masanawa Value:** Crucial safeguard for users with poor or fluctuating cellular network connectivity.

### 3.5 Unified Cashier Checkout Bottom Sheet
* **OPay Smali Pattern:** `cashier.normalpay.CashierActivity`, `cashier.quickpay.QuickPayActivity`, `cashier_layout_pin_keyboard_view.xml`
* **Mechanism:**
  - Rather than pushing a full new activity/screen for checkout, all payment confirmation is executed inside a bottom sheet (`Cashier`):
    1. **Summary:** Recipient Name, Destination Bank/Service, Exact Debit Amount.
    2. **Payment Source Selector:** Wallet Balance (default) vs. Linked Bank Cards.
    3. **Fee Transparency:** Shows `Fee: ₦0.00` or promotional quota remaining (e.g., *"3 free transfers remaining today"*).
    4. **Authorization:** In-app secure numeric keypad or biometric prompt.

---

## 4. Billing & Utility Services (Screen A18)

### 4.1 Telco Auto-Detection by Phone Prefix
* **OPay Smali Pattern:** `team.opay.pay.payment.airtime.AirtimeTopUpActivity`
* **Prefix Map:**
  - `0803`, `0806`, `0703`, `0706`, `0813`, `0816`, `0810`, `0814`, `0903`, `0906`, `0913`, `0916` ➔ **MTN**
  - `0802`, `0808`, `0708`, `0812`, `0701`, `0902`, `0901`, `0904`, `0907`, `0912` ➔ **Airtel**
  - `0805`, `0807`, `0705`, `0815`, `0811`, `0905`, `0915` ➔ **Glo**
  - `0809`, `0817`, `0818`, `0909`, `0908` ➔ **9mobile**
* **UX Rule:** Auto-selects the telco logo immediately after 4 digits are typed. Displays a dropdown pill allowing the user to override if the number was ported.

### 4.2 Quick Denomination Chips & Recent Recharges
* **OPay Layouts:** `layout_topup_airtime_custom_amount.xml`, `fragment_airtime_data_topup.xml`
* **UI Elements:**
  - Horizontal chip carousel of recently recharged numbers with avatars/initials.
  - 2x3 or 3x3 grid of standard Nigerian denominations: `₦100`, `₦200`, `₦500`, `₦1,000`, `₦2,000`, `₦5,000`.
  - Custom amount text field with immediate cashback calculation display (e.g., *"Earn ₦30 cashback on this recharge"*).

### 4.3 Two-Step Utility Validation (`ConfirmInfomationListDialog`)
* **OPay Smali Pattern:** `team.opay.pay.payment.ConfirmInfomationListDialog`, `ElectricityCustomerInfo`
* **Mechanism:**
  - For Electricity (Prepaid/Postpaid) and Cable TV (DStv, GOtv, StarTimes):
    - Entering the Meter or Smartcard number fires an asynchronous name-lookup query.
    - Before PIN entry, a structured confirmation dialog pops up displaying:
      - *Customer Name* (from Disco database)
      - *Meter/Card Number*
      - *Address*
      - *Account Type (Prepaid / Postpaid)*
      - *Fee & Total Payable*
    - Prevents recharging the wrong meter or smartcard.

---

## 5. Authentication, Login & Security Best Practices

### 5.1 Custom In-App Secure Numeric Keypad
* **OPay Layout:** `cashier_layout_pin_keyboard_view.xml`
* **Mechanism:**
  - OPay does not trigger the default Android soft keyboard for entering 6-digit transaction PINs.
  - It renders an internal 3x4 `GridLayout` (`key_1` through `key_9`, `key_0`, and `key_del`).
* **Security Guardrails:**
  - Prevents third-party malicious keyboard apps from keylogging transaction PINs.
  - Bypasses Android screen-recording and accessibility service extraction.
  - Provides uniform haptic feedback on keypresses.

### 5.2 Strict PIN Complexity Rules
* **OPay String:** `The Payment PIN must contain number which cannot be repeated or consecutive.`
* **Validation Requirements:**
  - Rejects repetitive sequences: `000000`, `111111`, `999999`.
  - Rejects ascending/descending sequences: `123456`, `654321`.
  - Rejects numbers matching the user’s birth date or phone number prefix/suffix.

### 5.3 Multi-Modal Authentication & App Lock
* **OPay Smali Pattern:** `PinAppLockActivity.smali`, `BiometricSaveActivity.smali`, `GestureSettingActivity.smali`
* **Mechanism:**
  - Phone number primary identifier + 6-digit PIN.
  - Biometric authentication (Fingerprint / Face Unlock via Android BiometricPrompt API).
  - Background timeout guard: automatically locks after 1 or 5 minutes in background.

---

## 6. Tiered KYC & Identity Progression

* **OPay Smali Pattern:** `activity_kyc_level.xml`, `dialog_kyc2_bvn_check.xml`, `OFaceLiveNew1Activity.smali`

| KYC Tier | Required Information | Daily Transaction Limit | Max Wallet Balance | Validation Engine |
| :--- | :--- | :--- | :--- | :--- |
| **Tier 1** | Phone Number, Full Legal Name, Date of Birth | ₦50,000 | ₦300,000 | SMS OTP verification |
| **Tier 2** | BVN / NIN Verification + Live Face Match | ₦200,000 | ₦500,000 | NIBSS BVN API + Name Matching |
| **Tier 3** | Proof of Address (Utility bill, bank statement) | ₦5,000,000 | Unlimited | Automated OCR / Agent verification |

* **Strict Name Matching Guard:** BVN verification checks that the registered first name and surname match the user's account name. In case of discrepancies, account limits are frozen until manual verification to prevent identity theft.

---

## 7. Post-Transaction UX, Receipts & Dispute Resolution (Screen A15)

### 7.1 Mandatory Nigerian Banking Identifiers
* **OPay Smali Pattern:** `share_view_pdf.xml`, `ReceiptLayout.smali`, `flow_item_transaction_detail_progress.xml`
* **Required Metadata Fields on Every Receipt:**
  1. **NIP Session ID (30 digits):** Standard NIBSS inter-bank transaction tracking number (e.g., `100004240520120530918237461928`). *Essential for receiving banks to locate missing funds.*
  2. **Transaction Reference:** Masanawa internal unique reference (`MSN-TRX-...`).
  3. **Sender Details:** Name & Masked Account.
  4. **Beneficiary Details:** Beneficiary Name, Account Number, Destination Bank Name.
  5. **Amount & Fee Breakdown:** Clear indication of ₦0.00 fee.
  6. **Timestamp:** Date and time with seconds.
  7. **Status Badge:** High-contrast 🟢 *Successful*, 🟡 *Processing / Pending*, 🔴 *Failed*.

### 7.2 In-Receipt Self-Service Help (`item_transaction_details_faq.xml`)
* Below the receipt action buttons, OPay embeds an expandable self-service card:
  - *"Recipient says they haven't received the money?"*
  - Tapping this reveals a 3-step timeline:
    1. *Masanawa Debit (Completed)*
    2. *NIP Central Switch (Delivered)*
    3. *Beneficiary Bank Credit (Pending destination bank processing)*
  - Offers a one-tap button to copy the **Session ID** to share with the beneficiary bank.

### 7.3 Multi-Format Sharing Options
* **Share Image (PNG):** Clean, branded card optimized for sharing on WhatsApp or Masanawa chat.
* **Download PDF:** Official bank-standard statement format for business and formal records.
* **Send to Chat:** Instant one-tap delivery of the receipt into an active Masanawa conversation.

---

## 8. Concrete Implementation Plan for Masanawa

### Phase 1: High-Priority Wallet & Security Upgrades
1. **Receipt Overhaul (Screen A15):**
   - Ensure the 30-digit NIP Session ID is stored in the database for every external transfer.
   - Render receipts with branded Masanawa green/white styling, PDF generation, and in-chat sharing.
2. **Custom PIN Keypad (Screen A13/Cashier):**
   - Replace standard mobile keyboard with an in-app 3x4 numeric keypad for all PIN entry flows.
   - Add biometric authentication fallback via `local_auth` Flutter package.
3. **Duplicate Transfer Intercept:**
   - Implement client and server-side checks for identical transactions submitted within 10 minutes.

### Phase 2: Frictionless Transfer & Billing Experience
1. **Clipboard Account Listener:**
   - Add a privacy-respecting clipboard parser in Flutter (`ClipboardAutoReader`) that detects 10-digit NUBANs on app resume.
2. **Telco Prefix Auto-Detector (Screen A18):**
   - Implement regex matching for Nigerian telco prefixes on the Airtime and Mobile Data screens.
3. **Utility Name Lookup Confirmation Dialog:**
   - Ensure Electricity and Cable TV purchases show resolved customer names before PIN confirmation.

### Phase 3: Banking Network Reliability
1. **Bank Health Monitor Service:**
   - Backend tracks success/failure rates per destination bank code.
   - Mobile client queries bank status and displays visual indicators (Normal/Degraded/Unstable) on bank selection.
2. **Internal Transfer Routing:**
   - Automatically detect if an entered phone number or account is already a Masanawa user and prompt instant 0-fee P2P transfer.
