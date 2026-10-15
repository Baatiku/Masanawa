# MSNW financial implementation and whole-product checklist — 2026-10-15

This file is the single durable checklist for the owner's October 15 four-workstream assignment. Source status is distinct from production acceptance. Newer owner requirements supersede historical MSN/Credits assumptions. MSNW is the only customer-facing wallet credit/token; Bodi is Gwani's male voice and Fora is the female voice. **Never turn historical Credits/MSN/NGN into MSNW by relabeling, and never issue tokens before backing and custody are proven.**

## Baseline and integration

- Repository: Baatiku/Masanawa; base main 1d6d47fbd8065aa0ba6ee4d2cd94a3cfc4d338f4 (PR #19).
- Completed PR #22: b542c7106987c46529516d96ff74a3e226dbc905 (Paystack customer/DVA onboarding and Billing fail-closed improvements).
- Completed PR #40: ac3749eb65ce89ddffbed35f377569a90543ff7f (DB evidence integrity and Worker mismatch detection).
- Completed PR #37: ede2c890ffea0d0ce7d1560c0a5fc44e9a7168ab (Gateway/Worker/Flutter/PostgreSQL funding-obligation journal and recovery).
- Completed PR #33: 11e5d145e1e2d5390f2f0b769629574f6668223f (signed Paystack KYC webhook recovery and revalidation).
- Completed PR #29: 39842f458638ccc80928f80e791344a8a07ab9bf (phone-only enrollment and complete identity fields).
- Completed PR #24: ced8df8a1a1d283f3fbbf45a2dd91f67a856bdbb (role-separated mint/burn controls, Foundry deployment config and source tests).
- Main advanced independently to ad940610b66c7f8817add88a3bd4ac1ad8aa50cd (chat/WS2, no changed-file overlap) while this branch was being developed.
- Source commits include 7a63d6c (enrollment migration), 8a8f9fb and 295d2a9 (Paystack service), e89f2c4 (routes), 179dec0 and 537309d (Gateway app/startup), 07e6cd1 and 1d39611 (Flutter funding), 7c44cb8/c641e50 (Gateway test), de7a698 (Billing fake-data/unsafe-debit removal).
- PR #22 merged source; provider/device/Flutter/PostgreSQL tests not executed in the connector-only runtime. Production issuance qualification still PENDING. Solidity/Foundry test suite is source only until dependencies and forge are installed. Do not interpret source additions as actual issued MSNW.
- No production PostgreSQL data was edited by these GitHub source changes. Existing Ledger/Paystack/Flutterwave/crypto provider paths preserved.

## Workstream 1 — MSNW Wallet, Paystack, Billing, crypto

- [ ] **IN PROGRESS — Paystack enrollment, consent, customer creation and DVA:** added authenticated GET/POST /v1/wallet/msnw/funding/enrollment, SQL 0123, Flutter KYC form. Existing DVA source: services/gateway/src/msn_wallet/paystack_dva.ts, paystack_dva_routes.ts, commerce migration 0120. Missing customer contact attributes can now be supplied with signed-in, consented enrollment; account-change fencing protects existing canonical session claims. Added independently Paystack-confirmed signed customeridentification.success / failed webhook handling, retry from failed validation, and valid-to-verified transition before DVA; tests authored, production/customer provider qualification still outstanding.
- [ ] **IN PROGRESS — verified transfer to backed issuance:** signed verified Paystack webhook, immutable provider-fiat evidence already exist in services/gateway/src/msn_wallet/paystack_fiat_evidence.ts and commerce/0122. Added immutable commerce/0125 funding obligations, wired automatic registration to independently verified Paystack payment and canonical Worker recovery for interrupted journal writes; Wallet activity now distinguishes journal registration. Still requires treasury reconciliation, quote/rate, custody-backed issuance, provider reversal handling, mint confirmation; no obligation can itself authorize a mint.
- [ ] **IN PROGRESS — official blockchain token/custody/supply/mint/burn:** Solidity source at contracts/msnw/MasanawaToken.sol now has isolated governance/minter/burner/pauser, replay-proof mint and custodian-only burn; Foundry chain-bound deploy source and focused tests at contracts/msnw/script/DeployMasanawaToken.s.sol, test/MasanawaToken.t.sol and foundry.toml. Verified on-chain read in msnw_onchain_balance.ts. No deployed contract, signed custody, customer binding challenge, supply-reserve audit or production mint/burn Worker yet. Must not fabricate address or supply.
- [ ] **IN PROGRESS — canonical MSNW balances/history/receipts:** existing legacy MSN ledger, fiat journal and immutable Paystack evidence are not spendable MSNW. Funding obligation and append-only future settlement-event schema are now present; canonical MSNW custody available/reserved account and balanced Send double-entry journal are added in migration 0127 with authenticated Gateway read/history and Flutter panel. Backed issuance, deposit confirmation and proof-linked credits, conversions and fee/reserve transitions still need implementation.
- [ ] **IN PROGRESS — authenticated Send:** New platform-custodied MSNW Send ledger, authenticated recipient preview/confirm, zero-fee double-entry atomic transfer, balance history/receipt and Flutter Send are source-implemented in migration 0127 and Gateway/Flutter. Custody starts at zero; independent backed issuance/deposit recognition and real production device/provider qualification still block funded end-to-end Send. Do NOT confuse external on-chain holdings with available platform custody.
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
## Source delivery increment 3

- Implemented opt-in legal/contact identity fields on mobile for customers without a complete Paystack-ready profile; the Gateway preserves existing login identity and only accepts missing contact attributes or a separately recorded legal name. Added phone-only enrollment account-fencing test. Source branch feat/msnw-complete-contact-identity-20261015; merged as PR #29 at 39842f458638ccc80928f80e791344a8a07ab9bf.

## Source delivery increment 2

- New contract burn commit b0f58c1, Foundry config 376276e, deployment script db2bd62, Solidity tests 08c5024, docs 56a3b06. Safe burn is caller-custody-only and requires BURNER_ROLE; globally consumed settlement references prevent cross mint/burn replay.
- Live execution of this deployment script, chain choice, contract verification and signer/key setup have NOT happened. Require actual signed chain deployment before setting address.

## Source delivery increment 4

- Added `MsnwPaystackEnrollmentService.handleProviderIdentification`, dispatch from existing raw HMAC-protected Paystack finance webhook and compose same enrollment service instance in Gateway. Only matching customer id/code/email and independently observed Paystack `identified=true` can grant DVA identity. Failed verification returns to retryable enrollment without losing customer ID. Late failure never downgrades verified onboarding. Tests: services/gateway/src/msn_wallet/paystack_customer_enrollment.test.ts and paystack_identity_webhook.test.ts. No payment issuances or deployed contracts. Merged as PR #33 at 11e5d145e1e2d5390f2f0b769629574f6668223f.

## Source delivery increment 5

- New migration `packages/commerce/migrations/0125_msnw_funding_obligations.sql` and Gateway `msn_wallet/funding_obligations.ts` store only immutable NGN obligations created by SELECT from verified Paystack evidence. Owner/global ref conflicts fail closed, exact replay is idempotent, and there is no token issuance or user-provided rate.
- Existing Paystack verification automatically registers the obligation. The canonical Worker (`services/worker/src/main.ts`, `jobs/msnw/funding_obligations.ts`) resumes interrupted registration through a bounded, non-overlapping scheduler. Flutter recent funding activity shows journal-recovery state versus registered-but-backing-pending.
- Added Gateway/Worker regression tests in `funding_obligations.test.ts` and `jobs/msnw/funding_obligations.test.ts`. Source/auth/tests have not been executed against real PG/Paystack in this connector session; staged reserve/quote/mint/Send/Convert/escrow obligations remain IN PROGRESS, not DONE. Integrated in PR #37 at ede2c890ffea0d0ce7d1560c0a5fc44e9a7168ab.

## Source delivery increment 6

- `packages/commerce/migrations/0126_msnw_settlement_integrity.sql` rejects any funding obligation whose owner, amount or proof differs from immutable verified Paystack evidence. It serializes append-only settlement events under a row lock and rejects absent or mismatched prior reserve/quote/contract/amount/transaction-hash stages.
- `services/worker/src/jobs/msnw/funding_obligations.ts` audits all existing registered obligations against original evidence before its next recovery batch and refuses to continue on mismatch (no claimed money or token supply). Regression tests: `services/worker/src/jobs/msnw/funding_obligations.test.ts` and `packages/commerce/src/msnw_settlement_integrity.test.ts`.
- This schema validates internal evidence consistency, **not** bank reserve sufficiency or chain finality. It neither creates mint authority nor supplies a real contract address. Real custodian, quotes, chain workers, withdrawals, Send, Convert and service settlement still remain NOT DONE. Integrated as PR #40, merge SHA ac3749eb65ce89ddffbed35f377569a90543ff7f.

## Source delivery increment 7

- `packages/commerce/migrations/0127_msnw_custody_send.sql`: adds tenant-scoped MSNW custody available/reserved subledgers initialized to ZERO, exactly two immutable signed entries per Send, PostgreSQL deferred balance check at COMMIT, guarded accounts and journal.
- `services/gateway/src/msn_wallet/custody_send.ts` and `custody_routes.ts`: authenticated recipient email/+phone resolution, explicit preview confirmation against server identity, sorted account locks, atomic debit+credit, idempotency, transaction history/receipts, no conversion from historical MSN/Cr/NGN or unbacked Paystack evidence. Compose via `app.ts` and `main.ts`.
- `apps/mobile/lib/src/finance/msnw_custody_send.dart` and Wallet screen: Send now opens the canonical sheet, exact six-decimal amount parser, consent confirmation, account-change safety, request-key replay and receipt; Wallet shows custody balances and activity distinctly from any external on-chain holdings.
- Tests added: `services/gateway/src/msn_wallet/custody_routes.test.ts`, `adapters/storage/postgres/src/commerce/msnw-custody.integration.test.ts` (test DB only), `apps/mobile/test/finance/msnw_custody_send_test.dart`. **Tests are authored, not yet run in this connector-only environment.**
- The absence of a qualified custodial issuance/chain finalization leaves all real customer custodial balances zero; building Send's ledger does NOT create tokens or fully complete a funded Send. Current branch is to be merged in PR with SHA recorded afterward.
