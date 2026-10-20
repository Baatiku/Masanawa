# Masanawa Wallet, Payments & Billing Architecture
## Adapted from OPay Simplicity & WhatsApp Design Language

**Document ID:** `MASANAWA-WALLET-SPEC-20261020`  
**Status:** Canonical Design & Implementation Specification  
**Design System:** Strong Green/White WhatsApp-like Aesthetic  
**Target Scope:** Wallet Home (`A11`), Send/Receive (`A13`), History & Receipts (`A15`), Billing Services (`A18`), Cashier Checkout, and Global KYC.  
**Currency Identity:** **MSNW** custody token (primary customer-facing unit) with local fiat counter-value (e.g., NGN / USD).

---

## 1. Core Product Philosophy & Design Tenets

Masanawa combines the **operational simplicity and zero-friction execution flow of OPay** with the **clean, lightweight, high-contrast green/white interface of WhatsApp**.

### Key Distinctions from Traditional Banking Apps
1. **Transfers are P2P & Crypto, NOT Inter-Bank NIP:**
   - Masanawa does not route transfers through Nigerian inter-bank NIP clearing switches.
   - Transfers occur **directly between Masanawa users** (P2P on the Masanawa internal ledger) or as **Crypto withdrawals** (on supported chains).
   - *No bank lists, no NIBSS downtime alerts, no NIP Session IDs, and no USSD codes.*
2. **10-Digit Unique Masanawa Account Number (User ID Number):**
   - Every Masanawa user is assigned a uniquely generated, persistent **10-digit Masanawa Account Number** (e.g., `8012 345 678`).
   - This number is NOT the user's phone number, preserving privacy while providing a familiar 10-digit banking paradigm.
   - Displayed prominently on the Wallet home screen with 1-tap copy.
   - Serves as the primary transfer handle across the ecosystem (alongside `@handle` and QR codes).
3. **Global Audience & Flexible KYC (No Rigid Local Banking Tiers):**
   - Replaces localized Tier 1/2/3 bank account rules with universal KYC identity verification (Government ID / Passport / BVN / NIN where applicable).
   - High default transaction limits tailored to an international user base, unlockable to enterprise scale upon identity verification.
4. **WhatsApp Green/White Design System:**
   - Deep WhatsApp green `#075E54` / primary accent `#00A884` (or OPay vibrant `#00B876`), crisp white backgrounds, subtle dividers `#E9EDEF`, dark high-contrast typography, and zero visual clutter.

---

## 2. Screen A11 — Wallet Home Screen

```
┌────────────────────────────────────────────────────────┐
│  Masanawa Wallet                               [ 🔍 ]  │
│                                                        │
│  TOTAL BALANCE                                         │
│  4,520.00 MSNW                 [ 👁 Hide ]             │
│  ≈ ₦ 45,200.00                                         │
│                                                        │
│  Account No: 8012 345 678 [ 📋 Copy ]  •  Verified ✓   │
├────────────────────────────────────────────────────────┤
│    [ ↗ Send ]   [ ↙ Receive ]   [ ⚡ Bills ]   [ ⛶ QR ] │
├────────────────────────────────────────────────────────┤
│  RECENT TRANSFERS                                      │
│  (👤 Ahmad)   (👤 Fatima)   (👤 Zainab)   (👤 Bello)   │
├────────────────────────────────────────────────────────┤
│  TRANSACTION HISTORY                                   │
│  ↗ Sent to @fatima (8019 123 456)   -150 MSNW  🟢 Today │
│  ↙ Received from @ahmad             +500 MSNW  🟢 Y'day │
│  ⚡ MTN Airtime ₦1,000               -100 MSNW  🟢 Oct 18│
└────────────────────────────────────────────────────────┘
```

### 2.1 Balance Privacy & Multi-Currency Presentation
* **Persistent Balance Toggle (`Eye` icon):**
  - Tapping the eye toggle masks total balance, fiat counter-value, and transaction amounts with dots (`••••••`).
  - Stored in encrypted local state (`flutter_secure_storage`) so the preference persists on relaunch.
* **Token & Fiat Dual Display:**
  - Primary: **MSNW** custody balance in bold typography.
  - Secondary: Real-time converted fiat counter-value based on the latest internal exchange quote.

