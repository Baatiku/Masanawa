# MSNW financial continuation — 18 October 2026

**Status: IMPLEMENTED_UNVERIFIED scoped source, integrated to main. Not production-qualified.**
Read `AGENTS.md`, `CONTINUE-HERE.md`, `docs/workstreams/P2P-18-IMPLEMENTATION-20261018.md`, `docs/workstreams/UI-MUI-07-wallet.md` and `docs/workstreams/UI-CONTINUATION-QUEUE-20261012.md` before choosing exact unclaimed implementation paths.

## Pinned source and preserved work

Base source `1d8d10d5e3cba8816337e983010f1578ba29722c` includes merged PR #183 (`f95ed21e9174869642d7fd7983e639beca6549a7`) and #184–186. Four additional source PRs are merged in dependency order:

| PR | Source merge SHA | Implementation files and result |
| --- | --- | --- |
| #187 | `325bae52cbd5eb1ed457161b6825d23f99c084e5` | `services/gateway/src/msn_wallet/paystack_fiat_evidence.ts` and new `paystack_fiat_status.test.ts`. New/replayed verified Paystack references now re-read owner-scoped current merchant-payout and issued status instead of always reporting backing pending. |
| #188 | `8c67df136df49a917002f1a202b010fc7ee41948` | Worker `paystack_merchant_settlement.ts` and test: immutable historical Paystack payouts may receive independently re-verified late evidence; mismatched original proof is rejected; bounded deep-page rotation removes the permanent five-page ceiling. |
| #189 | `d08491bb675aa473c769384dc6f45da538aa0f05` | Same Worker module/test: `subaccount=none`, positive effective merchant-bank amount, net/gross bounds, full transaction sum and provider pagination checks before recording payout proof. |
| #190 | `f4437e3acb37b87071b588264fdd191d790504a8` | `services/worker/src/jobs/msnw/chain_finality.ts`, `reserve_audit.ts`, tests, `services/worker/src/main.ts`. Finalized official contract code/decimals/custody balance/total supply attestation; read-only PG available+reserved custody liability coverage preflight before issuance recovery. |

No customer funds, ledger values, old Credits/MSN history, P2P escrow records, production database tables or provider transfers were changed by these development PRs. The existing on-chain mint verifier and custody journal already existed; do not reimplement them.

## Actual execution and environment evidence

- At latest main `f4437e3acb37b87071b588264fdd191d790504a8`, GitHub Actions workflows failed **before steps**. Foundation CI run `39117373739` had a failed job with zero steps. This is neither passing nor failing Vitest/TypeScript source evidence.
- The assistant container has Node 22 and TypeScript but cannot resolve `github.com`; it lacks the checked-out private repository and Flutter/Dart. No local repository command, Flutter analyzer, provider integration test, live chain transaction, APK, Android screen review or real PostgreSQL acceptance was executed.
- Connected Railway project `f6d9af7c-5be4-457b-9614-936687391aea`, environment `24403de4-aa8d-42a2-8da9-838e98cdb9e1`: PostgreSQL online; Gateway and Worker deployments `NEEDS_APPROVAL` after source merges. Both services now point to `Baatiku/Masanawa` main.
- Worker has `PAYSTACK_SECRET_KEY` **by variable name** but does not currently list `MSNW_CHAIN_ID`, `MSNW_TOKEN_CONTRACT`, `MSNW_RPC_URL`, `MSNW_CUSTODY_ADDRESS`, or `MSNW_TOKEN_BYTECODE_SHA256`. Missing real verified chain configuration leaves the read-only reserve and issuance poller unmounted. Do not invent addresses or values.
- The official Paystack settlement API documentation confirms `GET /settlement`, `GET /settlement/:id/transactions`, `subaccount=none`, `total_processed`, `total_amount`, `effective_amount`, and `meta.pageCount`: https://paystack.com/docs/api/settlement/ . Live responses were **not** fetched from the user's Paystack account.

## Executable next-run checks (unrun)

```bash
pnpm install --frozen-lockfile
pnpm exec vitest run services/gateway/src/msn_wallet/paystack_fiat_status.test.ts \
  services/worker/src/jobs/msnw/paystack_merchant_settlement.test.ts \
  services/worker/src/jobs/msnw/chain_finality.test.ts \
  services/worker/src/jobs/msnw/reserve_audit.test.ts \
  services/worker/src/jobs/msnw/custody_issuance.test.ts
pnpm --filter @masanawa/gateway-service typecheck
pnpm --filter @masanawa/worker-service typecheck
```

Use disposable PostgreSQL for provider-failure, replay, batch idempotency, shortfall and cross-tenant tests; do not mutate live customer balances during tests. Also review reserve/issuance behavior using real finalized RPC and matching deployed bytecode before authorizing movement.

## Essential source work still open

1. **MSNW issuance path:** a source-complete independent bank-reserve proof + executable exact-value MSNW pricing/expiry authority, authenticated operator/governance approval, staged `backing_qualified` → `mint_authorized` → `chain_submitted` journal transitions, safely signed on-chain mint, finalized result and replay/reversal reconciliation. Existing `chain_finalized` and balanced custody crediting must be reused. No unbacked mint or fabricated rate.
2. **Real provider qualification:** confirm exact token network, contract, governance roles, custody signer, reserve and Paystack merchant-bank settlement evidence. Independently qualify NOWPayments liquid routes/limits, destination allowlist, payout 2FA, fee mode and uncertain payout reconciliation. Only configured real capabilities may be exposed.
3. **Customer journeys:** complete server-supported Billing product validation, reference-linked support/repeat recipient flow, P2P verified counterparty identity/revised quotes/disputes, cross-device concurrent retries and accessibility/offline/resume. Preserve PR #183 and the WhatsApp-like five-tab presentation; next relevant UI queue: `UI-CONTINUATION-QUEUE-20261012.md` MUI-07/08 outstanding acceptance and MUI-09 once integrated.
4. **Evidence:** GitHub runners or an actual checkout must execute tests; final owner-led handset/provider acceptance remains separate. No current source or CI merge proves live MSNW issuance.

**Next action:** continue implementing the first source-complete missing issuance/governance slice on fresh main with exact-path ownership; do not create a new ledger, label fiat deposits spendable, synthesize token deployment or repeatedly rebuild the finished P2P marketplace. Preserve disjoint UI work and merge compatible source PRs promptly.
