# Chats — exhaustive screen, interaction, privacy and acceptance contract

**Audit:** 22 October 2026; source baseline `15be4fa807893ae0a8edb6fc4c9d368a9f5293c8`. **Status:** target specification and bounded source audit, NOT proof of deployed/working features. One existing roadmap governs completion: Phase 4 P4-02–P4-09/P4-A01–A04 and Phase 8 P8-U01/U02/X01–X06. `SCREEN-JOURNEYS.md` remains the application navigation authority. All feature IDs below are children of those tasks, not duplicate roadmap checkboxes.

**Provenance:** reviewed `apps/mobile/lib/src/screens/chat/{unified_chat_inbox,chat_list_screen,ai_chat_screen,human_contacts_list,masana_list_screen}.dart`, `src/chat/{message_parts,message_parts_view,chat_text_editing,shell_*}.dart`, `core/{voice_note_recorder,mobile_push,shell_deep_link}.dart` and Gateway `human_communication/index.ts`, `modules/masana_chat/`, `private_chat_media*`. Sources and tests are not real-phone/backend/provider acceptance. **S** existing source, **P** partial, **N** not established/missing, **Q** external/device/security verification, **C** conditional later, **X** deliberately excluded. Compound S/P and P/Q do not imply completion.

**Competitor inspiration, not copied code:** Telegram Android 2026 compact navigation, message actions and media drilldowns, voice trimming and streaming bot responses; WhatsApp familiar inbox filtering, readable bubble composition and message privacy. Decoded Telegram and WhatsApp resources/manifests do NOT establish executable proprietary transports or reviewed E2EE. Borrow patterns, not trademarks/art, unsafe features or fictional capabilities.

**Non-negotiable:** Five roots remain Chats · Status · Wallet · Calls · Rooms; Chats default. Contacts tabs Masana/Humans. No separate human identity product. Human-human messages and attachments never enter Masana AI context; AI conversations are separately addressed and clearly disclosed. No E2EE assertion without independently reviewed keys/crypto. No owner-rejected global miniature Masana “working/failed” banner. Chat Pay always opens human-authorized Wallet confirmation, never authorizes payment from a message or agent.

## Screen inventory: exact hierarchy, controls, navigation and exceptions

Shared design: compact avatar/name/preview/time/unread rows; responsive action sheet on long press; accessible 48dp targets. A conversation has identity+Call header, date-grouped bubbles and attachment/voice/text composer. Back closes selection, tray and keyboard before returning to the remembered inbox filter/scroll. Signed-out, empty, loading, stale/offline, error, blocked, permission-denied and account-switched states are required **on each surface**; one dark/light semantic token system, RTL and 320dp at 200% text.

