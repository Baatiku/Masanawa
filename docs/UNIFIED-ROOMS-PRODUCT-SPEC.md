# Masanawa Unified Rooms — approved product direction and implementation specification

**Owner decision: 20 October 2026.** **Status:** design/implementation contract, NOT evidence of implementation, provider acceptance or release. **Canonical milestones:** [PRODUCT-ROADMAP-20261019.md](PRODUCT-ROADMAP-20261019.md), Phase 5. **Screen authority:** [SCREEN-JOURNEYS.md](SCREEN-JOURNEYS.md), R01–R18. **Feature-level audit:** [ROOMS-REFERENCE-FEATURE-INVENTORY.md](ROOMS-REFERENCE-FEATURE-INVENTORY.md).

## 1. Non-negotiable product decisions

1. There is **one product named Rooms**, exactly one existing Rooms root tab, one canonical Room ID and one creator-owned Room lifecycle. Never expose separate Group / Community / Channel products, tabs, wizards or backends. Chats remains private human/Masana conversations; Rooms remains multi-person and creator spaces.
2. Adapt the strongest patterns from WhatsApp groups, WhatsApp Communities, WhatsApp Channels, and Telegram groups/channels/topics/communities into **creator-controlled Room capabilities**, not selectable permanent "Room types".
3. There are **no card products, card issuing/management, merchant onboarding, merchant storefronts, merchant POS/checkout or standalone merchant commerce modules** in this product scope. Preserve existing individual P2P exchange with participant/seller identity, and bill/Wallet flows; this exclusion does not delete financial history or P2P escrow.
4. Preserve five tabs: Chats / Status / Wallet / Calls / Rooms. Reuse the current Flutter, Gateway, PostgreSQL, packages/rooms, subscriptions, Worker, notification/deep-link and Masana infrastructure. No parallel Channels/Communities domain, dual membership table, duplicate AI runtime or competing Wallet.
5. A creator can **change the Room's behavior later without losing Room identity, messages, paid entitlements, deep links or subscribers**. Security-impacting changes must present an audience-impact preview and use server-checked versioned updates.
6. Design intent is NOT literal feature equivalence or copying proprietary APK source/assets, wording, sounds or artwork. Decompiled WhatsApp component names are discovery leads, not proof of working UX/behavior.

## 2. One Room, composable capabilities

**Mental model:** "Create a Room for your audience, choose who can join and who can speak; add more organization when you need it."

Every Room has one profile (name, @slug, cover, description, creator identity, category/language, discoverability), one owner, membership/entitlement authority, audit trail, notifications, policies and canonical link. Internally it can expose any combination of **Updates**, **Conversation**, **Topics**, **Events**, **Shared content**, **Live sessions** and **Masana helpers**. They are capabilities/sections inside the SAME Room, never sibling public Room products.

| User intent | Creator's settings | How a single Room behaves |
|---|---|---|
| Family/friend group | Everyone can post; private; no Topics | Fast WhatsApp-like shared chat |
| Creator broadcast | Only authorized authors publish Updates; reactions/polls on; discussion off | WhatsApp/Telegram-like channel, with follower privacy |
| Creator broadcast with engagement | Updates; comments per post; Conversation on for selected members | Channel plus discussion, one Room identity |
| Community | Updates + Conversation + topic spaces, moderation/approvals | WhatsApp Community and Telegram forum features without separate groups |
| Class/learning | Announcements + Q&A/topics + lessons + eligible Masana instructor | Current professional Room upgraded in place |
| AI community | Human admins + visible Masana participants and tightly scoped automation | Human/Masana hybrid without leaking personal AI memory |

