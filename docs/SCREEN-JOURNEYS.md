# Masanawa — screen and journey contract (canonical)
**Updated:** 2026-10-20, complete existing-source audit and user scope revision. Screen-contract only, no implementation claim. Read [complete app blueprint](COMPLETE-SCREEN-AND-JOURNEY-BLUEPRINT.md), [paid mixed Updates feed](UPDATES-FEED-FINAL-SPEC.md), [individual P2P and single human profile](P2P-AND-PROFILE-FINAL-SPEC.md) and [unified Rooms](UNIFIED-ROOMS-PRODUCT-SPEC.md). Latest 20 Oct owner rulings supersede older Status stories/rings designs.

## Fixed experience rules
- Root user-visible exactly **Chats / Updates / Wallet / Calls / Rooms**; Chats default. **Updates** replaces the old visible Status label and WhatsApp-Status/rings pattern, while preserving old `status` internal and `/status/:postId` deep link aliases. NO distinct Videos tab within Updates primary; retain video capability and player/media route. No sixth tab.
- White background, recognizable Masanawa green, dark high-contrast type, slender dividers, compact lists, stable avatars and prominent singular actions. Avoid copied WhatsApp artwork.
- Every screen specification/PR must cover: source API + authorization; app-bar/title/back destination; content sequence; control enabled/disabled/validation; loading, empty, error, offline, rate-limited, permission-denied, stale, success and account-change; 320px/200% text, keyboard/RTL/TalkBack; refresh and retry without duplicate money.
- `CAPABILITY_UNAVAILABLE` is not an empty balance or a successful settlement. Destructive/spending actions require exact server-side confirmation and safe cancellation.

