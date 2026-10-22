# Rooms — exhaustive broadcast/discussion screen, moderation and acceptance contract

**Audit:** 22 October 2026, source SHA `15be4fa807893ae0a8edb6fc4c9d368a9f5293c8`. **Authoritative roadmap:** Phase 5 P5-R01–R09/P5-T01 and Phase 8. This detailed contract supplements `SCREEN-JOURNEYS.md`, never replaces the canonical roadmap or claims launch completion. **S** source observed; **P** partial; **N** no bounded source evidence; **Q** provider/device/security qualification; **C** conditional; **X** excluded.

**Owner's nonnegotiable decision:** Rooms are user-created *broadcast/discussion* communities, not lessons, classes or the obsolete Twin product. Old Rooms lesson product/history was deliberately reset, not archived. `room_discussion_screen.dart` retains “lessons/questions” text but its `RoomDiscussionScreen` has **no references elsewhere in current mobile lib**, so classify as *legacy likely unreachable* pending router/build inspection, not a verified live user-facing defect. Human Room content is not silently sent to an AI agent; only permitted explicit Masana mention triggers may receive scoped content.

**Inspected Masanawa source:** `apps/mobile/lib/src/features/rooms/{rooms_screen,room_community_screen,room_community_api,room_membership_screen,room_membership_client,room_discussion_screen}.dart`, `services/gateway/src/room_community/index.ts`, corresponding Room tests. Existing routes include `/v1/rooms/{mine,discover,invitations}`, create/edit/retire, `/v1/rooms/:roomId/community`, timeline, media, participants, reactions, reports/reviews, preferences, invitations and member roles. Files/source are NOT deployed proof. Original Masanawa design borrows Telegram Channels broadcast/discussion separation, pinned post and granular rights; WhatsApp Communities announcement/member clarity; Telegram 2026 connected Communities/welcome messages as *optional* patterns, not mandatory new product. No copied trademarks/assets, no sixth root or classroom resurrection.

**Navigation/layout:** Rooms root → Joined/Discover/Invitations → Room feed → Post/comment → Room Info/Media/Members → Manage controls only if permitted. Back restores selected tab/search/scroll/draft and source post. Deep links reauthorize membership and auth epoch; hidden/private/retired content fails closed. Every screen needs signed-out, initial loading, empty, stale/offline, error/Retry, no permission, blocked, account change, and screenreader/320dp/200%/RTL states. Use one clear primary action and secondary overflow management, not admin buttons in everyone's composer.

## Screens and sheets: appearance, controls, navigation and negative paths

