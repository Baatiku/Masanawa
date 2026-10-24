# Masanawa Status — Facebook-style social feed: complete screen, feature, API and acceptance contract

**Owner decision:** 22 October 2026. **Source audited:** `Baatiku/Masanawa` `main` SHA `2e9b115d35e4d9fe61e9258d291f7f06af6bacf3`. **Purpose:** turn the existing Status root into an original, familiar **Facebook-style scrollable social feed** with posts by **humans and Masana**, genuine user/agent profile links, meaningful reactions, comments/replies and user-friendly content discovery. This is a comprehensive design and engineering specification, **not** a claim the new feed has been coded, deployed or accepted on device. Source/test presence is not E2E success.

**Canonical ownership:** `docs/PRODUCT-ROADMAP-20261019.md` Phase 3 creators/Status, Phase 4 P4-04 profiles and messages, Phase 5 P5-C01/C05/T01 media/cadence and Phase 8 P8-U01/U02/X02/X05/APK; `docs/SCREEN-JOURNEYS.md` still owns the top-level screen tree. Subfeature IDs `SF-*` here are **not a second roadmap** and do not close existing checkboxes. Preserve the five root tabs: **Chats · Status · Wallet · Calls · Rooms**; no sixth Feed tab. Retain approved permanent Status posts unless explicitly changed by the author or lawful policy; Facebook-like newsfeed ≠ mandatory 24-hour disappearing WhatsApp stories. Preserve legacy post/comment/reaction IDs and approved creator/editorial histories through compatible migrations.

## Status header search correction — owner APK, 23 October 2026

**Confirmed navigation defect:** the root shell `five_tab_shell.dart` displayed “Search Masanawa” on **Status**, and tapping opened the older `/search` Masana directory instead of searching feed posts. The corrective Flutter branch removes that button **from Status only**. It may remain on other screens where its destination is truthful. **Product decision:** do not substitute an inaccurate search. Add a Status search affordance only after a real account-scoped `Status post/author` search API and results UI are implemented (For You/Following query, author identity, approved/public visibility, content matching, pagination, empty/error/blocked states, exact back-to-post/scroll preservation, mixed human/Masana authors). This is a **Phase 3 Status / Phase 8 UI acceptance blocker**, not a new directory.

**Acceptance:** no Status magnifier leading to Masana directory; any future Status magnifier must open only feed post/user search and work under current signed-in account, moderator visibility, blocked accounts and language/font-scale. Status composer/reactions/comments/profile links unaffected by search removal. Test both root Status tab and deep-linked Status card; maintain correct back navigation.

## 0. Evidence, existing behavior and design reset

### Direct source audit

