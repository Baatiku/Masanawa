# Masanawa — canonical product roadmap

**Owner scope reset: 24 October 2026.** This document replaces the prior feature-by-feature requirements for the original multi-asset/Rooms/human-messaging product in this repository. Original history remains in Git and in the separate untouched `Baatiku/Masanawa-App`. The owner-supplied refactor handoff is the decision source. Remote reset SHA `895e86a5` was not found on 24 October; source migration uses additive branches, not history reset.

## Outcome and non-negotiables

Deliver a small Masana-first application with exactly **Chats · Status · Wallet · Calls · Data** and necessary account/settings/admin subpages. Maintain the original app repository unchanged. All rates/credits are MB-based, integer and server-authoritative; **1 GB = 1,000 MB**. Social activity has no post-publication charge. Users may interact socially with posts but cannot author them. Individual calls and private conversations are between user and a platform Masana only.

In the active product **remove** human messaging/calls, Rooms, videos, human content publishing, public Masana creation/creator economy, group calls, P2P marketplace/escrow, crypto/MSNW/old Credits, blockchain transfers and withdrawals, non-data bills, retired web pages/jobs/listeners/integrations. Preserve historic financial obligations and unmodified applied migrations for compliance and reconciliation, but expose no legacy consumer flow or new write.

## Evidence semantics

- `[x]` means the exact requested scoped source and tests were merged; it is not a live acceptance claim.
- `[ ]` is incomplete, blocked or awaiting verification. Include exact SHA, commands and outstanding proof when checking.
- Provider API docs/test credentials, live transactions, handset, recovery, rollback, signed build and deployment have separate gates.
- PRs are partial handoffs; a draft, queued CI, mock success or pure code policy must not be called a finished product.

## Dependency-aware delivery plan

### Batch A — Scope, rooted journeys and source retirement

- [ ] Update all five root screens/links, Settings and deep-link maps to active scope. Chats opens Masana-only private threads; Status is one platform Masana feed; Calls is Masana audio only; Wallet and Data have dedicated new UI.
- [ ] Remove every human DM/call, group and Rooms consumer control, controller, handler, push intent and listener; remove Videos and human post composer, leaving social users/profiles/comments.
- [ ] Stop registering forbidden Gateway routes, background workers, endpoints and admin/legacy callbacks after auditing dependents; remove dead source, tests, assets, JS/native permissions and web navigation.
- [ ] Audit old links and forward legacy paths to safe tabs. Preserve account transition privacy, offline handling, notification safety, support/deletion and authorized platform publishing.
- [ ] Profile baseline vs final startup work, network idle traffic, dependency count and release size with measured values only.

### Batch B — MB ledger, welcome, requests, sends, tips and receipts

- [ ] Add forward PostgreSQL schema for integer MB accounts and separate Masana tip accounts; immutable double entries, purchased/restricted/reserved buckets, operation receipts, serializable row locks, idempotency, durable replay/status, account-switch fences.
- [ ] Exactly 500 welcome MB once to eligible phone-verified identity with phone-reuse and signup-abuse defenses. Can fund replies and call seconds only. No legacy imported balances.
- [ ] Whole-MB Send: username resolution -> verified identity -> amount -> review -> atomic debit/credit -> status/receipt; no human chat, no fees; self-send and overdraft rejected.
- [ ] Whole-MB Request: in-app counterpart and seven-day shareable link -> pending/paid/declined/cancelled/expired -> one-time explicit Send review -> paid original receipt; zero auto-charge.
- [ ] Tip Masana from chat/post: whole-MB -> explicit review -> atomic user debit and separate Masana tip ledger -> receipt and aggregate; no Masana cashout/redemption.
- [ ] Wallet card: compact glass-neutral, three-decimal-trimmed GB and exact grouped MB; restricted/reserved in expanded detail. Add data, Send, Request, Redeem data, activity and See all. Screen journey mapping in `SCREEN-JOURNEYS.md`.

### Batch C — Recharge rates, verified bank account and admin

