# Masanawa — canonical screen and journey contract

**Active owner refactor, 24 October 2026.** Exactly five tabs: **Chats · Status · Wallet · Calls · Data**. This document supersedes the old 177-screen/820-item scope. All legacy UI remains in Git history, not active routes. New MB balance is never derived from old Credits or MSNW. The next implementation batch must update this contract as screen/backend behavior lands, without inventing a second active plan.

## Universal presentation and state rules

Actors: phone/email-authenticated human, signed-out/recovering human, authorized platform editor/admin, platform Masana, provider callback (server only). Root navigation is a persistent accessible 5-item bottom bar; Chats selected by default. Each tab retains bounded scroll/selection for the same active account and destroys private state on user switch. Supported deep links route to account-bound content; retired routes only redirect to appropriate canonical tab. Protected content never flashes during session restore.

Design: white/neutral background, restrained green emphasis, compact 16px card spacing, 48dp minimum actionable touch size, no perpetual backdrop blur, semantic labels, keyboard/screen-reader navigation, directionally safe RTL icons, 320dp/200%-text wrapping, reduced-motion respect. Amounts: integer MB stored, locale-grouped exact MB always shown under trimmed decimal GB (e.g. 10,375 MB = 10.375 GB). Server UTC timestamps rendered in local time; no negative spendable or speculative "success".

Every async screen: (1) initial loading with non-private skeleton, (2) authorized success, (3) empty with appropriate next action, (4) retriable network/provider error preserving safe inputs, (5) offline no implicit paid action, (6) permission denied with fallbacks, (7) expired credentials/session refreshing safe GET reads only, and (8) account switch cancel/blank stale rows and stop in-flight writes. All writes have disabled double-submit and original-receipt resumption.

## Route inventory, controls and layouts

| Path/root | Layout and primary controls | Required states and behavior |
|---|---|---|
| `/home?tab=chats` | Search Masana conversations, compact avatars, last authored content, unread, New conversation/Find Masana; individual text/photo/audio composer | Loading/empty search, error retry, offline draft, microphone/media permission with manual text fallback, account-scoped private history; no humans/groups/videos/files |
| `/chat/:id` | Header with Masana identity and profile, message list, text/photo/voice note, call and Tip; pending/sent/replied/error status | Only existing platform Masana, no document/video/group controls, 1MB only after successful reply, original request retry receipt |
| `/home?tab=status` | Single infinite feed of platform Masana text/photo/audio cards, profile, reactions, comments, follows, save, share, Tip, search/filters as supported | No Videos tab or human composer; account/private/blocked filtering, cursor error retry, no post-publication fee, no video embeds or blocked media |
| `/status/:postId` | Canonical detail/comment thread, author link, media grants, actions | Deleted/hidden/blocked not found, offline read-only cache within account, mutations wait for server confirmation |
| `/u/:handle` | Human social profile, follow/block/report; no DM/call/send-avatar composer | Private/hidden/removed profile appropriately unavailable; no retired messaging calls |
| `/home?tab=wallet` | Small translucent neutral balance card: **GB** plus exact MB, pending and expandable welcome details; vertical Add data, Send, Request, Redeem data, activity/See all | Skeleton first read; hide balance when unavailable not "0"; empty activity, offline original receipt, disabled spend if provider/ledger unavailable |
| `/wallet/add` | Step 1 choose configured GB package + total NGN/per-GB/MB; step 2 assigned virtual bank/account/name + separate copies; instructions, deposits/status | If Billstack assignment pending/failed, show Retry and **do not** invite transfer to unassigned account; verified actual bank amount controls rate, not selection |
| `/wallet/send` | Username resolve -> server verified identity/photo -> integer MB -> review exact balance+GB -> confirm -> durable receipt | Self/unknown/insufficient/welcome-only/duplicate/expired identity rejected; money never leaves on mere form entry |
| `/wallet/request` and `/wallet/requests` | Username request or share link, integer MB + short optional note; Pending/Paid/Declined/Cancelled/Expired; 7d | Link cannot silently pay, account authorized sender must approve separate Send review, one fulfillment and single receipt |
| `/wallet/tip/:masanaId` | In chats/posts: whole MB -> review -> confirm -> original receipt; aggregated received total | Purchased MB only, Masana tip ledger separate, post attribution; no withdrawals or creator sales |
| `/wallet/activity`, `/wallet/receipts/:id` | Full chronological server activity, authoritative status/ref/timestamp and fixed booked amount | Empty/search/filter, pending reconciliation, reversed entry, copy support ref, account boundary |
| `/home?tab=calls` | List dated single-Masana audio calls, Search, New Masana call, local recordings | Incoming group/human old links redirect; muted/speaker/permission/end states only on authorized individual session |
| `/calls/:id` | Masana identity, actual state/outcome/connected duration, redial, recording where locally allowed | Never show fabricated connected seconds, unverified call cost or auto-redial old group calls |
| `/home?tab=data` | Phone (including third-party SIM) -> network -> verified provider bundle allowance/validity/cost -> review -> confirm/status/receipt | Missing catalogue/capability disables Buy. Unknown/pending reserves credit until original status verified, no duplicate purchase |
| `/settings`, account and help | Auth recovery, profile, privacy, notifications, block/report/support, delete/export, Admin only if server capability | Re-auth on sensitive settings and admin; lost permission closes privileged routes, logout clears person-specific state |
| `/settings/admin` | Rate version editor/scheduler, GB bundle approvals, verified deposits/redemptions, Masana tip aggregates, platform Masana editorial publish, audit | Verified-email allowlist and recent auth enforced on server; no balance override/forced provider success/API-key input |