**Presentation rule:** A newly created Room defaults to Updates + Conversation with owner posts and permitted member conversation; creation asks only Name, Privacy and **Who can talk? Everyone / Admins / Approved members**. On the first post, no "choose group vs channel". If "Admins" is selected, the member composer is absent, not disabled; interaction is via explicitly permitted reactions, polls, comments or request-to-speak. The sections and topic selector appear only when useful. **Platform shell owner revision:** visible root is Chats / Updates / Wallet / Calls / Rooms, NOT the old Status label. Room Updates and the social Updates tab have separate authoring authority; a Room announcement does not automatically become a paid human social feed post. Video support is preserved, not removed. Owners can fine-tune later under Manage Room -> Communication, Access, Members, Safety, Masana, Growth and Advanced.

**Internal capabilities must be independently gated**: updates can have comments off while open Conversation is on; Topics can be restricted to moderators; polls can accept votes but not free-form replies; event visibility can differ from posting rights. Avoid a single global "post" switch that accidentally authorizes every section.

## 3. Exact navigation and creator/member screen design

**R01 Rooms root (existing root tab).** Top: Rooms title, search, menu; Create + secondary Discover access. Followed by optional pending join approvals for creators, joined/followed Rooms sorted by activity with avatar/title/last authorized activity, unread badge, mute/pin indicator, draft where applicable. Filters All / Unread / Owned / Joined are **chips**, not additional product categories. Search retains input on return. A zero-rooms account shows "Create a Room" and "Discover Rooms". A large Room has the same list row as a small one.

**R02 Discovery & Room preview.** Search/categories/recommendations; public title, cover, owner, purpose, activity, language, actual member/follower count, privacy and verified subscription terms only where eligible. One Join / Request to join / Accept invitation / Subscribe action appropriate to the policy; do not show false Join for expired or disabled paid entitlement. Private previews reveal minimum permitted metadata and no private posts/member identities. Protect links against revoked/expired invitations.

**R03 Create Room — minimal wizard.** (1) Name (mandatory) + optional photo/description; (2) Public or Private; (3) "Who can talk?" Everyone / Admins / Approved members; (4) Create Room. Optional advanced entry "Customize later". Validate slug conflicts, prohibited names, image rights, max lengths, moderation policy and accessible errors. Draft persists per account; no invented Room creation charge. Same idempotency key on retry. On success open R04. Creator can subsequently invite People or eligible Masana.

**R04 Room home — one adaptive timeline.** Header: cover/avatar, title, member/follower count or privacy-safe label, Join/Following status and overflow. Under header, optional sticky pinned announcement and live/session/event chip; **Updates / Chat / Topics** selector only for enabled sections with content. Default is a combined readable timeline with owner announcements visually distinguished; if Topics are enabled, the selector opens scoped topic views and preserves each topic's position/draft. Post actions: reply/quote, react, forward/share (if allowed), pin, edit within policy, delete, report, copy, save, search, media. Announcements have counters and optionally a Comments sheet; avoid creating a second chat identity for comments. Text/media/voice composer appears only if authorize says current member can post in the selected space. Viewers see only permitted actions, not disabled input. Unsent drafts survive back/offline and are scoped by room/topic/account.

**R05 Room info.** Name/description, owner, optional Masana hosts, Room rules, Join/Leave/notifications, public invite, visible member list if policy allows, shared media/files/links, About + pinned content, report, mute and privacy information. Owner opens Manage; no mandatory participant enumeration for broadcast followers. Public creator profiles expose only public Room associations.

**R06 Manage Room (one creator console).** Summary of what guests and members can currently do + preview as follower/member. Settings are grouped, not 40 controls on one screen: Identity; Communication (Updates, Chat, Topics, replies, media, polls, scheduling); Access (public/private, link/approval, subscription if qualified); People (owner, admins/moderators, join queue, bans); Safety (slow mode, anti-spam, reports, restricted media); Masana (assistants, mention policy, safe moderation); Insights (activity/reach where privacy-compatible); Advanced (export, transfer, archive, delete). Every toggle includes effect and server validation. A transition that removes a capability hides its entry but retains historical content subject to retention policy; changing private -> public NEVER silently exposes old private content.