| ID / source state | Top-to-bottom screen, controls and exit | Navigation and exceptional user journey |
|---|---|---|
| **CH00 S/P** Chat inbox | title, search, All/People/Masana/Unread/Archived, request entry, rows, New chat | return to last scroll/filter; signed out, saved-offline, stale, empty, failed refresh |
| **CH01 S/P** Search overlay | text box, clear/cancel, grouped authorized people/agent/thread/content results | search debounced, query too short, server unavailable; back restores original list |
| **CH02 S/P** Inbox row menu | long-press/swipe actions Pin, Mute, Archive, Mark unread, Delete | confirm destructive; failed action rolls back, no fake success |
| **CH03 S/P** Archive view | archived rows/search/unarchive; no new root tab | return to same inbox selection and saved search, no removed history |
| **CH04 P** Message requests | unknown sender preview and Accept/Decline/Block/Report | no PII reveal or unrestricted attachments before consent, denied/offline/expired |
| **CH05 S/P** New chat selector | Masana/Humans tabs, search, avatars, published identity, create when eligible | each tab retains query/scroll; no system address-book permission requirement |
| **CH06 S/P** Human contacts | following/known peers, handle lookup, compact contact rows and verified profile | self excluded, blocked/inactive absent, no phone/email, no-result/Retry |
| **CH07 S/P** Masana directory | AI-marked cards, creator/identity, avatar, supported call/voice modes | unavailable agent, restricted profile, retry/empty, creation eligibility |
| **CH08 S/P** Human conversation | peer identity/call, dated bubbles, statuses, composer, attachment/media | opaque pair ID/participant checks; draft/offline, blocked, missing peer |
| **CH09 S/P** Masana conversation | AI label, natural persona, stream reply and contextual task state, voice/call | partial/failed provider reply, playback fallback, recover without global banner |
| **CH10 P** Human/creator profile | identity/photo/handle/bio, Message/Call/Follow, shared media/public Masana/Rooms | owner Edit vs visitor actions; block/private/permission revoke |
| **CH11 P** Masana profile | image, honest AI/creator identity, backstory/personality, Message/Voice/Report | suspended/not-available voice and safe back to thread |
| **CH12 P** Message action sheet | Reply/React/Copy/Forward/Edit/Delete/Info/Report as permitted | private/author restrictions, safe cancel, deleted original fallback |
| **CH13 P** Reply/edit composer | source quote, dismiss, multiline text, send/update controls | source deleted, edit-window expiry, offline/rejected submission |
| **CH14 S/P** Attachment tray | Camera/Gallery/Video/File/Audio/Contact/Location/Poll/Pay as eligible | choose picker only after tap, OS permission denial/too-large/unsupported |
| **CH15 P** Media compose | preview, caption, progress, cancel/reorder and Send | unknown upload same original request; preview rights and safe discard |
| **CH16 P** Media viewer | image/video/file/audio details, sharing only if rights, source jump | media expired/forbidden/unsupported codec, stale cached copy |
| **CH17 S/P** Voice recorder | mic gesture, waveform/time, lock/cancel, preview, send | call conflicts, permission, ownership after sent transport, reconnect |
| **CH18 P** Voice playback | play/pause/seek/speed, waveform, duration, optional transcript | corrupt/missing audio, audio focus, text fallback, lower data |
| **CH19 N/P** In-chat search | query, previous/next result, highlighted source, jump into history | deleted/blocked hits, offline saved-only, cursor/anchor restoration |
| **CH20 N/P** Shared media/files/links | profile-scoped tab galleries, date groups, open original | empty by type, access revoked, link safety and privacy |
| **CH21 P** Per-thread notifications | mute, sound, preview privacy, mention and quiet-hour scope where supported | OS notification disabled, signed-out lockscreen privacy |
| **CH22 P** Chat information/safety | peer/profile, members only if applicable, block/report/delete/export | server retention versus local clear, audit, inaccessible peer |
| **CH23 S/P** In-chat Wallet Pay | recognized eligible account/QR/request, Wallet review and return | no model/chat auto-debit; quote/method unavailable, auth revoked |
| **CH24 S/P** Agent mode/settings | chat/study/teach/café/live voice variants, consent and ability disclosure | voice/provider outage, restricted modes, persona preservation |
| **CH25 P** Export/privacy | scoped archive options, authorized media and conversation transcript | consent, secure file target, denied storage, sensitive redaction |
| **CH26 N/P** Per-message info | sent/accepted/delivered/read timestamps where server knows | push is not proof read, spoofed ticks, duplicate/late events |
| **CH27 P** Safety center | blocked people, reporter evidence status, appeal/visibility settings | nonparticipant/tenant blocked, false positive and safe unblocking |

## Individual requirements: 120+ atomic acceptance items

Every row is a testable user outcome and is **open** until the parent task has exact-SHA, client/server tests and physical-device proof where relevant. Labels S/P are bounded observations of code, not claims that a particular gesture works on a user's APK.

### CI Inbox and discovery
| ID | State | Small feature to verify |
|---|---|---|
| CI-01 | S | Chats defaults after login, not new standalone home root. |
| CI-02 | S/P | One mixed authorized inbox differentiates human and Masana visually. |
| CI-03 | S | All/People/Masana/Unread/Archived filters behave separately. |
| CI-04 | P | Filter/search/scroll state retained on bottom-nav switching. |
| CI-05 | P | Unread count/badge reconciled to server and route read receipts. |
| CI-06 | P | Draft preview distinguishes unsent text from last received message. |
| CI-07 | P | Message timestamp and sent/delivered failure indication are honest. |
| CI-08 | S/P | Pin/unpin with stable sorting and rollback after failed write. |
| CI-09 | S/P | Mute/unmute with status label and persisted preferences. |
| CI-10 | S/P | Archive/unarchive without deleting conversation/history. |
| CI-11 | P | Delete locally versus all-device conversation removal clearly stated. |
| CI-12 | P | Swipe/hold controls have alternative accessible overflow buttons. |
| CI-13 | S/P | Search debounce/cancel with grouped identity-safe results. |
| CI-14 | P | Saved-offline search marked stale, not full live server corpus. |
| CI-15 | P | Message requests Accept/Decline/Block with privacy boundary. |
| CI-16 | S/P | New chat switches Masana/Humans without losing each query. |
| CI-17 | S | Human handle search includes stable cursor, excludes self/block. |
| CI-18 | P | Contacts never require covert address-book upload. |
| CI-19 | P | Agent directory cards identify actual published personas and creator. |
| CI-20 | P | Error/retry/signed out/no data/rate limited states for each list. |
| CI-21 | P | Search/list requests fenced on account switch and logout. |
| CI-22 | P | RTL/320dp/200%/TalkBack avatar, unread and actionable row labels. |
| CI-23 | X | No global Masana working/error mini-banner (explicit owner decision). |

