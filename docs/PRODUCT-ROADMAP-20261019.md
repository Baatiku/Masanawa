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

## Retired Home HTTP and legacy CI qualification — 25 October

The historical Gateway `GET /home` response previously returned fixed Rooms cards although the five-tab app no longer uses those Rooms. Retire that server endpoint and its Rooms/assistants schema; keep `/agent/directory` for authenticated Masana selection. Delete retired MSNW-P2P/Rooms/Status-video-only CI definitions and replace them with a PostgreSQL-backed retained Status, MB wallet and historical escrow compatibility gate. Keep historical escrow data, reconciliation workers, forward migrations and signed callback handling. Update Masana roster and communication regression workflows to avoid obsolete Rooms, human-call and human-contact test targets. No APK, real-provider acceptance, hosted fixed-IP relay, or applied schema mutation is part of this batch. Exact-head hosted CI remains the merge gate.

## Disabled creator and external-video Gateway startup — 25 October

Retire eager construction and `GatewayAppOptions` wiring for user-created Masana, creator-completion/policy and external-video catalogue/source review services because Lite mode never registers those customer routes. Keep approved platform-Masana publishing through `registerMasanaRoutes`, the retained Status runtime and secure provider-callback pathways for historical financial liability. Source packages and applied database migrations remain in history/working tree pending separate import/dependency and data-retention audit. This is runtime-composition deletion, not real-provider or production qualification.

## Latest owner UX direction — source audit and plan

The [Status/wallet audit and concrete plan](FEED-WALLET-UX-AUDIT-AND-PLAN-20261025.md) records the new-window feedback and supersedes conflicting earlier UI/pricing proposals. **Planned, not implemented:** canonical Masana portraits; whole-card/detail interaction; horizontal Like/reactions with proper Like icon; remove feed flags; package chooser separate from bank instructions; proposed 10 GB at ₦500/GB with decreasing tiers through 2 TB; Send/Request balance/recipient/quick amounts; network-logo and validity-filtered Data; full wallet/call histories and branded PDF/image receipts. Positive whole-MB Send is allowed; redemption remains at least 1,000 MB and approved whole-GB bundles. Live price authority is unchanged pending implementation. Flutterwave docs/test qualification is blocked by current network access and redacted credential access; fixed-IP hosting remains on hold. No APK.

Retirement evidence: #400 was already merged; #402 mobile, #403 worker, #404 route isolation, #405 mirrored web deletion and #406 mixed mobile cleanup are merged. [Backend source deletion](RETIREMENT-BACKEND-SOURCE-BATCH-20261025.md) follows; historical reconciliation dependency code and immutable migrations remain protected.

## Owner UX and communication repair checklist