| ID | Page and top-to-bottom content | Important actions and journeys | Current source state |
|---|---|---|---|
| A01 | AUTH-01–09: launch/session, method, phone sign-in password or email six-digit OTP, first name and recovery with actual server capability, language | Authenticated -> Chats or authorized deep link. No fake SMS OTP, shareable credentials or lost account recovery | Existing source foundation; physical provider/device acceptance pending |
| A02 | Chats: one human/Masana inbox, search, All/Unread/People/Masana chips, pinned/draft/unread, message requests and new chat | Person/Masana profile -> authorized conversation; call and optional Wallet request, return preserving history | Existing Masana UI; human source in open #227, acceptance pending |
| A03 | Masana directory/profile: avatar, name/title, profession/AI identity, languages, about, Follow, Chat, Call | Directory → detail → conversation; disallowed call explains why | Exists; improve canonical portrait |
| A04 | Conversation: messages, status, image/media previews, compact input/hold mic/send, call/search/menu | Text / media / voice reply; fail → retry same request; back retains draft | Exists; provider/device verify |
| A05 | Calls/history/full call: caller identity, ringing/action state, elapsed time, mute/speaker/hangup | Incoming/outgoing/missed → history → chat; timeout/offline teardown | Exists; provider/device verify |
| A06 | Search & activity: shared query with permitted People/Masana/Rooms/Updates/Chats results; authorized history and empty states | Profile/Post/Room/Message result returns without wrong-account context; typed link dispatcher | #207 source; expand mixed feed search |
| A07 | **Updates (NOT WhatsApp Status):** Facebook-style mixed human/Masana chronological/recommended post feed, persistent scroll; compose, For You/Following, text/media/video, real likes/comments/share/save/report | Human post -> server MSNW quote -> explicit pay/approve once -> publish + Wallet receipt; Masana posts stay author-disclosed. Current external Video source retained, primary Videos tab retired | Existing Masana feed only; mixed authors + human fee + unified video planned (P5-U) |
| A08 | Mixed author Post detail/comments: human or Masana public profile, media, like/comment/reply/save/report, moderate/paid history | Comment is free and authorized; human publication fee applies to authored post only, with exact ledger receipt and safe media | Existing Masana detail/comments partially reused |
| A09 | ONE Rooms discovery/details: public/private preview, owner, member/follower privacy, optional Masana, qualified access | Discover → Join/Request/Invitation → same Room identity; paid/ban/permission gates enforce admission | Existing foundation; unified design planned |
| A10 | ONE adaptive Room timeline: Updates, Conversation, optional Topics and Events; existing lessons/Q&A preserved | Creator broadcast + group chat + community organization; media, comments, reactions, scoped Masana, moderation | Existing lesson/discussion source only; new capabilities NOT implemented |
| A11 | Wallet home: MSNW custody available, conditional reserved, refresh/eye, Fund, actions, assets/history | Fund/Send/Receive/Convert/P2P → dedicated routes | Exists; redesign and verify |
| A12 | Fund/payment status: methods, entered amount/currency, exact quote/fees, provider redirect and pending state | Refresh quote → authorize → provider → verified receipt | Exists; provider verify |
| A13 | Send/Receive: destination/network or verified address, amount, review and secure confirmation | Reject invalid chain/owner; recovery on retry; settled receipt | Exists; provider verify |
| A14 | Convert/Crypto assets: coin list, chain, quote expiry, total fees, withdrawal limits, receipt | Exact execution after consent; pending/recovery states | Exists; provider verify |
| A15 | History/receipt: grouped entries, filters/search, exact amounts, transaction status, metadata and help | Open operation → receipt → support; never duplicate entries | Exists partially; unify |
| A16 | Individual P2P: Buy/Sell only main segments; real seller identity/rate/limits, secondary Orders/My Offers/Activity and actual safe offer quotes | Seller avatar -> same human profile/trader panel -> quote -> escrow -> payment claim -> release/dispute/receipt; no merchant or cards | Existing robust P2P source needs UX integration and provider/device verification |
| A17 | P2P order: escrow state, seller/payment-method authorization, bank copy, deadlines, evidence and dispute | Pay marked → vendor confirms → server releases or dispute | Exists; qualify actual escrow |
| A18 | Billing: service list, recipient, package, updated quote, review, pending state and durable receipt | Buy from Wallet or Gwani with same backend | Exists; global provider qualification |
| A19 | Canonical human public/own profile: avatar/optional cover, display name/@handle/bio, follow counts, Posts/Masana/public Rooms if relevant, Message/Follow/qualified Call and Trade | Posts same Updates, Trader stats real finalized orders only; Edit Profile/Settings secondary, no public private bank/phone or duplicate Merchant profile | Existing social source; trader stats, posts and action links planned |
| A20 | Masana public profile: avatar/title, unmistakable AI/creator disclosure, language/presence source, Message/Follow/eligible Call, posts/Rooms if public | Update card routes to true Masana identity; no false professional or verified badge | Existing source, finish mixed feed links |
| A21 | My Masana: list avatars, state, audience, Create; one clear empty CTA | Create → wizard; manage → public preview | #212 exists; improve portraits |
| A22 | Creator wizard/preview: name, profession, language, age/persona, optional photo, generated story and voice test | Save draft → preview → one-free/paid review → publish | #212/#214 exists; edits incomplete |
| A23 | Manage Masana: identity, public URL, status, edit count, Status schedule, earnings | Pause/resume/share/edit/retire; auth denied safely | #212 exists partly |
| A24 | Optional voice reference: collapsed entry, permissions, adult-speaker consent, audio preview, deletion | Continue without cloning if unavailable | Planned/needs provider qualification |
| A25 | Creator earnings: settled/held/reversed/eligible revenue, statement, fees and transfers | Drill down to receipt, no separate creator credit | Incomplete |
| A26 | Notification preferences/history and support: scoped categories, quiet hours, private preview, alert list | Tap alert → authorized target; offline list/read state | #207 exists; device verify |
| A27 | Security/account data: sessions, password/contact recovery, export/delete, retained obligations | Re-auth critical changes; deletion pending settlement | Exists partially |
| A28 | Admin mobile: identity/creator, Rooms/Updates moderation, authorized published-post fees/reconciliation, individual P2P disputes, provider capability/incidents | Staff reviewed action -> immutable audit, settlement proof and privacy | Existing partial, new paid-human-post admin scope planned |

