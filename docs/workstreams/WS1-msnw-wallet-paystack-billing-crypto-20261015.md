# MSNW financial implementation and whole-product checklist — 2026-10-15

This file is the single durable checklist for the owner's October 15 four-workstream assignment. Source status is distinct from production acceptance. Newer owner requirements supersede historical MSN/Credits assumptions. MSNW is the only customer-facing wallet credit/token; Bodi is Gwani's male voice and Fora is the female voice. **Never turn historical Credits/MSN/NGN into MSNW by relabeling, and never issue tokens before backing and custody are proven.**

## Baseline and integration

- Repository: Baatiku/Masanawa; base main 1d6d47fbd8065aa0ba6ee4d2cd94a3cfc4d338f4 (PR #19).
- New feature branch: feat/msnw-paystack-customer-onboarding-20261015.
- Main advanced independently to ad940610b66c7f8817add88a3bd4ac1ad8aa50cd (chat/WS2, no changed-file overlap) while this branch was being developed.
- Source commits include 7a63d6c (enrollment migration), 8a8f9fb and 295d2a9 (Paystack service), e89f2c4 (routes), 179dec0 and 537309d (Gateway app/startup), 07e6cd1 and 1d39611 (Flutter funding), 7c44cb8/c641e50 (Gateway test), de7a698 (Billing fake-data/unsafe-debit removal).
- Full test/merge/production qualification: PENDING as of this initial checklist version. Do not interpret source additions as actual issued MSNW.
- No production PostgreSQL data was edited by these GitHub source changes. Existing Ledger/Paystack/Flutterwave/crypto provider paths preserved.

## Workstream 1 — MSNW Wallet, Paystack, Billing, crypto

- [ ] **IN PROGRESS — Paystack enrollment, consent, customer creation and DVA:** added authenticated GET/POST /v1/wallet/msnw/funding/enrollment, SQL 0123, Flutter KYC form. Existing DVA source: services/gateway/src/msn_wallet/paystack_dva.ts, paystack_dva_routes.ts, commerce migration 0120. Complete production/customer tests, provider compatibility and identity-capture onboarding for signed-in profiles lacking both email and phone.
- [ ] **IN PROGRESS — verified transfer to backed issuance:** signed verified Paystack webhook, immutable provider-fiat evidence already exist in services/gateway/src/msn_wallet/paystack_fiat_evidence.ts and commerce/0122. Need treasury reconciliation, quote/rate, custody-backed issuance, provider reversal handling, mint confirmation; evidence must stay pending until actual backing.
- [ ] **IN PROGRESS — official blockchain token/custody/supply/mint/burn:** Solidity source at contracts/msnw/MasanawaToken.sol and verified on-chain read in msnw_onchain_balance.ts. No verified deployed chain/contract, binding challenge, controlled live signer, supply reserve ledger or production mint/burn/reconciliation. Must not fabricate address or supply.
- [ ] **IN PROGRESS — canonical MSNW balances/history/receipts:** existing legacy MSN ledger, fiat journal and immutable Paystack evidence are not spendable MSNW. Build canonical MSNW issuance/spending journal with available, pending and reserved projection plus receipt lifecycle; use PostgreSQL identity and on-chain confirmations.
- [ ] **IN PROGRESS — authenticated Send:** Wallet Send callback is not backed by a canonical MSNW transfer. Add verified recipient binding, reservation, idempotency, token execution, receipt/history and Flutter confirmation.
- [ ] **IN PROGRESS — Convert:** Wallet Convert button is deliberately unbound. Build NOWPayments quote TTL, fees, consent, execution, irreversible side-effects and recovery before enabling.
- [ ] **IN PROGRESS — Receive and crypto deposit/withdraw:** on-chain bound-address read and Receive UI exist. Deposit detection/finality, custody handling, network/address validation, confirmed withdrawals, gas/fee recovery remain.
- [ ] **IN PROGRESS — NOWPayments fixed-egress integration:** provider adapters/relay historically exist; actual conversions, payout retries/recovery and provider settlement still need canonical MSNW attachment.
- [ ] **IN PROGRESS — Billing through MSNW:** apps/mobile/lib/src/screens/billing/billing_screen.dart now removes fabricated Wema/9928374610 fallback, invented Flutterwave catalog items and old Credits/NGN wallet-spend UI. Fund directs to authenticated Paystack DVA sheet. Actual MSNW reservation/debit → Flutterwave order → verified receipt/refund is NOT connected. Billing purchase is not represented as successful in the interim.
- [ ] **IN PROGRESS — retire old Credits/MSN spending in Chat/Calls/gifts/paid services:** still uses historical payment paths; require reconciled financial migration and canonical MSNW admission/release, not silent balance mapping.
- [ ] **IN PROGRESS — shared transaction identity:** Gateway PostgreSQL Worker Flutter must share MSNW operation, request, provider reference, chain transaction and final receipt identities with ordered reconciliation.

## Workstream 2 — Chat, voice, calls and channels (not modified by this financial branch)

- [ ] **IN PROGRESS —** Authenticated Masana text chat, persistence, streaming, retries and history; review current chat PR separately.
- [ ] **IN PROGRESS —** Voice note record/upload/play/download/persist, independent from continuous calls.
- [ ] **IN PROGRESS —** Photo/video/document/audio attachments and picker actions.
- [ ] **IN PROGRESS —** Continuous Gemini Live, Gwani/Bodi and female/Fora, interruption, reconnect, transcript.
- [ ] **IN PROGRESS —** Incoming/outgoing calls, background ringing, missed-call history, FCM.
- [ ] **IN PROGRESS —** Replace legacy Credits paid-call admission/settlement with canonical MSNW.
- [ ] **IN PROGRESS —** WhatsApp personal linked-device QR, persistent admin session and shared conversation context.
- [ ] **IN PROGRESS —** Telegram webhook/identity linking and inbound/outbound supported media.
- [ ] **IN PROGRESS —** Same authorized Wallet/Billing operations across chat/voice/channels, user confirmation for charges.
- [ ] **IN PROGRESS —** All 26 Masana personas with portraits, skills, conversations, voices and Room links.

## Workstream 3 — Status, Videos, Rooms, admin (not modified by this financial branch)

- [ ] **IN PROGRESS —** Private Status storage, uploads, playback and persistent media.
- [ ] **IN PROGRESS —** Scheduled Worker publishing, leased jobs, retry/moderation/admin schedule.
- [ ] **IN PROGRESS —** YouTube recovery/synchronization and permitted YouTube/TikTok/Facebook playback.
- [ ] **IN PROGRESS —** Feed reactions, comments, follow, save and media navigation.
- [ ] **IN PROGRESS —** All 26 professional Rooms, lessons, questions, direct Gemini responses.
- [ ] **IN PROGRESS —** Room membership, invitation, subscription, renewal, expiry/cancel and paid MSNW settlement.
- [ ] **IN PROGRESS —** Extend existing apps/admin_mobile and Ops rather than new admin.
- [ ] **IN PROGRESS —** Admin Masana profiles/portraits/skills/social/schedules/posts/videos/Rooms/finance.
- [ ] **IN PROGRESS —** Firebase call, Room reply and financial/service notifications.
- [ ] **IN PROGRESS —** Remove obsolete Twins/human chat/public posts/Credits labels/fake placeholders/inactive actions.

## Workstream 4 — MSNW P2P and escrow (not modified by this financial branch)

- [ ] **IN PROGRESS —** Customer P2P offers, price, limits, payment methods.
- [ ] **IN PROGRESS —** Authenticated offer discovery, order creation, seller token reservation and escrow.
- [ ] **IN PROGRESS —** Buyer payment instructions, claims and order status.
- [ ] **IN PROGRESS —** Authorized payment evidence; screenshot/claim alone must never release escrow.
- [ ] **IN PROGRESS —** Release/cancel/expiry/refund/dispute/authorized admin resolution.
- [ ] **IN PROGRESS —** Fees, canonical ledger receipts/idempotency and interrupted-order recovery.
- [ ] **IN PROGRESS —** Flutter P2P screens and admin dispute management.
- [ ] **IN PROGRESS —** Wallet balances/activity/notification integration.

## External-only prerequisites and next source priorities

- Paystack merchant KYC/API production compatibility and actual identity callbacks/validation; no client-supplied provider customer ID is trusted. The server requires canonical user name, email and phone; missing details require a proper profile completion journey.
- MSNW chain/contract deployment, wallet ownership proof, governance controls and backed custody before any token issuance/spend.
- NOWPayments account/relay approvals and payout credentials, Flutterwave provider fulfillment, and Railway/PostgreSQL availability are operational dependencies; provider variables being configured is not proof of executed transactions.
- Recommended next implementation: create audited, immutable NGN reserve → minted MSNW issuance intent/transaction journal, tightly coupled to existing Paystack evidence, on-chain signer with settlement references, Worker confirmation/reorg/reversal reconciliation, then authenticated Send, conversions, Billing, and P2P. Finish independent Chat/Rooms/admin work in separate exact-path lanes.
- Source validation when available: pnpm --filter @masanawa/gateway-service build; pnpm exec vitest run services/gateway/src/msn_wallet/paystack_customer_enrollment.test.ts; cd apps/mobile && flutter analyze lib/src/finance/msnw_identity_enrollment.dart lib/src/finance/msnw_paystack_funding_sheet.dart lib/src/screens/billing/billing_screen.dart; flutter test; PostgreSQL migration tests. Tests written are not tests executed.

Progress labels indicate incomplete journeys even when historic source fragments already exist. Only mark DONE after the full listed source slice is actually wired and tested; distinguish production from development merge.