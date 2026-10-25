# Status and wallet experience audit and implementation plan

Status: source audit complete; proposed UI and pricing below are **not implemented**. Owner feedback from the new-window session takes priority over earlier screen/pricing plans. Canonical task authority remains [the roadmap](PRODUCT-ROADMAP-20261019.md); update [journeys](SCREEN-JOURNEYS.md) before implementation. No APK. Flutterwave fixed-IP hosting remains on hold.

## Evidence and limits

Audit baseline: GitHub main through PRs #400, #402–#406, plus the backend retirement source batch. PR #400 was already merged when checked; its final CI passed. Relevant source:

- `apps/mobile/lib/src/features/home_feed/feed_screen.dart`: generic `CircleAvatar` robot/person at the author header; `TextButton('Open post')`; flat date outside header; one padded `Card` for everything; a wrapping action row; heart Like; a separate `PopupMenuButton` listing reaction kinds vertically; an inline flag button. These explain the observed appearance and extra tap requirement. A wrapping row also changes arrangement as width/text scale changes. The current reaction picker is a popup menu; this source does **not** establish the reported bottom-docked presentation on the installed build.
- `apps/mobile/lib/src/agents/masana_portrait_avatar.dart`: canonical portrait component and approved identity keys already exist, but the feed header does not use them. Binding by display name would be unsafe; bind by canonical author identity and approved portrait metadata.
- `apps/mobile/lib/src/gb_wallet/recharge_screen.dart`: package radio cards, price version and an unavailable bank-details notice, without a separate proceed/review journey. This checkout does not display an actual bank account here.
- `apps/mobile/lib/src/gb_wallet/gb_wallet_screen.dart`: authoritative balance provider exists; Send/Request are disabled and Activity is a placeholder. There are no reachable Send/Request forms to inspect on this main baseline. The owner's description of those forms and bank details is accepted as a requirement, but cannot be attributed to this exact checkout without build provenance.
- `apps/mobile/lib/src/gb_wallet/data_redemption_screen.dart`: phone form and disabled bundle placeholder; no network filter or live checkout yet. The reported All networks selector is not present here.
- `services/gateway/src/gb_wallet/pricing.ts`: current version starts at 10 GB / ₦4,000 and stops at 280 GB / ₦70,000. Funding credit is based on verified payment, not the selected radio button.
- `services/gateway/src/gb_data/data_catalogue{,_routes}.ts`: approved exact-whole-GB items are intersected with live provider items; network filter exists, validity-days metadata exists, quote is explicitly preview-only. There is no completed MB-ledger fulfillment journey proven by these read-only routes.
- `apps/mobile/lib/src/calls/call_history.dart`: real paginated transport and detail support exist. This is a starting point, not proof of correct connected-time billing or a complete polished history.

No running application, screenshot or installed build identifier was supplied in the new window. This is a source audit, not device or screenshot acceptance. Facebook is an interaction/layout reference; Masanawa retains its own branding, platform-Masana authorship and five-tab scope.

## 1. Status: first implementation priority

### Target card and interactions

Use one reusable card in feed, saved posts and detail. Structure:

1. Header: canonical Masana portrait, name, subtle Masana/AI identity, relative timestamp (full local timestamp accessible), compact overflow.
2. Body: readable text with bounded initial expansion and “See more” for long posts; intentional spacing, natural typography, no unnecessary boxed labels.
3. Media: edge-to-edge within the card, correct image ratio and carousel indicator for multiple images, loading/retry states, captions and accessible descriptions. Retain supported image/audio posts; do not revive retired videos.
4. Social summary: small reaction summary/count and comment count with correct destinations. Zero states stay quiet; no fabricated activity or presence.
5. Horizontal actions: **Like** with a proper thumbs-up icon, **Comment**, **Share**. Save and Tip can live in the overflow/detail to prevent crowding. Tip remains an explicit reviewed MB transaction. Sharing is user initiated through the supported share flow.

Tap body/card whitespace to open post detail. Tap avatar/name to open the correct Masana profile. Tap image to open the image viewer; audio controls operate playback. Tap comment count/action to open comments and focus the appropriate input. Nested controls must not also trigger parent navigation. Remove the compulsory “Open post” button. Preserve feed position and loaded pages when returning.