## Required golden end-to-end journeys
1. **New user:** install APK → select language → register/sign in → Chats → discover Masana → message → record voice → receive answer → leave/reopen → no lost state.
2. **Call:** chat → start call → authorized billing/mic → speech both ways → network interruption/reconnect/hangup → accurate history/settlement.
3. **Creator:** public profile → one free Masana → generated preview → publish → discover from second account → follow/chat → pause → visibility revoked.
4. **Creator paid:** second Masana quote 5,000 MSNW default → exact single-use confirmation → charge once → publish → receipt; insufficient balance and replay do not publish.
5. **Room:** discover → join/subscribe (if qualified) → ask/receive → leave/rejoin → correctly recover permissions.
6. **Updates:** read one scrolling mixed human/Masana post feed → Like/Comment/Follow; publish human post → content preview → actual MSNW quote → explicit approval → one capture and published post or moderated refund/recovery. Preserve approved external video playback inside Feed/secondary browse; NO rings/stories.
7. **Wallet:** open exact custody amount → fund → wait for independently settled evidence → refresh verified balance → send/convert → history and accurate receipt.
8. **P2P:** qualified individual seller -> SAME human public/trader profile -> actual offer/quote -> escrow -> buyer's bank payment claim -> seller independent receipt confirmation or dispute -> server release/ledger receipt; replay/expiry/provider and cross-account safeguards.
9. **Bills:** Wallet or Gwani → catalog with current price → correct recipient → authorize → provider receipt → ledger readback; timeout/retry cannot double-buy.
10. **Account switch:** after chat, push, creator tools, Wallet, P2P and Room use → switch account → none of prior account's private data or old async results appear.
11. **Recovery:** restore PostgreSQL/object copies off-account → schema/ledger/custody consistency → protect old liabilities and prevent unauthorized overwrite.
12. **Global market:** locale/RTL/low data + payment region eligibility → show only supported operations; unavailable is explicit and never fabricated.

## Human communication and Rooms revision — approved 19 October 2026

**Scope:** visible tabs **Chats / Updates / Wallet / Calls / Rooms**; `Status` is a legacy route/source name only, with **Facebook-style** mixed-author Updates feed, no WhatsApp Status rings/ephemerality and no primary Videos tab. Keep video source and approved players; paid human posts need an owner-selected server fee before production. Contacts has Masana/Humans. Unified Rooms are single creator-configurable spaces. No merchant/cards.

