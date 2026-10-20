# Masanawa Wallet & Payments Architecture: AI Developer Implementation Guide

**Document ID:** `GUIDE-AI-DEV-WALLET-20261020`  
**Target Audience:** Autonomous Coding Agents & Core Developers  
**Design System:** Strong Green/White WhatsApp-like Aesthetic (`#075E54`, `#00A884`, `#FFFFFF`, `#E9EDEF`)  
**Currency Standard:** Primary customer-facing token: **MSNW** custody token, plus major crypto assets (**USDT**, **USDC**, **SOL**, **BTC**, **ETH**) and real-time fiat counter-value (USD / NGN).  
**Parent Specifications:** [`docs/MULTI-CURRENCY-WALLET-AND-P2P-SPEC.md`](file:///c:/Users/Besta/Masanawa/docs/MULTI-CURRENCY-WALLET-AND-P2P-SPEC.md) & [`docs/OPAY-WALLET-PAYMENT-BENCHMARK.md`](file:///c:/Users/Besta/Masanawa/docs/OPAY-WALLET-PAYMENT-BENCHMARK.md).

---

## 1. Golden Rules & Boundary Constraints (READ FIRST)

1. **NO Domestic Inter-Bank NIP Transfers:**
   - Masanawa transfers are **internal P2P transfers** (between Masanawa users on our internal ledger) or **external on-chain crypto withdrawals**.
   - Do **NOT** implement Nigerian bank pickers, NIP Session IDs, NIBSS downtime alerts, or USSD gateways.
2. **NO "Money Saved" Clutter:**
   - Do not display "Money Saved" metrics on receipts or screens. Keep UI minimal and WhatsApp-like.
3. **10-Digit Masanawa Account Number (User ID Number):**
   - Every user gets a uniquely generated, persistent 10-digit number (e.g., `8012 345 678`) stored in `security.platform_user_profiles.masanawa_account_number`.
   - It is **NOT** their phone number. It is formatted cleanly with spaces and has a 1-tap copy button on the Wallet screen.
4. **Zero-Gas Internal P2P Transfers:**
   - Any transfer between two Masanawa users (whether sending MSNW, USDT, SOL, or BTC) executes off-chain with **0 gas fee** and **instant settlement**.
5. **Global KYC Compliance Ladder:**
   - Do **NOT** implement domestic Tier 1/2/3 local banking restrictions. Use universal verification (Unverified -> Verified ID -> Pro Merchant) with generous global volume limits.
6. **Mobile UI Aesthetics:**
   - 5 root tabs: *Chats · Status · Wallet · Calls · Rooms* (Chats default).
   - WhatsApp-like clean layout: top green app bar or clean white surface, 48dp touch targets, dark readable text (`#111B21`), light dividers (`#E9EDEF`).

---

## 2. Architecture & File Inventory

```
masanawa/
├── packages/
│   ├── security/migrations/
│   │   └── 0113_masanawa_account_number.sql             <-- User 10-digit ID schema & generator
│   └── commerce/migrations/
│       └── 0134_multi_asset_wallet_and_transfers.sql   <-- Multi-asset custody & P2P journal
├── services/gateway/src/msn_wallet/
│   ├── custody_send.ts                                  <-- Recipient resolution & send logic
│   ├── custody_routes.ts                                <-- Fastify routes: /v1/wallet/lookup & send
├── apps/mobile/lib/src/
│   ├── finance/
│   │   ├── msnw_wallet_home.dart                        <-- Wallet Home portfolio & asset list
│   │   ├── crypto_wallet_screen.dart                    <-- Token deposit QR & external withdrawal
│   │   └── wallet_flow_page.dart                        <-- Dual-rail Send sheet (P2P + On-chain)
│   ├── ui/components/
│   │   └── pin_keyboard.dart                            <-- Custom 3x4 in-app numeric keypad
│   └── commerce/
│       └── airtime_bills_screen.dart                    <-- Airtime & Utility bills (prefix auto-detect)
```

---

## 3. Module-by-Module Implementation Guide

### Module 1: Database & Migrations

#### A. 10-Digit Account Number
*File:* `packages/security/migrations/0113_masanawa_account_number.sql`
- Adds column `masanawa_account_number text` to `security.platform_user_profiles`.
- Constraint: `/^[0-9]{10}$/`.
- Function: `security.generate_masanawa_account_number()` generating a random 10-digit number starting with `8` (e.g., `8000000000` to `8999999999`) with collision check.
- Hook into user signup / onboarding to assign this number automatically.

#### B. Multi-Asset Custody & P2P Journal
*File:* `packages/commerce/migrations/0134_multi_asset_wallet_and_transfers.sql`
- Table `commerce.multi_asset_custody_accounts`: Stores spendable balance per user per currency (`MSNW`, `USDT`, `USDC`, `SOL`, `BTC`, `ETH`).
- Table `commerce.p2p_custody_transfers`: Records every zero-gas internal transfer with sender, recipient, token, amount, and reference (`MSN-TX-...`).
- Table `commerce.crypto_deposit_addresses`: Stores deterministic public addresses per user per currency and network (`TRC20`, `BEP20`, `ARBITRUM`, `SOLANA`).

---

### Module 2: Gateway Backend API (`services/gateway`)

#### A. Name Inquiry API (`GET /v1/wallet/lookup?query=...`)
*File:* `services/gateway/src/msn_wallet/custody_routes.ts` & `custody_send.ts`
- **Purpose:** Fast real-time lookup when sender types an account number or handle.
- **Request:**
  ```http
  GET /v1/wallet/lookup?query=8012345678
  Authorization: Bearer <token>
  ```
- **Resolution Priority in `custody_send.ts`:**
  1. If query is 10 digits (`/^[0-9]{10}$/`) ➔ query `security.platform_user_profiles.masanawa_account_number`.
  2. If query starts with `@` or handle pattern ➔ query `talks.public_profiles.handle`.
  3. Fallback to email / phone.
- **Response Shape:**
  ```json
  {
    "found": true,
    "userId": "usr_98124",
    "displayName": "Ahmad Ibrahim",
    "handle": "ahmad",
    "accountNumber": "8012345678"
  }
  ```

#### B. Internal P2P Transfer API (`POST /v1/wallet/msnw/send`)
- Supports any currency token (`asset: "MSNW" | "USDT"`).
- Atomic SQL execution: debits sender, credits recipient, inserts ledger operation.
- Validates that `senderUserId !== recipientUserId`.
- Enforces idempotency key to prevent double debits.

---

### Module 3: Flutter Mobile Frontend (`apps/mobile`)

#### A. Wallet Home Screen (`apps/mobile/lib/src/finance/msnw_wallet_home.dart` & `wallet_screen.dart`)
1. **Total Portfolio Header Card:**
   - Display total value in USD & MSNW.
   - Persistent `Eye` toggle (`_isHidden` saved via `flutter_secure_storage`).
   - 10-Digit ID pill:
     ```dart
     Row(
       children: [
         Text("Masanawa ID: 8012 345 678", style: TextStyle(fontWeight: FontWeight.bold)),
         IconButton(
           icon: Icon(Icons.copy, size: 16),
           onPressed: () {
             Clipboard.setData(ClipboardData(text: "8012345678"));
             HapticFeedback.lightImpact();
             showToast("Account number copied");
           },
         ),
       ],
     )
     ```
2. **Quick Actions Row:**
   - `[ ↗ Send ]`: Opens Dual-Rail Send sheet.
   - `[ ↙ Deposit ]`: Opens Token Deposit QR flow.
   - `[ ⇄ Swap ]`: Instant MSNW <-> USDT swap modal.
   - `[ ⚡ Bills ]`: Airtime, Data, and Utility bill payment.
3. **"My Assets" Token List:**
   - Display token rows: MSNW, USDT, USDC, SOL, BTC, ETH.
   - Show logo, symbol, available balance, and fiat conversion.
   - Tapping an asset opens an action drawer (Send, Deposit, History for that token).

#### B. Dual-Rail Send Sheet (`apps/mobile/lib/src/finance/wallet_flow_page.dart`)
1. **Segmented Tabs:**
   - Tab 1: **"To Masanawa User"** *(Default - Zero Gas Fee)*
   - Tab 2: **"To Crypto Address"** *(External On-Chain)*
2. **P2P Mode Logic:**
   - Recipient TextField: Listen to input changes. When length == 10 digits or matches handle:
     - Fire debounced query to `/v1/wallet/lookup?query=...`.
     - Render smooth slide-in recipient card showing avatar, verified name, and handle.
   - **Duplicate Transfer Guard:**
     - Check local storage for identical transfers (`recipient + amount`) within the last 5 minutes.
     - If detected, display an alert dialog:
       > *"You transferred 50 USDT to Ahmad Ibrahim 2 minutes ago. Are you sure you want to send another 50 USDT?"*
   - **Smart Clipboard Auto-Reader:**
     - On page init or app resume, inspect clipboard with `Clipboard.getData()`.
     - If a 10-digit number is found, show bottom banner:
       > *"Account number detected in clipboard: 8012345678. Transfer now?"*
       Tapping pre-fills the field.
3. **External Crypto Mode Logic:**
   - Validate address syntax per selected network (TRC20: `^T[1-9A-HJ-NP-za-km-z]{33}$`, EVM: `^0x[a-fA-F0-9]{40}$`, Solana: base58).
   - Display dynamic network gas fee estimate.

#### C. Custom In-App 3x4 Keypad (`apps/mobile/lib/src/ui/components/pin_keyboard.dart`)
1. **Structure:**
   - A 3x4 `GridView`:
     - Row 1: `1`, `2`, `3`
     - Row 2: `4`, `5`, `6`
     - Row 3: `7`, `8`, `9`
     - Row 4: `[Biometric Button]`, `0`, `[Delete Button]`
2. **Security Advantage:**
   - Does not invoke OS system keyboard (bypasses 3rd party keyloggers and accessibility scrapers).
   - Provide light haptic feedback on every keypress.
3. **Biometric Shortcut:**
   - Bottom-left button triggers `local_auth` (Face ID / Fingerprint). On success, auto-submits with the stored biometrically encrypted transaction token.
4. **Weak PIN Rejection:**
   - Rejects consecutive digits (`123456`, `654321`) and repeated digits (`000000`, `111111`).

#### D. Streamlined Deposit Flow (`apps/mobile/lib/src/finance/crypto_wallet_screen.dart`)
1. Step 1: User selects Token (USDT, USDC, SOL, BTC, ETH, MSNW).
2. Step 2: User selects Network (e.g. For USDT: TRC-20, BEP-20, Arbitrum, Solana).
   - Display speed & fee badges next to each network.
3. Step 3: High-contrast QR code, formatted address text, 1-tap copy button with haptic feedback, and network safety warning.

#### E. Airtime & Utility Bills (`apps/mobile/lib/src/commerce/airtime_bills_screen.dart`)
1. **Telco Prefix Auto-Detection:**
   - Auto-selects provider upon typing 4 digits:
     - `0803`, `0806`, `0703`, `0813`, `0903`, `0906` ➔ **MTN**
     - `0802`, `0808`, `0708`, `0812`, `0902`, `0901` ➔ **Airtel**
     - `0805`, `0807`, `0705`, `0815`, `0905`, `0915` ➔ **Glo**
     - `0809`, `0817`, `0818`, `0909`, `0908` ➔ **9mobile**
2. **Preset Denomination Chips:**
   - Rapid chips: `₦100`, `₦200`, `₦500`, `₦1,000`, `₦2,000`, `₦5,000` + Custom Input.
   - Shows real-time token cost in **MSNW**.
3. **Two-Step Utility Lookup:**
   - For electricity and cable TV, automatically queries meter/smartcard number and displays a verification card (Customer Name, Address, Account Type) before PIN entry.

#### F. Chat-to-Wallet Synergy
1. In conversation composer, add `+ -> Pay / Transfer`.
2. Selecting it opens a compact Cashier sheet.
3. Once completed, render a rich transaction bubble in the chat thread showing:
   - Green completed checkmark.
   - Transferred token amount (e.g., `50 USDT` or `250 MSNW`).
   - "View Receipt" button that opens the transaction receipt modal.
4. Any message containing a 10-digit number renders the number as a clickable link that opens the Send Money screen.

---

## 4. Acceptance Criteria & QA Checklist

- [ ] **10-Digit ID Assigned:** New accounts and existing accounts have a unique 10-digit Masanawa Account Number.
- [ ] **Name Inquiry Works:** Typing 10 digits resolves the recipient's name, handle, and avatar within 300ms.
- [ ] **Zero-Gas P2P Transfer:** Transferring MSNW or USDT to a Masanawa ID debits the sender, credits the recipient, and incurs **0 fee**.
- [ ] **Duplicate Guard Triggers:** Sending the same amount to the same user within 5 minutes displays the confirmation intercept.
- [ ] **Deposit Screen:** Switching networks updates the QR code and address instantly; copy button displays visual and haptic feedback.
- [ ] **In-App Keypad:** Payment PIN entry uses the custom 3x4 keypad with biometric shortcut.
- [ ] **No Bank Lists / NIP IDs:** Domestic bank picker and NIP Session IDs are absent from the transfer flows.
- [ ] **Receipt Generation:** Receipts display Masanawa internal reference (`MSN-TX-...`), sender, recipient, and status, with 1-tap "Share to Chat".

---

## 5. Developer Commands & Execution Checklist

```bash
# 1. Inspect migration files
cat packages/security/migrations/0113_masanawa_account_number.sql
cat packages/commerce/migrations/0134_multi_asset_wallet_and_transfers.sql

# 2. Verify gateway routes
# Check services/gateway/src/msn_wallet/custody_routes.ts
# Check services/gateway/src/msn_wallet/custody_send.ts

# 3. Flutter tests
cd apps/mobile
flutter test test/crypto_wallet_test.dart
flutter test test/wallet_milestone_test.dart
```