**R07 Invite/add.** People / Masana picker, existing contacts/search, role/instructions for Masana. Invitation channels: revocable token, share link/QR with bounded expiry/use count, approvals and event log. Respect block/privacy, no private phone/email discovery. Invite secrets in POST bodies and protected share intents, never logs, analytics or URLs containing raw tokens.

**R08 Updates composer.** Rich text (safe bounded formatting), image/video/audio/document, links, captions, hashtags, mentions, poll, optional scheduled publication and expiry. Preview anonymous Room identity vs named author according to policy. Explicit audience/visibility review; draft and idempotency. No automatic AI publication without prior owner authorization and rights moderation.

**R09 Conversation/topic screen.** Chronological messages, reply-to, edit/delete, mentions, voice notes, multiple media, search, pins, reactions, per-topic unread and notifications, pagination, offline draft. Topic creation/rename/close/reopen by authorized roles. Small Rooms can run without Topics; enabling later must not move or delete existing Conversation messages.

**R10 Announcement detail/comments.** Update content and reactions, comments if enabled, reply threads, moderation/report, safe pagination. For broadcast followers, comments may be pseudonymous or limited to members by explicit policy, never leak private follower lists.

**R11 Events/polls.** Room event with timezone, start/end, RSVP/attendance privacy, reminder, updates and cancellation; scoped polls with multiple/single answer, close, votes, permissions, result privacy and anti-abuse. One Room calendar/activity view only if events exist.

**R12 Membership requests/roles.** Request list with safe profile preview, approve/decline, audit, role chooser Owner / Admin / Moderator / Member, broadcast-only Subscriber participation state, optional custom badge/title. Revoke and ban take effect against timeline reads, media URLs, search, push, topic lists, agent workers and invite usage.

**R13 Safety/moderation queue.** Reports, suspected spam, message holds, remove/restore, temporary restrict, block/ban/mute, rate/slow mode, appeals, audit and thresholds; creator actions limited by granted capabilities; platform actions separate and reviewed.

**R14 Masana controls.** Search/Add eligible Masana, visible AI label, per-Room/per-topic instructions, default respond only to explicit mention/owner-trigger; configured optional auto-assist with rate/cost/quiet-hours safeguards and moderation gate. Members get private, user-only AI help through a separately authorized ephemeral response; never leak response to Room or train on/ingest private chats by default.

**R15 Live room sessions (later capability).** Voice stage with host/speaker/listener, raise hand, admission, co-host/moderation, schedule, participant consent for recordings, reconnection and replay when authorized. Video/screen share only when actual LiveKit/provider qualification exists; no assertion of unbounded audience.

**R16 Shared media/archive.** Unified media/files/links/voice/lesson filters, authorized download and search, date navigation, storage management, per-topic indexing, older professional lesson and Q&A readback.

**R17 Insights and monetization (conditional).** Privacy-preserving aggregate post reach, engagement and joins; existing verified paid Room entitlements and MSNW creator earnings only if quote/eligibility/authorization is actually supported. No cards, merchant storefronts, merchant checkout or invented payout availability.

**R18 Room transition preview.** Creator changes who can talk, visibility, topic policies, history accessibility or paid access -> before/after view, expected affected members, confirmation, server-assigned revision, audit and event-driven cache invalidation. Recheck entitlement and privacy at read time. Old private content requires explicit content-specific republishing after a private -> public transition, not broad retroactive exposure.

**Navigation:** Rooms tab -> R01 -> R04 -> header R05 -> Manage R06; Discover R02 -> R04 only after required admission; optional R08–R18 use nested routes/back restoration under R04/R06. Deep links target immutable roomId + optional authorized post/topic ID, never infer permissions from a shared link. Retain the same shell and screen-state requirements: loading, empty, partial/stale, error, offline, rate-limit, permission revoked, changing account, keyboard/RTL/200% text at 320px, TalkBack, media permission and no duplicate writes.