### Page tree, composition and navigation
| ID | Route/entry and content order | Controls / back / deep link |
|---|---|---|
| H01 | Chats → Contacts (`/masana` retained for compatibility): header Contacts, Masana/Humans tabs, search, compact avatar/name/subtitle rows | Masana filters/creation retained; Humans initially following contacts, Find people by public name/@handle; refresh/load more. Row opens conversation once P4-05/06 exists; first milestone opens profile honestly. Avatar always profile. Back → Chats retaining list/filter. |
| H02 | `/u/:handle`: social identity/cover/avatar/@handle/bio, Follow/Message/qualified Call and optional individual P2P Trade; real Posts + Masana + authorized Rooms sections only if available | From Updates author, Chat/Contact, Room member and P2P seller identity; trader stats from finalized orders on SAME profile; no bank/phone/private Room reveal, no Merchant page. Own edit and post fee history in secondary route. |
| H03 | Chats inbox: shared human/Masana chronological rows, search, All/People/Masana/Unread, drafts, unread/ticks | New chat opens H01; request entry only when requests exist; pin/mute/archive in long press. All never separates the same thread into duplicate inboxes. |
| H04 | Human conversation: avatar/name, Call/menu, date-grouped messages, reply preview, familiar attachment/text/hold-mic/send composer | Profile on avatar; copy/reply/share/delete/report, authorized search/media. Back retains draft and scroll. Push → auth → participant check → thread. Human content is not sent to a Masana/model. |
| H05 | Requests: sender identity, short request preview, Accept/Delete/Block | Accept opens thread; Delete clears request; Block revokes subsequent delivery/calls. Follow is distinct from consent to message. No automatic chat on a follow action. |
| H06 | Calls: shared human/Masana history, incoming/outgoing/missed indicators, details, callback | New call uses People/Masana picker; history → profile/chat/callback. Never route a human ID to the agent admission endpoint. |
| H07 | Incoming/active voice: clear identity and connection state, Answer/Decline or mute/speaker/audio route/minimize/hangup, duration only once connected | Locked/background entry, timeout/busy/cancel, reconnect, return banner. One session controller owns microphone/foreground service; no human agent-charge admission. |
| H08 | Privacy/settings: messaging/calling/Room additions, receipts/presence, blocked list | Existing Settings route, dedicated forms for substantive controls; local change shown only after server acknowledgement; critical ownership changes use existing account confirmation. |
| R01 | Rooms root: title/search/Create/Discover, recent joined and owned Room rows, unread/pin/mute; one type-less Room list | Row -> R04, Discover -> R02, Create -> R03. Filters All/Unread/Owned/Joined are chips. Back restores search/list position. |
| R02 | Discover/preview: public Room cover/title/owner/purpose, safe member or follower count, content preview allowed by ACL, verified paid terms when applicable | Join / Request to join / Accept invite -> R04 if authorized. Private/paid/blocked viewers see minimal safe preview, no member list/history. |
| R03 | Create ONE Room: name/photo/about -> Public/Private -> Who can talk Everyone/Admins/Approved members -> Create | Short flow, server idempotency, save draft, inline validation, creating spinner, same Room ID. No user choice of Group/Community/Channel, no fees. Additional controls in R06. |
| R04 | Adaptive SINGLE Room: header/cover/member-privacy-safe count, pinned Updates, combined timeline, optional Updates/Chat/Topics selector only when useful, media and role-aware composer | Creator posts Updates, members discuss if enabled, followers react/comment/vote according to independent grants. Deep links to Room/post/topic recheck ACL; mode change never changes room_id/history. |
| R05 | Room info: cover/purpose/rules, owner, eligible Masana hosts, notifications, authorized members/shared media/invite, Leave/Report | Member -> human/Masana profile; creator -> R06; follower directory hidden where policy requires. |
| R06 | Manage ONE Room: effective audience preview; sections Identity/Communication/Access/People/Safety/Masana/Insights/Advanced | Switch Updates/Chat/Topics/comments/role rules with revision and privacy-impact confirmation. No irreversible type; transfer/archive/delete audited and receipts retained. |
| R07 | Add People/Masana: public identity search, role/mention policy, selected chips, grant preview, invite link/QR, pending approvals | Respect block/contacts, expiring/revocable invitations, safe role limits, bounded Masana context/cost, no cross-person private chat access. |

