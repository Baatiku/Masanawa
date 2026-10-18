# Privacy, account deletion and financial retention — 2026-10-18

## Implementation baseline

PR #199 landed on `main` at `a09a82b4031fa3a571d3f5940bf47f6f96f6ddd0`. It makes the Gateway fail closed when financial authorization is absent, prevents client-side 401 mutation replays, prohibits cross-origin bearer forwarding, fences account changes, purges encrypted action grants, disables release cleartext and Android private-data backups, and adds negative security tests.

The Worker now runs `services/worker/src/jobs/privacy/account_deletion.ts` in the existing Worker lifecycle, every 60 seconds, using the existing PostgreSQL connection and canonical `createPostgresAccountDeletionAccessRevoker`. The additive identity migration `0007_account_deletion_worker_progress.sql` adds only the worker's last-check timestamp/index. It does not update balances, provider receipts, financial ledger, orders, custody or escrow.

## Automated journey

1. A signed-in customer requests account deletion through the existing Settings screen; OTP delivery and five-attempt verification are purpose-bound, and the request is immutable until the next server transition.
2. The Worker considers only `identity-verified`, `awaiting-settlement` and `processing` requests. No user IDs or requested stages are taken from a job payload.
3. In an account-scoped transaction, it enumerates tenant-scoped tables in the `commerce` schema and checks every recognized owner column using parameterized queries. Catalog outage, missing tables, financial activity or unexpected database errors **cannot** produce clearance. An account with any financial record enters `awaiting-settlement`, with an audit event and no wallet action, provider call or erasure.
4. For an account with no financial footprint, the Worker transitions to `processing`, then calls the canonical access revoker. The revoker repeats the financial check under its own request transaction, atomically disables the identity, revokes sessions, unlinks communication channels, stops presence/push, and persists a one-time revocation receipt.
5. In a further transaction, the Worker requires that revocation receipt, rechecks the financial inventory, deletes the permitted tenant/user-scoped private chat attachments, chat turns, shell snapshots, device credentials and Masana follow preferences, clears relationship preferences, unlinks external identities, replaces the profile contact identifiers with an irrecoverable per-account tombstone, and appends a `completed` state event.
6. Any failed intermediate step rolls back its own transaction, leaves the request retryable and never fabricates `completed`. Concurrent runs respect revision checks. Poll fairness uses `last_checked_at`.

**Financial-account deletion remains on hold** until an independently reconciled, retention-qualified clearance method is implemented for its specific obligations. This worker deliberately does not substitute the absence of pending callbacks for a settled balance; it preserves all MSNW, NGN, P2P, crypto and historical financial records. Post-deletion compliance/operation identifiers and immutable historical agent-run metadata may remain under separately applicable retention policy. Do not advertise instant universal erasure or claim completed financial-account deletion from a code merge.

## Verification commands

```bash
corepack pnpm install --frozen-lockfile
corepack pnpm exec vitest run services/worker/src/jobs/privacy/account_deletion.test.ts services/gateway/src/private_chat_media_authorization.test.ts services/gateway/src/financial_mutation_guard.test.ts tests/security/android-private-data.test.ts
corepack pnpm --filter @masanawa/worker-service typecheck
cd apps/mobile
flutter test test/auth_credential_fencing_test.dart test/session_state_test.dart test/wallet_account_fencing_test.dart
flutter analyze
```

For PostgreSQL qualification use a disposable/restorable isolated database with the full migration set and demonstrate: other-account media/receipt/order IDOR denied; concurrent deletion requests; real funds/mint/payout/P2P hold; no-finance user verification, revocation, private-data readback and tombstone; interruption after revocation and replay without duplicate audit; callback arriving during deletion; provider signature tampering; direct API calls with stale sessions. Run an actual Android release build, inspect manifest and backup extraction policy on Android 11/12+, verify secure storage after account switching, and repeat on a low-memory device. Device/provider tests and CI **cannot** be reported as passing until executed.

## Safety and operational notes

- All financial histories are immutable and retained. Never delete or rewrite legacy Credits/MSN entries as MSNW.
- No live user data is purged just by merging source. Destructive deletion requires the customer's own verified request plus server-side processing/clearance.
- The Worker logs only generic error categories, never tenant/user IDs, tokens, contact identifiers or financial details.
- If the Worker is unavailable, requests remain durable; recovery occurs on restart.
- Review lawful retention per jurisdiction before expanding erasure targets; don't assume a single country governs the global platform.
- A failed external provider check must not cause an obligation to disappear or cause silent deletion.