Remove the flag/report action from feed cards, their overflow, and post-detail surfaces reached from feeds. Remove obsolete feed callback/navigation plumbing once references are gone. Keep essential account safety, block/support and comment-abuse handling required elsewhere; do not delete unrelated account controls under the banner of removing the feed flag.

### Reactions

Use one consistent reaction state rather than conflicting heart-like and emoji state. A normal tap toggles Like; selected state uses the branded accent and accessible selected label. Long press or an accessible secondary action opens a small **horizontal**, card-anchored reaction strip near Like, never docked to the app bottom. Initial visible choices: Like, Love, Care. Existing other reaction values in historical records remain readable/countable; do not rewrite past reactions. Keep the strip within screen bounds, dismiss on outside tap/back, and provide keyboard/screen-reader alternatives. At narrow widths retain a horizontal row with compact labels; do not wrap into a vertical action stack.

Optimistic mutations need pending state, deduplication, authoritative count reconciliation and rollback/retry on failure. Fast repeated taps, refresh and account switching must not leave stale selected state or mutate another account's feed.

### Missing details to cover

- Shared author identity/portrait contract across directory, feed, detail, comments and calls; server-approved metadata, cache fallback and revoked-author handling.
- Content width, baseline spacing, corners, divider placement, readable line height, touch targets and clear hierarchy; avoid generic robotics as the default author image.
- Multiple images, tall/wide images, missing media, long Hausa/English text, links, long author names and missing portraits.
- Detail deep links, deleted/hidden posts, comments pagination/replies, draft preservation, empty comments, reaction readback, save state and share cancellation.
- Pull-to-refresh, bounded pagination, offline/stale state, retry without duplicate cards, skeletons, image memory/cache budgets, correct account-scoped cancellation.
- Reduced motion, contrast, 320 dp, 200% text, RTL, keyboard and screen reader. Motion may add warmth but must not invent activity or obstruct reading.

Acceptance: body opens detail in one tap; all nested actions route once; canonical author portraits match directory/profile; no feed flag or Open post button; horizontal actions/reaction strip at tested sizes; authenticated counts and errors reconcile. Golden/widget tests plus actual device interaction review are required before calling the visual redesign complete.

## 2. Add data: separate choosing from paying

Journey: Wallet → Choose package → Review selected quantity/price → Bank transfer instructions → Pending/confirmed funding → Receipt.

The chooser shows quantity, total NGN, NGN/GB, selected state and Continue. No bank name, account number, account holder or copy-account controls appear on that screen. Back from review/instructions preserves selection. Instructions show the existing persistent server-assigned account and the requested transfer amount, with user-initiated copy/share actions. Account assignment/provider readiness failures must not suggest transferring elsewhere.

Offer “Custom quantity” in whole GB rather than accepting an arbitrary package name as a financial product. The backend returns the exact quote and pricing version; do not calculate money from free text. Enforce documented minimum/maximum and provider transfer limits. Large wallet purchases do not promise the mobile network offers a single 1–2 TB redemption bundle.

### Proposed replacement price ladder — not activated

The owner specified ₦500/GB for the initial 10 GB package and decreasing unit prices. Intermediate rates below are a concrete proposal, not established provider economics or an applied rate book.

| Wallet quantity | Total NGN | NGN/GB |
|---|---:|---:|
| 10 GB | ₦5,000 | ₦500 |
| 20 GB | ₦9,500 | ₦475 |
| 50 GB | ₦22,500 | ₦450 |
| 100 GB | ₦42,500 | ₦425 |
| 200 GB | ₦80,000 | ₦400 |
| 280 GB | ₦105,000 | ₦375 |
| 500 GB | ₦175,000 | ₦350 |
| 1 TB (1,000 GB) | ₦325,000 | ₦325 |
| 2 TB (2,000 GB) | ₦600,000 | ₦300 |

Use decimal units throughout: 1 GB = 1,000 MB. Before activating, verify network fulfillment costs/fees, margin, maximum funding amounts, custom-quantity pricing and boundary behavior. Keep strictly decreasing exact kobo/GB and increasing totals. Quote a custom quantity against the highest eligible quantity tier, then ensure the verified-payment credit policy produces the same MB; test threshold crossings, over/underpayments and fractional carry. A concrete boundary hazard: naïvely quoting 190 GB at ₦425/GB gives ₦80,750, which already crosses the proposed ₦80,000 deposit tier and would credit 201,875 MB at ₦400/GB. Therefore a free-form quantity must not promise an exact amount using a local tier calculation. Return the authoritative deposit-derived credited MB and total together for explicit review; if exact custom quantities are required, design a separately versioned pricing policy first. Persist rate version at paid time; never reprice historical funding or reinterpret an old receipt. Authentic verified bank transfer remains the credit authority, and duplicate/reversed/delayed callbacks reconcile idempotently.

