# Masanawa — screen and journey contract (canonical)
**Updated:** 2026-10-20 design expansion. This is the screen inventory and acceptance design basis; planning does NOT establish source implementation or real-device readiness. Unified Room design: [spec](UNIFIED-ROOMS-PRODUCT-SPEC.md), [204-feature candidate audit](ROOMS-REFERENCE-FEATURE-INVENTORY.md).

## Fixed experience rules
- Root exactly **Chats / Status / Wallet / Calls / Rooms**; Chats on ordinary signed-in launch, deep links preserve target; no creator/Gwani sixth tab.
- White background, recognizable Masanawa green, dark high-contrast type, slender dividers, compact lists, stable avatars and prominent singular actions. Avoid copied WhatsApp artwork.
- Every screen specification/PR must cover: source API + authorization; app-bar/title/back destination; content sequence; control enabled/disabled/validation; loading, empty, error, offline, rate-limited, permission-denied, stale, success and account-change; 320px/200% text, keyboard/RTL/TalkBack; refresh and retry without duplicate money.
- `CAPABILITY_UNAVAILABLE` is not an empty balance or a successful settlement. Destructive/spending actions require exact server-side confirmation and safe cancellation.

| ID | Page and top-to-bottom content | Important actions and journeys | Current source state |
|---|---|---|---|
| A01 | Launch/auth/language: minimal header, phone/email + password, language icon, inline validation | Login/recovery → Chats; deep link → authorized target | Exists; acceptance pending |
| A02 | Chats: header, search, recent threads, Masana discovery entry, FAB only where useful | Thread → Masana profile / call / bill; search result returns | Exists; improve drafts/cache |
| A03 | Masana directory/profile: avatar, name/title, profession/AI identity, languages, about, Follow, Chat, Call | Directory → detail → conversation; disallowed call explains why | Exists; improve canonical portrait |
| A04 | Conversation: messages, status, image/media previews, compact input/hold mic/send, call/search/menu | Text / media / voice reply; fail → retry same request; back retains draft | Exists; provider/device verify |
| A05 | Calls/history/full call: caller identity, ringing/action state, elapsed time, mute/speaker/hangup | Incoming/outgoing/missed → history → chat; timeout/offline teardown | Exists; provider/device verify |
| A06 | Search & activity: field, recent terms, tabs/categories, results and empty state | Authorized chats/Masana/Rooms/Status; push deep links | #207 exists; verify |
| A07 | Status Following/Discover: compact post list, media playback, character/creator details | Follow, play/pause, comment/reaction, report, share | Exists; improve audio reliability |
| A08 | Public post/comments: author, published media, safe comments and reactions | Report/retry/navigation after login | Exists; improve moderation |
| A09 | ONE Rooms discovery/details: public/private preview, owner, member/follower privacy, optional Masana, qualified access | Discover → Join/Request/Invitation → same Room identity; paid/ban/permission gates enforce admission | Existing foundation; unified design planned |
| A10 | ONE adaptive Room timeline: Updates, Conversation, optional Topics and Events; existing lessons/Q&A preserved | Creator broadcast + group chat + community organization; media, comments, reactions, scoped Masana, moderation | Existing lesson/discussion source only; new capabilities NOT implemented |
| A11 | Wallet home: MSNW custody available, conditional reserved, refresh/eye, Fund, actions, assets/history | Fund/Send/Receive/Convert/P2P → dedicated routes | Exists; redesign and verify |
| A12 | Fund/payment status: methods, entered amount/currency, exact quote/fees, provider redirect and pending state | Refresh quote → authorize → provider → verified receipt | Exists; provider verify |
| A13 | Send/Receive: destination/network or verified address, amount, review and secure confirmation | Reject invalid chain/owner; recovery on retry; settled receipt | Exists; provider verify |
| A14 | Convert/Crypto assets: coin list, chain, quote expiry, total fees, withdrawal limits, receipt | Exact execution after consent; pending/recovery states | Exists; provider verify |
| A15 | History/receipt: grouped entries, filters/search, exact amounts, transaction status, metadata and help | Open operation → receipt → support; never duplicate entries | Exists partially; unify |
| A16 | Individual P2P Buy/Sell/Orders: compact filters, individual seller trust, min/max in fiat and MSNW | Select individual offer → review → order; filtered empty/loading/offline. No merchant commerce or cards | Exists; device and finance QA |
| A17 | P2P order: escrow state, seller/payment-method authorization, bank copy, deadlines, evidence and dispute | Pay marked → vendor confirms → server releases or dispute | Exists; qualify actual escrow |
| A18 | Billing: service list, recipient, package, updated quote, review, pending state and durable receipt | Buy from Wallet or Gwani with same backend | Exists; global provider qualification |
| A19 | Own profile/settings: cover/avatar, username, bio, followers, My Masana, Edit/Preferences/Privacy | Edit and save; sign out/delete/export with secure recovery | Exists; improve |
| A20 | Public creator profile: display name, about, follow/verification and public agents | Open/Follow/Share/Report, privacy scoped | Exists partially; improve |
| A21 | My Masana: list avatars, state, audience, Create; one clear empty CTA | Create → wizard; manage → public preview | #212 exists; improve portraits |
| A22 | Creator wizard/preview: name, profession, language, age/persona, optional photo, generated story and voice test | Save draft → preview → one-free/paid review → publish | #212/#214 exists; edits incomplete |
| A23 | Manage Masana: identity, public URL, status, edit count, Status schedule, earnings | Pause/resume/share/edit/retire; auth denied safely | #212 exists partly |
| A24 | Optional voice reference: collapsed entry, permissions, adult-speaker consent, audio preview, deletion | Continue without cloning if unavailable | Planned/needs provider qualification |
| A25 | Creator earnings: settled/held/reversed/eligible revenue, statement, fees and transfers | Drill down to receipt, no separate creator credit | Incomplete |
| A26 | Notification preferences/history and support: scoped categories, quiet hours, private preview, alert list | Tap alert → authorized target; offline list/read state | #207 exists; device verify |
| A27 | Security/account data: sessions, password/contact recovery, export/delete, retained obligations | Re-auth critical changes; deletion pending settlement | Exists partially |
| A28 | Admin mobile: overview, Masana/creator moderation, Rooms/Status, financial/P2P cases, capability & incidents | Authorized admin action → audit trace and confirmation | Exists partially; qualify |