**Active execution checklist for the combined owner feedback.** Source audit baseline: main `0c1dc595` (#421). Read [the original Status/wallet plan](FEED-WALLET-UX-AUDIT-AND-PLAN-20261025.md) and [the Chats/calls/OPay addendum audit](CHAT-CALL-WALLET-ADDENDUM-AUDIT-20261025.md). These documents explain this single checklist; they are not competing task trackers. New requirements below supersede conflicting older screen order/filter/pricing proposals. **All implementation items remain unchecked until evidence is attached.** No APK; Flutterwave fixed-IP hosting remains on hold; separate Masanawa-App and historical financial records remain protected.

Cross-window protocol: use stable IDs in branches/PRs; record the exact owner, claimed files and base SHA here before overlapping implementation. Keep shared router/bootstrap/ledger/migrations under one integrator. On completion replace `Evidence: pending` with PR/commit and test outcomes, distinguishing source/mocked tests from real PG/provider/device checks. Do not tick an entire batch because a plan or one widget test merged. Merge each verified batch automatically under existing owner authorization.

### P0 — Restore reliable chat, notes, calls and identity before polish

- [ ] **UX-R01** Establish affected app/API/Gateway SHAs and compare the last verified working version; reproduce text, recorded note and call failures separately. Evidence: pending.
- [ ] **UX-R02** Replace active mobile calls to retired `/agent/twin/voice/*` Credits admission with one-to-one Masana MB admission/settlement. Confirmed source mismatch and observed quote 404 are in the addendum; do not restore retired customer routes or bypass balances. Evidence: pending.
- [ ] **UX-R03** Diagnose `/agent/live/token` 500s using redacted stage/error codes; verify canonical authorization/profile, configured provider/model/voice, token request and actual connection for support and non-support Masana. Keep approved voice identities. Evidence: pending.
- [ ] **UX-R04** Restore text-chat terminal delivery: auth/session/stream/status/history, reconnect/retry and actionable error states. Distinguish SSE headers from successful completion and preserve original request identity. Evidence: pending.
- [ ] **UX-R05** Restore recorded voice note end to end: permission/recording/file/MIME/upload/transcript/reply/playback; meaningful text remains when audio fails; bounded original-request recovery without duplicate messages. Evidence: pending.
- [ ] **UX-R06** Connect authoritative reply/call MB reserve → confirmed outcome → settle/release; 1 MB/successful reply and started connected second, zero failed/setup/ringing charge, restricted welcome rules and restart/reconnect reconciliation. Historical Credits are not MB. Evidence: pending.
- [ ] **UX-R07** Verify cancellation, logout/account switch, app pause/audio interruption, microphone release, temporary media cleanup and session fences across text/note/call. Evidence: pending.
- [ ] **UX-R08** Add actual reduced-Gateway/mobile contract coverage so a retired route cannot pass mocked voice tests; run relevant TS/PG/Flutter checks and real authorized audio/device recovery. Record BLOCKED separately where unavailable. Evidence: pending.

### Chats — One conversation list, ordered by message activity

- [ ] **UX-C01** Remove All, Unread and Archived chips plus filter-only state/branches from the active inbox; keep conversation search and unread/read state. Evidence: pending.
- [ ] **UX-C02** One thread per Masana, newest real sent/received message activity first with stable tie breaking; opening/closing a screen, drafts and failed retries do not promote old threads. Prevent pinned-first ordering from contradicting the requested default chronology. Evidence: pending.
- [ ] **UX-C03** Merge received/server search/history results into the existing thread without duplicates; preserve scroll, search, retries, pagination and offline results. Define safe visibility/recovery of previously archived histories without deleting records or recreating the removed chip row. Evidence: pending.
- [ ] **UX-C04** Update canonical journey and meaningful tests for no filter chips, chronology, late/replayed messages, close/reopen, archived compatibility, account switch and empty/error/offline states. Evidence: pending.

### Portraits — Use the existing Masana pictures consistently

- [ ] **UX-P01** Fix call-history rows that omit the matching directory entry when constructing the canonical avatar. Test an approved renamed Masana and correct image asset, including cached-directory loading. Evidence: pending.
- [ ] **UX-P02** Verify all 26 approved portrait assets, server ID/portraitKey projection, media approval/ownership, serialized/cache metadata and account-safe refresh. Investigate missing keys before changing fallback rules; never match a canonical identity by mutable name. Evidence: pending.
- [ ] **UX-P03** Reuse canonical portraits in Chats, picker, chat header, live call, call history/detail, Status header/detail and Saved. Preserve safe placeholder only for genuine missing/loading/revoked identity and visibly retry failed metadata. Evidence: pending.
- [ ] **UX-P04** Verify actual rendered portraits and offline fallback on device, rename/cache migration and account switch; asset-existence tests alone do not finish this task. Evidence: pending.

### Status — Primary visual redesign

- [ ] **UX-S01** Shared polished card with canonical portrait/name/AI identity/time, readable body, coherent spacing and media hierarchy across feed/Saved/detail. Evidence: pending.
- [ ] **UX-S02** Body/card tap opens detail; remove compulsory Open post button; avatar/name opens profile, image opens viewer, audio and nested actions operate independently and navigate once. Preserve list position. Evidence: pending.
- [ ] **UX-S03** Proper thumbs-up Like, horizontal Like/Comment/Share actions, compact anchored horizontal Like/Love/Care choices; no vertical/bottom-docked picker or wrapping action stack. Preserve historic other reactions without rewriting records. Evidence: pending.
- [ ] **UX-S04** Remove feed flag/report buttons, feed overflow/detail entry and unused callbacks; preserve required account/comment safety elsewhere. Evidence: pending.
- [ ] **UX-S05** Reliable reaction/count/save/share/tip state, optimistic rollback, pending/retry/idempotency and account fences; explicit reviewed MB tips and user-initiated sharing. Evidence: pending.
- [ ] **UX-S06** Multiple-image handling, text expansion, captions/accessibility, missing media, audio, loading/empty/offline/stale/deleted content and bounded refresh/pagination; warmth without fabricated activity. Evidence: pending.
- [ ] **UX-S07** Golden/widget/navigation and real visual review at 320 dp, 200% text, RTL, contrast, screen reader, focus and reduced motion. Evidence: pending.

### Wallet layout and OPay-inspired journey refinement

- [ ] **UX-W01** Quick actions use the exact two-row layout: **Redeem | Add data**, then **Request | Send**. Match focus/semantic order and preserve destinations, 320 dp and large-font usability. Evidence: pending.
- [ ] **UX-W02** Apply inspected `opay-decloned` phone/operator, bundle allowance/price/validity and separate review/result patterns using Masanawa branding. Implement the gap list in the addendum; keep MB/Data scope. Evidence: pending.
- [ ] **UX-W03** Add data chooser contains packages/custom quantity and Continue; review and persistent bank-account instructions are separate routes. No bank details on the package chooser; preserve drafts/back, account-assignment errors and pending funding. Evidence: pending.
- [ ] **UX-W04** Implement the proposed 10 GB at ₦500/GB starting tier and decreasing ladder through 1 TB/2 TB only through a versioned server authority after fulfillment-cost/fee/margin/limits checks. Earlier plan's intermediate rates are proposals, not active rates. Evidence: pending.
- [ ] **UX-W05** Custom whole-GB quotes show exact total and actual deposit-derived MB; test tier crossings, over/underpayments, exact kobo/carry and delayed/reversed/deduplicated funding. Do not promise inconsistent quantities or reprice historical receipts. Evidence: pending.

### Send and Request

- [ ] **UX-T01** Send begins with the same authoritative wallet balance card; show available/sendable distinction, remove the unwanted descriptive paragraph and preserve actionable validation. Evidence: pending.
- [ ] **UX-T02** Send quick amounts 100 MB/500 MB/1 GB/5 GB/10 GB plus custom amount and Max; allow every positive whole MB, including below 1 GB. Max excludes welcome/reserved/frozen funds and is revalidated on review/commit. Evidence: pending.
- [ ] **UX-T03** Shared recipient lookup/selection with canonical avatar, name and unique @handle/stable ID; handle duplicate names, self-transfer, cancellation, debouncing and privacy without losing draft. Evidence: pending.
- [ ] **UX-T04** Request gets quick amounts/custom input and clear requester/recipient roles; preserve incoming/sent, explicit reviewed Pay, cancel/decline/expiry, seven-day validity and single-payment enforcement. Evidence: pending.
- [ ] **UX-T05** Preserve atomic MB movement, original operation IDs, no duplicate confirmation, account/recovery holds, stale quote handling and durable receipt/readback; verify real PG concurrency and client error/retry states. Evidence: pending.

### Data redemption and provider verification

- [ ] **UX-D01** Remove visible All networks choice; explicit MTN/Airtel/Glo/9mobile selection with approved logos and accessible labels. Portability-safe recipient/network handling; contact/recent-number convenience only with appropriate private/manual fallback. Evidence: pending.
- [ ] **UX-D02** Daily/Weekly/Monthly filters scoped to the selected verified network; exact allowance/validity/MB price on adaptive bundle cards and clear loading/empty/stale/error states. Define provider-evidenced duration mapping and handle other valid durations explicitly. Evidence: pending.
- [ ] **UX-D03** Separate recipient/bundle selection → review → explicit confirm → pending/result/receipt. Changes invalidate old quotes; Back preserves draft. Retain original-reference purchase lock and no automatic resubmission. Evidence: pending.
- [ ] **UX-D04** Redemption is at least 1,000 MB and only approved exact-whole-GB bundles using purchased sendable MB; quote freshness, network/customer and budget verified on server. Wallet TB tiers do not invent network TB bundles. Evidence: pending.
- [ ] **UX-D05** Obtain current official Flutterwave contract and authenticated test catalogue evidence using existing protected test credentials; qualify all four networks' IDs/allowance/validity. Current docs/API proxy 403 and redacted credential access remain explicitly BLOCKED; fixed-IP hosting stays on hold. Evidence: pending.
- [ ] **UX-D06** Qualify supported test-mode delivery/readback/webhooks against the durable MB reserve/settlement journal: success/rejection/unknown/duplicate/restart/late result/reversal. No HTTP-200-only delivery claim, secret logging, paid test or live fallback. Evidence: pending.

### Activity, receipts and complete call history

- [ ] **UX-H01** Wallet Activity has polished recent rows and right-aligned See all; full paginated/filterable history with purpose/counterparty/status, period funding/spending and reconciled balances. Evidence: pending.
- [ ] **UX-H02** Authoritative transaction detail and receipt cover funding/send/receive/request/tip/replies/calls/redeem/reservation/release/reversal; do not count release as income or mix old financial balances into MB. Evidence: pending.
- [ ] **UX-H03** Branded PDF and PNG/image receipt preview/export/share with Masanawa logo, receipt/reference, exact MB/GB, status/time, relevant fees/funding NGN/rate version and privacy-safe counterparty. Original data authority, safe temp-file cleanup and account fences; optional scoped CSV history. Evidence: pending.
- [ ] **UX-H04** Complete one-to-one Masana call timeline/detail: portrait, outcome, connected duration, reconciled MB usage/receipt, date groups/search/filter/pagination and correct redial. No invented charges from client timestamps or retired human/group routes. Evidence: pending.
- [ ] **UX-H05** Verify empty/loading/offline/retry, filter totals, pending/reversed exports, PDF pagination/image readability, system-share cancellation, account change and privacy. Evidence: pending.

### Call screen and Notifications

- [ ] **UX-L01** Larger canonical live-call portrait (proposed 144–176 dp, responsive), clear name/state/connected timer and stronger labeled controls with distinct prominent End action. Evidence: pending.
- [ ] **UX-L02** Mute/audio route/End states, microphone denial, interruption/resume, headset/Bluetooth/speaker, reconnect, accessible announcements, Masana-first greeting and ringback teardown work with the real session. Evidence: pending.
- [ ] **UX-L03** End/Back/account switch releases microphone/audio focus/foreground service/tones/timers and reconciles usage once; responsive short/landscape/320 dp/200%-text/RTL and actual audible device acceptance. Evidence: pending.
- [ ] **UX-N01** Notifications tabs and bodies are **Activity left/default, Preferences right**; correct deep links and account-change reset; changing labels alone is insufficient. Evidence: pending.
- [ ] **UX-N02** Activity loading/empty/error/refresh/read/destination/account fences and retained-action categories; Preferences independent loading/save/retry, push permission/quiet hours and server readback. Preserve activity visibility when push is silenced or preference fetch fails. Evidence: pending.

### Release and completion evidence

- [ ] **UX-Q01** Implement/update canonical screen journeys before each screen batch; log base/head SHA, claimed files and dependencies so another window can resume without duplicating active work. Evidence: pending.
- [ ] **UX-Q02** Run relevant TS/real PG/Flutter/accessibility tests, hosted exact-head CI and required real provider/device checks; retain explicit PASS_REAL/PASS_SIMULATED/NOT_RUN/BLOCKED outcomes. Merge every verified scoped batch automatically. Evidence: pending.
- [ ] **UX-Q03** Final audit reconciles every stable UX ID, remaining retirement references and historical-record safeguards. No APK or fixed-IP infrastructure work under this request. Evidence: pending.
