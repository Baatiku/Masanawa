# Masanawa — screen and journey contract (canonical)
**Updated:** 2026-10-19. This document is the **screen inventory and acceptance design basis**, not evidence that every screen works.

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
| A09 | Rooms discovery/details: list, topic, Masana host, join rules/price, recent lesson | Join/leave/rejoin → Room; invalid subscription denied | Exists; qualify memberships |
| A10 | Room discussion/lesson: members, accessible message stream, lesson history, moderation | Ask → answer; archive/search/report; paid expiry handling | Exists; incomplete E2E |
| A11 | Wallet home: MSNW custody available, conditional reserved, refresh/eye, Fund, actions, assets/history | Fund/Send/Receive/Convert/P2P → dedicated routes | Exists; redesign and verify |
| A12 | Fund/payment status: methods, entered amount/currency, exact quote/fees, provider redirect and pending state | Refresh quote → authorize → provider → verified receipt | Exists; provider verify |
| A13 | Send/Receive: destination/network or verified address, amount, review and secure confirmation | Reject invalid chain/owner; recovery on retry; settled receipt | Exists; provider verify |
| A14 | Convert/Crypto assets: coin list, chain, quote expiry, total fees, withdrawal limits, receipt | Exact execution after consent; pending/recovery states | Exists; provider verify |
| A15 | History/receipt: grouped entries, filters/search, exact amounts, transaction status, metadata and help | Open operation → receipt → support; never duplicate entries | Exists partially; unify |
| A16 | P2P Buy/Sell/Orders: small filters, beautiful offer rows, merchant trust and min/max in fiat and MSNW | Select → review → order; filtered empty/loading/offline | Exists; visual and device QA |
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
8. **P2P:** approve merchant offer → escrow → buyer marks paid → seller confirms or disputes → authenticated release → ledger/alerts/receipt; negative replay, expiry and concurrent release.
9. **Bills:** Wallet or Gwani → catalog with current price → correct recipient → authorize → provider receipt → ledger readback; timeout/retry cannot double-buy.
10. **Account switch:** after chat, push, creator tools, Wallet, P2P and Room use → switch account → none of prior account's private data or old async results appear.
11. **Recovery:** restore PostgreSQL/object copies off-account → schema/ledger/custody consistency → protect old liabilities and prevent unauthorized overwrite.
12. **Global market:** locale/RTL/low data + payment region eligibility → show only supported operations; unavailable is explicit and never fabricated.

## Human communication and Rooms revision — approved 19 October 2026

**Scope:** same five root tabs **Chats / Status / Wallet / Calls / Rooms**. Contacts has **Masana / Humans** tabs; people use the existing human/creator public profile. All Rooms terminology stays Rooms. Human chat/calls and user-created Rooms supersede prior exclusions. Implementation milestones/checks live only in the canonical roadmap Phases 4–8.