### 2.2 Account Number Badge
* Displays the user's unique 10-digit Masanawa Account Number formatted with spaces: `8012 345 678`.
* Tapping triggers an instant copy to clipboard, accompanied by a light haptic tap and toast: *"Masanawa Account Number copied"*.

### 2.3 Quick Actions Bar
* **Send:** Opens the unified P2P / Crypto Send flow (`A13`).
* **Receive:** Opens the funding screen showing the user's 10-digit Masanawa ID, personal payment QR code, and crypto deposit addresses (`A12`).
* **Bills:** Opens Airtime, Data, and Utility bill payment hub (`A18`).
* **QR Scan:** Opens scanner for instant payment to any user or merchant QR code.

---

## 3. Screen A13 — Send & Transfer Execution Engine

### 3.1 3-Step Frictionless Flow
Instead of complex multi-page wizards, Masanawa adopts OPay’s single-view transfer configuration:

```
┌────────────────────────────────────────────────────────┐
│  ← Send Money                                          │
│                                                        │
│  Recipient Masanawa ID or @handle:                     │
│  [ 8012345678                                    ]     │
│  ┌──────────────────────────────────────────────────┐  │
│  │ 👤 Ahmad Ibrahim  (@ahmad)  ✓ Verified Masanawa  │  │
│  └──────────────────────────────────────────────────┘  │
│                                                        │
│  Amount (MSNW):                                        │
│  [ 250.00                                   MSNW ]     │
│  ≈ ₦ 2,500.00      Available: 4,520 MSNW [ Max ]       │
│                                                        │
│  Narration (Optional):                                 │
│  [ For design work                               ]     │
│                                                        │
│  [                 Continue                 ]          │
└────────────────────────────────────────────────────────┘
```

1. **Instant Real-Time Recipient Name Resolution:**
   - As soon as the user enters 10 digits (or an `@handle`), the client triggers an instant server lookup.
   - A verified profile card slides in showing:
     - Recipient's Avatar
     - Full Legal Display Name
     - Public Handle (`@handle`)
     - Verification Badge (✓)
   - Prevents sending funds to the wrong user.

2. **Smart Clipboard Account Number Detection:**
   - When the user launches Masanawa or opens the Transfer screen, the app inspects the system clipboard.
   - If a 10-digit number or a Masanawa pay link (`masanawa.me/pay/...`) is detected:
     - A bottom sheet appears:  
       > *"Masanawa Account detected in clipboard: **8012 345 678** (Ahmad Ibrahim). Transfer now?"*
     - Tapping "Transfer" pre-fills the form and resolves the recipient immediately.
   - An opt-out setting is available in Privacy Settings.

3. **Duplicate Transfer Guard:**
   - If a user submits a transfer with the exact same amount to the same recipient within 5 minutes, an intercept modal displays:
     > *"Duplicate Transfer Detected: You sent 250 MSNW to Ahmad Ibrahim 2 minutes ago. Are you sure you want to proceed?"*
   - Requires explicit re-confirmation, eliminating accidental double payments during spotty connectivity.

4. **Frequent Beneficiaries Horizontal Carousel:**
   - Directly above or below the input field, recent transfer recipients appear as circular avatar chips with names.
   - 1-tap on a chip automatically populates the recipient and focuses the amount input.

---

## 4. Cashier Checkout Bottom Sheet & Security Keypad

```
┌────────────────────────────────────────────────────────┐
│  Confirm Payment                                [ ✕ ]  │
│                                                        │
│  Amount to Pay:                                        │
│  250.00 MSNW (≈ ₦ 2,500.00)                            │
│                                                        │
│  To:        Ahmad Ibrahim (8012 345 678)               │
│  From:      MSNW Custody Wallet                        │
│  Fee:       0.00 MSNW (Free Internal Transfer)         │
│                                                        │
│  Enter 6-digit Payment PIN:                            │
│  [ • ]  [ • ]  [ • ]  [   ]  [   ]  [   ]              │
│                                                        │
│  ┌───────┬───────┬───────┐                             │
│  │   1   │   2   │   3   │                             │
│  ├───────┼───────┼───────┤                             │
│  │   4   │   5   │   6   │                             │
│  ├───────┼───────┼───────┤                             │
│  │   7   │   8   │   9   │                             │
│  ├───────┼───────┼───────┤                             │
│  │  [⛶]  │   0   │  [⌫]  │   (⛶ = Biometric Finger/Face)
│  └───────┴───────┴───────┘                             │
└────────────────────────────────────────────────────────┘
```