## Required golden end-to-end journeys
1. **New user:** install APK → select language → register/sign in → Chats → discover Masana → message → record voice → receive answer → leave/reopen → no lost state.
2. **Call:** chat → start call → authorized billing/mic → speech both ways → network interruption/reconnect/hangup → accurate history/settlement.
3. **Creator:** public profile → one free Masana → generated preview → publish → discover from second account → follow/chat → pause → visibility revoked.
4. **Creator paid:** second Masana quote 5,000 MSNW default → exact single-use confirmation → charge once → publish → receipt; insufficient balance and replay do not publish.
5. **Room:** discover → join/subscribe (if qualified) → ask/receive → leave/rejoin → correctly recover permissions.
6. **Status:** discover/follow → audio post → background/foreground → comment/report → protected creator identity.
7. **Wallet:** open exact custody amount → fund → wait for independently settled evidence → refresh verified balance → send/convert → history and accurate receipt.
8. **P2P:** Individual seller offer → escrow → buyer marks paid → seller confirms/disputes → server-only release → ledger/alerts/receipt; negative replay, expiry, concurrent release. This is NOT merchant onboarding or POS commerce.
9. **Bills:** Wallet or Gwani → catalog with current price → correct recipient → authorize → provider receipt → ledger readback; timeout/retry cannot double-buy.
10. **Account switch:** after chat, push, creator tools, Wallet, P2P and Room use → switch account → none of prior account's private data or old async results appear.
11. **Recovery:** restore PostgreSQL/object copies off-account → schema/ledger/custody consistency → protect old liabilities and prevent unauthorized overwrite.
12. **Global market:** locale/RTL/low data + payment region eligibility → show only supported operations; unavailable is explicit and never fabricated.

## Human communication and Rooms revision — approved 19 October 2026

**Scope:** same five root tabs **Chats / Status / Wallet / Calls / Rooms**; Contacts has **Masana / Humans**. All group-like, community-like, channel-like behaviors are **one customizable Room** with one ID and membership, not three products. Advanced creator-controlled settings, not a Group/Channel type wizard. No merchant/card products. Human chat/calls and user Rooms are in roadmap Phases 4–8. Detailed authority: [UNIFIED-ROOMS-PRODUCT-SPEC.md](UNIFIED-ROOMS-PRODUCT-SPEC.md).

