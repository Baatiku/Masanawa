# Notifications, discovery & activity — implementation handoff

**Scope:** P0/P1 ten-point owner milestone. Source branch `feat/notification-discovery-privacy-20261018`, PR #207. Captured 2026-10-18.

## Source implementation

1. Firebase: existing registration/foreground/background and protected open routes preserved. Registration now serializes installation+token ownership and evicts other account/tenant registrations; push preview/call channel handling updated. Real device/provider proof is **not** claimed.
2. Categories: six separate server-enforced settings for Masana messages, calls, Rooms, Status, Wallet and P2P, managed through the authenticated Flutter Settings page.
3. Quiet hours: account-persisted local clock range and UTC offset, enforced by common FCM sender; urgent incoming calls, P2P deadlines, wallet security notices exempt.
4. Alert history: PostgreSQL account-scoped, idempotent redacted history; signed-in mobile Activity tab, refresh/retry/empty states and authorized destinations.
5. Financial alerts: transactional SQL triggers on independently verified Paystack funding, chain-backed MSNW issuance, custody transfers, billing state settlement, USDT payout audit; existing P2P outbox preserved. No customer-side financial claims or ledger changes.
6. Missed calls: transition from ringing to missed writes an idempotent queued alert that navigates to authenticated Calls; call history is still authoritative for identity.
7. Discovery: one screen for Masana directory, authorized chats, Rooms and latest approved Status page; partial source errors do not disable other categories. Public feed search is **latest-page only**, not a full historic index.
8. Recent search: eight encrypted account-namespaced terms, serial writes, safe history clear/retry controls and signed-in session fencing.
9. Deep links: validated `masanawa://` and HTTPS paths for Room, Masana, Status, wallet transaction and call history; cold-start deferred navigation and account-changing fences. Android intent filters added; Android verified assetlinks deployment is not claimed.
10. Privacy: generic locked-screen previews with Android PRIVATE visibility; fixed-event notification identifiers; no money amounts, private message content or peer financial data in device previews.

## Verification evidence

- Added TypeScript tests for notification settings authorization, strict payload validation, quiet hours, category mapping, previews and financial outbox delivery; expanded Flutter deep-link test cases.
- GitHub Actions on this head report failures **with zero job steps**; no executable CI result established. No local Flutter/Node workspace checkout was available in this environment. Actual FCM registration, foreground/background delivery, direct-boot unlock, account switching on installed phones, provider callbacks and exact migration application require release qualification.
- Required next executable commands from a checked-out SHA: `pnpm install --frozen-lockfile && pnpm test:ci && pnpm typecheck`, `cd apps/mobile && flutter pub get && flutter analyze && flutter test`; run migration dry-run or staging migration before live rollout. Verify assetlinks JSON matches release signing cert; physically test at least two distinct user accounts on one handset.

## Migrations and operations

Apply **additive** `packages/agents/migrations/0014_mobile_notification_policy.sql` followed by `packages/commerce/migrations/0132_msnw_financial_alerts.sql` through the canonical runner. Existing ledger balances, receipts, historical transactions and escrow are not altered. The queue is leased and retried with a bounded delay; financial updates do not invoke payment or provider methods. Configure `MASANAWA_FIREBASE_SERVICE_ACCOUNT_JSON` on both Gateway and Worker and build Flutter with its existing Firebase environment contract. Without server credentials, financial alert history is created but FCM delivery is unavailable.