### 4.1 Custom In-App 3x4 Secure Keypad
* **Implementation:** Built as an internal Flutter widget (`MasanawaPinKeyboard`), completely bypassing the Android/iOS system soft keyboard.
* **Security Advantages:**
  - Prevents 3rd-party malicious keyboard apps from intercepting PIN digits.
  - Immune to accessibility service keystroke snooping and OS screen recording previews.
  - Crisp haptic feedback on each valid press.
* **Biometric Shortcut:**
  - The bottom-left key features a Biometric icon (Fingerprint / Face ID). Tapping it instantly prompts device biometrics to authorize payment without entering the PIN manually.

### 4.2 PIN Complexity Enforcement
* Rejects consecutive digits (`123456`, `654321`) and repeated digits (`000000`, `111111`).
* Enforced at the time of PIN creation and reset.

---

## 5. Screen A18 — Billing & Utility Services

```
┌────────────────────────────────────────────────────────┐
│  ← Mobile Airtime & Data                               │
│                                                        │
│  Phone Number:                                         │
│  [ 0803 123 4567 ]                 [ 📶 MTN (Auto) ▼ ] │
│                                                        │
│  Recent Recharges:                                     │
│  (Mom - 0803...)   (Bro - 0812...)   (Data - 0805...)  │
│                                                        │
│  Select Amount:                                        │
│  ┌───────────┐ ┌───────────┐ ┌───────────┐             │
│  │   ₦100    │ │   ₦200    │ │   ₦500    │             │
│  ├───────────┤ ├───────────┤ ├───────────┤             │
│  │  ₦1,000   │ │  ₦2,000   │ │  ₦5,000   │             │
│  └───────────┘ └───────────┘ └───────────┘             │
│  Custom Amount: [ ₦                     ]              │
│                                                        │
│  Cost: 100.00 MSNW                                     │
│  [                 Pay 100 MSNW                 ]      │
└────────────────────────────────────────────────────────┘
```

### 5.1 Telco Auto-Detection by Prefix
* The app automatically identifies Nigerian telco providers upon typing the first 4 digits:
  - `0803`, `0806`, `0703`, `0706`, `0813`, `0816`, `0810`, `0814`, `0903`, `0906`, `0913`, `0916` ➔ **MTN**
  - `0802`, `0808`, `0708`, `0812`, `0701`, `0902`, `0901`, `0904`, `0907`, `0912` ➔ **Airtel**
  - `0805`, `0807`, `0705`, `0815`, `0811`, `0905`, `0915` ➔ **Glo**
  - `0809`, `0817`, `0818`, `0909`, `0908` ➔ **9mobile**
* The user can tap the logo pill to manually switch providers if their number was ported.

### 5.2 Preset Denomination Chips
* Rapid 1-tap selection grid: `₦100`, `₦200`, `₦500`, `₦1,000`, `₦2,000`, `₦5,000`.
* Real-time calculation shows the exact debit in **MSNW** tokens.

### 5.3 Two-Step Name Inquiry for Utilities (Electricity & Cable TV)
* When paying for electricity (Prepaid/Postpaid) or Cable TV (DStv/GOtv/StarTimes):
  - Typing the Meter/Smartcard Number triggers an instant lookup.
  - A confirmation modal pops up displaying:
    - *Customer Name* (from the utility provider)
    - *Address*
    - *Account Type (Prepaid / Postpaid)*
    - *Token Delivery Method*
  - Requires customer review before opening the Cashier sheet.

---

## 6. Screen A15 — Receipts & Post-Transaction UX

```
┌────────────────────────────────────────────────────────┐
│               MASANAWA TRANSFER RECEIPT                │
│                                                        │
│                 🟢 TRANSFER SUCCESSFUL                 │
│                      250.00 MSNW                       │
│                     (≈ ₦ 2,500.00)                     │
│                                                        │
│  Recipient:       Ahmad Ibrahim                        │
│  Masanawa ID:     8012 345 678                         │
│  Sender:          Bello Abubakar (8019 876 543)        │
│  Reference:       MSN-TX-20261020-8912401              │
│  Date & Time:     20 Oct 2026, 03:45 PM                │
│  Fee:             0.00 MSNW (Free)                     │
│  Narration:       For design work                      │
├────────────────────────────────────────────────────────┤
│  [ 💬 Share to Chat ]   [ 📥 Download ]   [ 📤 Share ] │
└────────────────────────────────────────────────────────┘
```