### Page tree, composition and navigation
| ID | Route/entry and content order | Controls / back / deep link |
|---|---|---|
| H01 | Chats → Contacts (`/masana` retained for compatibility): header Contacts, Masana/Humans tabs, search, compact avatar/name/subtitle rows | Masana filters/creation retained; Humans initially following contacts, Find people by public name/@handle; refresh/load more. Row opens conversation once P4-05/06 exists; first milestone opens profile honestly. Avatar always profile. Back → Chats retaining list/filter. |
| H02 | `/u/:handle`: identity/avatar, @handle, bio, visitor Message/Call, secondary Follow, nonempty public Masana and Rooms sections | Same destination from agent attribution, contact and member lists. Owner sees Edit profile/My Masana. No private phone/email or private Room list; no empty creator scaffolding for non-creators. Share copies canonical link. |
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

### State contract applying to every H/R route
- **Loading:** compact list/profile skeleton; retain permitted cached content during refresh. Don't block first paint on contacts/provider discovery.
- **Empty:** Humans “Find someone to start a conversation”, joined Rooms “Create or discover a Room”, search “No matches”; one useful action. Empty creator sections are omitted.
- **Error/partial/stale:** inline failure with Retry; retain already loaded authorized rows but label refresh failure. No fake empty list or fake available call. Operation uncertainty reloads authoritative state before replay.
- **Offline:** label connection state, retain read content/drafts; sends show pending/failed accurately, never delivered without server evidence. Failed writes reuse durable client IDs. Do not queue financial or membership permission changes blindly.
- **Permission:** optional contacts matching, microphone prompt only on record/call; Denied → explanation/settings/retry, username search/text stay usable. Private Room and blocked-profile denial never reveals restricted content.
- **Account switch:** clear contact search/selection, profile follow overrides, old page data, drafts/media URLs/recordings/call session; cancel or generation-fence async completions. Push/deep link reauthorizes against current account.
- **Accessibility:** 48dp targets, semantic tab/action/voice status labels, 320px width/200% text, keyboard avoidance, RTL directional layout, sufficient green/white contrast, accessible audio controls. No horizontal clipped action rows.
- **Back/deep links:** routed entry preserves tab/list/draft; unauthenticated link resumes only after correct account auth and authorization; missing/revoked targets show unavailable with return action.

### Canonical contracts and end-to-end acceptance
- Contacts initial API: authenticated `GET /v1/profiles/contacts?q=<public search>&after=<handle>`, fixed page size 30 (pagination, not a product contact cap); blank query lists followed public humans. Stable ascending handle cursor. Only handle/name/bio/avatar summary returned; tenant/current user derived from auth. Literal case-insensitive name/handle search, self/inactive/moderated/bidirectionally blocked exclusion. No arbitrary client tenant/user scope or phone lookup.
- Reuse `talks.public_profiles` and owner edit/follow APIs. `GET /profiles/:handle` and by-user variant must enforce the same active/block/moderation boundary; self may still inspect/edit their own profile. Public creator Masana comes from the existing active/published server directory keyed by creatorHandle; not an independent untrusted profile array.
- Direct chat: typed conversation target (`human` vs `masana`), participant-only durable thread/pair/request IDs, scoped media and receipts, deletion tombstones; server owns sender, delivery and request state. Separate human transport prevents accidental model requests/billing.
- Calls: explicit human peer identities, short-lived participant media tokens and authoritative signaling transitions; ring/reconnect/teardown idempotency. No human call passed through Masana paid voice flow.
- Rooms: extend existing packages/rooms schema/API/membership and subscription owner: allow human-owner Rooms in addition to teacher-bound legacy records; one Room identity, optional room-scoped content sections, per-section policies, historical content ACL and permission-revision audit. Keep existing room IDs, lessons, questions, subscriptions and signed-media protections; no second Group/Channel backend. Jobs recheck membership/agent activation; models cannot move funds.
- Acceptance: A follows/finds B -> Humans -> B public profile -> request -> accept -> messages/media/voice/calls with privacy. Unified Room owner creates Room -> invites followers/members -> publishes Updates -> turns on Conversation/Topics -> poll/event and @Masana reply -> turns off Chat -> historic IDs/data/private visibility unchanged. Ban/revoke removes access to push, topic and media; private->public preserves old private posts, paid professional lessons/receipts survive migration; test account/tenant switch, offline duplicate, worker restart and DB restore. All mapped to Phase 5 IDs and [Room inventory](ROOMS-REFERENCE-FEATURE-INVENTORY.md).