| Source at audited SHA | Confirmed bounded observation | Required design impact |
|---|---|---|
| `apps/mobile/lib/src/screens/status/status_screen.dart` | `StatusScreen` explicitly states **Masana-authored approved updates only**; account-fenced API/media, Masana profile opener, signed-in view, two tabs **Updates / Videos** with per-account selected-tab restoration | Supersede Masana-only feed presentation with human+Masana posts; retain account fencing, approved Masana visibility, old videos only as qualified secondary surface (don't duplicate or force long-form hosting) |
| `apps/mobile/lib/src/features/home_feed/feed_api.dart` | `FeedPost` requires `authorMasanaId`, kind/body/media, likeCount/commentCount and boolean viewerLiked/saved; `FeedComment` has ID/body/state/time/parentId, not a proper public comment-author projection | Migrate toward typed polymorphic author identity, audited avatar/handle/profile route, reaction type+counts and comment author/display/safety; preserve backward-compatible legacy projection during rollout |
| `features/home_feed/feed_screen.dart` | For You/Following list, server pages, optimistic Like and Save with revert-on-error, detail/comment navigation, one inline **first image** with media-count, audio open, report callback, author Masana link, partial offline/error recovery | Replace compact simple cards with full feed composition (avatar+type/name/time/audience → text and galleries/video/audio → reaction summary and Like/React, Comment, Share, Save menu). Preserve cursor/retry and account isolation |
| `features/home_feed/feed_post_detail_screen.dart` | Detailed post and comments, newest/oldest, one-level reply and same request key on ambiguous send, pending-review status, permission/offline states; comment author missing | Expand to full comment identity/avatar/author link, true threaded replies, per-comment reaction/edit/report, safe sorting and status; no anonymous fake actor labels |
| `features/home_feed/feed_comments_sheet.dart`, `feed_inline_media_card.dart`, `feed_media_screen.dart` | Smaller comments sheet, signed media, still-image/audio rendering and viewer grants | Reuse signed-media transport and detail instead of second URL/caching stack. Use the full comment page for keyboard/focus and authorization; migrate redundant small sheet carefully |
| `screens/profile/masana_status_posts_screen.dart`, `screens/profile/{masana_profile_screen,person_profile_screen}.dart` | Masana-scoped Status list/profile already exists, human public profile route exists in app | Both types of author avatar and name must be tappable. Human → canonical `/u/:handle`/human public profile; Masana → canonical current Masana profile, with creator attribution secondary; post author and creator must not be conflated |
| `services/gateway/src/modules/home_feed/routes.ts` | `GET /v1/feed?mode=for_you|following`, `GET /v1/posts/:id`, nested comments, `PUT /:id/like`, `PUT /:id/save`, idempotent `POST /:id/comments`; actor `fan|staff|masana`. Comment/order backend owns authorization | Extend existing authenticated feed service and typed contracts, **not** introduce a second Facebook-clone database, root or unversioned ledger. Preserve `like` as the backward-compatible default reaction |
| `modules/home_feed/{admin_review_routes,media_routes,media_runtime}.ts` | Creator/admin editorial reviewed publishing, approved photo/audio media authorization, draft/revision control. Direct staff post bypass denied; posts centered on Masana author | New human-authored post lifecycle requires user-specific compose/media ownership+server permissions and moderation paths, **separate from privileged Masana editorial publishing**. Never bypass existing editorial checks by sending a fake fan `authorMasanaId` |
| `features/videos` + Status videos tab | Source-compliant external video catalog/player with provider checks, not a native arbitrary upload backend | Featured video discovery may remain a secondary Status view. Native user-uploaded long-form videos require independent storage/CDN/moderation/cost qualification; do not claim already shipped |
| `apps/mobile/test/features/home_feed/*`, `status_screen_test.dart`, `status_tab_restoration_test.dart` | Focused Flutter regression source exists for original Masana feed/detail/voice/media/account/tab behavior | Extend without deleting old regression guarantees; add human-author, reactions, publish/migration, account switch, device/permissions and media performance tests |

### External benchmark — adopt patterns, not its full business model

- **Facebook Feed official Dec 2025:** cleaner card/creator hierarchy, standardized multi-image grid, full-screen photo/video, simplified publishing, commenting/reply threading and controls. Source: https://about.fb.com/news/2025/12/making-it-easier-to-create-discover-and-share-content-on-facebook/ .
- **Facebook Friends vs Discover:** a user-controlled chronological/Following or Friends-only surface is different from algorithmic discovery; users should know why content appears. Official Mar 2025 Friends feed: https://about.fb.com/news/2025/03/bringing-magic-of-friends-back-to-facebook/ .
- **Facebook direct feedback Oct 2026:** post overflow `Interested / Not interested` and clear topic/feed controls can be implemented simply without expensive opaque recommendation ML. https://about.fb.com/news/2026/10/introducing-your-algorithm-facebook/ .
- **WhatsApp Status:** lightweight creator avatar rings, reactions, viewer/audience privacy, profile continuity. These are secondary visual patterns only; Status remains a permanent social feed rather than a 24-hour story product. https://about.fb.com/news/2023/02/new-whatsapp-status-features/ .
- **Facebook spam/creator safety:** avoid farming comments and false social proof; transparent ranking and user agency. https://about.fb.com/news/2025/04/cracking-down-spammy-content-facebook/ .
- Decoded Telegram/WhatsApp reference assets are layout inspiration and **do not** prove running video, encryption, ranking algorithms or provider integrations. Do not copy Facebook wordmark, color palette, proprietary images, sounds, typography or engagement manipulations.

### Product decisions for this owner-directed redesign

1. **Mixed-author Status** is now the target: Humans can post *as themselves* if authorized; Masana post *as their distinct AI identity* after approval/creator rights. AI cards get an unambiguous **Masana · AI** label. Creator attribution is a secondary link; publishing as Masana must never impersonate its human creator.
2. **Facebook-style stacked cards** and scroll-to-next posts are primary. Not a fullscreen tappable story slideshow, nor a video-only vertical feed. Text-only, image carousel/grid, short approved video and audio cards share one feed design.
3. **Primary navigation inside Status**: `For You | Following | Latest` (three non-root filters, potentially responsive chips); saved posts, own posts, media-focused Videos and feed preferences are secondary entry points. `Following` mixes followed people and followed Masana. `Latest` uses authoritative time/order, not engagement score. If another existing tab/videos is retained, avoid duplicating nested primary tabs; preserve restoration migration.
4. **Human post creation** (new) must be direct and easy: inline `What's on your mind?` row → text/media composer → Audience & review → Publish. Owner may edit/delete their own post; never force a creator paid-publication fee onto an ordinary human status.
5. **Masana posting** retains scheduled/reviewed creator-editorial/cadence policy, explicit approved media and lawful AI disclosure; no fan pretending to be a bot via request body. App shows creator as an attributed operator if viewer is authorized to know, but clicking main card author opens **Masana profile**.
6. **Reactions**: default **Like** plus small supported set Love, Haha, Wow, Sad, Care, Angry if qualified; a user's single current reaction toggles/replaces, no arbitrary unlimited reactions. Display text/count and stable ordered emoji in summary; counts trustworthy and nonnegative; hide names for privacy/blocked scopes.
7. **Comments**: first-class verified human/AI author identity, avatar and profile link, replies, accessible composer and moderation states. Masana responses appear only under approved posting/comment policy and are clearly labelled AI; do not automatically generate reply spam to drive engagement. Comment body alone never creates a money movement or direct-message approval.
8. **Social graph**: follow/unfollow authorized public human/Masana identity, mute/hide/report author or post, save, share as safe post link or to an authorized Chat/Room. Do not expose private profile details or force upload of phonebook contacts.
9. **Feed fairness**: begin with deterministic source-based ranking (followed author recency; bounded diversity and safety; latest chronological), account-scoped preferences and reason labels. No heavy paid ML stack at launch, manufactured reactions, compulsory engagement rewards or silent auto-sharing to Rooms.
10. **Publishing integrity**: accepted upload ≠ published, pending review ≠ visible, request timeout ≠ publish failure; persist request identity and read back canonical status. Revised/removed/blocked/expired-author posts cease to appear in alternate search/profile/media/comment/share routes.

## 1. Design system and high-fidelity textual screen layout

**Visual identity:** Masanawa's established green/white semantic tokens (with real dark mode), not Facebook blue. Warm neutral background with elevated white cards and 12–16dp corners, consistent 8/12/16dp spacing. Width uses full available mobile surface, centered constrained width on tablet. Type: author name strongest, timestamp/audience secondary, text body comfortably readable, media edge-to-edge **inside the card**, actions evenly spaced 44–48dp targets, no noisy gradients or aggressive skeleton shimmer. Contrast and accessible labels over decorative badge clutter. One actionable primary row per surface and light haptics only on verified taps.

**Status first viewport (mobile):**

```
STATUS                                         Search  More
[For You]  [Following]  [Latest]              (scrollable)
[My avatar]  What's on your mind?             Photo / Video
----------------------------------------------------------
[Avatar]  Amina Yusuf · Person       [Follow]       [•••]
          2h · Public  / shared from room if authorized
Looking forward to Saturday's meetup...  [See more]
[image 1 large][image 2 + overflow if multiple]
[❤️ 👍 128 reactions]                  [24 comments] [12 shares]
[React]              [Comment]              [Share]
----------------------------------------------------------
[Avatar]  Bodi · Masana AI          [Following]     [•••]
          3h · Public · Created by ... (secondary link)
Thoughtful short post + optional audio preview...
[Like/Love...]        [Comment]              [Share]
```

**Author row:** tappable avatar and author name are one semantic link to the **correct profile type**. Subtitle shows actual time, audience icon/label, edited state, original source if crossposted, verified AI disclosure. Human profile opens profile with Message/Call/Follow. Masana profile opens distinct published persona with Chat/Voice/Creator; owner-only tools never leak to visitors. Creator secondary attribution is not confused with author. More menu includes only eligible controls: Save/Unsave, Copy link, Hide post, Mute/Unfollow author, Interested/Not interested, Report, and owner Edit/Delete/Audience if allowed. Sensitive audience/owner must be validated server-side.

**Content body/media:** text body collapses naturally after roughly 5–7 lines with `See more`; link previews are safe, non-executing and privacy-minded. 1 image fills the media slot with fit/alt; 2 images side by side; 3 one dominant + 2 smaller; 4 neat 2×2; 5+ show +N on last tile, viewer loads all with authorized grants. Video poster, tap-to-play, captions, duration and mute state; avoid autoplay audio/cellular surprise. Audio waveform/cover/transcript with play/pause/seek, audio focus and text alternative. Multi-media kinds need a typed attachment list rather than the old one-kind+IDs assumption.

**Engagement row:** server reaction summary and counts → tapping opens reaction details filtered by permission; below is a three-part **React, Comment, Share** action bar. Long press/tap reaction expands accessible palette, announces selected reaction and permits replace/remove. Comment opens full post thread with identity and keyboard-safe composer. Share opens share options (Copy link; Chat; authorized Room; system sheet), bounded preview and audience confirmation; share count increments from accepted share event if implemented, not from merely opening sheet. Save remains in overflow or a small explicit bookmark. No tiny unlabeled action icons.

**Feed controls:** user taps For You for transparent, privacy-safe mixed recommendations; Following for people/Masana they follow; Latest for chronological eligible posts. Pull to refresh and incremental scroll with cursor; retained scroll position/filter on root tab departure; post detail and profile back returns to same anchored card. Row/creator mute/report immediately affects client projection after authenticated readback. If no followed authors, explain Following and link to Discover/Find people, not counterfeit followed posts. Low-data toggle disables autoplay/prefetch and uses reduced-size imagery.

**Creator/user composer:** minimal first state `What's on your mind?` → title-free full-screen compose with avatar/author, audience control (`Public`, `Followers`, permitted Room), text, attach image/video/audio, alt text, location only explicitly, post preview and Publish button anchored above keyboard. Two-step **Review** for sensitive audience or multiple media; show media upload, processing, review, scheduled/draft and published states separately. A user can save/dismiss draft (secure and account scoped). An ordinary human never impersonates Masana through author picker; owner Masana publishing is accessed through creator management, with an explicit AI agent identity and the existing editorial review/cadence process.

**Accessible/responsive:** 320dp at 200% text, TalkBack/VoiceOver equivalents where supported, RTL/Hausa translation consistency, high contrast, keyboard submit and reachable palette/menu, noncolor-only status, reduced motion, captions and `altText` for photos. Do not hide reaction counts behind inaccessible emoji. Dark mode preserves tonal hierarchy and legibility. A 7-inch/large display shows centered feed with optional secondary discovery panel, not stretched cards.

## 2. Full screen/sheet map (SF00–SF39)

**Legend:** **S** bounded source code already exists (old Masana-specific implementation); **P** partial/reusable existing source; **N** new requirement without verified compatible implementation; **Q** live/provider/device qualification; **C** optional; **X** deliberately not adopted. A row's status refers to the *entire redesigned* surface, so old source alone normally means P, not shipped. All 40 screens below are **design targets**, not presently accessible routes. For each row apply Section 4 universal loading/empty/error/offline/permission/account-switch matrix in addition to exceptions listed.

| Screen / status | Layout from top to bottom, every major control | Journey/back/deep-link, nonhappy path and permissions |
|---|---|---|
| **SF00 P** Status landing | header/Search/More, For You·Following·Latest chips, compact composer, stacked post cards | Root selected/back restores last filter and scroll. Signed out, disabled feed, zero posts, stale/offline, account revoked. No story-only layout |
| **SF01 P** For You feed | mixed eligible human+Masana cards, transparent source label, optional topic/follow discovery, cursor loader | Deterministic baseline ranking; why shown?; content suppression and no hidden-private recommendations |
| **SF02 P** Following feed | followed people+Masana chronological cards, optionally pinned favorite authors, unread fresh marker | Empty-following CTA to explore, blocked/muted author, suspended Masana, race unfollow mid-scroll |
| **SF03 N** Latest feed | chronological eligible posts with time and optional jump-to-new items button | Stable server ordering and cursor; no fake current timestamp, respect hidden/blocked/scheduled |
| **SF04 /P** Post card | polymorphic human/Masana avatar, name, AI/edited/audience/time, body/media, reaction counts, React/Comment/Share and More | Avatar/name→SF21 or SF22; react palette; open post SF10; media SF14; stale/removed post vanishes on refresh |
| **SF05 N** Author overflow | Follow/Unfollow/Mute, Save/Unsave, Copy link, Hide, Interest preferences, Report, owner Edit/Delete | Scope per viewer and role; account switch closes sheet; destructive confirmations; cannot hide underlying moderation |
| **SF06 N** Post composer start | own avatar/name, `What's on your mind?`, Photo/Video shortcut and new-post action | New human own post only; no unqualified author impersonation, sign-out, blocked posting, restored owner draft |
| **SF07 N** Compose text | audience summary, multiline text, emojis/link formatting, See preview, Add media, Draft/Discard, Next/Publish | length/spam/content moderation bounds, keyboard/small devices, no lost unsent draft, no fake published state |
| **SF08 N** Media picker | Camera/Gallery/Audio/File as qualified, recent media, selected count, permissions | OS denied/revoked, invalid MIME, huge file, storage failure, cancel without losing text |
| **SF09 N** Review & audience | post preview, selected Public/Followers/eligible Room, mentions/alt/caption, consent and Publish | server audience eligibility; per-media grant; changed audience invalidates old review; review pending distinct from published |
| **SF10 P** Post detail | full original card, author row/media, reaction summary, comment sort/thread, pinned composer | link/auth→proper audience and old ID, scroll back to card, 403/404/410 never reveal content |
| **SF11 N/P** Comment thread | comment author/avatar/profile, body, time/edited/pending, reactions, Reply, See replies, sort | one authenticated user per comment, moderator case/pending, blocked parent/removed replies, keyboard-safe infinite thread |
| **SF12 N** Reply composer | reply-to quoted parent, author identity, text/emoji/media if qualified, Send, Cancel | same stable request ID on unknown outcome, max length, moderation verdict, invisible parent safe placeholder |
| **SF13 N** Reaction palette | Like/Love/Care/Haha/Wow/Sad/Angry icons with spoken text, currently selected state | one reaction per viewer/post, replace/unreact, rollback errors, server policy limits, no double tap duplicates |
| **SF14 P** Image viewer | full-bleed authorized photo, pagination/count, caption/alt, Zoom, Save/Share if rights, source post | temporary grants, no private URL, network/offline placeholder, revoked audience mid-view closes access |
| **SF15 P/Q** Video viewer | verified playable video, source/creator, controls captions/subtitles, full-screen, 1×, playback state | audio focus, low data, official external source rules, provider unplayable, app background, safe return |
| **SF16 P** Audio status viewer | cover/waveform, play/pause/seek/speed, transcript, author attribution | same call/voice note audio focus, weak connection, unsupported codec, accessibility alt text |
| **SF17 N** Multi-photo gallery | 2–N media grid, `+N`, swipe/zoom/full-screen, post reference, media descriptions | image IDs stable, loaded first image rights not enough for others, large gallery paging/offline |
| **SF18 N** Share sheet | Copy post link, Chat, authorized Room, OS system share, recipient/audience warning and preview | cross-private audience/share denied; cannot convert saved/link share into public re-post automatically |
| **SF19 N** Save collection | Saved post list/card, search/filter, remove save, open original | author deleted/changed privacy → unavailable placeholder; no private snapshots after revocation |
| **SF20 N** Search Status | people/Masana/posts/media topics, filtered result cards, recent searches and clear | authorized results only, typed search and safe zero-state, don't index confidential posts for public search |
| **SF21 P** Human author profile | avatar/cover/name/@handle/bio, Message/Call/Follow, public authored Status tab, relevant Rooms/Masana | canonical human profile, blocked/private/restricted and owner Edit; back retains post card location |
| **SF22 P** Masana author profile | AI-marked avatar/name/description/creator secondary, Chat/Voice/Follow/Status | canonical Masana profile; only approved status, restrict paused/retired, correct creator link |
| **SF23 P** Creator attribution link | secondary Created by [human] under Masana only if public and authorized | creator→SF21, never substitute creator for authored Masana profile or disclose private staff account |
| **SF24 N** My Status | owned human posts by draft/review/published/rejected/archived, status reasons and counts | edit/retry original/deletion; no other person's private draft; progress after app restart |
| **SF25 N/P** Post edit | own published content/revision, changed media/alt/audience, Preview, Save | immutable post ID and revision, concurrent edit conflict, reject invalid media while old published remains safe |
| **SF26 N** Delete/archive confirm | what disappears and where, Delete/Cancel or Archive/Restore if policy | server ACL, irreversible/appeal/retention rule, cache/search/media/share and comment revocation |
| **SF27 N/P** Follow/notification preferences | follow/unfollow, mute, push types, social graph privacy, saved favorites | avoid forced notification permissions; mute affects alert/rank not authorization; blocked account fail closed |
| **SF28 N** Interested/Not interested | relevant reason/category selection, Hide post, See less/more from author/topic, Reset feed settings | bounded account-scoped preferences and readback, no complex AI recommender required; no private inferred interests exposure |
| **SF29 N/P** Report post/author | reason picker/optional description, original post ref, evidence and Submit | prohibited content/impersonation/AI safety, rate limited, server case ID, not instant removal from one report |
| **SF30 N** Report/comment moderation case | reporter confirmation, under-review/resolved/appeal stage with scoped activity | manager/reporter/author visibility separate; no unreconciled phantom resolution or leaked complainant |
| **SF31 P** Admin editorial review | author identity/type, media rights, copy/cadence check, approve/reject/restrict with audit | privileged Masana editorial separate from human post moderation; no public direct staff-publish bypass |
| **SF32 P/N** Creator Status manager | choose owned published Masana, draft/post revision/schedule/cadence/pause, visibility and metrics | creator authorization; free/paid *agent publication* policy separate from ordinary human feed post fee |
| **SF33 N** Publication progress/outcome | Preparing media/Uploading/Processing/Moderation/Pending/Published/Failed and original ID; View post | app kill, ambiguous upload, provider timeout, Retry original/Discard, no duplicate post or fake published status |
| **SF34 N/P** Tagged person/Masana picker | authorized human/Masana search, mention preview/consent where needed, remove chip | reject private/blocked/restricted entity, mention never includes other person's phone/account ID |
| **SF35 N** Post audience editor | Public/Followers/qualified Room settings, inline who-can-see and share policy, confirm | previously viewed content/cache/notifications revoked on narrowing, replies and attachments ACL consistent |
| **SF36 N** Feed settings/low data | autoplay off, low-data thumbnail, following vs discover default, hidden authors/topics, accessibility | account-scoped persistence, privacy explanation; no algorithm profiling unless permitted |
| **SF37 C** Quick Status rings | small optional recent-author rings ABOVE feed for discoverability only | tap opens author's Status feed, *not* forced 24h expiry or separate story backend |
| **SF38 C** Short video discovery | optional browse approved clips inside Status, video card deep-link to normal feed post | no standalone unsupported user video host, permission/copyright/moderation and cost qualification |
| **SF39 N/P** Status activity/notifications | reactions, comment replies, mentions, new posts/follows, grouped unread/open action | lockscreen redaction, deep link reauth, muted/restricted posts, no fake counts or background auto-notifications |

**User-facing hierarchy:** Status = one primary root and one scroll feed experience. Do not bolt Facebook groups, Marketplace, Events, dating, gaming, paid Stars or another social app into Status. Rooms already handle communities, Wallet handles money, Chats handle messaging, and Calls handle voice. Status cards may link to those same destinations but never manufacture duplicate entities/backends.

## 3. State matrix — applied to every feed, composer and interaction

| State/trigger | Required presentation and safe action | Failure/invariant acceptance |
|---|---|---|
| Initial loading | mixed-height skeleton of header/avatar/body/media, accessible loading label, Back/other roots available | no indefinite fullscreen spinner, no synthetic posts |
| No posts | simple empty author/feed illustration or icon, `Find people and Masana` / `Create post` if eligible | Following empty ≠ For You empty; no fake engagement |
| Offline, previous public read | last-updated label and visible stale banner, already-authorized thumbnails only, manual Retry | private content purged after permission change, never cached as public |
| Offline first open | short informative error + Retry / own safe draft | no hidden auto-publish or ghost likes |
| Paginated loading/error | existing cards remain, bottom Retry and unchanged cursor; no duplicate rows | cursor version/filters/owner unchanged and deduplicated |
| Auth expired/account switch | immediately clear private feed/card/comments/media grants/draft/author preferences; sign-in CTA | A's late HTTP response cannot repaint B's Status |
| Permission denied/blocked/retired author | protected generic unavailable state; safe Back and no private preview/URL | direct post/profile/comment/media/share endpoints all deny |
| Post scheduled/pending review | owner sees `Pending review` with original ref; public feed sees nothing | review timeout does not equal rejection or publication |
| Upload progress/process loss | file count, per-media progress, Cancel/Retry same original, View pending | old local file may require reselect; no second published post |
| Like/react/share failure | revert optimistic visual; explain inability and allow safe retry | count never negative/overcount; unknown share event not billed |
| Comment send outcome unknown | keep text/parent/request key, Check status/retry original, not duplicate | accepted-but-timeout inserts once, no lost parent |
| Content edit or delete | refresh existing post ID/revision, invalidate gallery/comments/search link | stale edit never resurrects removed media |
| Report/appeal | show case reference and ordinary feed unaffected until moderation decision | no false instant ban from reporter click |
| OS media/location/microphone denied | typed permission reason, Settings or Cancel, keep text draft | no covert capture or forced permissions |
| Reduced motion/slow data | no autoplay media, static poster, lightweight pagination and caption accessibility | no auto-play audio under voice call; metered data predictable |
| Small screen/RTL/high contrast | targets at least 44–48dp, wrapped author/action text, semantic counts and labels | 320dp/200% no obscured Publish/Cancel and TalkBack reads reaction type |
| Feature flag/provider down | fallback legacy Masana feed only if authenticated semantics compatible, clear unavailable human posting/reaction controls | migration staged; do not expose UI affordance without backend authority |

## 4. Atomic feature inventory — no control implicitly considered complete

All `ST0–ST7` IDs are independently testable children of the existing phases and new Status owner decision. Status **S** = current source exists; **P** = partially supported; **N** = new/unverified; **Q** = actual provider/device/security qualification; **C** = conditional; **X** = intentional non-adoption. A current-source row is *not* a shipped screenshot or production acceptance claim.

### ST0 — Feed shell, author cards, navigation and discovery
| ID | State | Atomic acceptance condition |
|---|---|---|
| ST0-01 | P | Status remains a root of existing five-tab shell; Chats remains default home. |
| ST0-02 | P | For You and Following filters restore after app process/tab switching per account. |
| ST0-03 | N | Latest uses trusted `publishedAt` descending and stable tie-breaker cursor. |
| ST0-04 | N | New header has Search, More, clean filter row and quick composer. |
| ST0-05 | N | One feed mixes qualified public human and approved Masana posts without duplicates. |
| ST0-06 | P | Avatar/name/time render without layout shift and accessible correct author semantics. |
| ST0-07 | N | `Person` author marker and verified `Masana · AI` label remain distinct. |
| ST0-08 | N | Human avatar/name tap opens canonical user profile and correct back anchor. |
| ST0-09 | S/P | Masana avatar/name tap opens canonical published Masana profile. |
| ST0-10 | N | Masana creator secondary byline opens public human creator when authorized. |
| ST0-11 | N | Author menu supports Follow/Unfollow only where social graph permits. |
| ST0-12 | P | Card time shown relative with absolute timestamp available to accessibility/info. |
| ST0-13 | N | Audience label Public/Followers/authorized Room never inferred from emoji alone. |
| ST0-14 | N | Edited/reposted/pinned status labels come from actual server events. |
| ST0-15 | N | Short text collapse `See more` preserves line breaks and safe formatted links. |
| ST0-16 | P | Feed paging/loading, deduplication, pull-refresh and retry reuse existing FeedApi. |
| ST0-17 | N | Scroll restore stable across return from profile/post/media/Chats and bottom tabs. |
| ST0-18 | P | Already approved Masana posts remain visible by old stable IDs after migration. |
| ST0-19 | N | Following includes both person and Masana follow edges, never unrelated private peers. |
| ST0-20 | N | Explicit `Why am I seeing this?` source reason for For You cards. |
| ST0-21 | N | Hide/recommendation controls persist and change next authorized fetch. |
| ST0-22 | P | No-content Following page links to discover eligible authors. |
| ST0-23 | N | No feed filtering/recommendation based on financial balances or private chats. |
| ST0-24 | P | Signed-out, blocked, offline, stale, empty and server-down states are distinct. |
| ST0-25 | Q | 320dp/200%-text screen, RTL, TalkBack, dark mode, tablet width acceptance. |
| ST0-26 | X | No Facebook-blue copied assets or extra Home/Feeds sixth root tab. |

### ST1 — Publication, drafts, text, media and author ownership
| ID | State | Atomic acceptance condition |
|---|---|---|
| ST1-01 | N | Authenticated human may create a Status as SELF only, subject to account policy. |
| ST1-02 | N | Human and Masana creator publishing have **different** explicitly authorized entry points. |
| ST1-03 | N | Quick composer opens full composer with correct own avatar/identity/audience. |
| ST1-04 | N | Multiline text, emoji, hashtag/mention and URLs are bounded and sanitized. |
| ST1-05 | N | Text-only updates render as first-class clean cards without fake media. |
| ST1-06 | N | Local account-scoped draft stores text and pending media references safely. |
| ST1-07 | N | Owner may Discard, Save draft, Preview and edit draft without network mutation. |
| ST1-08 | N | Author explicitly selects valid Public/Followers/authorized Room audience. |
| ST1-09 | N | Audience preview names who can see/comment/share before user publishes. |
| ST1-10 | N | Recipient-specific content visibility enforced by server, not UI dropdown only. |
| ST1-11 | N | Image picker returns original file plus compact preview and reorder/removal. |
| ST1-12 | N | 1 photo full, 2 split, 3 mosaic, 4 grid, 5+ count tile layouts fit responsive width. |
| ST1-13 | N | Individual attachment `altText`, caption, kind/MIME/container/size stored. |
| ST1-14 | N/Q | Short video duration/cost/codec/thumbnail rights and moderated upload qualified. |
| ST1-15 | P | Audio status uses existing approved secure media/player capabilities where eligible. |
| ST1-16 | N | Caption/mention tags are edited separately from link preview or alt text. |
| ST1-17 | N | Upload progress per media and cancel/reselect without losing text draft. |
| ST1-18 | N | Media finalize/processing/review/published are separate backend status stages. |
| ST1-19 | N | Request key and file fingerprint persist across uncertain API/Android process loss. |
| ST1-20 | N | Failed or timed-out publish retries original request first; no duplicate post. |
| ST1-21 | P | Existing privileged Masana editorial review/cadence/rights model not bypassed. |
| ST1-22 | N | An ordinary human post never triggers Masana publication fee or impersonates agent. |
| ST1-23 | N | Owner human post edit uses revision precondition and exactly one canonical post ID. |
| ST1-24 | N | User may delete own post only under clearly scoped retention/deletion rules. |
| ST1-25 | N | Changed audience revokes unauthorized prior media grants and saved/private projections. |
| ST1-26 | N | Mention eligibility protects blocked/private authors; does not send unsolicited AI prompts. |
| ST1-27 | N | Publisher preview is identical in content and audience to server-confirmed projection. |
| ST1-28 | Q | Android camera/gallery/file picker, revoked permission and 5MB+/long video QA. |

### ST2 — Reactions, counts, like fallback and social proof
| ID | State | Atomic acceptance condition |
|---|---|---|
| ST2-01 | S/P | Existing Like/Unlike persists and round-trips using current legacy endpoint. |
| ST2-02 | N | React button has accessible gesture to Like and open palette. |
| ST2-03 | N | Palette presents qualified Love/Care/Haha/Wow/Sad/Angry plus Like. |
| ST2-04 | N | Backend stores one reaction type per actor/post and enforces actor identity. |
| ST2-05 | N | Selecting same reaction removes it; selecting another replaces atomically. |
| ST2-06 | N | Counters aggregate distinct eligible actors and never become negative. |
| ST2-07 | N | Reaction emojis never imply unsupported local reaction persistence. |
| ST2-08 | N | React optimistic change rolls back on 403/404/timeout if unknown readback fails. |
| ST2-09 | N | Cross-device reaction replay/concurrency preserves one final row. |
| ST2-10 | N | Public summary shows top authentic types and total, no artificially created users. |
| ST2-11 | N | Tap summary opens restricted list of people who reacted only when visibility permits. |
| ST2-12 | N | Blocked/deleted/private actor identity is redacted or excluded from names as required. |
| ST2-13 | N | Comment Like/React is separate from post reaction with independent scopes. |
| ST2-14 | N | Owner cannot boost own count through multiple IDs or repeated tapping. |
| ST2-15 | N | Server generates reaction event notification with original post and authorized target. |
| ST2-16 | N | Like endpoint backward-compatible with reaction type `like`; not double counted. |
| ST2-17 | N | Removed/restricted post cannot be reacted to from cached card/deep link. |
| ST2-18 | N | Moderation-hidden/deleted reactions recompute counts rather than leaving stale badges. |
| ST2-19 | N | Offline not acknowledged as durable reaction; surface Retry/revert status. |
| ST2-20 | P | Counts localized, compact but screenreader announces exact integer and type. |
| ST2-21 | N | Rate-limit burst interactions without making a fake user-facing success. |
| ST2-22 | X | No purchased/AI-farmed likes, rankings solely by anger or engagement loops. |

### ST3 — Comments, nested replies, identity, sorting and moderation
| ID | State | Atomic acceptance condition |
|---|---|---|
| ST3-01 | S/P | Existing post comment API retains same original post ID and idempotency key. |
| ST3-02 | N | Comment display includes verified author avatar/name/handle/type and timestamp. |
| ST3-03 | N | Clicking a human comment avatar opens human public profile, no dead click. |
| ST3-04 | N | Clicking Masana comment avatar opens Masana profile with AI disclosure. |
| ST3-05 | N | Replies show parent context, indentation, view/hide replies, stable order. |
| ST3-06 | P | Existing Newest/Oldest thread sort preserved, can add Most relevant only if grounded. |
| ST3-07 | N | Reply-to @author label and Cancel reply are keyboard/screenreader accessible. |
| ST3-08 | P | Comment max 1,000 chars presently client enforced, server also validates. |
| ST3-09 | P | Pending review state is visible to owner, not globally counted as public. |
| ST3-10 | N | Approved/rejected/removed/edited states have author-specific clear outcomes. |
| ST3-11 | N | Viewers never see pending/rejected private comments by another actor. |
| ST3-12 | N | Author can Edit/Delete own comment within server-authorized policy. |
| ST3-13 | N | Per-comment React/Reply/Report/Copy menu respects actor roles. |
| ST3-14 | N | Mention picker/notification respects block/mute/audience and explicit action. |
| ST3-15 | N | Comment body sanitized for links, Unicode, bidi, quotes and malicious markup. |
| ST3-16 | N | Duplicate/submitted-then-timeout request resumes same key, never duplicates. |
| ST3-17 | N | Cursor paging for long threads retains parent/reply anchors after reload. |
| ST3-18 | N | Report comment creates bounded case with original comment/post and reason. |
| ST3-19 | N | Hide/delete parent preserves safe placeholder if child retention policy requires. |
| ST3-20 | N | Creator may constrain comment audience/mute thread only where policy supports. |
| ST3-21 | N | Masana replies cannot be mass-triggered without explicit consent, rate limits and rights. |
| ST3-22 | P | 401/403/404/410 renders authenticated/unavailable without revealing old body. |
| ST3-23 | P | Offline comment draft/unknown outcome preserves text/parent and exposes safe retry. |
| ST3-24 | N | Notification replies deep-link to exact visible comment and revalidate audience. |
| ST3-25 | N | Counts exclude removed/rejected comments according to documented server policy. |
| ST3-26 | Q | Two users + agent author + moderator E2E comment/reply/visibility tests. |

### ST4 — Profiles, follow, linking, share, save and search
| ID | State | Atomic acceptance condition |
|---|---|---|
| ST4-01 | N | Feed card contains stable typed `author.kind` Human/Masana, not just text label. |
| ST4-02 | N | Human author resolves by immutable owner ID to existing public `/u/:handle` profile. |
| ST4-03 | S/P | Masana author opens existing Masana profile using canonical character ID. |
| ST4-04 | N | AI author badge always present to prevent covert human impersonation. |
| ST4-05 | N | Creator-byline human links only if published creator attribution is authorized. |
| ST4-06 | N | Follow human or Masana yields independently scoped server event and state. |
| ST4-07 | N | Following state displayed consistently from feed, author profile and discovery. |
| ST4-08 | N | Unfollow doesn't delete existing permitted messages or authored posts. |
| ST4-09 | N | Post Share opens authorized Chat/Room selection, Copy link and system share. |
| ST4-10 | N | Deep-link target loads only if same signed-in viewer has post permission. |
| ST4-11 | N | Private post cannot gain public access from Share/Forward/Save/cached preview. |
| ST4-12 | N | Share text preview shows creator/name/media safe metadata with explicit origin. |
| ST4-13 | S/P | Existing Save toggle retained; saved list/sort/export added with same ID. |
| ST4-14 | N | Saved post removed/changed audience shows generic unavailable, not old content. |
| ST4-15 | N | Search results grouped by posts, people, Masana and authorized media. |
| ST4-16 | N | Search indexes only published authorized content; stale index must reauthorize. |
| ST4-17 | N | Hashtag/topic page lists eligible published posts with honest ordering. |
| ST4-18 | N | Public author Status tab shows only that person's published visible entries. |
| ST4-19 | P | Masana status profile's author filter remains backwards compatible. |
| ST4-20 | N | Opening/returning from profile restores original feed anchor and scroll. |
| ST4-21 | N | User block/mute/hide applies to feed, notifications, comments and search consistently. |
| ST4-22 | N | Own profile's Status allows edit/manage; visitor never sees private tools. |
| ST4-23 | N | Tagged user/agent tap opens correct profile only when authorized. |
| ST4-24 | N | Share/repost provenance visibly links original; never fabricated new authorship. |
| ST4-25 | X | No unwanted automatic repost to Room, contact upload or private phone in link. |

### ST5 — Video/audio/photo, uploads and low-data reliability
| ID | State | Atomic acceptance condition |
|---|---|---|
| ST5-01 | P | Existing approved Masana signed image/audio media retrieval stays protected. |
| ST5-02 | N | Multiple attachments have typed IDs, kind, order, crop/alt/caption/rights. |
| ST5-03 | N | Image carousel/grid shows correct +N count and opens correct starting index. |
| ST5-04 | N | Media long-press/share/export allowed only if author/audience policy permits. |
| ST5-05 | N | Thumbnail and full image requests use distinct responsive sizes when supported. |
| ST5-06 | P/Q | Native/feed video eligible sources show verified poster, duration and caption. |
| ST5-07 | N | Autoplay video muted only when user setting/network policy permits; never audio. |
| ST5-08 | P | Audio post integrates with `StatusAudioFocus` and yields call mic/audio priority. |
| ST5-09 | P | Audio includes play/pause/seek/replay and accessible transcript fallback. |
| ST5-10 | N | Audio captions/text alternatives visible without requiring playback. |
| ST5-11 | N | User short-video processing/hosting/retention needs real signed media provider proof. |
| ST5-12 | N | Media upload receipt only successful after original file object/store readback. |
| ST5-13 | N | Image/video moderation and copyright/consent before publishing public content. |
| ST5-14 | N | Suspended/removed post revokes original-media access for all unauthorized viewers. |
| ST5-15 | P | Media lazy-load, retry, placeholder and permission denied without infinite spinner. |
| ST5-16 | N | Low-data mode reduces prefetch/thumbnail and prevents cellular autoplay. |
| ST5-17 | N | Large video storage/CDN/egress costs and provider portability estimated before enabling. |
| ST5-18 | N | Sensitive EXIF/GPS metadata stripped unless explicit authorized disclosure. |
| ST5-19 | N | File type/extension/magic bytes agreement and malware/unsafe content scanning. |
| ST5-20 | N | Closed media player returns to originating post and preserves audio focus/state. |
| ST5-21 | N | External video source compliance; cannot silently download/rehost licensed catalog. |
| ST5-22 | Q | Physical Android gallery/camera/audio/video/network loss/account switch tests. |
| ST5-23 | C | Story rings, live video or long-form upload only if future demand/rights/budget. |
| ST5-24 | X | No static fake video success, copyrighted imported media or autoplay voice. |

### ST6 — Safety, moderation, creator/editorial and privacy
| ID | State | Atomic acceptance condition |
|---|---|---|
| ST6-01 | N | Human post ownership enforced from authenticated session, never client author ID. |
| ST6-02 | P | Staff/Masana editorial pathway maintains review and audited publish decision. |
| ST6-03 | N | Human publish policy handles draft/pending/approved/rejected/removed and appeals. |
| ST6-04 | N | Public Masana content requires proper persona/creator rights and AI identity. |
| ST6-05 | P | Creator cadence/pause/revision/content quality guard applies to new Masana posts. |
| ST6-06 | N | Post-level Public/Followers/Room audience policy applied to every read endpoint. |
| ST6-07 | N | Search/cache/media/comments/reactions/share/notifications use same visibility predicate. |
| ST6-08 | N | A post marked removed/scheduled/draft never appears from alternate API query. |
| ST6-09 | N | Report post/author/comment categorization and optional evidence protect reporter. |
| ST6-10 | N | Multiple reports rate-limited/unique-reporter counted, no forced auto-takedown. |
| ST6-11 | N | Moderator can review, remove, restrict, reinstate and record decisions immutably. |
| ST6-12 | N | Author receives moderated action/reason and appropriate appeal route if allowed. |
| ST6-13 | N | Blocked/muted author removes post from viewer feed while preserving policy trace. |
| ST6-14 | N | Teen/age/region/legal restrictions enforced only with real verified policy. |
| ST6-15 | N | Spam links, coordinated fake engagement and impersonation are checked and traceable. |
| ST6-16 | N | Automated moderation proposals not the sole irreversible decision without approved policy. |
| ST6-17 | N | Feedback Interested/Not interested does not reveal inferred private attributes. |
| ST6-18 | N | User can reset hidden authors/topics and ranking controls clearly. |
| ST6-19 | N | Private profile media/phone/email/session data cannot leak in author metadata. |
| ST6-20 | N | User account deletion/author retirement respects lawful audit/retention boundaries. |
| ST6-21 | N | Published engagement counts exclude rejected/spam/removed actors as policy defines. |
| ST6-22 | Q | Two-account privacy, unauthorized media, forged principal and moderation E2E tests. |
| ST6-23 | X | No mandatory dopamine loops, invasive topics profiling or buying engagement. |

### ST7 — Notifications, account lifecycle, operations and cross-app quality
| ID | State | Atomic acceptance condition |
|---|---|---|
| ST7-01 | N | Reaction/comment/reply/mention/follow/new-post notifications use actual events. |
| ST7-02 | N | Duplicate push/outbox event does not create duplicate in-app notice or count. |
| ST7-03 | N | Tapping notification opens original post/comment after signed-in reauthorization. |
| ST7-04 | N | Private author, audience and message snippet redacted on lockscreen and logs. |
| ST7-05 | N | Mute/unfollow/silence suppresses alerts without losing allowed authored posts. |
| ST7-06 | N | Pending media/post processing and moderation produce truthful owner-only updates. |
| ST7-07 | P | Logout/session switch invalidates list, detail, media grants and async callbacks. |
| ST7-08 | N | Same owner device A/B edit/deletion updates projection with version/cursor. |
| ST7-09 | N | Deep links support `/status/post/:id` with canonical redirects safely. |
| ST7-10 | N | Reported/removed post push opens unavailable, never cached disallowed body. |
| ST7-11 | N | Production feed query has bounded indexes, rate limits, cursor validation and timeouts. |
| ST7-12 | N | Operations monitor read latency, publish backlog, media fails and moderation queue. |
| ST7-13 | N | A/B compatibility migration supports old `authorMasanaId` clients and newer author model. |
| ST7-14 | N | Feature flags allow human posting/reactions independently of safe old read path. |
| ST7-15 | N | Database/post count/index migrations preserve old content and rollback without loss. |
| ST7-16 | N | Model/data cache never stores unbounded author PII, tokens or signed media URLs. |
| ST7-17 | N | No unaudited automatic posting from Masana or Room discussion. |
| ST7-18 | N | Load test 500+ eligible posts, multi-image and 1k-comment thread with pagination. |
| ST7-19 | N | Cost budget for thumbnails/video/CDN/storage/admin review at pilot and growth. |
| ST7-20 | Q | Tests: real Android 320dp, 200% fonts, TalkBack, low-data, dark/RTL and process loss. |
| ST7-21 | Q | Tests: approved live media/cadence provider plus deployment/rollback, not mocks only. |
| ST7-22 | P | Keep user-rejected global Masana work/error banner removed across Status. |
| ST7-23 | X | No platform-wide algorithm ML/ads infrastructure required to launch feed. |

## 5. Canonical data/API/navigation architecture (target, not already implemented)

**Principle:** Evolve `services/gateway/src/modules/home_feed/*` and `apps/mobile/lib/src/features/home_feed/*` in place and the established public profiles/social graph. Do not create a duplicate social-feed service, duplicate follow ledger or independent signed-media authority. Reuse the same authenticated Dio client, account epoch and Gateway request IDs; one integrator owns migration/authorization schemas/routes, while scoped Flutter widget owners can work in parallel against a versioned contract. The current `authorMasanaId` data is preserved as legacy read compatibility until all apps are upgraded and migrated safely.

### 5.1 Typed projections

Proposed conceptual schema (for design; names are NOT presently verified server fields):

```ts
type StatusAuthor =
  | { kind: 'human'; userId: string; handle: string; displayName: string; avatarMediaId?: string; profileUri: string; canFollow: boolean }
  | { kind: 'masana'; characterId: string; displayName: string; avatarMediaId?: string; profileUri: string; aiDisclosure: true; creator?: { userId: string; handle: string; profileUri: string } };

type StatusAudience =
  | { kind: 'public' }
  | { kind: 'followers' }
  | { kind: 'room'; roomId: string; audiencePolicyVersion: string };

type StatusAttachment = {
  mediaId: string;
  kind: 'image'|'video'|'audio';
  order: number;
  altText?: string;
  caption?: string;
  durationMs?: number;
  posterMediaId?: string;
  processingState: 'pending'|'ready'|'failed'|'restricted';
};

type StatusPostProjection = {
  postId: string; tenantId?: never; // NEVER leak internal tenant IDs as public post data
  author: StatusAuthor;
  audienceLabel: 'Public'|'Followers'|'Room';
  kind: 'text'|'image'|'audio'|'video'|'mixed';
  body: string;
  attachments: StatusAttachment[];
  createdAt: string; publishedAt?: string; editedAt?: string;
  revision: number;
  publishedState: 'published'|'pending'|'restricted'; // 'pending' author-only
  reactionCounts: Partial<Record<'like'|'love'|'care'|'haha'|'wow'|'sad'|'angry', number>>;
  reactionTotal: number; viewerReaction: string|null;
  visibleCommentCount: number; shareCount?: number;
  viewerSaved: boolean; viewerFollowsAuthor: boolean;
  reason?: { kind: 'following'|'recent'|'discovery'; text: string };
  allowedActions: ('comment'|'react'|'save'|'share'|'report'|'edit'|'delete'|'follow')[];
};

type StatusCommentProjection = {
  commentId: string; postId: string; parentId?: string;
  author: StatusAuthor; body: string;
  state: 'published'|'pending_review'|'rejected'|'removed';
  createdAt: string; editedAt?: string; revision: number;
  reactionCounts?: Record<string, number>; viewerReaction?: string|null;
  replyCount: number; allowedActions: string[];
};
```

**Privacy caution:** public `author` and `creator` projections must contain only approved identity fields and opaque public routes. Never return phone, email, private user ID in publicly shareable links, private draft, moderation notes, request key, signed storage URL, internal KYC, or another person's feed preferences. Identifiers used in authorized app APIs must still undergo object-level access checks.

### 5.2 Endpoint evolution and event contracts

| Existing path or proposed contract | Status | Required semantics and compatibility |
|---|---|---|
| `GET /v1/feed?mode=for_you|following&cursor=` | Existing | Extend **mode=latest** and typed author projection, preserve legacy pagination and old `authorMasanaId` filter until removal is safe; no unsupported `Latest` chip before qualified API |
| `GET /v1/posts/:id` | Existing | Return viewer-scoped published post; owner-only pending projection distinct; check audience, block, moderation, author restriction on every read |
| `GET /v1/posts/:id/comments?sort=` | Existing | Add authorized author identity, paged parent/replies and state projections, stable ID/version and sort; sanitize text and private reporter info |
| `PUT /v1/posts/:id/like` | Existing | Continue to map to `reaction=like` in new event schema, avoid double count; legacy responses backward compatible |
| `PUT /v1/posts/:id/reaction` | **New proposal** | Body typed `{reaction: enum|null, requestKey}`; atomic one-per-viewer reaction swap/removal, origin post ACL, rate limit, idempotency and authoritative count |
| `GET /v1/posts/:id/reactions` | **New proposal** | Aggregates always, people who reacted only if viewer permitted; cursor, identity redactions, no blocked/deleted user leak |
| `PUT /v1/posts/:id/save` | Existing | Continue owner-scoped boolean save, no unauth cached card after post permission revoked |
| `GET /v1/feed/saved` | **New proposal** | Authenticated saved list, cursor; each item re-authorized at read time; removed/private returns unavailable |
| `POST /v1/posts/:id/comments` | Existing | Preserve idempotent request key; typed parent and visibility; actor inferred from auth, not payload; comment body moderation |
| `PATCH/DELETE /v1/posts/:id/comments/:commentId` | **New proposal** | Server-authorized own edit/delete with revision, moderator action separate audit trail, child reply retention safe |
| `GET/POST /v1/status/drafts`, `PATCH/DELETE /v1/status/drafts/:id` | **New proposal** | Human-owned draft lifecycle, encrypted account-scoped metadata; no public read and no creation as Masana from fan role |
| `POST /v1/status/posts`, `PATCH/DELETE /v1/status/posts/:id` | **New proposal** | Human create/edit/delete; stable `Idempotency-Key` and revision, audience/media proof/ownership, review policy and readback; no privileged editorial bypass |
| `GET /v1/status/posts/by-request/:requestKey` | **New proposal** | After HTTP timeout/process death returns draft/review/publication outcome for original human write; never resubmit new ID blindly |
| `GET /v1/status/my-posts` | **New proposal** | Own published/pending/rejected/draft, no coauthor leakage; filtered cursor and permissions |
| `GET/PUT /v1/status/preferences` | **New proposal** | Account-scoped low-data, muted authors/topics, feed controls, privacy and reset; no covert sensitive profiling |
| `GET /v1/status/search` | **New proposal** | Search eligible published posts and authors with per-result audience validation, cursor, rate limits, no private index snippets |
| `GET/PUT /v1/status/follows` (or reuse existing social API) | **Integrate** | Reuse one canonical human/Masana follow graph, and expose type-qualified follow state; avoid second social graph |
| `POST /v1/status/shares` | **New proposal** | Record only an actual acknowledged share operation to allowed destination; opening share sheet is not a share; PII redacted |
| `POST /v1/status/reports` + admin case APIs | **New proposal** | Post/comment/account report with reason, actor ACL, audit decision, duplicate control and legitimate appeal; reuse existing content-report infrastructure |
| `POST /v1/admin/feed/drafts` and review routes | Existing | Masana editor/creator work uses existing audited rights, approved audio/media, publication cadence; human publishing does not inherit editor permissions |
| Existing `home_feed` signed media routes | Existing | Continue one signed media authorization path, extended typed author+audience proof and per-media kind; revoke on blocked/restricted/deleted/account switch |

**Canonical mutation contract:** `MutationInput = {requestKey, expectedRevision?, intendedActor, audienceVersion?, mediaReferences, userConfirmed}` with server-resolved authenticated identity (do **not** trust intendedActor as authorization). Each response gives canonical ID+state+revision+trace ID, followed by a GET readback. With uncertain HTTP status, keep original request key and query status before retry. Do not accept a user-created post as `published` until authoritative public-visible revision. Moderation events carry `eventId, actorId, reasonCode, target, before/after, occurredAt` in protected logs.

**Read query ordering:** For You deterministic eligible recent mixed authors + bounded variety and user preferences; Following selected social graph edges and recency; Latest `(publishedAt DESC, postId DESC)` with opaque cursor and publication time, not client time; per-author lists by typed ID. Identity and post-visibility predicates must run **before** any ranking/aggregation/cursor and again before generating media grants. Counts and follow state must be recalculated consistently on revoked/deleted/blocked content. A `latest` client parameter must not be silently mapped to `for_you` by old servers.

**Migration/compatibility design:** Add nullable typed `author_kind/author_id` alongside current `author_masana_id`; backfill existing approved posts to `kind='masana'` preserving stable IDs, media refs, reactions (as `like`), comments, saved state and publish timestamps. Write-version gate dual-read and new-write only after checked migration. Deny human publishing on older runtimes cleanly. Introduce author display by authorized join rather than denormalizing private person fields. Preserve old `FeedPost.fromJson` clients with `authorMasanaId` for Masana only; new client reads typed author, never creates bogus Masana IDs for humans. Schema changes forward-only, with shadow reads, indexes for feed mode/cursor, and tested rollback preventing data loss. Disabling new writer is reversible; deleting/minting old records is not.

### 5.3 Permissions truth table

| Role | Can view | Can publish | Can react/comment/share | Special rights |
|---|---|---|---|---|
| Anonymous / signed-out | Explicit public content only if product policy permits; current UI requires sign-in | No | No | Safe read-only sign-in link; no privacy bypass |
| Authenticated human | Eligible public/followed and allowed Room-scoped posts | As own human identity only after server feature policy | If viewer allowed and not blocked/restricted; case-scoped report | Edit/delete own only with version/control |
| Creator managing Masana | As ordinary human plus owned author drafts | Only through creator/approved Masana editorial authority | As human unless explicitly approved Masana response capability | Can manage cadence/pause/submit **owned** published Masana; no fake self-boost |
| Masana service actor | Only context allowed by a configured publication permission | Scheduled/reviewed attributed Masana publication under service policies | Only typed permitted AI response under rate-limit/consent | No unaudited automatic comments, hidden human profile data or payment action |
| Room participant | Eligible room-audience Status if product supports sharing | Only under explicitly authorized Room cross-post contract | Must retain Room membership/audience after cross-post | No general Room content exposure through public feed |
| Content moderator/staff | Approved scoped post/comment/report data | Via audited editorial workflow, not a staff impersonation shortcut | Moderation privileges separate from fan engagement | Dismiss/remove/restrict with reason, audit and appeals |
| Blocked/banned/suspended account | Public exposure narrowed by policy, never private content | Denied as appropriate | Denied where protected | Can inspect own sanction/support context |

## 6. Complete golden user journeys (client → API → database/media → readback)

1. **Human first-post:** Login → Status → composer → add text → Public audience → Preview → Publish original ID → pending/published as returned → open own human avatar from post → real `/u/:handle` profile and own Status list.
2. **Human photo feed:** Start post → select 4 photos → reorder/caption/alt → upload each → review → server publication → 2×2 gallery in feed → tap third photo → authorized full-screen viewer → back retains card scroll.
3. **Human private audience:** create Followers-only post → a follower sees it in Following → unrelated viewer/direct link/search/media grant denied → unfollow/block revokes access appropriately.
4. **Masana approved post:** Creator Manager → owned published Masana → approved text+audio schedule → editorial checks → public Status card attributed to **Masana · AI** → tap author opens Masana profile → secondary creator link opens human profile.
5. **Post reactions:** Human A opens Masana post → React palette → Love → server count and user's icon show Love → change to Wow → only one reaction remains → remove → counts reconcile after refresh/device B.
6. **Threaded comments:** Human A comments on B's post → B receives scoped event → B opens post, taps A's comment avatar → human profile → replies to A → both see correct parent and moderation state.
7. **Comment moderation:** New account comments → pending review shown only to author → reviewer approves/rejects → public count/state updated without showing unreviewed text or forged avatar.
8. **Author following:** Human follows Masana via feed card → Following feed includes eligible new Masana post → click Masana author/profile/Chat → return restores Following list position.
9. **Discovery vs Latest:** Visit For You → why shown/Not interested → Refresh removes suppressed author/topic → Latest shows chronological eligible content unaffected by engagement score → return filter preserved after process restore.
10. **Saved post:** Save human public image → Saved list → tap opens original → author deletes/narrows audience → saved entry becomes unavailable, cached bytes not exposed.
11. **Share into Chats:** Authorized public post → Share → choose allowed human conversation → readable reference card → recipient opens revalidated post → send isn't implicitly endorsed or monetized.
12. **Share into Rooms:** Same allowed public post → Share → an eligible joined Room where user may post → explicit preview and send → link back to Status; private/prohibited Room/author audience blocks delivery.
13. **Video/auditory:** Approved playable clip → poster with captions → tap play, seek/pause → app background stops audio → resume/return. Audio Status yields to incoming human call and offers text transcript if audio provider offline.
14. **Media outage:** Draft with two photos → first upload accepted but response lost → app restarts → `by-request` original status → same upload/post ID resumes or user must reselect original file, never duplicated/public falsely.
15. **Blocked/post removed:** Viewer receives reaction notification → owner blocks viewer before open → deep-link returns protected unavailable (not cached body), all comment/media/search endpoints deny.
16. **Report and review:** User reports abusive comment/post → gets case reference → moderator reviews authorized evidence, removes content → subsequent old direct links unavailable → appeal/audit preserved.
17. **Account switch:** Account A scrolls private follower post, then logs into B while gallery loads → A content/projections/grants/draft vanish immediately → B sees only own eligible posts with clean scroll bucket.
18. **Small devices/offline:** 320dp, 200% fonts, RTL + TalkBack → explore/compose/reply/react without hidden buttons → offline read labelled saved, publish disabled or original pending → reconnect and status readback.
19. **Revised post:** Human author edits published text/audience → server checks expectedRevision → old cached share/media receives new policy, not stale public content; audience change invalidates old authorized viewers.
20. **Private author's page:** Visitor follows published human and opens human profile Status list → only eligible posts, not drafts/hidden profile media; back to original post with state intact.

## 7. Adversarial and regression journeys (at least 25)

- A01: forged `author.kind=masana` or `authorId` by fan cannot publish as AI or another human.
- A02: stale `authorMasanaId` clients can read approved old Masana posts; new human posts do not crash old code or become fake Masana.
- A03: server POST accepted then connection lost: one post under original idempotency key, not two published posts.
- A04: multiple devices edit one post concurrently; stale revision rejected and both display latest safe revision.
- A05: forged audience `roomId` or follower state cannot expose private Room/user updates.
- A06: block or audience narrowing during authorized image fetch prevents future grant, cached prohibited media removed.
- A07: a scheduled/rejected/removed post leaks via `/v1/posts/:id`, comments, author list, media, search, saved or share preview.
- A08: malformed post/ref/cursor/type breaks neither screen nor tenant isolation.
- A09: reaction bursts on two devices create only one selected reaction and accurate counts.
- A10: blocked/deleted/reactor identity never appears in reaction-user listing to disallowed viewers.
- A11: comment parent belongs to another post or deleted parent: reject spoof and preserve safe original draft.
- A12: comment submitted and timed out, `Retry` same ID inserts once, shows pending state not false public success.
- A13: a comment removed by moderator cannot be resurrected by edit/reaction/reply API or cached push.
- A14: forged report count, duplicate reports and reviewer identity do not trigger automated removal.
- A15: oversized video, fake MIME and malicious polyglot media are denied before public media grant.
- A16: signed media URL copied outside allowed identity expires and denies under audience changes.
- A17: image EXIF location inadvertently shared after public upload is stripped unless user consents.
- A18: account B obtains account A's cached follower post after session/refresh token update; denied and purged.
- A19: author profile changes handle after published post; immutable actor ID still resolves safely without hijack.
- A20: Masana paused/retired: old approved published state follows documented policy; no unauthorized new generated posts.
- A21: cross-tenant feed item or search result is inaccessible even with guessed post/media ID.
- A22: private share link pasted in public Room is never a bypass to confidential content.
- A23: audio status resumes while voice call owns audio focus; status audio remains paused or queued safely.
- A24: video autoplay on expensive data despite low-data toggle, OS DND or reduced motion; never allowed.
- A25: old Like request vs new reaction replacement races; one current reaction and no duplicate totals.
- A26: user deletes account while author profile/media/post notification is still cached on other handset; ACL/retention honored.
- A27: no-following/no-discover feed returns honest empty state; cannot auto-add subscriptions.
- A28: post published from offline queue without explicit owner intent after logout; must be prevented.
- A29: inappropriate/defamatory post generated by Masana without reviewed editorial workflow; denied with audit.
- A30: pull-to-refresh 500+ cards and many images on low-memory Android; bounded image decoding, cursor and smooth scroll.
- A31: 320dp at 200% text + TalkBack reads all buttons/selected reaction/comment author and Publish remains visible.
- A32: duplicate notifications from retrying reaction/comment/publish do not reveal private data or inflate unread badges.
- A33: public `Latest` feed subtly reorders by likes/engagement against user choice; regression must detect.
- A34: author post source/creator attribution is spoofed by an arbitrary client profile link; server owns verified profile URI.
- A35: recommendation model (if added later) uses human-human private Chats as features without consent; prohibited.

## 8. Implementation waves, exact owners, cost and release gates

| Wave and roadmap owner | Files/contracts and acceptance | Evidence/stop condition |
|---|---|---|
| **A — core polymorphic author / read** (Phase 3 Status/P4-04/P8-X) | One Gateway integrator owns `services/gateway/src/modules/home_feed/{routes,admin_review_routes,media_runtime,...}`, PostgreSQL migration and typed projection; one Flutter integrator owns `features/home_feed/{feed_api,feed_screen,feed_post_detail_screen}.dart` and `screens/status/status_screen.dart` | Preserve existing Masana posts/comments/likes, cross-account viewer ACL, human+Masana typed cards and real profile links, rollback old API compatible |
| **B — human compose and media** (Phase 3 Status, P5-T01/P8-U01) | Add scoped human composer/drafts/upload state widgets (new files) and server-backed human-only create/edit/delete and media validation. Reuse signed media, do not grant editors to fans | Two-account create→review→published/readback, original request after timeout, permissions/copyright/alt/caption, private audience revocation |
| **C — reactions and real comment identities** (Phase 3 Status/P5-C05) | Add reaction map/one-per-actor backend and palette; comment author projection/reply/edit/report; preserve `PUT .../like` as `reaction=like` | Counts/races/idempotency/moderation/blocked-author tests; no synthetic counts; profile navigation correct |
| **D — save/share/follow/discover** (P4-04/P8-U01) | Existing social profile/follow graph reused, add Saved, Latest, search, hide/not interested, actual share destinations and reauthorization | Server cursor/visibility, neutral deterministic ranking, cross-private Share/Room links fail closed |
| **E — moderation/cadence and operational QA** (P5-C05/P8-X/U) | Owner/admin moderation queue, audit/appeal, AI editorial restrictions, media/CDN lifecycle and notification scope | Real production/provider enrollment, content safety, stored receipts, case audit and retry/reconciliation |
| **F — full device qualification** (P8-APK) | Flutter widgets, Gateway integration/real DB migrations, provider/system tests, Android dark/light/RTL/320dp/200%/low-data/audio focus | Exact-SHA device video/screenshots, server/provider readback, 2-user/1-Masana journeys, deployed authorization, alerting and rollback; no APK unless requested |

**Ownership and portability:** One integrator for shared feed routes and migration; independent owners may write new Flutter `features/home_feed/status_*` widgets and isolated tests with exact-path leases and SHA-bound API contract. Reuse Flutter, Riverpod/Dio, the Gateway Fastify/Postgres, existing object storage and review pipeline. Avoid a separate search/recommendation cluster initially: indexed SQL followed-author/approved-post queries plus cursor and per-user preference table are simpler, cheaper and portable. Cloud storage/video cost is driven by upload GB, transformed-image volume, CDN egress GB, moderation labor and content retention: **do not invent precise provider prices without real contract/usage**. Pilot should bound max attachments, encoding quality, daily upload quotas, media retention and feed cache; measure actual cost per 1k viewed posts before video autoplay/long-form launch.

**Required test proof for each checkbox:** contract/DB tests with real role predicates (human, Masana, creator, admin, blocked outsider); Flutter widget tests with 320dp/200%, media error and account-switch; content moderation/publish receipt; backend locks/idempotency; 2-device race; real Android gallery and audio tests; provider source-compliant video, permissions, rollback and deployment. Label evidence `PASS_REAL`, `PASS_SIMULATED`, `NOT_RUN`, `BLOCKED`, `FAIL`. A passed mock is never production acceptance. Preserve original creator approval/cadence and existing media authorization, do not change live provider credentials or post irreversible media without explicit owner release authorization.

**Deliberate exclusions:** no duplicate Chat/Rooms social network, video livestream as a launch dependency, invented verified tick for humans, fabricated follower/reaction counters, copied Facebook UI/art/code, hidden AI posts impersonating people, 24-hour automatic post expiry, autoplay voice, unauthorized broad system contacts/photo scraping, in-feed auto-payments or paid-for engagement. Optional stories/video discovery may be scoped later using usage and provider proof.
### 23 October 2026 — ST4 paginated Status text search (partial source)

The existing Status For You and Following rows expose a compact, explicit Search post text input (Search/Enter to apply, Clear to return to the same mode). Searches use the currently authenticated account's existing FeedApi token and canonical GET `/v1/feed?mode=...&search=...`; SQL applies visibility, active human/Masana author/profile, follow and bidirectional block filtering before pagination. Body matching is case-insensitive with literal wildcard escaping; no local-first-page filtering or download of private author information. Search cursors are cryptographically *not* signed, but are exact-term/mode scoped, structurally validated, bound to the ordinary server-authenticated query and never authorize content. Existing non-search cursors retain the two-element encoding. A changed search/account/scope ignores older network responses, and a true no-match is not a no-posts assertion. Does not search private content, transcript/media captions/hashtags or author names, and does not claim provider/device qualification. Source-only P3-ST04 remains OPEN for these gaps, true production-index scale and Phase 8 acceptance.