## 3. Send and Request

Send layout: same authoritative wallet balance card at top, recipient selector, amount, horizontal quick amounts, Review. Remove the descriptive paragraph the owner objected to; retain concise labels and actionable validation.

- Show total available MB/GB and a clearly distinguished **sendable** balance. Restricted welcome MB, pending reservations and frozen funds must not enter Max.
- Allow **any positive whole MB**; no 1 GB minimum for transfers. Initial quick choices: 100 MB, 500 MB, 1 GB, 5 GB, 10 GB, Max. Disable unaffordable choices with accessible explanation; changing a chip updates the editable amount.
- Max is the server-valid sendable amount, refreshed on review. Revalidate concurrent spending before atomic commit; never silently transfer a smaller amount.
- Search recipient by supported exact handle/name with debouncing, cancellation and minimum-query rules. Show canonical avatar, name and unique @handle; select a resolved stable user ID, not free text. Disambiguate duplicate names, reject self-transfer, avoid phone/account enumeration, and invalidate review when recipient or amount changes.
- Review shows verified recipient, exact MB, fees if any and resulting sendable balance. Explicit confirm, original idempotency key, atomic movement, durable receipt and readback. Timeout means pending lookup, never a second new transfer.

Request uses the same recipient and quantity components plus quick choices and a custom whole-MB amount. Show requester/recipient roles clearly. Provide review, shareable request, pending/paid/declined/cancelled/expired states, seven-day expiry and one-payment enforcement. Paying a request is a fresh reviewed Send; a request is never a debit authorization. Preserve inputs on back/retry and clear them on account change. Do not recreate human messaging.

## 4. Redeem: networks, validity and real provider qualification

Remove All networks from the visible chooser. Require an explicit MTN, Airtel, Glo or 9mobile selection with approved local logo assets and accessible network labels. Use canonical provider/network IDs, not logo text or phone prefix to route fulfillment; number portability means prefix is not authoritative.

After network selection, present Daily, Weekly and Monthly tabs/chips filtered to that network's **verified** catalogue. Store exact validity and allowance evidence with the approval; do not guess from an item name or label every 30-day-like string Monthly. Define validity mapping against provider facts before implementation; preserve exact duration on each card and handle other durations explicitly rather than silently dropping/mislabeling valid bundles. Include loading, unavailable, stale and no-matching-duration states.

Redemption requires **at least 1,000 MB** and an approved exact-whole-GB bundle, not an arbitrary amount entered as a bill. Show bundle allowance, validity, recipient phone, network and MB cost on review. Purchased spendable MB only; no welcome credit. Revalidate the selected version/availability before reserving funds.

### Qualification evidence and limitations in this session

- **PASS_REAL (configuration presence only):** Railway's read-only service/variable inventory confirms `FLUTTERWAVE_SECRET_KEY`, Bills enablement, webhook and relay variable names. Values are redacted by the tool. Presence does not prove key mode, valid credentials, Bills permission or provider delivery.
- **BLOCKED:** direct requests to `developer.flutterwave.com/v3.0/docs/bill-payments` and `api.flutterwave.com/v3/bill-categories` were denied by the environment proxy with CONNECT HTTP 403. No authenticated provider request was possible; no test key value was retrieved or printed.
- **PASS_SIMULATED:** repository adapter/catalogue/quote tests exercise contracts and approved-item rejection paths. They cannot establish current official API support or live/sandbox fulfillment.
- **NOT_RUN:** authenticated Flutterwave test catalogue/customer validation, sandbox purchase, independent status readback and wallet settlement end to end. No fixed-IP host was provisioned and no paid provider operation was attempted.

Implementation verification sequence:

1. Read current official API documentation from an allowed environment; confirm the merchant's API version, authentication and Bills test-mode support. Do not mix payment collection with bill fulfillment or assume sandbox implements every biller.
2. Securely run existing `scripts/flutterwave-billing-catalog-qualification.mjs` with the existing **test** credential in its authorized runtime. Restrict this script to discovery/validation; retain redacted endpoint/schema/status evidence. Do not put keys in app assets, reports, source or logs. Existing fixed-IP relay work stays on hold.
3. Reconcile category/biller/item identifiers and approved allowance/validity for all four networks against actual test responses. Absent/ambiguous bundles remain unavailable. Current approved-item model caps a single bundle at 1,000 GB; the proposed 2 TB wallet funding tier is a separate concept.
4. Verify supported sandbox purchase only when test mode is positively established. Persist owner-bound operation/reference and reserve MB once before submission. HTTP 200/acknowledgement is pending until documented provider result and independent reference lookup confirm delivery.
5. Test successful delivery, rejected customer/network, unavailable bundle, stale price, insufficient funds, duplicate confirm/webhook, timeout/unknown result, restart/recovery, late success and reversal. Recovery queries the original reference; no blind resubmission or duplicate debit. Reconcile ledger entries, reservation release and receipt state.
6. Report provider evidence separately from mocked tests. If Bills sandbox is unsupported or network access remains blocked, keep redemption disabled and state the exact limitation; do not claim E2E completion.

## 5. Wallet history, receipts and Calls

Wallet Activity gets a right-aligned **See all** action and compact recent rows: type icon, purpose/counterparty, timestamp, signed amount and pending/completed/reversed state. Full history has date grouping, type/status/date filters, stable pagination, search where authorized, funding/spend totals for the selected period and opening/closing balance with reconciliation. Distinguish funding, send, receive, tip, request payment, Masana replies, connected call usage, redemption, reservation/release and reversal; reservation release is not fresh income. Historical financial liabilities stay preserved and clearly separate from the new MB ledger.

Transaction detail is backed by an authoritative receipt ID and ledger entry, showing original reference, amount/unit, counterparty/purpose, time, fees, funding rate version where applicable and resulting status. Do not export “successful” for pending/failed operations. Redact private bank/phone details appropriately.

Provide branded **PDF and PNG/image** receipts with the existing Masanawa logo, readable hierarchy, receipt ID, status, exact MB and trimmed GB, relevant NGN funding details and timestamp. Preview/download/share uses an explicit user action and system share sheet; no automatic sending. Offer CSV for filtered full-history export with clear scope if useful. Generate from authoritative structured receipt data, support safe filenames/locales and multipage PDF, clean temporary files and invalidate access on account switch. Export failure does not alter transaction state. Never expose secrets or unrelated accounts in the export.

Calls history should reuse canonical portraits and stable call IDs, group by date, show connected/failed/cancelled/missed outcome, timestamps, connected duration, billed MB and pending/reconciled state. Detail links the MB usage receipt and original call. Search/filter, pagination, empty/offline/retry and accessible redial to the same retained Masana are required. Keep one-to-one Masana audio only. Ringing/setup/failure costs zero; only confirmed connected time is billable under the canonical policy. Do not infer duration/billing from list row timestamps or revive incoming human/group calls, recordings or retired routes.

## Delivery order and acceptance gates

1. **Status batch:** author contract/component, card/detail navigation, horizontal Like/reactions, remove feed flag, media/state polish. Update canonical journeys; widget/golden and authenticated API regression checks; device review before visual acceptance.
2. **Funding + Send/Request batch:** separate package/review/instructions, proposed versioned pricing after economic/quote checks, balance card/recipient resolver/quick amounts and durable reviewed transfers/requests. Postgres atomicity, concurrency, restrictions, idempotency and account-switch tests are mandatory before enabling financial controls.
3. **Data batch:** official docs + test catalogue evidence, logo/network/validity UI, approved catalogue and complete reserve/fulfill/reconcile flow. Gate on provider evidence above; fixed-IP hosting remains hold.
4. **History batch:** authoritative activity/detail contracts, call usage reconciliation, PDF/PNG exports and share preview, complete timeline/accessibility/error checks.

Merge each verified implementation batch automatically under the owner's existing authorization. Source/unit checks, real Postgres checks, provider tests and device acceptance must have separate outcomes. The plan does not assert these UI or money flows have been implemented merely because a retirement PR is green.
