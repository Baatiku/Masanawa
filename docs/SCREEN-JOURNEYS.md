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