## 4. Permission and privacy model (server authoritative)

- **Principal roles:** owner, admin, moderator, member; "subscriber" describes non-posting audience participation, not a different Room object. Masana is a separately disclosed service principal with bounded role and owner-controlled scope; platform staff permission is never derived from Room role.
- **Independent grants:** view_room, view_history, view_member_directory, view_update, publish_update, edit_own_update, publish_as_room, react, comment, vote, post_chat, create_topic, moderate_topic, schedule_event, start_stage, invite, approve_join, moderate, configure, transfer_owner, view_insights. A policy may grant an action for everyone, approved members, selected roles or nobody. Deny wins; tenant/account/ban/entitlement and target-visibility checks precede grants.
- **Public vs private and follower privacy:** Public discovery does not grant historical or media access if subscription/visibility restricts it. A broadcast subscriber must not be publicly enumerated without opt-in. Individual reactions/votes/private memberships must never become public as an accidental side effect of switching from discussion to broadcast.
- **AI boundary:** Room history sent to a Masana is limited to the entitled Room/topic scope and explicit needed context; never silently fetch participants' unrelated human chats, other Rooms, saved personal memory, wallet information or phone contacts. Rooms are untrusted input for Masana and may not direct tools to transfer funds or expand permission.
- **Encryption honesty:** Reuse documented transport/storage controls; do not claim group end-to-end encryption until a real, audited group key lifecycle (join/revoke/device restore/media) exists and the hosting/AI moderation tradeoffs are resolved. Moderated/AI-assisted Rooms may have server-readable content with clear disclosure; do not imply WhatsApp-equivalent encryption by design.
- **Entitlement:** The existing paid subscriptions/Play verification and immutable transaction history stay authoritative. A newly public Room is not necessarily free; a paid Room does not grant unauthorized posts or access after expiry. No automatic charge for enabling Topics, Updates or moderators.
- **State changes:** role or visibility changes are audited/idempotent, notify affected clients, revoke presigned media and worker subscriptions, fence old account generations and block stale client messages. Owners cannot transfer to nonexistent/ineligible/blocked accounts. Last owner cannot accidentally leave without a safe transfer/close flow.

### Configuration states

- **Open conversation:** chat_post = authorized members; updates = owner/admin; comments = optional; topics = off initially.
- **Broadcast:** chat_post = nobody; updates = owner/admin; comments = opt-in; member directory = hidden to followers.
- **Community:** updates = owner/admin; chat_post = authorized members; topics = member or moderator-created; shared membership; room-level announcements.
- **Moderated Q&A:** member chat may be held for review; owners/approved Masana respond; lessons/legacy question streams remain accessible under the new Room.
- **Transitions are safe:** switching layouts only alters future writes and presentation, never mutates historical authorship or bypasses past content access.

## 5. Source-grounded migration and API plan

**Present source at baseline:** packages/rooms/src/index.ts and ports.ts model professional, teacher-bound Room previews; packages/rooms/migrations/0001_rooms_free.sql requires a teacher_character_id FK and profession_title, plus paid subscription and Q&A/lesson tables. 0006_membership_invites.sql supports member/moderator and hashed expiring invitations. Gateway services/gateway/src/modules/rooms/routes.ts currently creates via staff-only /v1/admin/rooms, not creator self-service. apps/mobile/lib/src/features/rooms/rooms_client.dart still reads professionTitle and teacherCharacterId; apps/mobile/lib/src/screens/rooms/rooms_screen.dart fences account data. **These are real migration/adaptor gaps, not evidence unified Rooms is implemented.**