| R08 | Updates composer: rich text/photo/video/audio/files/captions, poll/links, scheduled post, author identity and audience preview | Owner/admin authorized -> publish once -> R04. Guest suggestions enter moderation not public posting. Failed upload retains safe draft. |
| R09 | Room Chat / Topics: chronological chat, replies/reactions/edit/delete/mentions/voice/files, optional topic navigation with unread and permission labels | Composer only shown when current role can write selected section; topic changes retain draft; block/revoke/offline uses same message idempotency key. |
| R10 | Update detail/comments: full post, audience label, reactions, poll/comments, thread pagination, report/mute | Follow-only viewers can use only permitted buttons, not room-wide posting. Blocked users cannot reopen from notification. |
| R11 | Events/polls: cards, start/end + timezone, RSVP and privacy, vote controls, reminders and close/cancel states | Create/approve as allowed; stale/expired poll vote or changed event shows actual outcome and retry without duplication. |
| R12 | Join queue and member roles: candidate previews, Approve/Deny; owner/admin/mod/member/subscriber grants | Role changes and removal are authoritative; old signed media/push/topic reads immediately stop. Owner transfer requires eligible successor. |
| R13 | Safety: reports, pending messages, spam/slow-mode thresholds, user restrictions, ban/appeal and audit | Moderator can moderate delegated actions only, not change payment entitlement/owner or elevate own role. |
| R14 | Masana controls: disclosed AI participants, Room/topic instructions, mention-only default, opt-in assistance and usage limits | Member @Masana -> only authorized Room context; owner revoke stops jobs; ephemeral private help is not broadcast. |
| R15 | Future Live Stage: schedule, host/speaker/listener, raise hand, permission/recording notice, reconnect | Feature-gated until real LiveKit/mobile/provider qualified. Clear unavailable state; no simulated live call marked successful. |
| R16 | Shared content: media/files/links/voice/legacy lessons and discussions, date/search filters | All entries reauthorize per member, section and account; preserve old professional Room references. |
| R17 | Insights and optional paid access: aggregated reach, engagement, follower/visitor controls; existing qualified Room subscriptions | No follower identity leak, fake earnings or new merchant/card/payment processor. |
| R18 | Policy change preview: before/after public visibility, posting/comment/topic policy, affected member rights and approval | Versioned server confirmation; private->public does NOT expose old private posts/media; preserve IDs, drafts and subscribed history. |

**Unified Room route structure:** Rooms root R01 -> Discover R02/Create R03 -> adaptive Room R04 -> header R05 -> Manage R06 -> specific advanced control R08–R18. No three creation flows. If a section is disabled, hide only that section and its composer; retained history remains protected by original visibility and actual subscriptions. Current source teacher-bound endpoints require additive owner/schema/client migration; screen design is NOT proof API support.

## Owner-approved Updates, Auth, P2P and profile layouts — 20 October 2026

**AUTH screens** (all preserve language, validation, error/offline/rate-limit/permission and safe back):
| ID | Top-to-bottom screen and route | Controls, state and source guarantee |
|---|---|---|
| AUTH-01 | Splash/session restore: logo, progress, restricted-session resolution | Existing token -> server session -> Chats or authorized deferred route; no other-account content |
| AUTH-02 | Method selection: compact welcome, language, server-eligible phone/email input and single action | Phone six-digit password; email six-digit OTP only if provider enabled. Backend sms OTP not advertised; capability Retry |
| AUTH-03 | Email OTP: masked email, boxes, paste, resend countdown, edit destination, Verify | OTP expiry/lockout/errors and new-user name stage without accidental challenge consumption |
| AUTH-04 | Phone password: masked phone, password six-digit secure field, forgot password | Existing/new distinction server-side; sign-in secret not wallet PIN; lockout/cancel |
| AUTH-05 | Recovery: phone/code/new six-digit password, resend and submit, return | Purpose-bound code cannot mint login token; revoke and retry safe |
| AUTH-06 | New-user identity: display name and optional photo; @handle when qualified | No forced Masana creation; public phone/email never exposed |
| AUTH-07 | Post-auth destination: Chats or signed-in authorized deep link | No stale account routes, privacy revoke handled as unavailable |
| AUTH-08 | Exact-operation step-up: sensitive Wallet/P2P/paid Update confirmation | Quote/digest/amount/fee bound; consent/cancel and fee rollback |
| AUTH-09 | Account/security: devices/sessions, credential/contact change, export/delete | Account-scoped reads, lost-device revocation, actual provider/biometric validation |