Retired deep links `/rooms/:id`, `/human/*`, `/talk/*`, `/crypto`, `/billing` (non-data), old `/wallet/pay` and deprecated `/wallet/transactions/*` redirect to nearest supported tab; never instantiate removed route widgets. Auth-only routes and original account deletion/support stay accessible.

## Complete high-risk journeys

1. **Welcome grant:** eligible newly phone-verified account -> server uniqueness for user/phone -> grant 500 restricted MB once -> ledger receipt. Reinstall, relogin or new linked phone never grants twice. Shows spendable call/reply credit but transfer/redeem/tip review excludes it.
2. **Fund GB:** package selected for illustration -> user sees persistent assigned Billstack account -> transfers actual amount -> authenticated matched webhook and independent verification -> idempotent actual-tier, rate-versioned credit -> receipt, refund/reversal holds if negative liability. ₦5,000 at ₦400/GB => 12,500 MB; smaller than nominal 10GB package accepted according to actual amount policy.
3. **Send:** search existing username -> secure recipient identity readback -> number of whole MB -> review spendable purchased -> confirm once -> serializable debit/credit+receipt -> unknown response recover by original operation ID. No second human chat.
4. **Request:** pick recipient or share signed bounded 7d link -> Pending -> payer opens review -> explicit Send of purchased MB -> Paid; repeated payer attempts return original receipt, no autopay. Decline/cancel/expire never debits.
5. **Tip:** post/chat Masana -> whole MB review -> user purchased debit, Masana tip account credit, post attribution -> receipt. Creator withdrawal entirely absent.
6. **Chat:** choose existing Masana -> send text/photo/audio -> server reserve 1 MB -> receive successful single reply -> capture charge once -> chat result; provider failure releases reserve and retains retriable draft. Optional welcome MB used first; not charged for ringing/call greeting separately.
7. **Call:** permission -> funded admission -> ringing/setup free -> confirmed connected audio 1 MB per started second under server-enforced expiry/time cap -> disconnect -> duration reconciliation/refund unused reserve. Failed connection 0MB, no human/group call.
8. **Data:** enter third-party or own phone -> network -> certified whole-GB Flutterwave bundle -> MB review (1 GB=1000MB) -> reserve/execute original idempotency -> live delivered proof before Completed. On pending, Check status rather than retry purchase. Insufficient MB navigates Add data with draft retained.
9. **Admin:** recent authenticated verified allowed email -> rates effective-dated and versioned -> preview new thresholds -> save with optimistic concurrency and audit; pending transactions reconcile original references only. Approval rights checked per endpoint, not just menu visibility.
10. **Privacy/recovery:** account A searches/drafts/pays then logs out or switches to B -> A's rows/cursors/receipts cannot appear or replay for B; offline and process death restore scoped, original user-authorized operation only.