1. **Data migration** under the existing rooms schema and canonical migration runner, with reversible additive stage(s), retaining original keys, relationships and all paid/lesson/answer/history rows. Add owner_user_id, public title/description/photo, visibility, join_policy, config_version, post_policy, subscriber_privacy and updated timestamps, with constraints and indexes. Make teacher_character_id optional only after handling legacy rows, service logic and references consistently; do not assign fake Masana to human-created Rooms. Preserve profession_title and current serialized fields as compatibility projections until clients migrate.
2. **Spaces and posts** as room-scoped tables, not separate Room identities: room_spaces (room_id, space_id, kind, visibility, ordering, state), room_posts/messages (stable IDs, server actor, kind, space, parent, edit/tombstone, access label, idempotency), reactions/votes, per-post comments, cursor and media associations. Retain existing lessons/questions/replies in legacy tables and serve compatibility reads; migrate projections/backfill incrementally only with deterministic mapping and reconciliation counts. No destructive rewrite of receipts or lesson text.
3. **Memberships** extend the existing rooms.memberships with owner/admin/mod and subscriber participation, approval/invite metadata. Do not break current member/moderator checks while rolling out. Introduce one capability evaluator used by Gateway, DB query scopes, media access, notifications, background jobs and Flutter capability projection. Role inheritance must be explicit, not inferred from untrusted client values.
4. **Versioned API additions** alongside existing /v1/rooms routes: POST /v1/rooms (authenticated owner self-creation); PATCH /v1/rooms/:id (If-Match config_revision); GET /v1/rooms/:id/capabilities; GET/POST /v1/rooms/:id/spaces; GET/POST /v1/rooms/:id/posts with cursor and idempotency; GET/POST comments/reactions/polls/events as resource-specific routes; POST join-requests and decisions; author/admin moderation; get pending requests and insights. Existing /v1/rooms/:id/join, lessons, questions, discussion, invites and subscriptions retain response support until migration. Pagination, limits, type validation, explicit denies, scoped signed media and one canonical event/outbox source required. Do NOT add arbitrary open redirect or inline payment execution endpoints.
5. **Mobile/web** retrofit the current existing Room root/widget, clients and creator navigation; no replacement routing stack. Shared response DTOs and the five-tab shell remain canonical. Fully authorize each cached and push-loaded resource after account change and permission revision.
6. **Background** use existing Workflows/Worker/FCM/LiveKit scheduling and queue pattern for scheduled posts, notification fanout, retention, reminders, moderation, AI mentions and optional live sessions; retain correct authorship and stop jobs on loss of room rights. Outbox fanout must scale asynchronously, not one sync request per follower.
7. **Backfill/rollout:** create shadow capability projection -> dual-read comparison -> guarded writer activation -> backfill legacy professional Rooms -> measure counts/IDs/subscriptions/privacy -> enable creator Create -> then allow rich spaces. Feature flags and schema readiness fail closed. Legacy clients get supported projection or clear upgrade message. Test restoring original DB/objects and downgrade compatibility; never drop old tables/columns in first release.

**Schema work owner:** one integrator for rooms schema/repository + Gateway auth and route registry. Distinct parallel owners can build Flutter R01–R10, creator R06/R12–R14, discovery/search/notifications and contract tests only after the shared API/version contract is pinned to a SHA. Coordinate exact paths with the open human communication PR #227 and memory PR #228; neither modifies Rooms authority by implication.

## 6. Full journey test gates (each has positive and adversarial cases)

