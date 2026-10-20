# Updates — final scrolling social feed, humans + Masana, paid human publishing

**Owner decision: 20 October 2026. This OVERRIDES every earlier proposal to imitate WhatsApp Status stories, daily-expiring statuses, viewed rings or Status privacy audience circles.** Source baseline `main` `c944045ef2f80a83839a9aa2c6eb13cd53975ff6`. **Planned, NOT implemented.** [Full app audit](COMPLETE-SCREEN-AND-JOURNEY-BLUEPRINT.md) · [canonical roadmap](PRODUCT-ROADMAP-20261019.md) P5-U01–08 · [screen contract](SCREEN-JOURNEYS.md) U01–U10.

## Outcome in one sentence

The user opens **Updates** (renamed Status), scrolls one uninterrupted Facebook-like feed where real humans and clearly labeled Masana publish text, images, audio and video, taps Like/Comment/Share/Follow, and can create a human post only after seeing and explicitly approving a server-quoted MSNW publishing fee.

**Video is NOT to be removed.** Keep the existing `features/videos/`, approved external-video catalogue, `ExternalVideosScreen`, `official_video_player_screen.dart`, `features/home_feed/feed_media_screen.dart` and media protections. Recompose the primary screen without the second full-width Videos tab. Existing external videos may render in the unified feed if their authorship, provider rights and consent allow; otherwise preserve them as an explicit "Videos" search/filter/secondary browse route (not a primary tab) until an authorized feed projection exists. Native human video-post support is a separate backend/upload capability; not proven by existing external player.

## Source-proven baseline and concrete gap

| Existing file/API | Real source today | Proposed change |
|---|---|---|
| `screens/status/status_screen.dart` | Has `MasanawaStatusTabs` with top `Tab(text:'Updates')` + `Tab(text:'Videos')`; separate media/video player setup and account fencing | Root title **Updates**; remove the primary tab splitter; mount one universal post feed; retain old media routes/players |
| `features/home_feed/feed_screen.dart` | `MasanaFeedScreen` has **For You / Following** chips, list post cards, image inline, media action chips, likes, save and comments. Text and empty states still say Status and Masana-only | Reuse lazy list, pagination/media/comments, render one high-quality mixed-author card, no nested stacked tab bars or WhatsApp rings |
| `features/home_feed/feed_api.dart` | `FeedPost` requires `authorMasanaId`, kinds parsed as authored Masana, no human publish method | Typed author `{kind:'human'|'masana',id,publicProfile...}`, optional/compatible `authorMasanaId` for legacy consumers; add human post draft/quote/confirm and fee status |
| `packages/feed/src/index.ts` | `PostKind='text'|'image'|'audio'`; `Post.authorMasanaId` mandatory; service `publish()` limited to approved Masana/staff | Mixed author post model and video as genuine `kind`, creator/user scoped authorization, moderated lifecycle and fee reference |
| `gateway/src/modules/home_feed/routes.ts` | `GET /v1/feed`, `GET /v1/posts/:id`, like/save/comment routes, **`POST /v1/admin/feed/posts` only** | Add authenticated human draft/quote/publish flow, user owned posts query, publisher permission policy, fee reservation/settlement via canonical Wallet |
| `feed_media_screen.dart` and `modules/home_feed/media_routes.ts` | Post media permission and playback; approved Masana text/image/audio | Extend media authorization to typed human content and native permitted video; enforce post ownership, upload limits and moderation |
| `packages/feed` SQL/repository and user profiles | Existing Masana feeds and follower projections | Add owner_kind/userId and join public profile, preserve legacy author IDs and published post rows, safe migration/dual-read |
| `screens/profile/person_profile_screen.dart` | Human about/follow and existing creator Masana section | Add human authored Updates on profile using same post IDs and publication receipts |
| `features/videos` | Approved external video list and player behind second Status tab | Keep source/content, route existing video IDs; no automatic loss or ambiguous ownership |

## U01: Updates root — exact screen anatomy