## Boundary/proof matrix

A successful source test alone is not a provider confirmation. Validate each stage in PostgreSQL concurrency fixtures, unit/widget tests, emulator/handset and actual authorized Billstack/Flutterwave sandbox or production. Billstack account assignment/verification/webhook format currently unverified, so no transfer instructions or credit. A Flutterwave catalogue product without independently certified GB allowance cannot be purchased. No signed APK until owner explicitly requests one.

## Retirement implementation — 25 October

The app bootstrap no longer subscribes to human calls, incoming human shares or notification replies. Chats has a single Masana inbox with All/Unread/Archived, local and server search, refresh/retry and offline saved results; no People filter, message requests or five-second human polling. Account changes continue to clear pending deep links. Incoming-call push notifications and full-screen/phone-call permissions are removed; microphone foreground service remains for user-started Masana audio. Android no longer advertises SEND/SEND_MULTIPLE intake. Legacy URLs remain navigation-only redirects. Unreachable Rooms, Talks, human communication, public creator, crypto/P2P/non-data wallet screens and transports are deleted after traversing imports from `lib/main.dart`. Financial database records and applied migrations are unaffected.

## Mixed Status and media source retirement — 25 October

Status offers platform Masana posts, search, Saved, social reactions/comments/follows/shares and tips. It has no My posts, authoring, edit/remove-human-post menu or video library. Saved retains approved Masana posts; old human/video bookmarks are filtered without deleting server history. Loading/retry, empty/offline, authentication and account-switch fences remain; Back returns to the feed. Saved rows wrap at 320dp/large text and use directional alignment. Old video chat attachments render a noninteractive retired-media label, without downloading or starting a player. Camera/photos/audio remain available and denied permissions preserve text fallback.

## Retired legacy Gateway Home path

Legacy HTTP `GET /home` (old hard-coded Rooms showcase) must return 404; it is not the Flutter `/home?tab=...` shell route. The account-bound `GET /agent/directory` remains the Masana roster authority, while five-tab navigation uses the mobile shell.

## Retired directory cache metadata — 25 October

The Masana directory strips legacy `roomId`, `creatorHandle` and `creatorName` keys even when present in an old serialized cache or backend response. Readiness/portrait/follow, identity, country metadata and valid professional public social channels are retained. Restore retains no retired navigation metadata; no Room or public creator link can be recovered through cached Masana identities.

## Read-only Data catalogue and quote implementation — 25 October 2026

The Data tab may retrieve **only** the server-authorized `/v1/gb/data/bundles`
list and quote a selected approved item with `/v1/gb/data/quote`. A network
filter and recipient Nigerian mobile number are required for review. The
server, not the device, asserts whole-GB allowance, version, validity, fee,
recipient, purchased-MB cost and 120-second quote expiry. Quote is
**previewOnly** and never reserves or debits MB; purchase remains blocked until
verified purchase journal, provider delivery status and MB reservation routes
are integrated. Zero/absent bundles show an actionable retry or Add Data route,
not invented items. Loading, malformed/mismatched server data, 401/503, offline
and stale selection surface explicit non-success states. Account/authorization-
epoch replacement clears the previous account's bundles and quote, ignores
late network results and cancels outstanding read/quote work. Narrow width and
large font keep actions in a vertical scroll list. The Back to Wallet action
remains; no legacy Bills, crypto or video pages are opened.