| ID/status | Hierarchy and controls | Permissions / failure / return |
|---|---|---|
| **RM00 S/P** Rooms landing | title/search, Joined/Discover, invitations badge and Create action | empty/offline, tab+scroll restore, per-user scope |
| **RM01 S/P** Joined Rooms | compact unread/pinned/muted avatar/name/post preview | left/revoked member private rows disappear |
| **RM02 S/P** Discover | searchable public broadcast/discussion cards, Join button | blocked owner, private non-disclosure, no eligible Rooms |
| **RM03 S/P** Invitations | sender/context, pending invite, Accept/Decline | expired/replayed/revoked invitation, no public token |
| **RM04 S/P** Create Room | name/description/photo, Public/Private, Admins/All post, comments, Create | validate, original request, failed create retains safe draft |
| **RM05 S/P** Timeline | Room header+count/pin, chronological posts, comment/compose | guest Join; admins-only author, stale/removed hidden |
| **RM06 P** Broadcast feed | admin-signed posts, media, reactions and Comment | subscriber cannot top-level post, muted/archived state |
| **RM07 P** Discussion feed | member messages, replies/mentions, clear membership | removed member cannot send, no lesson UI |
| **RM08 P** Post detail | author/date/body/media/actions and source permalink | retired/scheduled/private post gated for every read |
| **RM09 S/P** Comments | parent, reply list, per-reply actions and composer | disabled comments, revoked membership, pagination |
| **RM10 P** Post media composer | file preview/caption/progress/cancel/retry original ID | MIME/size/permission, app loss, unresolved upload |
| **RM11 P** Shared media | Media/Files/Links, source jump, authorized viewer | expired links, media deletion, private ownership |
| **RM12 S/P** Room Info | name/purpose/visibility/owner/count, Mute/Pin/Leave | guest, admin, owner controls separate; Back to feed |
| **RM13 S/P** Members | avatars/roles/count/search, manager actions | large paging, privacy, removed/banned/member state |
| **RM14 S/P** Add participants | People/Masana search, selection and confirmation | block, owner consent and agent disclosure |
| **RM15 S/P** Invitations manager | issue one-time code, private copy, expiry/revoke | token only shown once, scope+status, failure original ID |
| **RM16 P** Join/private redemption | public Join or code input, Room rules and confirmation | invalid/revoked/expired/blocked, no data leakage |
| **RM17 S/P** Edit Room | name/photo/purpose, visibility, post/comment rules, Save | version/permissions, failed save rollback, back |
| **RM18 S/P** Role management | promote/demote/remove/ban menu, confirmation | protect owner, stale role/admin race, appeal |
| **RM19 S/P** Report review | confidential count/snippet, Dismiss or Remove | manager-only, audit readback and reporter privacy |
| **RM20 S/P** Moderation log | decisions/count/time/reviewer reference, redacted | only qualified reviewer, no forged/deleted history |
| **RM21 P** Reports | post/Room/member reason, evidence, Submit and case | duplicates/false-report, no disclosure to target |
| **RM22 P** Pin/schedule/edit | pin/unpin, if qualified schedule/retire/edit/delete | scheduled/retired unreadable by alternate routes |
| **RM23 S/P** Reactions/mentions | emoji count/toggle, mention and reply parent | no mass agent spam, revoked member denied |
| **RM24 P** Notification preferences | Room mute/pin/mentions/unread/OS permission | lockscreen redaction, quiet hours, stale push |
| **RM25 P** Transfer/leave/delete | choose owner, explicit transfer then Leave/Retire | last-owner blocked, retention and active invites |
| **RM26 S/P** Masana mentions | owner selected agents, mention-only response, activate/remove | explicit trigger, AI identity, private data boundary |
| **RM27 C** Optional community collection | link related Rooms within Rooms tab if demand proven | not new root or mandatory Telegram clone |

## Atomic Room features — testable and individually identifiable

IDs R0–R5 are children of P5-R01–R09 and P5-T01. Mark S/P when source exists but completeness/handset operation isn't established; do not check any parent checkbox simply because this table exists.

### R0 Discover, list, create, enter
| ID | State | Required small action / observable result |
|---|---|---|
| R0-01 | S/P | Rooms root has Joined and Discover, consistent back path. |
| R0-02 | S/P | Unread/pinned/muted preview reflects server-scoped state. |
| R0-03 | P | Search by Room name/public description with debounced query. |
| R0-04 | P | Public discovery shows only active/eligible visible Rooms. |
| R0-05 | P | Signed-out, loading, empty, offline, stale and Retry views. |
| R0-06 | S/P | Create Room validates name, description and visibility. |
| R0-07 | S/P | Broadcast versus discussion posting policy picked explicitly. |
| R0-08 | S/P | Public Join versus private invite requirement explained. |
| R0-09 | P | Create request uses stable idempotency and error retains inputs. |
| R0-10 | P | Private token exact format, expiry and user ownership checked. |
| R0-11 | S/P | Incoming invitation accept shows room and result/status. |
| R0-12 | P | Decline/revoke/expired invite resolved without membership leak. |
| R0-13 | S/P | Leave and rejoin public only when server policy allows. |
| R0-14 | P | Search/tab/scroll preserved after create/join/view/back. |
| R0-15 | P | Account switch removes old joined Rooms/unauthorized cached media. |
| R0-16 | P | Type/avatar/owner/member count readable on 320dp/200% text. |
| R0-17 | N/P | Recommendation ranking honest; no fabricated popularity or ads. |
| R0-18 | X | No resurrected lesson creation/class/course product. |