1. **App bar:** title "Updates"; right search and activity/menu; one recognizable Masanawa green/white design (not a literal copyrighted Facebook reproduction). No Stories/rings/carousel, video-only top tab or unrelated publish upsell banner.
2. **Compose invitation:** small public account avatar and touch surface "Share an update…"; tapping opens U02 even if the user lacks funds; the fee is explained during review **before** any charge. Optional camera/media icon only if suitable asset controls/permissions exist.
3. **Feed filter row:** at most two options **For You** (relevance/discovery) / **Following** (only followed humans/Masana, chronological or stable server-defined order). Make sorting and source transparent. Keep the current existing chips but move them below composer and remove the old status-videos TabBar. Avoid a second All/People/Masana chip row; type distinction belongs in card author identity and optional search.
4. **Continuous feed:** single vertical scroll, cursor pagination, swipe-refresh, cached authorized content with timestamp, stable post IDs and scroll restoration per account/filter. No auto-swiping or story timeouts. Accessible media starts after explicit tap or configurable muted previews subject to data saver, never disruptive forced playback.
5. **Post card U03:** header avatar, display name, optional @handle, **human** or **Masana · AI** badge with real creator attribution (not false verification), time relative/absolute accessible, permitted audience indicator, overflow Report/Hide/Save/Unfollow/Block as applicable. Body shows text then full-width image/album/video preview with player or audio note. Reactions row **Like · Comment · Share** with counts and state, Save in overflow. Cards are simple stacked white surfaces with slender separators.
6. **Interaction:** Like toggles from authoritative state, optimistic only with rollback; Comment opens U04 without losing feed position; Share creates an allowed post link/card, not permission bypass or payment authorization. Tapping avatar navigates to **human public profile or Masana profile based on the typed server author**; tapping body/media opens U05 detail.
7. **Safety:** loading skeleton; truly empty For You vs empty Following, partial refresh failed with retained valid items, device offline banner, blocked/private/moderated post unavailable, revoked media URLs, account-switched generation guards; video decode failure leaves text and Retry. Avoid full-screen global red errors that hide feed.

## U02: Create human Update — exact flow and paid status

1. Start U02 **Compose** sheet/page from feed/profile; text area with optional photo/video/audio attachment, add caption, content rights warning, public audience scope. Do not force phonebook or extra identity verification for drafting.
2. **Save draft** locally account-bound and server-durable where necessary; preview post exactly as published (human display/avatar, timestamp placeholder). Do not publish merely because user left editor.
3. **Quote publishing fee** from backend under an actual configurable product policy `HUMAN_UPDATE_POST`: post author ID, asset/media set hash, body hash/content revision, media kind, audience, current MSNW amount, tax/fee if legally applicable, expiry, refund/cancellation and moderation terms. No invented universal flat fee. Owner must separately select the pricing amount/waivers via server configuration; **default new human publishing disabled until approved fee policy**. Viewing/liking/commenting never charge. Re-quote on any material change.
4. **Review U06:** show full exact quote, remaining balance availability, audience, content, fee, total, eligible region, what happens on rejection, moderation mode and clear **Pay & Publish** (or **Submit for review** if reviewed first with reservation). A named user's own post is distinct from an AI-generated Masana post. Sign-in challenge/Wallet step-up uses exact operation. Never charge a follower for reading.
5. **Two-step idempotent payment + publication**, recommended for moderated content: backend creates a **post publication intent** with client idempotency key, reserves user MSNW (not transfers to a new fake wallet), stores moderation draft, approves based on actual moderation/rules, and **atomically captures once on publication**, then exposes published post. On rejection/expiry/cancellation, reserve released and an accurate receipt/status shown. A policy may choose immediate automatic approval for eligible content only after safeguards, still one authoritative capture+publish transaction. If reservation infrastructure not ready, expose explicit unavailable, NOT direct unbounded charge-and-hope flow.
6. **Idempotency and rollback:** one intent cannot be captured more than once, cannot publish without captured/approved status, cannot charge if status is unknown and there is no confirmed operation; on timeout GET intent by original key. On worker restart, exactly-once outbox and reconciliation recover charged-but-unpublished/approved-but-not-captured inconsistencies. Strictly server-calculated price and eligibility, client cannot send free flag or author_kind='masana'.
7. **Success U07:** return to Updates at published card, profile contains same post, one MSNW publishing receipt in Wallet history; "pending review" not displayed as public published. Failed/insufficient funds preserves draft and offers **Fund Wallet** secondary route; account-switch cancels local proposal.
8. **Human permissions:** normal human may create their own paid Update only; staff/Masana publishing remains a separate controlled route and policy. Deleting/editing published paid posts does not automatically reverse a fee—must be governed by clearly displayed refund rule; content changes requiring new moderation cannot bypass safety. No accidental double fee for editing one paid post.
9. **Zero-money side actions:** comment, like, report, follow, save, share permitted public posts must not trigger fee authority.

## U03/U04/U05 — Post detail, comments, media

- **U03 Post card** described above, with every actor-type, media and permission state.
- **U04 Comment sheet:** post preview at top; authorized chronological or newest-first real comments, nested replies up to bounded depth, soft keyboard-safe composer, sending/retry/pending-review indicators, edit/delete/report own/abusive comments, moderation visibility and post lock. Human and Masana can comment when appropriate; AI comments always disclosed and permission gated. Never show a disabled-looking composer for blocked user.
- **U05 Post detail:** same post ID from Feed, Human public profile, Masana profile, Room share or notification; large post body, authorized audio/photo/video, comment stream, like/share/save, author profile. Edited/deleted/restricted post gets proper tombstone/unavailable and back route.
- **U08 Video/Media:** native user-owned video publishing is allowed only after supported upload transcode/content-scanning/origin rights/provider cost and quota qualified. Existing externally hosted approved video cannot be impersonated as a human post or mixed with public activity without source attribution. Preserve device playback, resume/close, data saver and existing media cleanup. Avoid extra Video tab and no forced full-screen scrolling-only Reels product.
- **U09 My posts/publishing history:** accessible from own profile and editor; drafts, pending moderation, published, rejected, removed, with quote/payment reference and refund/recovery info. No creator account required for human posts.
- **U10 Moderation/price administration:** admins set fee/eligible region/waiver/limits, review media/comments, approve/reject and reconcile transaction status with audit. Staff does not manually mark paid or published without canonical financial evidence.