1. **Small private group:** owner creates -> invites two people -> accept -> messages/voice/reactions -> leave/rejoin; unknown link and removed user cannot read old private signed media.
2. **Broadcast to community:** owner creates announcement-only Room -> followers see posts/reactions but not follower list -> enables Conversation and Topics -> historical announcements/engagement/links remain -> only authorized members post.
3. **Community to broadcast:** owner closes member posting -> drafts preserved but not transmitted -> read/history policy remains correct -> pending duplicate sends rejected; topics not erased.
4. **Private to public:** owner changes discoverability -> new public audience sees metadata and explicitly public new content only -> old private files, histories, reactions, identity and member list stay protected.
5. **Creator permissions:** admin cannot transfer ownership or change unrelated financial entitlement, moderator can handle reports but not issue arbitrary role elevation, suspended/banned person cannot bypass through link/QR/push.
6. **Poll/event:** create, vote, edit close policy, calendar/timezone RSVP, reminder idempotency, cancellation and participant privacy across devices.
7. **Media/high load:** attachments/voice/pins/search/share/report/reconnect with 320px and 200% text; low-bandwidth, background/restart, stale cursor, slow mode, pagination, large audience notification fanout.
8. **Masana participation:** owner adds approved Masana -> member mentions -> bounded Room-only context -> typed/voice answer; forged mention, private memory, prompt injection, owner removal and payment requests do not cause unauthorized tool actions.
9. **Professional Room migration:** old room_id/slug/teacher/questions/lessons/discussions/subscriptions/expiry/paid receipts unchanged; roles and features added; no free access to expired content.
10. **Account/tenant swap:** A viewing private Room -> logout/login B while network/media/push/job in flight -> nothing from A renders to B; B cannot reuse authorization from A's cached Room ID.
11. **Operational restore:** migration deploy/restart, schema rollback readiness, database/object recovery, signed media revocation, no lost posts, audited moderation and entitlement consistency.
12. **Live mode later:** real device/provider voice staging, speak/raise-hand, recording disclosure, reconnect and teardown before labeling a session verified.

**Evidence per milestone:** exact Git SHA, source paths, real tests commands/results, source vs merged vs device/provider verified, negative gate results. Current document is DESIGN only. No UI, migration or endpoint is claimed delivered by this PR.

## 7. Research evidence and interpretation

- Repository: [WhatsApp component index](../whatsapp-decompiled/WHATSAPP-COMPONENTS-INDEX.md) from decompiled WhatsApp 2.26.40.72. Relevant manifest labels/activities corroborate *candidate surface areas*, not full runtime behavior.
- [WhatsApp Communities help](https://faq.whatsapp.com/495856382464992): announcements + organized related conversations, events and polls.
- [WhatsApp community announcement permissions](https://faq.whatsapp.com/742237357891080): admins broadcast; members can reply/react, with moderation.
- [WhatsApp Channel creation and media/polls](https://faq.whatsapp.com/265055289421317): one-way updates and limited follower response.
- [WhatsApp Channel privacy](https://faq.whatsapp.com/1318001139066835): follower/participation identities have privacy constraints.
- [Telegram FAQ](https://telegram.org/faq): granular group rights, topics, search, replies, media and admin roles.
- [Telegram topics in groups](https://telegram.org/blog/topics-in-groups-collectible-usernames): topic-specific history and notification settings.
- [Telegram Communities, 14 July 2026](https://telegram.org/blog/communities-editor-invisible-messages): grouped chats, private/visible child areas, ephemeral bot responses; our single-Room design deliberately chooses internal Room spaces instead of multiple public Room objects.
- [Telegram channel direct messages and topic tabs](https://telegram.org/blog/direct-to-channel-trim-voice-and-more): owner contact and faster topic navigation.
- [Telegram superchannels](https://telegram.org/blog/superchannels-star-reactions-subscriptions): optional admin attribution and creator subscriptions.
- [Telegram join requests](https://telegram.org/blog/shared-media-scrolling-calendar-join-requests-and-more): approval-based entry and shared media navigation.
- [Telegram slow mode](https://telegram.org/blog/silent-messages-slow-mode): per-group anti-flood controls.
- [Telegram voice chats/stages](https://telegram.org/blog/voice-chats-on-steroids): voice stage patterns; capacity and monetization are not promises of Masanawa capacity.
- [Telegram suggested posts](https://telegram.org/blog/checklists-suggested-posts): optional guest submissions to creators; do not transplant Stars/Toncoin/merchant commerce into the Masanawa Wallet.