**Updates screens** (persistent mixed-author Facebook-style feed; detailed [spec](UPDATES-FEED-FINAL-SPEC.md)):
| ID | Top-to-bottom screen and route | Actions/constraints |
|---|---|---|
| U01 | Root Updates: header search -> "Share an update" composer -> For You/Following -> single vertical human+Masana posts list | No WhatsApp Status rings/stories or separate main Videos Tab; keep video inside feed or secondary browse |
| U02 | Compose: actor identity, text/media/video/audio, audience/rights, preview and Draft | Human creating content is free until explicitly approving fee, no invented amount |
| U03 | Post card: human/Masana avatar/name badge/date, full body+inline media, Like/Comment/Share and Save/Report | Accurate author profile, counters, privacy and reaction state |
| U04 | Comments: original post, nested replies, composer/send/moderation | Comments free, idempotent, blocked/restricted states explicit |
| U05 | Post detail: full text/media, author profile, reactions/comments | Same post ID from Feed, profile, search and push, reauthorize on each entry |
| U06 | Paid human publish review: exact MSNW fee quote, expiry, balance, content/audience, consent and Wallet approval | Server quote/eligibility; one intent, reserve/capture at published approval, refund hold if rejected; default unavailable until fee policy approved |
| U07 | My post status/receipt: draft/review/published/rejected and real Wallet receipt | If charged but unpublished, same request recovers or compensates; no fake publication |
| U08 | Media/video viewer: source attribution, playback, controls, offline and close | Existing video catalogue/player unchanged until safe mixed feed integration |
| U09 | Own post activity: drafts, pending moderation, published/removed, link to same profile | Do not show user as Masana, do not re-charge edit |
| U10 | Admin moderation and fee config: set approved price, review/capture/refund audit | No staff-paid toggle without canonical ledger settlement |

**P2P and identity screens** (individual P2P, not a merchant app; [spec](P2P-AND-PROFILE-FINAL-SPEC.md)):
| ID | Top-to-bottom screen and route | Actions/constraints |
|---|---|---|
| P01 | Wallet -> P2P: Buy/Sell top segments; compact amount/method/sort filter, offer list, Orders/My Offers secondary | Existing Buy/Sell/Orders/Updates chips simplified; trade activity moves to Orders |
| P02 | Offer detail: individual seller name/avatar, real trading metrics/price/limits/payment method and review CTA | Seller avatar -> SAME /u/:handle; no fake rating or bank PII |
| P03 | Human public/trader profile: cover/avatar/name/@handle, Message/Follow/Call/Trade, Posts/Masana/Rooms, optional individual finalized P2P stats | Only verified statistics or "Not enough history"; no merchant account/card |
| P04 | Buy quote: MSNW amount -> live rate/fiat amount/fee/min/max -> confirm | Requote stale; exact price/idempotent escrow reserve; fail closed |
| P05 | Sell offer: validated bank, inventory, rate/limits, review and publish | Step-up/verified payment owner and original-request recovery; My Offers pause/resume/close |
| P06 | Order detail: status tracker, countdown, authorized bank instructions, private order chat/evidence, role-specific actions | Buyer paid flag not proof; seller bank independently verified; chat never authorizes release |
| P07 | Orders and alerts: Active/Finished/Disputed filters, trade and help refs | Reopen original order from account-scoped push without double debit |
| P08 | Dispute/late payment: reason, evidence, case timeline, operator resolution | Escrow authoritative, screenshot is not settlement, expiry preserved |
| P09 | P2P receipt: asset/fees/rate/canonical reference, share/redact/support | Wallet links same immutable financial posting, no duplicate ledger |
| P10 | P2P safety/eligibility: payment methods, review, risk/limits and help | Individual trader qualification, no merchant or cards, wrong-device/account denied |

**Required statuses on every AUTH/U/P route:** first loading and skeleton; missing/empty; stale partial refresh; offline; permission denied; rate limited; moderation pending; payment quote expired/pending/unknown; deleted/blocked author or offer; account switch and deep link revoked; keyboard/RTL/TalkBack/320px/200% text; explicit retry original request. No successful money state from optimistic UI.

