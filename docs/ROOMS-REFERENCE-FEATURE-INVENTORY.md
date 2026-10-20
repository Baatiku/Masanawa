# Rooms reference adaptation inventory (feature-level)

**Owner direction:** one configurable Masanawa Room replaces distinct group/community/channel product types. **Planning-only candidate status**; each row still needs exact source code and runtime verification. **Implementation authority:** [canonical roadmap](PRODUCT-ROADMAP-20261019.md) Phase 5; **screen/permission spec:** [UNIFIED-ROOMS-PRODUCT-SPEC.md](UNIFIED-ROOMS-PRODUCT-SPEC.md). Reference tags: WA-G WhatsApp groups; WA-C WhatsApp Channels/Communities; WA-AI WhatsApp AI-inspired surface; TG-G Telegram groups/topics; TG-C Telegram channels; TG-B Telegram bots; TG-2026 Telegram July/August 2026; MSNW Masanawa-specific adaptation. Tags denote comparative inspiration, NOT proof all features appear in a particular decompiled package or current release.

**Register rules:** statuses must eventually be individually updated from CANDIDATE to SOURCE_PRESENT/PARTIAL/MISSING/IMPLEMENTED_SHA/VERIFIED_E2E/EXCLUDED_WITH_REASON, with actual path, evidence SHA, actor/journey/test and exact phase. Do not bulk-mark implemented because a UI component exists. Existing professional Rooms and subscriptions are partial source foundation, not evidence of this new feature set. This inventory is expandable; a completed census must inspect WhatsApp resources and the official Telegram release notes against each row and log uncovered items. Permanently excluded: cards, merchant onboarding/commerce/POS, independent Groups/Channels/Communities products, copied proprietary assets.

## Room identity and discovery — P5-R10

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-IDENTITY-001 | Single persistent Room ID through every configuration change | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-002 | Public/private Room visibility with no accidental history publication | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-003 | Creator identity/handle/cover/description/category/language | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-004 | Room vanity slug and canonical share URL | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-005 | Authorized public Room preview before join | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-006 | Join or follow Room from search/creator profile | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-007 | Current joined/recent and owned list without duplicate entries | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-008 | Pinned and muted Rooms in root | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-009 | Unread message and new announcement badges | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-010 | In-Room search and global authorized search | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-011 | Discover recommendations with report/hide controls | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-012 | Invite link QR share with no private metadata | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-013 | Room bookmark/save/follow state | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-014 | Room avatar and theme customization via Masanawa tokens | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-015 | Per-account draft and last-opened Room restoration | WA-G / TG-G | P5-R10 | CANDIDATE |
| UR-IDENTITY-016 | Archived/paused Room state with accessible legacy history | WA-G / TG-G | P5-R10 | CANDIDATE |

## Members, followers and admission — P5-R11

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-ACCESS-001 | Open join membership for public eligible Room | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-002 | Private invite-only entry | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-003 | Join request queue with approve/decline and reason | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-004 | Revocable invite links and QR tokens | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-005 | Expiring invite links with limited use counts | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-006 | Per-invite attribution without public user exposure | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-007 | Privacy-respecting add contact vs send invite | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-008 | Owner/admin/moderator/member roles | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-009 | Non-posting follower/subscriber participation | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-010 | Role-specific admin rights and delegated capabilities | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-011 | Promote/demote admin without self-escalation | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-012 | Member tags and optional moderator badges | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-013 | Owner transfer with explicit successor acceptance | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-014 | Safe owner exit and last-owner protection | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-015 | Member remove, ban, unban and restrict | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-016 | Invited-but-pending state and cancellation | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-017 | Join/leave/rejoin with preserved authorized history | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-018 | Visibility of followers/member directory as separate policy | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-019 | Ban and expired subscription enforcement on all read surfaces | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |
| UR-ACCESS-020 | Member welcome onboarding pack visible only to joiner | WA-G / TG-G / WA-C | P5-R11 | CANDIDATE |