### R1 Feed, post, comments, media, receipts
| ID | State | Required small action / observable result |
|---|---|---|
| R1-01 | S/P | Only owner/admin post in broadcast mode; correct reason shown. |
| R1-02 | S/P | Members may post in discussion mode within server policy. |
| R1-03 | P | Header identity, Room mode, member count and pinned content. |
| R1-04 | P | Post body/date/author, trusted status and native attachment preview. |
| R1-05 | S/P | Server-confirmed timeline ordering and refresh/cursor state. |
| R1-06 | P | Post draft retained when navigating away, correct Room/account scope. |
| R1-07 | P | Post reply references immutable authorized parent, thread back. |
| R1-08 | P | Comment permission toggle enforced server-side on read and write. |
| R1-09 | P | Reaction tap toggles own emoji and correctly aggregates count. |
| R1-10 | P | Duplicate/replayed reaction does not inflate counters. |
| R1-11 | P | Visible post can be reported once per report event with reason. |
| R1-12 | P | Pinned notice and Unpin are role-gated; no stale pinned deleted post. |
| R1-13 | P | Media picker supports eligible types, MIME/container/size validation. |
| R1-14 | S/P | Uncertain upload retains same request+local file fingerprint on restart. |
| R1-15 | P | Retry original or Discard, and block duplicate post until resolved. |
| R1-16 | P | Media detail checks membership on every protected read. |
| R1-17 | P | Photo/video/file preview plus accessible name, size and permission errors. |
| R1-18 | P | Media/Files/Links album grouped by type/date and source post. |
| R1-19 | P | Scheduled/retired/removed posts cannot leak through reaction/comment/media APIs. |
| R1-20 | N/P | Edit/delete own posts under versioned server policy and audit. |
| R1-21 | N/P | Long thread cursor and jump-to-parent without duplicate row. |
| R1-22 | P | Low-data/offline draft remains private and recoverable. |
| R1-23 | P | No visible post/empty comments/error states are distinct. |
| R1-24 | N/P | Reported post public state not changed by unreviewed single report. |

### R2 Membership, access, visibility and permissions
| ID | State | Required small action / observable result |
|---|---|---|
| R2-01 | S/P | Owner/admin/member role from server, not route UI variable. |
| R2-02 | P | Public and private Room listings enforce membership/non-disclosure. |
| R2-03 | P | Member count based on active eligible memberships. |
| R2-04 | S/P | Member list shows authorized identity/role/status only. |
| R2-05 | S/P | Manager can invite/add eligible humans by scoped lookup. |
| R2-06 | S/P | Owner may select authorized published Masana with AI disclosure. |
| R2-07 | P | Invite code shown once, copied intentionally and safely redacted. |
| R2-08 | S/P | Invite expiry, revoke, one-time replay and join conflict handling. |
| R2-09 | S/P | Server enforces promote/demote/remove and role hierarchy. |
| R2-10 | P | Removed/banned member loses feed/media/comment/push ability immediately. |
| R2-11 | P | Membership changes invalidate cached private content/deep links. |
| R2-12 | P | Blocking member across social graph respects public privacy rules. |
| R2-13 | P | Owner cannot leave without verified transfer; no phantom ownership. |
| R2-14 | N/P | Transfer offer, accepting new owner, documented recoverable failure. |
| R2-15 | P | Room retirement prevents new joins/posts/invites and preserves audit policy. |
| R2-16 | N/P | Anonymous display/role hiding only with reviewed privacy policy. |
| R2-17 | P | Rate limit joins/invites/spam and informative throttling. |
| R2-18 | P | Wrong tenant/identity/account switched denied uniformly. |
| R2-19 | P | Room user profile/media links never expose restricted human details. |
| R2-20 | C | Linked community containers only after explicit need and access rules. |