### CM Human messages and composer
| ID | State | Small feature to verify |
|---|---|---|
| CM-01 | S/P | Opaque thread ID bound to exactly authorized participant pair. |
| CM-02 | P | Date separators and related bubble grouping, correct speaker. |
| CM-03 | S/P | Draft editing preserves text/cursor/multiline and keyboard action. |
| CM-04 | P | Empty/oversize/invalid-content validation without losing draft. |
| CM-05 | P | Client original message ID matches server accepted ID, no double bubble. |
| CM-06 | P | Outcome-unknown retry queries same request key across process death. |
| CM-07 | N/P | Server-scoped sent/delivered/read/failed info; push ≠ read. |
| CM-08 | P | Hold Reply/Copy/React/Forward/Edit/Delete/Info/Report by permissions. |
| CM-09 | P | Reply quote jumps to authorized source or unavailable placeholder. |
| CM-10 | P | Edit own within server-authorized interval, tagged “edited”. |
| CM-11 | P | Delete for self/everyone only under proper author/time rights. |
| CM-12 | P | Reaction toggles own state and server count, not optimistic permanent. |
| CM-13 | P | Forward preserves trusted provenance and media forwarding rights. |
| CM-14 | P | Long list retains chronological anchor/unread jump during pagination. |
| CM-15 | N/P | Pinned message strip with correct admin/participant pin access. |
| CM-16 | C | Disappearing content only after retention/abuse/legal contract. |
| CM-17 | P | Block/restriction revokes ability to send to human and call. |
| CM-18 | P | Message timestamp, locale, edited date and status accessibility. |
| CM-19 | P | Private human messages cannot become model context or creator training. |
| CM-20 | P | Link handling sanitizes HTML/markdown and warns on suspicious URLs. |
| CM-21 | P | Cursor pagination/reorder doesn't duplicate or lose messages. |
| CM-22 | P | Offline draft encrypted/account-scoped; no unauthorized send queue. |
| CM-23 | P | Report/appeal includes only authorized message excerpt. |
| CM-24 | P | Wrong-user/deleted-thread deep link denies access without crash. |
| CM-25 | P | Multiple sends on weak data retain separate durable IDs. |
| CM-26 | N/P | Presence/typing only when server has real time-limited evidence. |
| CM-27 | N/P | Link preview dismiss/reload obeys privacy and URL fetch policy. |
| CM-28 | X | No unsupported claim of end-to-end encryption. |

### CA Attachments, voice, playback, safety
| ID | State | Small feature to verify |
|---|---|---|
| CA-01 | S/P | Tray offers only implemented file/image/video/audio/location/poll/contact. |
| CA-02 | P | File extension, real container/MIME, magic bytes and size validated. |
| CA-03 | P | Camera/gallery/location permission at explicit time of use. |
| CA-04 | P | Image preview/caption/cancel and no phantom uploaded attachment. |
| CA-05 | P | Video preview/duration/data size plus codec fallbacks. |
| CA-06 | P | File open/download uses appropriate platform, expiry/ACL. |
| CA-07 | P | Attachment sender/recipient authorization repeated on every read. |
| CA-08 | P | Expiring signed media URL cannot be leaked in push/logs. |
| CA-09 | P | Progress/cancel and same-ID uncertain upload recovery. |
| CA-10 | P | Retain local upload source only until server confirms durable media. |
| CA-11 | S/P | Voice mic gesture, time/wave envelope, lock/cancel and preview. |
| CA-12 | P | Voice note versus incoming/live call audio focus arbitration. |
| CA-13 | S/P | Recorder file ownership resets on next note without deleting sent file. |
| CA-14 | P | Failure to record/save due permission/storage exposes retry. |
| CA-15 | P | Voice playback progress/seek/speed/speaker and optional transcript. |
| CA-16 | Q | Handset mic→Gateway→reply→playback verified with real providers. |
| CA-17 | P | Audio failure leaves accessible response text and in-thread recovery. |
| CA-18 | P | Download interruption/retry never changes private media permissions. |
| CA-19 | N/P | Shared Media/Files/Links galleries with authorization and date grouping. |
| CA-20 | P | Conversation export includes correct container/MIME and permitted scope. |
| CA-21 | N/P | Forward/share protection honestly indicates OS screenshot limitations. |
| CA-22 | P | Report media includes server attachment identity and authorized reviewer. |
| CA-23 | P | Poll, location and contact require distinct consent/correct typed payload. |
| CA-24 | X | No silent microphone, background location or contact scraping. |