## Channel-like publishing in the same Room — P5-R12

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-UPDATES-001 | Admin-only update publication switch independent from discussion | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-002 | Rich text and formatted announcement updates | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-003 | Post photos and multi-image albums | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-004 | Post HD/low-data videos and clips | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-005 | Post voice/audio updates | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-006 | Post documents and safe link previews | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-007 | Post captions, @mentions and hashtag routing | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-008 | Post Room identity vs named creator attribution | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-009 | Scheduled publishing with preview and cancellation | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-010 | Pinned updates and pinned notices | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-011 | Optional update expiration and retention rules | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-012 | Edit/delete/restore published update under audit | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-013 | Update views and aggregate reaction counts | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-014 | Emoji reactions with visibility rules | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-015 | Optional per-post comment/discussion sheet | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-016 | Follower polls without open-chat permission | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-017 | Reshare Room update into Status or private Chats | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-018 | Guest suggested post submission and review | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-019 | Draft/scheduled publishing with idempotent jobs | WA-C / TG-C | P5-R12 | CANDIDATE |
| UR-UPDATES-020 | Creator contact privately without exposing private profile | WA-C / TG-C | P5-R12 | CANDIDATE |

## WhatsApp-like discussion interactions — P5-R13

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-CHAT-001 | Member chronological Room conversation | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-002 | Message reply/quote with target check | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-003 | Threaded replies with pagination | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-004 | Forward/share subject to content-sharing policy | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-005 | Emoji reactions, reaction undo and aggregate count | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-006 | Message edits with edit marker and history policy | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-007 | Delete for self and authorized global tombstone | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-008 | Pin multiple messages with permission gate | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-009 | Mentions of human members and permitted Masana | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-010 | Reply-specific and mention-specific notifications | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-011 | Voice-note compose/lock/pause/send/play | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-012 | Photo/video capture and preview before send | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-013 | File/attachment sharing with safe media authorization | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-014 | GIF/sticker/emoji picker without copied artwork | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-015 | Media albums and shared-media viewer | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-016 | Search messages by text, author and date | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-017 | Chat clear/archive and drafts retained per user | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-018 | Read progress and unread separators | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-019 | Slow mode with per-member countdown | WA-G / TG-G | P5-R13 | CANDIDATE |
| UR-CHAT-020 | Mute, mention-only and topic-specific notification controls | WA-G / TG-G | P5-R13 | CANDIDATE |

## One community with optional internal topics — P5-R14

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-TOPICS-001 | Enable topics without creating second Room identity | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-002 | General discussion exists by default | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-003 | Topic create, rename, icon and description | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-004 | Topic ordering and pin to top | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-005 | Topic creator/moderator permissions | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-006 | Topic visibility: all members vs approved roles | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-007 | Per-topic post/read/moderate policy | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-008 | Independent unread count and drafts per topic | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-009 | Separate topic notification preferences | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-010 | Topic media and message search | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-011 | Close/archive/reopen topic without data loss | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-012 | Global announcements visible from all topics | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-013 | One Room share link with optional specific topic deep link | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-014 | Topic migration preserving old general-chat messages | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-015 | Private-to-public transition cannot reveal old private topics | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |
| UR-TOPICS-016 | Keep one Room membership and paid entitlement across topics | WA-C / TG-G / TG-2026 | P5-R14 | CANDIDATE |

## Polls, events and participation — P5-R15

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-EVENTS-001 | Single and multiple-choice polls | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-002 | Anonymous vs auditable poll policy | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-003 | Poll close deadline and edit controls | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-004 | Poll results with visibility safeguards | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-005 | Poll option media and contextual links | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-006 | In-Room event creation with timezone | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-007 | Event RSVP and attendee privacy policy | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-008 | Event reminders and schedule changes | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-009 | Cancel/reschedule event with bounded notices | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-010 | Event discussion and pinned event entry | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-011 | Calendar-like Room event discovery without root tab | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-012 | Checklist/task post for collaborative use | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |
| UR-EVENTS-013 | Scheduled/recurring announcement policy with abuse caps | WA-G / WA-C / TG-G | P5-R15 | CANDIDATE |