## Required typed content and financial authority

**Post**: `postId,tenantId,authorKind,authorUserId?,authorMasanaId?,authorDisplayName,authorAvatarUrl?,authorHandle?,verifiedSource?,kind(text/image/audio/video),body,mediaIds[],audiencePolicy,visibilityState(draft/pending_review/published/restricted/removed),publishedAt?,createdAt,updatedAt,commentsCount,likeCount,viewerLike,viewerSave,revision,contentAclVersion`. Preserve legacy `authorMasanaId` projection during migration; never claim a human is Masana to shoehorn into schema.

**Post publication**: `postIntentId,postDraftId,userId,contentRevisionHash,quoteId,amountMicro,asset='MSNW',quoteExpiresAt,status(draft/quoted/reserved/pending_review/approved/published/rejected/refund_pending/refunded/unknown),idempotencyKey,ledgerOperationId,receiptId`. **The existing MSNW Wallet ledger is the ONLY monetary authority**. Immutable journal, once-only capture/refund and server-proven state machine. The charge must only happen upon explicit user confirmation at quote and cannot be authorized by an agent or incoming URL.

**Proposed additive API** (actual endpoint ownership to be resolved by integrator, no parallel feed backend):
- `GET /v1/feed?mode=for_you|following&cursor=`; one cursor combining eligible human and Masana posts.
- `GET /v1/posts/:id`, `GET /v1/profiles/:handle/posts`; typed author DTO.
- `POST /v1/posts/drafts`, `PATCH /v1/posts/drafts/:id`, `GET /v1/me/posts`; owner checks.
- `POST /v1/posts/drafts/:id/quote`, `POST /v1/posts/drafts/:id/confirm` with `Idempotency-Key` + bound quote; `GET /v1/posts/intents/:id` for recovery. Never confirm by flag alone.
- Reuse `PUT /v1/posts/:id/like`, `PUT .../save`, `GET/POST .../comments`; add bounded edit/report/share/readback only when corresponding data policy exists.
- Existing internal `POST /v1/admin/feed/posts` stays authoritative for staff/Masana editorial, never exposed to ordinary human clients.
- Media signed grants keyed to actual author, post, tenant, permission and expiry; account fencing across scroll, async download and notifications.

## Mandatory acceptance cases

**F01** mixed human and Masana author cursor from one endpoint; no duplicate rows/order instability and no cross-tenant data.
**F02** human profile avatar -> /u and Masana -> /masana; same post ID/detail/comments in profile and feed.
**F03** logged-in human drafts, cancels and reopens without charge; guest sign-in to post, still read authorized public Updates.
**F04** exact MSNW quote, altered text/media invalidates quote, unauthorized fee override rejected.
**F05** two simultaneous Publish taps / two devices / timeout -> one reservation and one capture; exactly one published post and receipt.
**F06** insufficient funds, expired quote, blocked publisher, region disabled: no money moved, draft preserved.
**F07** moderation reject releases hold; worker restart after capture triggers reconcile and never leaves charged invisible post.
**F08** human comments free, anti-spam and block enforced; a Masana cannot impersonate human or spend Wallet.
**F09** video source and existing players preserved, video post attribution/media rights and link visibility verified.
**F10** offline feed and drafts, revoked post/media, change account, old push deep link, accessibility on 320px/200%/RTL.
**F11** old /status route/deeplink opens Updates detail after rename; no broken notifications. No WhatsApp rings/temporary stories.
**F12** source SHA/SQL/Flutter/device/custody ledger/provider gate required before claim of release.

## Reference and rationale

- [Facebook Home and Feeds](https://about.fb.com/news/2022/07/home-and-feeds-on-facebook/) uses continuous feed and Following-like recent filters.
- [Facebook streamlined Feed creation and comments](https://about.fb.com/news/2025/12/making-it-easier-to-create-discover-and-share-content-on-facebook/amp/) emphasizes a simple composer and user-controlled audience.
- [Facebook video publishing](https://about.fb.com/news/2025/06/making-it-easier-create-videos-on-facebook) integrates video with the wider posting experience.
- [OPay wallet reference](AI-DEVELOPER-WALLET-IMPLEMENTATION-GUIDE.md) suggests exact quote/review and receipt-to-support patterns, never allowing a screenshot to represent real payment.
- Product owner overrides former WhatsApp Status design: no rings, no vanish-by-24h baseline, no separate Videos tab as the default Updates UI. Original Masanawa branding; not literal copyrighted Facebook clone.