### 6.1 Clean, Focused Identifiers
* **Internal Reference (`MSN-TX-...`):** Unique, cryptographically signed transaction reference.
* **Sender & Beneficiary 10-Digit Masanawa IDs:** Cleanly displayed alongside display names.
* **Instant Status Badge:** 🟢 *Completed*, 🟡 *Pending / Processing*, 🔴 *Failed*.
* **Omissions:** *No NIP Session IDs and no "Money Saved" badges.*

### 6.2 Multi-Format Share Actions
1. **Share to Chat (Native WhatsApp / Masanawa Integration):**
   - Automatically renders an interactive, rich receipt bubble inside any selected Masanawa chat thread.
2. **Download / Share Image (PNG):**
   - Generates a clean 1080x1920 high-contrast branded card with green top bar, white receipt surface, and sharp typography.

---

## 7. Global KYC & Verification Progression

Rather than rigid domestic banking tiers (Tier 1/2/3 with low local caps), Masanawa employs a **flexible global compliance ladder**:

| Verification Status | Requirements | Daily Send Limit | Monthly Volume | Target Profile |
| :--- | :--- | :--- | :--- | :--- |
| **Unverified (Base)** | Phone/Email verification | 500 MSNW (≈ $500) | 2,500 MSNW | Casual chatting, tips, micro-transfers |
| **Verified (ID)** | Government ID / Passport + Live Selfie | 10,000 MSNW (≈ $10,000) | 50,000 MSNW | Standard users, creators, global remittances |
| **Pro / Merchant** | Business verification / Address proof | 100,000+ MSNW | Custom / Unlimited | Merchants, high-volume creators, P2P vendors |

* **Streamlined Verification Flow:**
  - Simple camera scan of passport, national ID card, or driver's license.
  - Automated facial liveness selfie check.
  - Verification typically resolves within 60 seconds via automated KYC provider.

---

## 8. Summary of Feature Matrix (OPay Adaptation to Masanawa)

| Feature | OPay Android Origin | Masanawa Implementation | Status |
| :--- | :--- | :--- | :--- |
| **Primary Account Handle** | Virtual Bank NUBAN (Phone-based) | **Unique 10-Digit Masanawa ID** (Not phone-based) | **Included** |
| **Transfer Rails** | NIBSS Inter-Bank NIP | **Internal Ledger P2P + Crypto Withdrawals** | **Included** |
| **Smart Clipboard Detection** | `ClipboardAutoReader` (NUBAN regex) | **Auto-detect 10-digit Masanawa IDs & Links** | **Included** |
| **Duplicate Transfer Guard** | `dialog_transfer_repeat_tips.xml` | **5-minute repeat transaction intercept modal** | **Included** |
| **Keypad Security** | `cashier_layout_pin_keyboard_view.xml` | **Custom in-app 3x4 numeric keypad + biometrics** | **Included** |
| **Airtime Telco Auto-Detect** | Prefix detection in `AirtimeTopUpActivity` | **Nigerian prefix auto-detection (MTN/Airtel/Glo/9mobile)** | **Included** |
| **Utility Name Lookup** | `ConfirmInfomationListDialog` | **Two-step meter/smartcard name verification dialog** | **Included** |
| **Balance Privacy** | `iv_eye_status` on home balance | **Global eye toggle for MSNW & fiat counter-value** | **Included** |
| **Receipt Design** | PDF/PNG with NIP Session ID | **PNG/Chat bubble with Masanawa Reference** | **Included** |
| **NIP Session ID** | Mandatory in OPay | *Excluded (Not inter-bank)* | **Removed** |
| **"Money Saved" Metric** | `item_transaction_details_cost_reduction.xml` | *Excluded (Unnecessary clutter)* | **Removed** |
| **USSD Gateway** | Pre-formatted USSD strings | *Excluded (No USSD gateway connection)* | **Removed** |
| **Local Banking Tiers** | Strict Central Bank Tier 1/2/3 | **Global KYC with high international limits** | **Adapted** |