## Trust, moderation and anti-spam — P5-R16

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-MOD-001 | Report a Room and specific post/message | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-002 | Moderator triage of held/reported content | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-003 | Remove/restore content with reason and audit | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-004 | Temporary member posting restrictions | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-005 | Ban/unban and immediately revoke access | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-006 | Slow mode, flood controls, posting quotas | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-007 | Link/attachment restrictions per role | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-008 | Approve new members and first posts | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-009 | Blocked-account interaction enforcement | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-010 | Role and ownership escalation defense | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-011 | Room rules and join acknowledgement | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-012 | Moderation appeal queue and status | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-013 | Creator-admin and platform-admin separation | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-014 | History of moderation and policy changes | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-015 | Bot/agent anti-spam guard and report escalation | WA-G / TG-G | P5-R16 | CANDIDATE |
| UR-MOD-016 | Safety/abuse privacy-safe aggregate insights | WA-G / TG-G | P5-R16 | CANDIDATE |

## History, media and privacy — P5-R17

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-PRIVACY-001 | Public broadcast follower identity not publicly enumerable | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-002 | Private member list only to eligible principals | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-003 | Pre-join history scope configurable by owner | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-004 | Historical post visibility pinned to original audience | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-005 | Revocation blocks search/list/attachment signed URLs | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-006 | No phone/email leakage via Room profile/invitations | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-007 | Reaction and poll vote privacy by author policy | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-008 | Restricted forwarding/saving for sensitive content | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-009 | Delete/export Room data with retained financial audit | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-010 | Room media sharing expires and reauthorizes after removal | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-011 | Account/tenant switch clears cached Room data | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-012 | Device offline drafts never bypass later role changes | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-013 | No unsupported end-to-end encryption claim | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-014 | Clear disclosure of server-readable AI/moderated content | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |
| UR-PRIVACY-015 | Unauthorized deep links reveal no membership or content | WA-C / WA-G / TG-G | P5-R17 | CANDIDATE |

## Masana assistants and creator controls — P5-R18

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-AI-001 | Add/remove approved Masana to one Room | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-002 | Visible AI participant disclosure and role | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-003 | Default Masana replies on explicit mention | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-004 | Per-topic Masana activation boundaries | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-005 | Scoped Room-only memory/context compilation | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-006 | No implicit imports of private human chats | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-007 | No imports of unrelated Masana personal memories | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-008 | Optional owner-approved scheduled Masana update | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-009 | Optional private ephemeral Masana reply to single member | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-010 | AI moderation suggestion never overrides human permission gate | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-011 | AI spam/abuse triage with auditable review | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-012 | No agent response loop or duplicate job | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-013 | Masana spend/payment always explicit user authorized | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-014 | Per-Room Masana costs, rate caps and quiet hours | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-015 | Deactivate immediately after owner revokes role | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-016 | Creator instructions and non-negotiable safety guard | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |
| UR-AI-017 | Clear AI errors, rate limits and offline fallback | TG-B / WA-AI / MSNW | P5-R18 | CANDIDATE |

## Voice stage, sessions and recordings — P5-R19

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-LIVE-001 | Scheduled Room voice session with start time | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-002 | Host, cohost, speaker and listener capability roles | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-003 | Raise hand and moderated promotion to speaker | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-004 | Mute, speaker eject and session moderation | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-005 | Speaker/listener invite links authorized at join | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-006 | Real WebRTC/LiveKit connection and device audio routes | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-007 | Background foreground and reconnect controls | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-008 | Session end/disconnect cleanup | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-009 | Recording only after active participant disclosure/consent | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-010 | Live reactions/comments as separate non-speech stream | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-011 | Replay with timebounded media authorization | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-012 | Room voice participation with available Masana host | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-013 | Optional video stage and screen share with provider gate | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |
| UR-LIVE-014 | Actual capacity/readiness verification no unlimited claim | TG-G / TG-C / WA-G | P5-R19 | CANDIDATE |

## Creator insights and community growth — P5-R20

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-GROWTH-001 | Creator-facing follow/join trend | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-002 | Aggregate announcement reach/views/reactions | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-003 | Privacy-respecting poll/engagement statistics | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-004 | Join source statistics without token disclosure | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-005 | Member growth/moderation health overview | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-006 | Discovery category and recommendation controls | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-007 | Room link and slug analytics | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-008 | Public creator Room list limited by visibility | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-009 | Public profile cross-link to Room | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-010 | Optional creator-to-subscriber direct message request | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-011 | Creator notification/newsletter with frequency caps | WA-C / TG-C | P5-R20 | CANDIDATE |
| UR-GROWTH-012 | Suggested post and contribution review workflow | WA-C / TG-C | P5-R20 | CANDIDATE |

