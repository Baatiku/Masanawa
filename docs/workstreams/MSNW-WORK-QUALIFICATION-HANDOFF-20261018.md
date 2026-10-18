# Masanawa Wallet · MSNW · Billing · Crypto · P2P — executable Work qualification handoff

**Prepared:** 2026-10-18. **State:** merged implementation source, UNEXECUTED automated regression/production qualification. Do not infer token deployment or fund movement from a successful merge.

## Reconcile these sources

Read `AGENTS.md`, `CONTINUE-HERE.md`, `docs/workstreams/P2P-18-IMPLEMENTATION-20261018.md`, `docs/workstreams/UI-MUI-07-wallet.md`, `docs/workstreams/UI-CONTINUATION-QUEUE-20261012.md`, `docs/workstreams/MSNW-FINANCIAL-CONTINUATION-20261018.md`, and `docs/workstreams/MSNW-SIGNED-ISSUANCE-OPERATIONS-20261018.md`. Consult `Baatiku/Software-Factory-starter-kit` latest `SKILL.md`, `AGENTS.md` and relevant exact-path handoff/verification references. Preserve PR #183 and all historical Cr/MSN/NGN/financial records without invented conversions or deletion.

This workstream started from main `20eea16b1c89cef7b0ed74d0d78b4f2058cb39d9`. Changes delivered and individually merged:

| PR | Merge SHA | Functional scope |
| --- | --- | --- |
| #192 | `6411a5043e05adac4c982dd5e82a9c6192e9dd3e` | Crypto conversion original idempotency key lookup; protected encrypted exact-request persistence, readback and retry after restart. |
| #193 | `fc5e438182897ecbf31d41c77a64bf15a85baf68` | Signed Ed25519 operator reserve+mint approvals, exact rate/amount, immutable Paystack bank payout matching, staged admission, new additive `0132_msnw_signed_admission.sql`, CLI and issuance runbook. Does not itself broadcast or sign live token mint. |
| #194 | `fe18fa7c0c107f6af5631a44de1736bfb8efba55` | Current-catalog Billing Buy Again; previous quote is never reused. |
| #195 | `076640b72c020cec851d1b46c5d96a276fa87f0a` | P2P offer seller display and actual verified bank-method status; improved order cards. Neither is proof of a verified legal identity. |
| #197 | `615646ba36882d7e65b18cd88c8d552f0322fc32` | Same-owner cross-device crypto pending-payout fencing and client message. |
| #198 | `ba920f319e9d86517cd53b9be7af0ce88e374a94` | Verified fiat vs bank-payout vs genuinely issued MSNW funding receipt, exact issued micro display. |
| #200 | `cf4e32fb9d3da415278f919b1b1398509488e4ae` | Retained same-account offline transaction history, resume refresh and 320dp/large-font Wallet shortcuts. |
| #202 | `2995646629b6a454d5d06543a8526080c5d1edc2` | Seller Pause/Resume/Close offer, server ownership, verified payment method and current MSNW liquidity checks; no change to accepted escrow. |

A concurrent unrelated Worker monitoring PR #201 merged after #202 as main `5f7928786bfa21d3c453519fed87dc6e22c88f79`. Another workstream's security PR #199 was open when this handoff was authored. Start from freshly fetched actual main, inspect any further merged branches and reconcile exact-path ownership; do not overwrite their changes.

**Source release caveat:** These PRs are code integrated, not tested qualified. GitHub Actions runs routinely fail with `steps=[]` due to runner/platform failures before commands. This is not evidence of TypeScript, Dart or provider bugs, nor a pass. No real token was deployed, no signed mint broadcast, no genuine reserve/contract/rate fabricated, and no live provider transaction was initiated. Existing PostgreSQL financial rows/escrow were not modified by these source PRs.

## Railway production entries prepared WITHOUT fake values or redeployment

Project `f6d9af7c-5be4-457b-9614-936687391aea`, environment `24403de4-aa8d-42a2-8da9-838e98cdb9e1`, Gateway `c90abb29-f649-4c65-a7b4-333f8056227b`, Worker `c7922006-6039-4364-a37f-860d85fe9d3a`.

New blank **Gateway** entries: `MSNW_CHAIN_ID`, `MSNW_TOKEN_CONTRACT`, `MSNW_RPC_URL`, `MSNW_BILLING_RATE_KOBO_PER_MSNW`, `MSNW_CONVERT_USD_MICRO_PER_MSNW`, `NOWPAYMENTS_WITHDRAWAL_ALLOWLIST_JSON`.

New blank **Worker** entries: `MSNW_CHAIN_ID`, `MSNW_TOKEN_CONTRACT`, `MSNW_RPC_URL`, `MSNW_CUSTODY_ADDRESS`, `MSNW_TOKEN_BYTECODE_SHA256`, `MSNW_MINT_PRICE_KOBO_PER_MSNW`, `MSNW_RESERVE_APPROVER_PUBLIC_KEY`, `MSNW_MINT_APPROVER_PUBLIC_KEY`.