### Page tree, composition and navigation
| ID | Route/entry and content order | Controls / back / deep link |
|---|---|---|
| H01 | Chats → Contacts (`/masana` retained for compatibility): header Contacts, Masana/Humans tabs, search, compact avatar/name/subtitle rows | Masana filters/creation retained; Humans lists followed and accepted-conversation contacts, Find people by public name/@handle; refresh/load more. Row opens the human conversation/request; avatar opens the shared profile. Avatar always profile. Back → Chats retaining list/filter. |
| H02 | `/u/:handle`: identity/avatar, @handle, bio, visitor Message/Call, secondary Follow, nonempty public Masana and Rooms sections | Same destination from agent attribution, contact and member lists. Owner sees Edit profile/My Masana. No private phone/email or private Room list; no empty creator scaffolding for non-creators. Share copies canonical link. |
| H03 | Chats inbox: shared human/Masana chronological rows, search, All/People/Masana/Unread, drafts, unread/ticks | New chat opens H01; request entry only when requests exist; pin/mute/archive in long press. All never separates the same thread into duplicate inboxes. |
| H04 | Human conversation: avatar/name, Call/menu, date-grouped messages, reply preview, familiar attachment/text/hold-mic/send composer | Profile on avatar; copy/reply/share/delete/report, authorized search/media. Back retains draft and scroll. Push → auth → participant check → thread. Human content is not sent to a Masana/model. |
| H05 | Requests: sender identity, short request preview, Accept/Delete/Block | Accept opens thread; Delete clears request; Block revokes subsequent delivery/calls. Follow is distinct from consent to message. No automatic chat on a follow action. |
| H06 | Calls: shared human/Masana history, incoming/outgoing/missed indicators, details, callback | New call uses People/Masana picker; history → profile/chat/callback. Never route a human ID to the agent admission endpoint. |
| H07 | Incoming/active voice: clear identity and connection state, Answer/Decline or mute/speaker/audio route/minimize/hangup, duration only once connected | Locked/background entry, timeout/busy/cancel, reconnect, return banner. One session controller owns microphone/foreground service; no human agent-charge admission. |
| H08 | Privacy/settings: messaging/calling/Room additions, receipts/presence, blocked list | Existing Settings route, dedicated forms for substantive controls; local change shown only after server acknowledgement; critical ownership changes use existing account confirmation. |
| R01 | Rooms root: joined recent-first rows, unread/mute/pin, search, Discover, Create | Row → R04; long press mute/pin; filters/back state retained. Discover is secondary, no sixth tab. |
| R02 | Discover/detail: searchable public Rooms, photo/title/purpose, owner/participants, public preview/access terms | Join or quote/review for existing paid rules. Private links reveal authorized preview, then invite accept/approval; no private history leak. |
| R03 | Create: name/photo/description → public/private + who can post → optional People/Masana selection | Short flow, back preserves draft, validation beside field; Create disables while pending, same request ID on retry; success opens R04. Participants can be added later. No invented creation charge. |
| R04 | Room timeline: identity/member count, pin, messages or broadcast posts with comments/reactions/media | Admins-only: members get Join/Mute/Comment, authors get post composer. All-members: familiar conversation composer and replies. Tap header → R05; mention Masana → scoped response. |
| R05 | Room info: identity/about, notifications, members/Masana, shared media, invitation, Leave | Member → H02 or Masana profile; owner Manage → R06. Private membership is not exposed in public profile. |
| R06 | Manage: edit Room, owner/admin roles, invitations/links, posting/comments, Masana roles/automation, moderation, transfer/delete | Role checks server-side. Link reset revokes old link; non-owner cannot transfer/delete. Destructive choices explain effects and preserve legally retained receipts/history. |
| R07 | Add participants: People/Masana tabs, search, selected chips, Add/Invite | Respect who-can-add privacy; direct add where allowed, otherwise invite. Only eligible Masana; role/instructions + explicit payer if applicable. No private-chat memory import. |

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
- Contacts initial API: authenticated `GET /v1/profiles/contacts?q=<public search>&after=<handle>`, fixed page size 30 (pagination, not a product contact cap); blank query lists followed public humans and accepted-conversation peers. Stable ascending handle cursor. Only handle/name/bio/avatar summary returned; tenant/current user derived from auth. Literal case-insensitive name/handle search, self/inactive/moderated/bidirectionally blocked exclusion. No arbitrary client tenant/user scope or phone lookup.
- Reuse `talks.public_profiles` and owner edit/follow APIs. `GET /profiles/:handle` and by-user variant must enforce the same active/block/moderation boundary; self may still inspect/edit their own profile. Public creator Masana comes from the existing active/published server directory keyed by creatorHandle; not an independent untrusted profile array.
- Direct chat: typed conversation target (`human` vs `masana`), participant-only durable thread/pair/request IDs, scoped media and receipts, deletion tombstones; server owns sender, delivery and request state. Separate human transport prevents accidental model requests/billing.
- Calls: explicit human peer identities, short-lived participant media tokens and authoritative signaling transitions; ring/reconnect/teardown idempotency. No human call passed through Masana paid voice flow.
- Rooms: extend existing room/membership schema and APIs with roles/visibility/posting permissions/participants; preserve legacy identifiers and obligations. Jobs recheck membership/agent activation at execution time; mention default, automatic publishing only by owner setting. Models cannot authorize financial actions.
- Acceptance: A follows/finds B → Humans → B profile → request → accept → message/voice/media → call → missed/answered history → reopen. C cannot access; blocked/inactive/cross-tenant users excluded; switch account mid-load/send/call. Room owner creates public/private broadcast/discussion → permitted invite → join → mention Masana → scoped reply → remove participant → access revoked. Existing paid lesson Room retains history and expiry/receipts. Tests map to P4/P5 IDs in roadmap.