## Compact five-tab visual acceptance — 25 October 2026

Owner-approved UI corrections: use semantic Masanawa WhatsApp-green tokens (no arbitrary dark-green gradients) with clean off-white/light surfaces, 48dp touch targets, 320dp and enlarged-type/RTL wrapping. **Status** has one header search affordance, initially icon-only; tapping expands an editable searchable field, submitting/clearing applies one server search and restores the full feed. Remove For You and Following selector entirely; maintain the existing authorized all-Status endpoint, real post pagination, media, likes/comments/saves/report and safe account-switch refresh. The visible feed has a single page title and an unobtrusive Saved control. Do not synthesize posts pretending to be published: fill authentic platform-authored Masana feed coverage through authorized editorial seeding after a repeatable server audit.

**Masana contact cards** show portrait, display name, actual presence and an appropriate message/call affordance, without occupation, profession or long descriptive blurbs; maintain accessible labels, search, and valid canonical Masana IDs.

**Wallet** shows a short branded balance strip with exact MB when available, separate purchased/welcome/reserved totals accessible in a small expandable details section; insufficient authority means a centered “Balance unavailable” retry card, never a fabricated zero. Add/Send/Request/Data remain readable, with functional routing only to server-qualified actions and compact transaction states. Colors come from MasanawaColors.brand, not ColorScheme arbitrary gradients.

**Calls** presents a WhatsApp-style searchable call history with portrait, name, outcome/time, a compact green phone affordance and a clear new Masana call picker; no narrative instructions or misleading disabled-call badges. No human or group call route. Error is a short centered message plus retry, and signed-in account fences remain active.

**Data** has a title/header, compact network selection, phone input, actual approved whole-GB offer cards, readable primary action and review status. Remove long paragraphs, helper prose and repeat labels while retaining short, essential financial and error messages. Empty/error states use concise centered typography + Retry. **Add Data** uses crisp selectable package cards, clearly differentiated GB, NGN price, exact MB and verified bank assignment, with no invented funding instructions before confirmed assignment. Screen state clears on account replacement. Widget tests assert no obsolete tabs, no duplicate search, no profession card subtitle and compact balance/error states.

## Planned owner-requested Status and wallet revision

See [the source audit and complete proposed journeys](FEED-WALLET-UX-AUDIT-AND-PLAN-20261025.md). This is a planned replacement, not implemented behavior. Status cards use canonical author portraits, one-tap body/detail, independent profile/media controls, horizontal Like/Comment/Share and anchored compact reactions; no feed flag. Add data separates quantity selection, review and persistent-bank-account instructions. Send/Request reuse wallet balances, verified recipient selection and quick whole-MB amounts; Send permits less than 1 GB, Max excludes restricted/reserved funds. Redeem requires selected network, verified validity and at least 1,000 MB. Activity → See all → authoritative transaction detail → PDF/image preview/share; Calls → complete retained Masana history/detail/usage receipt. All loading/empty/error/offline/denied/back/account-switch and narrow/large-font/RTL states are specified in the linked plan and must be verified before completion.

## Planned Chats, calls, portrait and notification amendments