These **14 blank keys** were seeded with `skipDeploys:true`. User must supply valid real values (public Ed25519 DER SPKI keys only—private approver keys MUST remain offline). Existing Paystack, Flutterwave, NOWPayments and encryption credentials were not overwritten. Provider route and payout 2FA must still be proven live. Railway deployments previously `NEEDS_APPROVAL`; online PostgreSQL must never be replaced or cleared.

## Required executable Work tests and repairs

1. Create fresh **real checkout** and branch from current `origin/main`. Run `pnpm install --frozen-lockfile`; `pnpm --filter @masanawa/gateway-service typecheck`; `pnpm --filter @masanawa/worker-service typecheck`; `pnpm exec vitest run services/gateway/src/msn_wallet services/gateway/src/p2p services/worker/src/jobs/msnw`; `pnpm build`. If runner unavailable, provision/repair a working one without altering production, report exact evidence. Repair **introduced** failures and merge patches; do not treat 0-job-step GitHub runs as actual source test results.
2. Apply `0132_msnw_signed_admission.sql` to **disposable seeded PostgreSQL first** using canonical migration system. Test immutable signature row, stage/quote mismatch, key separation, incorrect bank payout, reversal, expired quote, duplicate and concurrent signed admissions, real three-stage journal and reference replay. Ensure reserve attestations cannot be falsely inferred from Paystack settlement or a screenshot. Test CLI message/admit using generated test Ed25519 keypairs only. Run contract Foundry `forge build`, `forge test`, verify on-chain event/ABI/bytecode and refund/backing negative scenarios. On live migration, first backup and verify existing schema/data; no destructive DDL or mutation of old records.
3. Test `msnw_custody_send_recovery.test.ts`, `usdt_conversion_recovery_routes.test.ts`, `usdt_conversion.test.ts`, `custody_issuance.test.ts`, `chain_finality.test.ts`, `reserve_audit.test.ts`, `paystack_merchant_settlement.test.ts`, `paystack_fiat_status.test.ts`, `offer_management.test.ts`, P2P escrow PG integrations, actual-custody double-spend, two-device **different** and **same** request keys, provider timeout, rejection/2FA failure, and out-of-order provider callbacks. No duplicate payout, custody credit, P2P release or fiat bill execution; uncertain results retain original recovery reference and reservation.
4. On Flutter in `apps/mobile`, execute `flutter pub get`, `dart analyze` focused changes and full project, targeted `flutter test` on `test/msnw_billing_recovery_test.dart`, `test/billing_repeat_product_test.dart`, `test/msnw_funding_receipt_stages_test.dart`, `test/p2p_trader_display_test.dart`, `test/ui/msnw_history_offline_responsive_test.dart`, existing P2P/Wallet/Crypto/Billing tests. Check 320/360/390/430 widths, 1x/2x text, RTL, keyboard insets, screen reader labels, dark/light, audio/media unaffected, auth account switch, locked/offline/permission/loading/empty/error/resume states. Fix and merge any introduced errors. Build installable Android debug/release APK once source compiles; do not claim device tests that were not run.
5. Execute supported provider **read-only** Paystack settlement/DVA, Flutterwave product/biller/recipient and NOWPayments route/fee/liquidity/withdrawal evidencing against the actual configured account. Before live movements, require user-supplied verified chain/contract, reserve and custody information and real operator signatures and approval. Do not fabricate test deposits or switch on financial provider features with placeholder env values. Recover uncertain provider payout by external evidence, do not blindly re-POST withdrawals.
6. Verify Gateway/Worker source `Baatiku/Masanawa/main`, Railway migrations/startup/safety, backup and rollback; staged deployments require explicit env readiness and healthy `/readyz` plus actual routes. Preserve volumes/PostgreSQL. Distinguish `IMPLEMENTED_UNVERIFIED`, `TESTED_SIMULATED`, `DEPLOYED_VERIFIED`, `LIVE_PROVIDER_QUALIFIED`, `HANDSET_ACCEPTED` (last owner handled). Never label 0 live issuance as fully delivered.
7. Reconcile owner test PR #199 and other workstreams before touching their exact paths. Use source PRs/SHA-specific handoffs and merge all compatible tested fixes into main, note merge SHAs; report actual E2E evidence and truly external pending requirements.

## Last mile external eligibility

The live token's address, chain, genesis supply, governance mint role, treasury custodian address and runtime bytecode hash must be **real and independently verifiable**; reserve attestations must come from actual custody/bank evidence. Conversion requires funded NOWPayments liquidity, approved network/destination whitelist, payout verification and reconciliation, explicit fee/rate policy. Publisher product claims are not acceptance. The owner will fill blank Railway values and manually test the APK; final real chain and provider financial operations need those validated prerequisites.

## Finished-when rule

Do not stop at source checklists, no-op tests or another handoff. Run the commands, fix failures, test actual client/server/provider adapter interactions, merge compatible corrections and provide exact deployed/released evidence, then identify only true external/provider/device blockers. Never weaken identity/security or mutate outstanding escrow or historical balances.