### R3 Moderation, disputes, logs and ownership
| ID | State | Required small action / observable result |
|---|---|---|
| R3-01 | S/P | Report Room vs report post vs report reply are separately scoped. |
| R3-02 | P | Report reason bounded, sanitized and linked to canonical target. |
| R3-03 | P | Duplicate reports cannot inflate unique-reporter count. |
| R3-04 | S/P | Manager summary shows confidential counts with no reporter names. |
| R3-05 | S/P | Moderator may Dismiss or Remove post under server authority. |
| R3-06 | P | Decision includes timestamp, operator ID, reason and target revision. |
| R3-07 | S/P | Immutable review log persists after dismissal and further reports. |
| R3-08 | P | New report after dismissal reopens appropriately without rewriting old audit. |
| R3-09 | N/P | Moderator response/appeal for affected author if backend authorized. |
| R3-10 | P | Removed post cannot be retrieved via attachment, comments or search. |
| R3-11 | P | Reports on scheduled/private/retired content honor legitimate visibility. |
| R3-12 | P | Member ban/remove/invite revoke confirmed with consequences. |
| R3-13 | N/P | Ownership transfer protects only owner, preserves active members and cases. |
| R3-14 | P | Delete/retire Room confirms irreversible exposure changes, not arbitrary history wipe. |
| R3-15 | P | Access to moderation records limited to manager and operator roles. |
| R3-16 | P | Concurrent moderator decisions are version-fenced, no contradictory audits. |
| R3-17 | N/P | Anti-spam thresholds and repeat offender actions require server policy. |
| R3-18 | Q | PostgreSQL authorization/role/banned/revoked and audit tests on actual schema. |
| R3-19 | P | Moderation help/report feedback never claims appeal decision before review. |
| R3-20 | X | No unmoderated AI auto-removal or owner-independent covert admin rights. |

### R4 Masana, notifications, scheduling and media recovery
| ID | State | Required small action / observable result |
|---|---|---|
| R4-01 | S/P | Only qualified published agent selectable for owner-enabled Room mentions. |
| R4-02 | P | Clear AI label on every Masana response in a Room. |
| R4-03 | P | Human members expressly mention addressed agent to request response. |
| R4-04 | P | Only context allowed by server Room/AI policy enters that reply, never global memory. |
| R4-05 | P | Agent mention spam/repeat and role-controlled activation with rate limits. |
| R4-06 | P | Creator/owner can deactivate/remove agent without deleting human posts. |
| R4-07 | N/P | New members see bounded rules/welcome notes if authorized, not massive spam. |
| R4-08 | P | Room unread and mentions derive from server read cursors. |
| R4-09 | P | Mute/Pin preference owner-scoped; OS notification disabled respected. |
| R4-10 | P | Private Room push body redacts member identity/media content on lockscreen. |
| R4-11 | P | Deep link from post/invite push reauthenticates and checks membership. |
| R4-12 | P | Schedule date/time for posts only where existing service actually supports it. |
| R4-13 | P | Scheduled/retired visibility forbidden through alternate read APIs. |
| R4-14 | P | Upload after app kill resumes same identity/file, not duplicate post. |
| R4-15 | P | Missing local file requires original re-selection, not false recovered success. |
| R4-16 | Q | Real Android media picker/permission/storage/low-data/background tests. |
| R4-17 | N/P | Reported/revoked media cached copies removed according to scope and retention. |
| R4-18 | N/P | Polls/events/voice Room sessions are optional and require typed endpoints. |
| R4-19 | C | Telegram 2026 related Communities collections not an extra root/launch gate. |
| R4-20 | X | No legacy education/lesson Room, forced business identity or cloned channels UI. |