The owner additions are audited in [the addendum](CHAT-CALL-WALLET-ADDENDUM-AUDIT-20261025.md) and tracked only by [stable UX checklist IDs](PRODUCT-ROADMAP-20261019.md#owner-ux-and-communication-repair-checklist). These are requested changes, not completed behavior. Chats loses All/Unread/Archived filter chips and shows one account-scoped thread list ordered by real message activity, preserving search/history/unread state and archived-history compatibility. Wallet shortcuts become **Redeem | Add data**, then **Request | Send**. Data adopts compact phone/network → clear bundles → separate review → pending/result, based on the decoded OPay layout audit and the existing protected MB contract. Notifications opens **Activity (left/default)**, with **Preferences (right)**. Calls need repaired retained MB admission, larger canonical portraits and prominent accessible controls; notes/text require independently verified recovery. Canonical portrait resolution must work across Chats, Status and Calls without guessing identity from names. Keep all loading/empty/error/offline/denied/back/account-switch, short/320 dp/200%-text/RTL and provider/device verification states specified by the addendum. Earlier All/Unread/Archived and Preferences-first descriptions record the current/previous implementation; this owner revision is the planned replacement.

### UX-P01 / UX-W01 / UX-N01 implementation batch

Call-history rows resolve their portrait through the matching account-scoped directory entry; directory loading/missing identity keeps the safe fallback and later refresh updates the image. Wallet shortcuts are Redeem/Add data on the first row and Request/Send on the second, with matching traversal and unchanged destinations. Notifications opens Activity at index zero; Preferences is second, and account change recreates tab selection without retaining private activity. Existing independent activity/preferences loading and error states remain. Verify portrait selection under renamed identity, 320 dp wallet geometry and tab content/default selection; this batch does not claim real audio recovery.

### UX-C01 / UX-C02 implementation batch

Chats uses one list with search and no All/Unread/Archived chips. Existing archived thread records remain in the unified projection; archive/read/pin metadata is preserved. Default order is descending latest confirmed message creation time, with canonical-ID tie breaking. Draft edits, retries, route close and pin metadata do not change chronology; failed/queued/streaming placeholders do not count as completed message activity. Incoming confirmed messages update the same thread row. Existing search, offline messaging, server-query cancellation/account fences and unread counts remain. Tests cover old archived/pinned drafts, late replay, equal-time stability, a newly received message moving its existing row, search, account switching and retry states. Provider/device recovery remains separate P0 work.

### UX-C03 / UX-C04 single-list search continuation

When search is open, locally cached Masana threads and authorized server matches form **one** scrollable list keyed by canonical character ID. A server match for an existing local/archived thread reveals that same local row even when its cached title and messages do not contain the query; it never duplicates the row or overwrites local drafts, messages, unread, scroll offset, pin or archive metadata. Additional server-only matches use their authenticated snippet/identity and original-thread route, with read acknowledgement independent of opening. Ordering uses confirmed local-message activity for cached rows and server-reported message activity for remote-only rows, then stable ID ties; neither pin changes nor a draft promotes a row. A retry preserves cached results and the search term; stale/replayed and duplicate server rows collapse by character identity. In offline state searches are limited to cached threads with an explicit limitation rather than issuing a new request. Clearing search restores all locally retained and archived histories. Server paging and real-device scroll/close/reopen acceptance remain separate verification gates until the server offers a proven paginated contract.

### Internal MB call accounting foundation (UX-R02/R06 partial)

The call admission journal reserves an owner/character-bound MB budget and accepts connected-time proof only from internal trusted server relay code. Failed/ringing/setup calls release the hold, reconnect excludes downtime, and expired-lease recovery captures only saved proof. Public call screens, routes and legacy admission are not switched by this foundation batch; they remain open repair work. No client duration, mock success or unreserved fallback may be introduced during integration. See `MB-CALL-ADMISSION-AUTHORITY-20261025.md` for boundaries and required relay/mobile/recovery work.

### Protected MB call review and admission contract (not yet composed in main)

The retained call flow will request a bounded MB review, display Masana and maximum connected seconds/MB, then create the hold only after explicit signed acceptance. Reviews expire and changes invalidate consent. Original admission readback resolves timeout/pending/ended states without another reservation. Private receipts stay readable during customer recovery restrictions while new spending is denied. No phone/user-selected actor or client duration is accepted. The optional Gateway call routes require trusted relay/recovery readiness; current production main and mobile remain unswitched by this service-only batch.