### State contract applying to every H/R route
- **Loading:** compact list/profile skeleton; retain permitted cached content during refresh. Don't block first paint on contacts/provider discovery.
- **Empty:** Humans “Find someone to start a conversation”, joined Rooms “Create or discover a Room”, search “No matches”; one useful action. Empty creator sections are omitted.
- **Error/partial/stale:** inline failure with Retry; retain already loaded authorized rows but label refresh failure. No fake empty list or fake available call. Operation uncertainty reloads authoritative state before replay.
- **Offline:** label connection state, retain read content/drafts; sends show pending/failed accurately, never delivered without server evidence. Failed writes reuse durable client IDs. Do not queue financial or membership permission changes blindly.
- **Permission:** optional contacts matching, microphone prompt only on record/call; Denied → explanation/settings/retry, username search/text stay usable. Private Room and blocked-profile denial never reveals restricted content.
- **Account switch:** clear search/selection, profile follow overrides, old page data, human post drafts/fee quotes/Wallet/escrow recovery, Rooms/media URLs/recordings/call session; cancel/generation-fence async completions. Push/deep link reauthorizes under current account.
- **Accessibility:** 48dp targets, semantic tab/action/voice status labels, 320px width/200% text, keyboard avoidance, RTL directional layout, sufficient green/white contrast, accessible audio controls. No horizontal clipped action rows.
- **Back/deep links:** routed entry preserves tab/list/draft; unauthenticated link resumes only after correct account auth and authorization; missing/revoked targets show unavailable with return action.

### Canonical contracts and end-to-end acceptance
- Contacts initial API: authenticated `GET /v1/profiles/contacts?q=<public search>&after=<handle>`, fixed page size 30 (pagination, not a product contact cap); blank query lists followed public humans. Stable ascending handle cursor. Only handle/name/bio/avatar summary returned; tenant/current user derived from auth. Literal case-insensitive name/handle search, self/inactive/moderated/bidirectionally blocked exclusion. No arbitrary client tenant/user scope or phone lookup.
- Reuse `talks.public_profiles` and owner edit/follow APIs. `GET /profiles/:handle` and by-user variant must enforce the same active/block/moderation boundary; self may still inspect/edit their own profile. Public creator Masana comes from the existing active/published server directory keyed by creatorHandle; not an independent untrusted profile array.
- Direct chat: typed conversation target (`human` vs `masana`), participant-only durable thread/pair/request IDs, scoped media and receipts, deletion tombstones; server owns sender, delivery and request state. Separate human transport prevents accidental model requests/billing.
- Calls: explicit human peer identities, short-lived participant media tokens and authoritative signaling transitions; ring/reconnect/teardown idempotency. No human call passed through Masana paid voice flow.
- Rooms: extend existing packages/rooms schema/API/membership and subscription owner: allow human-owner Rooms in addition to teacher-bound legacy records; one Room identity, optional room-scoped content sections, per-section policies, historical content ACL and permission-revision audit. Keep existing room IDs, lessons, questions, subscriptions and signed-media protections; no second Group/Channel backend. Jobs recheck membership/agent activation; models cannot move funds.
- Acceptance: A follows/finds B -> Humans -> B public profile -> request -> accept -> messages/media/voice/calls with privacy. Unified Room owner creates Room -> invites followers/members -> publishes Updates -> turns on Conversation/Topics -> poll/event and @Masana reply -> turns off Chat -> historic IDs/data/private visibility unchanged. Ban/revoke removes access to push, topic and media; private->public preserves old private posts, paid professional lessons/receipts survive migration; test account/tenant switch, offline duplicate, worker restart and DB restore. All mapped to Phase 5 IDs and [Room inventory](ROOMS-REFERENCE-FEATURE-INVENTORY.md).