### CG Masana structured responses and natural conversation
| ID | State | Small feature to verify |
|---|---|---|
| CG-01 | S/P | Explicit AI label and published creator identity. |
| CG-02 | P | Same published backstory/personality/temperament in text/notes/calls. |
| CG-03 | P | Profession is skill when relevant; natural friendship not scripted domain. |
| CG-04 | P | Stream partial reply separately from durable final/retry state. |
| CG-05 | P | Working/progress/error appears only inside relevant thread. |
| CG-06 | X | No floating task banner across Chats/Rooms/Wallet/navigation. |
| CG-07 | P | Return to same thread restores status without repeating consequential tool. |
| CG-08 | P | Provider timeout leaves sent user message and recoverable original turn. |
| CG-09 | P | Generated content marked agent output and authorized before external share. |
| CG-10 | S/P | Chat, Teach, Study, Café, LiveTalk, Voice modes preserve identity. |
| CG-11 | P | Explicit tool/permission and memory boundary if persistent context enabled. |
| CG-12 | P | Model cannot authorize payment, join Room or alter user privacy. |
| CG-13 | P | Available voice catalog provider/consent not claimed as cloning. |
| CG-14 | P | Voice reply text remains readable when audio fails. |
| CG-15 | Q | Real phone confirms reply recording/streamed agent output completeness. |
| CG-16 | N/P | Structured cards/code/docs accessible, copy/share without leakage. |
| CG-17 | P | Cancel/retry reports actual backend state, never fake task success. |
| CG-18 | P | Chat export excludes hidden provider prompts/other user data. |
| CG-19 | N/P | Only genuine source citations shown; link safe and optional. |
| CG-20 | P | Pay flow opens Wallet review and uses human authorization. |
| CG-21 | P | Creator revision/paused restrictions apply to new turns and calls. |
| CG-22 | Q | Saved memory and deletion/revocation proven across sessions/providers. |

### CP Profile, privacy, notifications, lifecycle and acceptance
| ID | State | Small feature to verify |
|---|---|---|
| CP-01 | P | Public human identity/bio/handle shared across Chats, Calls and Rooms. |
| CP-02 | P | Owner Edit versus visitor Message/Call/Follow clear. |
| CP-03 | P | Public Masana/Rooms/media sections conditional on viewing rights. |
| CP-04 | P | Block/mute/report applies to messaging/contact/calls consistently. |
| CP-05 | P | Unknown sender request and rate limits protect cold-start spam. |
| CP-06 | N/P | Presence and last-seen settings private unless backend policy exists. |
| CP-07 | P | OS/lockscreen message previews redact private contact/media details. |
| CP-08 | P | Push deep link requires signed-in correct account and participant. |
| CP-09 | P | Stale/double push can't restore deleted or blocked private chat. |
| CP-10 | P | Mute/quiet hours suppress presentation not durable message event. |
| CP-11 | P | Export/delete data respects record retention and peer rights. |
| CP-12 | Q | Offline/process death/device restore, private caches are retested. |
| CP-13 | P | Android back, TalkBack, RTL, 320dp at 200% text, keyboard. |
| CP-14 | P | Failed backend shows scoped Retry not endless global spinner. |
| CP-15 | P | Session revocation blocks both API and cached secure views. |
| CP-16 | N/P | Harassment/report action and appeal have review audit trail. |
| CP-17 | N/P | Emoji picker/selection works with switch input and screenreader. |
| CP-18 | P | Receipt/request share redacts IDs, phones, secrets and balances. |

**24 October 2026 — blocked-list and report admission partial (CP-04/16, P4-10):** The current `GET /v1/human/privacy/blocked` path retains `items` but now takes optional `query` (literal handle/display-name match, <=80 characters) and `after` (a currently blocked handle of this signed-in viewer) and returns at most 50 sorted entries plus `nextCursor`. Invalid, unowned or out-of-search cursors fail closed instead of leaking contacts or silently skipping pages; neither wildcard characters nor another account's cursor grant access. The `PUT` change endpoint remains authorized to the viewer only; other methods do not mutate. The separately merged report-receipt source already requires POST and rejects self-reports; focused regression assertions preserve those checks. Flutter Communication privacy now provides Search/Clear, Load more, retry on page failure, empty/no-match and account/session fencing while preserving My message reports. Real Android/offline/device qualification remains OPEN; do not claim the 177-screen/820-item inventory completed from widget/source tests.