- [ ] Server versioned packages: (GB/₦) **10/4,000; 20/7,500; 50/17,500; 100/32,500; 200/55,000; 280/70,000**; per-GB price strictly falls with package size; edit/rollout only with admin capability and optimistic version.
- [ ] Actual bank deposit determines MB tier: under ₦4,000 at ₦400/GB; ₦5,000 = 12,500MB; ₦7,500 = 20,000MB; above ₦70,000 at ₦250/GB. Floor whole MB and retain exact fractional monetary carry. Store rate version and proof with receipt.
- [ ] Verify Billstack API docs/contracts, webhook authenticity, eligibility/BVN, fees and test callback format with official provider. Until verified no live account allocation, webhook acceptance or funding credit.
- [ ] One persistent Billstack virtual account per eligible user and reassign/retry safely. Authenticate, verify independently, bind account+amount+currency+final state, dedupe and reconcile delayed/reversed events without negative spendable balance. Confirm only verified bank deposits.
- [ ] Admin route server capability gated by allowlisted verified email and recent authentication. Configure versioned tier/bundle availability, status, reconciliations, tip aggregates, approved platform Masana publication, immutable audits; no manual balance adjustments.

### Batch D — Whole-GB Flutterwave redemption and charged Masana interactions

- [ ] Data route: phone -> network -> admin-approved Flutterwave structured whole-GB bundle and validity -> MB cost review -> confirm -> reserve -> provider -> status/receipt/reversal. Zero fee. No ambiguous/bonus/MB-only bundles. Insufficient balance returns Add data with original draft.
- [ ] On unknown outcome, keep reservation and reconcile original external transaction, never repeat a purchase blindly. Delivered only when verified; definitive failure releases, reversal credits once.
- [ ] Conversation reply: reserve 1MB, successful uniquely delivered reply captures once, failure releases. Welcome first for eligible usage; same request idempotency on crash/retry.
- [ ] Call: server funded time and provider-expiring session enforced in real calls, connected seconds only, greeting included not double-charged, release unused credit, refuse overspend on reconnection.

### Batch E — Production cutover and measured verification

- [ ] SQL migration fresh install + upgrade; no old liability conversion; rollback/compensation, backups, duplicate/concurrent transfer and forged funding provider fixtures.
- [ ] Full TS, PG concurrency/reversal, Flutter analyses/widgets, 320dp/200%-text/RTL, crash/account switching/offline/privacy/permissions and accessible readers.
- [ ] Real authorized Billstack/Flutterwave staging then qualified production paths; network/delivery readback, consumer handset, audio/call/disconnect; blocked providers keep controls unavailable.
- [ ] Check forbidden route/API reachability, old push/deep-link safety, startup/idle/profile/release size measurements. Signed APK only on explicit owner request.

## Active source work in progress, 24 October (NOT merged/accepted)

- **PR #377** branch `feat/gb-wallet-rate-and-usage-foundation-oct24`: pure exact monetary recharge quote/carry + restricted usage MB policies, Gateway read-only package and preview API. No ledger/provider writes; CI verification pending.
- **PR #378** branch `feat/gb-wallet-data-navigation-oct24` (draft): new GB Wallet/Data root screens and old-route redirects; balance and purchase deliberately unavailable, pending #377 ledger and client tests.
- **PR #379** branch `feat/status-masana-only-root-oct24` (draft): remove Status Videos tab and human composing while keeping current Masana feed; backend publication/video APIs/source cleanup still open.

## Provider/authority blockers

- Billstack no-BVN, webhook verification, assigned account and fees are UNVERIFIED (official docs returned HTTP 403 in prior research). Secrets in Railway only.
- Existing Flutterwave catalogue does not prove an exact whole-GB allowance; allowlist only provider IDs with separately verified structured allowance/validity.
- Old Credits/MSNW amounts are neither new MB funding nor eligible for conversion; historic data preservation and closing liabilities are separate administrative obligations.
- CI/Flutter/real PG, phones, provider qualification and production rollout must be performed before calling this refactor complete.

Only this roadmap is the active checklist. Original phase tasks and prior 177-screen/820-item scope no longer describe the new target, but remain inspectable through Git history, preserving historical provenance.