## Verified monetization without merchant/card products — P5-R21

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-ENTITLEMENT-001 | Preserve already existing professional paid Room subscriptions | TG-C / MSNW | P5-R21 | CANDIDATE |
| UR-ENTITLEMENT-002 | Server verified Play entitlement and expiry enforcement | TG-C / MSNW | P5-R21 | CANDIDATE |
| UR-ENTITLEMENT-003 | No fictitious charge for Room creation/advanced settings | TG-C / MSNW | P5-R21 | CANDIDATE |
| UR-ENTITLEMENT-004 | Clear price and billing disclosure for qualified subscription | TG-C / MSNW | P5-R21 | CANDIDATE |
| UR-ENTITLEMENT-005 | Room view/post access separately checks paid entitlement | TG-C / MSNW | P5-R21 | CANDIDATE |
| UR-ENTITLEMENT-006 | Subscription cancellation and restoration histories | TG-C / MSNW | P5-R21 | CANDIDATE |
| UR-ENTITLEMENT-007 | Legacy lesson and subscription receipts not rewritten | TG-C / MSNW | P5-R21 | CANDIDATE |
| UR-ENTITLEMENT-008 | Optional tips/support limited to separately authorized MSNW capability | TG-C / MSNW | P5-R21 | CANDIDATE |
| UR-ENTITLEMENT-009 | No merchant storefront POS or business onboarding | TG-C / MSNW | P5-R21 | CANDIDATE |
| UR-ENTITLEMENT-010 | No card issuing, card funding or card transaction management | TG-C / MSNW | P5-R21 | CANDIDATE |

## Device, notifications, continuity and recovery — P5-R22

| ID | Candidate capability to adapt in one Room | Inspiration | Milestone | Audit status |
|---|---|---|---|---|
| UR-STORAGE-001 | Room chat and update push delivered once by outbox | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-002 | Per-topic and per-mention push preference | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-003 | Mute/snooze/quiet-hours controls | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-004 | Offline Room read cache respects permissions | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-005 | Compose draft survive back and app restart | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-006 | Bounded replay-safe send after connectivity resumes | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-007 | Typed cursor pagination and no duplicates | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-008 | Large audience asynchronous notification fanout | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-009 | Cross-device read/mention/unread sync | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-010 | Server-authoritative revoked push handling | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-011 | All Room links route through canonical dispatcher | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-012 | Real PostgreSQL restore preserving room IDs/history | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-013 | Migration compatibility with old Room clients | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-014 | Media/object storage rollback and lifecycle limits | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |
| UR-STORAGE-015 | Small-screen/large-font/RTL/screenreader states | TG-G / WA-G / MSNW | P5-R22 | CANDIDATE |

## Completion and source tracking

**Candidate rows:** 204. This is an actionable first census, not a claim that the complete WhatsApp/Telegram source parity audit is finished. Each candidate receives an owner and precise test in the implementation PR, and any externally gated feature remains visibly pending. The reference file WHATSAPP-COMPONENTS-INDEX.md supports discovery only; static manifest names do not prove full features. Use the approved version-pinned WhatsApp v2.26.40.72 reference, plus dated Telegram official help/blog evidence. Room identity, paid obligations and privacy must survive every conversion.

Source anchors: [WhatsApp Communities](https://faq.whatsapp.com/495856382464992), [WhatsApp community announcement admins](https://faq.whatsapp.com/742237357891080), [WhatsApp Channels](https://faq.whatsapp.com/265055289421317), [Telegram FAQ](https://telegram.org/faq), [Telegram topics](https://telegram.org/blog/topics-in-groups-collectible-usernames), [Telegram superchannels](https://telegram.org/blog/superchannels-star-reactions-subscriptions), [Telegram Communities 2026](https://telegram.org/blog/communities-editor-invisible-messages), [Telegram welcome messages 2026](https://telegram.org/blog/welcome-messages-buttons-TG-13), [Telegram direct messages](https://telegram.org/blog/direct-to-channel-trim-voice-and-more), [Telegram slow mode](https://telegram.org/blog/silent-messages-slow-mode), [Telegram live voice](https://telegram.org/blog/voice-chats-on-steroids), [Masanawa reference index](../whatsapp-decompiled/WHATSAPP-COMPONENTS-INDEX.md).