## Canonical code/API and journey acceptance

`services/gateway/src/human_communication/index.ts` exposes `/v1/human/*` and owns identity/participant permissions, pair conversations, human call integration, idempotency and push events. Masana conversation UI source `ai_chat_screen.dart` is large and multipurpose; future screen decomposition must preserve typed `message_parts.dart`, agent transport, secure storage, streaming and cost/authorization rules, not create another chat engine. Private media routes under `private_chat_media*` and call routes have independently enforced ACL. Keep shell deep links and mobile push epoch/account guarded. **A file/class is not evidence a feature is reachable after the 2026 Rooms reset.**

**Twelve golden journeys:** login→All/People/Masana/Unread→return retained list; human handle search→profile→Message→Call→return; Masana listing→greeting/text stream→saved final; draft→navigate away→resume→send once; voice record→reply→text fallback on audio failure; photo/document upload→authorized recipient preview; reply/edit/react/delete/report roles; unsolicited request→Accept/Block; human Pay request→Wallet distinct step-up→thread receipt; offline search→reconnect; notification→signed-in exact thread; authorized export→revoke access→media denied.

**Adversarial journeys:** two-account stale search response; unauthorized user GET/POST; two-device duplicate message send; forged edit/delete; block while send in flight; attachment link forwarded to outsider; wrong MIME/oversized upload; microphone revoked midnote; app background before voice final; screenshot as false paid claim; human chat inserted into Masana context; stale deep link after logout; push after deletion; read/delivery event ordering; low-data retry; storage full; malicious QR; 320dp/200%/RTL/TalkBack; changed permissions after exporting; compromised notification lockscreen. Source tests versus deployed E2E must be labelled separately.

**Execution waves:** P4-02/05/06 inbox/contacts/human messages; P4-07 and P8-U01 actions/replies/media/offline; P4-A01/A03 and P8-U02 agent voice, contextual errors and handset trace; P4-04/09/P8-X identity/privacy/push/calls linkage; P8-APK real-device and deployment acceptance. One integrator owns shared router, message/API and storage, parallel workers own exact widgets/tests; PRs SHA-specific. No APK on documentation-only request.

**Research evidence:** [Telegram 2026 Android redesign](https://telegram.org/blog/crafting-android-design-and-more/id?setln=en), [Telegram history of voice/actions and bot streaming](https://telegram.org/evolution), [Telegram 2026 ephemeral bot responses](https://telegram.org/blog/communities-editor-invisible-messages?setln=en), and [WhatsApp groups/contextual messaging](https://faq.whatsapp.com/495856382464992). No imported art, platform E2EE equivalence, provider SLA or proprietary source copied.

## 23 October 2026 — server-qualified paged human Chats inbox (partial)

The existing authorized Human Chats list now runs its public/active-peer, two-way blocking, profile-moderation and viewer-hidden conditions within the SQL result filter **before** selecting a maximum of 51 entries. Peer name/handle search uses literal substring predicates across the complete authorized collection, rather than an in-memory scan of already projected first-page rows; SQL applies recipient-only message-request filtering consistently. Full PostgreSQL `updated_at::text` preserves microseconds for `(updated_at,id)` cursor ties, and cross-account anchors are rejected by the participant lookup. PGlite **22/22 PASS** with 72 same-timestamp inbox rows (64 visible on two pages), literal search, request-only views and forbidden foreign cursor; an 80-row real PostgreSQL regression is authored and pending hosted CI. Partial CI-13/15/17/21 and P4-02/05 only: mixed Flutter inbox, search restoration, native notifications, offline/privacy-revoke behavior, handset accessibility and Phase 8 are not certified. No artificial E2EE claim, avatar-URL matching, new transport, money/provider action or APK.

## 23 October 2026 — lossless human messages cursor and deleted-term privacy (partial)

Authorized in-thread human message history now binds the original `before` keyset to an exact PostgreSQL `created_at::text` timestamp and ID so microsecond-tied older messages remain reachable across pages. Literal message search excludes `deleted` rows regardless of their retained internal original text; without a query, the same rows remain tombstones so chronology is honest. No new retention policy, edit/delete authority or cross-thread visibility. PGlite **23/23 PASS**, including 80 tied rows with 72 searchable/8 deleted and two complete pages; a real PostgreSQL 90-row/80-visible case is authored for hosted CI. Partial CM-14/19/21 and P4-05/07 only. Offline/client highlight/navigation, restored search position, handset privacy/accessibility, read-status/provider integrity and Phase 8 parent gates remain open; no APK.