### R5 States, accessibility, telemetry and release controls
| ID | State | Required small action / observable result |
|---|---|---|
| R5-01 | P | Loading skeleton, retry and truthful stale-cached state for every Room view. |
| R5-02 | P | Offline reads disclose staleness and don't execute protected writes blindly. |
| R5-03 | P | Session epoch clears private Room data before new account renders. |
| R5-04 | P | Race: admin removes member while their post/attachment request in flight. |
| R5-05 | P | Race: manager toggles comments while member submits reply. |
| R5-06 | P | Race: post retired while someone reacts/views media, alternate routes fail closed. |
| R5-07 | P | Race: invite revoked after redemption started, exactly one membership result. |
| R5-08 | P | Race: owner transfer while creator attempts retire/leave. |
| R5-09 | P | Rate-limit abuse rejects unauthenticated and same-user multiple report spam. |
| R5-10 | P | 320dp at 200% text maintains readable action controls and form labels. |
| R5-11 | P | RTL, TalkBack, noncolor-only states and high contrast on cards. |
| R5-12 | P | Android back/drafts/search/scroll and deep link restoration. |
| R5-13 | Q | Real deployed DB migrations resetting lessons tested without unrelated data loss. |
| R5-14 | Q | Real provider and device media readback, content revocation and notification QA. |
| R5-15 | Q | Admin moderation evidence in audit logs and rollback plan for schema changes. |
| R5-16 | Q | Production abuse reporting/appeals with operator response time policy. |
| R5-17 | Q | Physical-device tests for private Room invite, join, mute, post/reply, revoke. |
| R5-18 | P | Original API and case trace IDs attached to failures, not claimed as completed. |

## API ownership, golden and adversarial journeys

`services/gateway/src/room_community/index.ts` is the single current Room authorization and data authority. Flutter `rooms_screen.dart` (index), `room_community_screen.dart` (create/feed/info/management), `room_membership_screen.dart` (invites) and account-fenced `room_community_api.dart` must share stable IDs and typed records, not invent a parallel “channels” service. Legacy `room_discussion_screen.dart` (lesson copy, no references in current mobile `lib`) must be retired or removed **only after a verified route/import/build/behavior check**; never re-enable the abolished lessons product. Post/comment/media/report read ACL must all enforce scheduled, retired, banned and revoked states. Single integrator owns contested schema, routes, migrations and authorization; widgets/tests have exact-path ownership and SHA handoff.

**Twelve golden journeys:** signed-in Joined→Discover→Join→return; private invitation→Accept→feed; Create public Broadcast→publish admin post→member comment; Create Discussion→member post→reply→reaction; upload photo/video→server readback→Media list; post pinned→source jump→unpin; owner Add member→promote admin→post controls; user Report post→manager Dismiss/Remove→audit; mute/pin toggles→restore preferences; enable Masana mention-only→qualifying user mention→clearly labelled response; owner transfer→owner leaves while Room stays; account A leaves→B session cannot read A's restricted content.

**Adversarial cases:** forged owner/admin role; private Room direct URL; revoked invite; expired invite replay; duplicate create/upload with same ID; retired/scheduled post alternate GET/comments/media; blocked human enters; admin removes posting member mid-send; media URL forwarded to outsider; malicious MIME/oversized attachment; forged report count; parallel conflicting decisions; owner tries to abandon before transfer; old lesson screen inadvertently routed; loss of notification permission; app kill after upload request accepted; 320dp/200% TalkBack and RTL; account switch while async media loads; abandoned/disputed archived post support data. **No live-device/production acceptance inferred from test source.**

**Implementation waves:** P5-R01–R03 navigation, posting and original design hierarchy; P5-R04–R06 reactions/roles/reports and immutable moderation audit; P5-R07–R09 join/revoke/mute/visibility/AI mention and shared media; P5-T01 media status/process death/Status-adjacent retries; P8-U/X/APK low data, private push, accessibility, real DB and installed devices. Do not add a new tab, a lesson calendar or Telegram monetization just because their source is available. No unsolicited APK.

**Public references:** [Telegram Channels FAQ](https://telegram.org/faq_channels?setln=en), [Telegram admin rights and discussion model](https://core.telegram.org/api/channel), [Telegram Communities and ephemeral bot replies (July 2026)](https://telegram.org/blog/communities-editor-invisible-messages?setln=en), [Telegram welcome messages (Aug 2026)](https://telegram.org/blog/welcome-messages-buttons-TG-13?setln=en), [WhatsApp Communities](https://faq.whatsapp.com/495856382464992) and [announcement controls](https://faq.whatsapp.com/582420703681043). Competitor limits/rules are evidence of design patterns, not Masanawa promises.
