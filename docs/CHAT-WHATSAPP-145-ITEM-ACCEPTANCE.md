# Chats second-pass audit: full 145-item acceptance register

All entries are from the owner's 31 October 2026 audit. Source changes are **not** equivalent to accepted runtime behavior. Even an entry marked *source addressed* remains open until the named checks are demonstrated on the exact PR head. The three historical refinements counted in the owner's 148-item total are tracked separately from SP-001–SP-145.

**31 October source follow-up:** The working PR now contains first-party 320/360/390dp light/dark/RTL/200% text visual-matrix tests, an opt-in screenshot capture workflow, gallery per-item failure explanations, AI-only attachment review, reaction customization, and compact source fixes. These statuses describe source implementation only. **A green CI result is not screenshot parity, real-device acceptance, or cross-device verification.** SP-079 remains deliberately excluded because unsupported stickers/GIFs would violate the AI-only transport scope. SP-111 and SP-136 remain P0 acceptance gates. PR #612 stays draft and unmerged until the full audit acceptance requirements are met.

Status legend: **Source addressed; acceptance unverified** = implementation or partial UI repair exists on the branch, not verified as complete; **Open** = more work remains; **Requires evidence** = device, provider, benchmark or screenshot verification is indispensable; **Blocked** = the references or tooling required for signed-off parity have not been supplied.

| Finding | Priority | Current acceptance status | Remaining required result |
| --- | --- | --- | --- |
| SP-001 | P1 | Source addressed; acceptance unverified | Keep one prominent new-Masana action and use the freed header slot for search or overflow. |
| SP-002 | P1 | Source addressed; acceptance unverified | Use a single-person/AI-conversation glyph, not a groups affordance. |
| SP-003 | P1 | Source addressed; acceptance unverified | Use a full-size archived list route with back/navigation, search, scroll and persistent context. |
| SP-004 | P2 | Source addressed; acceptance unverified | Adopt a consistent chronological activity policy plus pinned behavior for archives. |
| SP-005 | P1 | Source addressed; acceptance unverified | Expose the archive via a consistent inbox entry/overflow, and distinguish an empty archive. |
| SP-006 | P1 | Source addressed; acceptance unverified | Avoid a header shortcut that leads to an empty-looking sheet for inaccessible/renamed Masana; show recoverable safe labels. |
| SP-007 | P1 | Source addressed; acceptance unverified | Use one honest, comprehensive message-state pictogram system for saved conversations. |
| SP-008 | P2 | Source addressed; acceptance unverified | Render a restrained colored Draft prefix and normal preview body; match handling for text/voice/photo drafts. |
| SP-009 | P1 | Source addressed; acceptance unverified | Create an explicit preview hierarchy for text, media, status, failures, and rich agent output. |
| SP-010 | P1 | Source addressed; acceptance unverified | Provide separate compact pin and unread slots or move pin into an overflow menu. |
| SP-011 | P2 | Source addressed; acceptance unverified | Unify preview/icon/receipt/unread semantics across cached and server-only identities. |
| SP-012 | P1 | Source addressed; acceptance unverified | Create adaptive two-line/time-below layout at 320dp and 200% text; verify screenshots. |
| SP-013 | P2 | Source addressed; acceptance unverified | Calibrate original, indented dividers against the selected WhatsApp reference. |
| SP-014 | P2 | Source addressed; acceptance unverified | Rebalance pin/title/time/unread placement and test long translated names. |
| SP-015 | P1 | Source addressed; acceptance unverified | Size the trailing column by locale and available width; never truncate the only chronology label. |
| SP-016 | P2 | Source addressed; acceptance unverified | Create a deliberate title/actions hierarchy, retaining canonical Wallet access in overflow if necessary. |
| SP-017 | P0 | Source addressed; acceptance unverified | Add a paged authorized canonical conversation inbox sync (not only search) with local-first rendering. |
| SP-018 | P0 | Source addressed; acceptance unverified | Refresh canonical conversation list and read/unread/pins while preserving local drafts and queues. |
| SP-019 | P0 | Source addressed; acceptance unverified | Specify canonical server state for each eligible preference, reconcile revisions, preserve offline pending UI. |
| SP-020 | P1 | Source addressed; acceptance unverified | Provide an Archived search mode so hidden conversations can be located and restored without leaking into active results. |
| SP-021 | P1 | Source addressed; acceptance unverified | Offer scoped, authorized row actions with honest disabled states for unsupported remote operations. |
| SP-022 | P1 | Source addressed; acceptance unverified | Disable during CAS, show saving/error/updated feedback, and safely resolve revision conflicts. |
| SP-023 | P1 | Source addressed; acceptance unverified | Exercise pin revision races across query/reset/pagination; retain accepted authoritative status. |
| SP-024 | P1 | Source addressed; acceptance unverified | Separate device-only labels from persisted server edits/reactions, or implement authorized server versioning. |
| SP-025 | P0 | Source addressed; acceptance unverified | Label "Delete on this device" and retain immutable remote truth, or add a qualified server delete API. |
| SP-026 | P1 | Source addressed; acceptance unverified | Add cursor-backed older history pagination with stable scroll anchor and server-authorized ownership. |
| SP-027 | P1 | Source addressed; acceptance unverified | Normalize read acknowledgments and retry/refresh semantics for both local and remote threads. |
| SP-028 | P1 | Source addressed; acceptance unverified | Remove synthetic message insertion; show persona introduction only as a UI disclosure. |
| SP-029 | P2 | Source addressed; acceptance unverified | Offer compact search access without displacing Call/Wallet or full-width title; measure target reference. |
| SP-030 | P1 | Source addressed; acceptance unverified | Ensure every persona has a concise but visible AI identity cue without implying a human last-seen. |
| SP-031 | P2 | Source addressed; acceptance unverified | Add explicit screen-reader name/action and an appropriately sized tap zone. |
| SP-032 | P2 | Source addressed; acceptance unverified | Switch to a selection-specific action bar with a clear cancel affordance. |
| SP-033 | P1 | Source addressed; acceptance unverified | Retain a compact non-message AI disclosure from the profile/header while avoiding intrusive repeated banners. |
| SP-034 | P1 | Source addressed; acceptance unverified | Compress auxiliary modes into lightweight, dismissible prompt affordances where supported. |
| SP-035 | P1 | Requires device, screenshot or integration evidence | Restore by visible message ID and fractional offset; stabilize when images/voice resolve. |
| SP-036 | P1 | Requires device, screenshot or integration evidence | Add scroll-anchor tests during streaming, rapid send, input focus, media appearance and orientation changes. |
| SP-037 | P2 | Source addressed; acceptance unverified | Use AlignmentDirectional.centerEnd and PositionedDirectional. |
| SP-038 | P2 | Source addressed; acceptance unverified | Use accessible "N new messages" label and scale counter display appropriately. |
| SP-039 | P2 | Requires device, screenshot or integration evidence | Build an original subtle, adaptive wallpaper pattern with visual golden matrix. |
| SP-040 | P1 | Requires device, screenshot or integration evidence | Add a meaningful "new replies" marker and test preserving reading position. |
| SP-041 | P1 | Source addressed; acceptance unverified | Create original directional clipped/painted nip on first bubble of a group; avoid third-party asset reuse. |
| SP-042 | P1 | Source addressed; acceptance unverified | Group by actual run/sender, day, type and interruption/quotation boundaries; verify first/middle/last geometry. |
| SP-043 | P1 | Source addressed; acceptance unverified | Implement inline trailing timestamp flow with reserved last-line space and overflow fallback. |
| SP-044 | P1 | Source addressed; acceptance unverified | Calibrate grouped metadata policy: retain accessibility time per message without excessive visible repetition. |
| SP-045 | P2 | Source addressed; acceptance unverified | Adopt content-aware maximum width and breakpoints; enforce a desktop/tablet cap. |
| SP-046 | P1 | Source addressed; acceptance unverified | Test inner constraints at 320/360dp and 2x text, then make audio layout truly adaptive. |
| SP-047 | P2 | Source addressed; acceptance unverified | Centralize bubble spacing, nip size, corner radii and max-width tokens. |
| SP-048 | P1 | Source addressed; acceptance unverified | Use non-layout-affecting selection overlay; separate search highlight from selection state. |
| SP-049 | P1 | Source addressed; acceptance unverified | Use BorderDirectional with author name, media symbol and focused reply rendering. |
| SP-050 | P1 | Source addressed; acceptance unverified | Add jump-to-original (or "original unavailable") with safe retained scroll position. |
| SP-051 | P2 | Source addressed; acceptance unverified | Use a compact chat-text renderer for ordinary conversational replies while preserving justified rich AI content. |
| SP-052 | P2 | Source addressed; acceptance unverified | Support responsive selectable code, horizontal scroll for long lines, and compact copy affordance. |
| SP-053 | P2 | Source addressed; acceptance unverified | Apply staged emoji-only sizing by grapheme count and text scaling. |
| SP-054 | P2 | Requires device, screenshot or integration evidence | Measure actual screenshot contrast, blur/opacity, vertical padding and wallpaper interaction. |
| SP-055 | P1 | Source addressed; acceptance unverified | Anchor to a GlobalKey on the visible bubble, with safe-screen edge placement. |
| SP-056 | P1 | Requires device, screenshot or integration evidence | Make a separately tappable semantic reaction strip and test each emoji at screen edges. |
| SP-057 | P1 | Source addressed; acceptance unverified | Open the existing emoji picker in reaction-selection mode after +. |
| SP-058 | P2 | Source addressed; acceptance unverified | Add configurable double-tap reaction if it does not conflict with media zoom or text selection. |
| SP-059 | P1 | Source addressed; acceptance unverified | Make it an accessible, actionable reaction chip with remove/change behavior. |
| SP-060 | P1 | Source addressed; acceptance unverified | Keep single user-owned reaction intentionally for AI chats or adopt a local reaction state with clear replacement semantics. |
| SP-061 | P1 | Source addressed; acceptance unverified | Offer safe confirmation for irreversible deletion, with short undo where local-only. |
| SP-062 | P1 | Source addressed; acceptance unverified | Add a single destructive confirmation and one transactional undo path. |
| SP-063 | P1 | Source addressed; acceptance unverified | Either synchronize edits with server history or clearly label edit as a device-local annotation. |
| SP-064 | P1 | Source addressed; acceptance unverified | Display an edit header with checkmark Save and X Cancel; preserve original draft safely. |
| SP-065 | P1 | Source addressed; acceptance unverified | Keep attachments clearly outside edit mode and prevent accidental mixed-mode action. |
| SP-066 | P1 | Source addressed; acceptance unverified | Use an authorized Masana-only searchable picker and a preview/confirmation for sensitive media. |
| SP-067 | P1 | Source addressed; acceptance unverified | Resolve/download via the existing secure media flow before forwarding or explain why unavailable. |
| SP-068 | P2 | Requires device, screenshot or integration evidence | Use a purpose-built, directional drag affordance with reveal threshold and accessibility alternative. |
| SP-069 | P1 | Source addressed; acceptance unverified | Calibrate fill, stroke, shadow, insets, text baseline and keyboard attachment. |
| SP-070 | P1 | Source addressed; acceptance unverified | Use adaptive trailing icon collapse at small width and preserve 48dp targets. |
| SP-071 | P2 | Requires device, screenshot or integration evidence | Define multiline Enter/send behavior, cursor visibility and gentle expansion. |
| SP-072 | P1 | Source addressed; acceptance unverified | Show a clear blocking inline update state and disable impossible interactions. |
| SP-073 | P1 | Source addressed; acceptance unverified | Debounce/coalesce owner-scoped draft persistence while keeping in-memory text immediate. |
| SP-074 | P1 | Source addressed; acceptance unverified | Provide a bounded send-preview with original photos, reorder/remove, and one clear caption before sending. |
| SP-075 | P1 | Source addressed; acceptance unverified | State the eight-photo limit and total size before confirmation and show per-item rejection. |
| SP-076 | P1 | Source addressed; acceptance unverified | Restrict conversion to supported still photos and preserve original non-JPEG semantics. |
| SP-077 | P2 | Source addressed; acceptance unverified | Add understated icon tiles and a consistent sheet grid using original artwork. |
| SP-078 | P1 | Requires device, screenshot or integration evidence | Test switching hardware keyboard/IME/emoji panel with text selection and large font. |
| SP-079 | Excluded by AI-only transport policy | Do not add unsupported human-chat stickers; optionally enable original local decorative AI-supported content only if transport supports it. |
| SP-080 | P2 | Source addressed; acceptance unverified | Localize placeholder, edit mode and send semantics without breaking Hausa orthography. |
| SP-081 | P1 | Source addressed; acceptance unverified | Add provider-supported pause/resume while preserving file, clock and original request identity. |
| SP-082 | P1 | Source addressed; acceptance unverified | Add accurate preview scrub/seek while guarding uninitialized playback. |
| SP-083 | P1 | Source addressed; acceptance unverified | Design an original one-row recording state with optional secondary status on small phones. |
| SP-084 | P1 | Source addressed; acceptance unverified | Show an unmistakable hands-free lock state, mic live indicator and cancel/review affordances. |
| SP-085 | P2 | Requires device, screenshot or integration evidence | Calibrate drag gestures and affordance animations; retain RTL cancellation behavior. |
| SP-086 | P1 | Source addressed; acceptance unverified | Use responsive wraps and goldens for 320, 360, 390dp, 2x text, RTL and landscape. |
| SP-087 | P1 | Source addressed; acceptance unverified | Use LayoutBuilder width constraints and collapse route/avatar/speed to avoid crowding. |
| SP-088 | P1 | Source addressed; acceptance unverified | Mirror scrubbing and seek semantics in RTL locales while preserving real time values. |
| SP-089 | P1 | Requires device, screenshot or integration evidence | If permitted by product design, keep a single account-scoped audio session and unobtrusive mini-player. |
| SP-090 | P1 | Requires device, screenshot or integration evidence | Remember non-sensitive position per message and allow explicit resume; validate audio focus. |
| SP-091 | P1 | Requires device, screenshot or integration evidence | Retain speed; report actual played/progress state and disable controls when audio is unavailable. |
| SP-092 | P1 | Source addressed; acceptance unverified | Provide collapsed transcript preview, explicit expand/copy, and reasonable height constraints. |
| SP-093 | P1 | Requires device, screenshot or integration evidence | Add handset matrix for Bluetooth, route switch, app background, focus loss and permission revocation. |
| SP-094 | P1 | Source addressed; acceptance unverified | Use decoded image aspect ratio, responsive min/max width, crop-to-preview without distortion. |
| SP-095 | P1 | Source addressed; acceptance unverified | Add WhatsApp-like album geometry for 2–8 media using bounded original thumbnails. |
| SP-096 | P2 | Source addressed; acceptance unverified | Preserve source/caption, add accessible safe action bar for supported local media. |
| SP-097 | P1 | Source addressed; acceptance unverified | Show safe optional preview metadata and a retained placeholder without auto-downloading costly files. |
| SP-098 | P1 | Source addressed; acceptance unverified | Keep error/retry in the tile, with stale-account fencing and clear explanation. |
| SP-099 | P1 | Source addressed; acceptance unverified | Expose the remote-media download prerequisite and a clear share failure/success path. |
| SP-100 | P1 | Source addressed; acceptance unverified | Provide explicit cancel/error/partial-save feedback, without leaking private URLs or paths. |
| SP-101 | P2 | Source addressed; acceptance unverified | Keep video sending disabled but render an intentional historic unavailable-media card. |
| SP-102 | P1 | Requires device, screenshot or integration evidence | Use named retry/find-original states and test cache cleanup, bad media URI, backup restore. |
| SP-103 | P2 | Source addressed; acceptance unverified | Wrap long filenames predictably and use an explicit open/export action only when supported. |
| SP-104 | P0 | Source addressed; acceptance unverified | Normalize all server timestamps to local time before calendar-day and clock formatting; test UTC-to-Lagos midnight crossover. |
| SP-105 | P1 | Source addressed; acceptance unverified | Use locale-aware Today/Yesterday/weekday/date formats and compare exact device reference. |
| SP-106 | P1 | Source addressed; acceptance unverified | Reject/flag malformed timestamps or use explicit unknown chronology with safe fallback. |
| SP-107 | P1 | Source addressed; acceptance unverified | Debounce local full-text search or use indexed/summary matches with bounded work. |
| SP-108 | P1 | Source addressed; acceptance unverified | Show an explicit search-length limit and enable deliberate query shortening. |
| SP-109 | P1 | Source addressed; acceptance unverified | Show search count, next/previous, highlighted phrase spans and no-match state. |
| SP-110 | P1 | Requires device, screenshot or integration evidence | Align keyboard focus, clear, result count, case folding and escape/back behavior. |
| SP-111 | P0 | Partial localization; full coverage open | Move every Chats visible/semantics/error/tooltip string to localization with Hausa orthography and RTL tests. |
| SP-112 | P1 | Source addressed; acceptance unverified | Use consistent original empty-state geometry: blank inbox, no matches, offline, server unavailable. |
| SP-113 | P2 | Source addressed; acceptance unverified | Clarify the picker's people/agent discovery purpose and adapt scoped search hints. |
| SP-114 | P0 | Source addressed; acceptance unverified | Give a minimum 48×48dp interactive hit box while retaining compact artwork. |
| SP-115 | P1 | Source addressed; acceptance unverified | Give each reaction a 44–48dp hit target, semantic action and selected/unselected state. |
| SP-116 | P1 | Source addressed; acceptance unverified | Add grouped accessible message semantics, without double-reading Markdown children. |
| SP-117 | P1 | Source addressed; acceptance unverified | Add semantic media type, caption and open-action label. |
| SP-118 | P1 | Source addressed; acceptance unverified | Use BorderDirectional and bidi-safe names, layout and media icons. |
| SP-119 | P1 | Source addressed; acceptance unverified | Make directional, add tooltip and announce unread count to screen readers. |
| SP-120 | P1 | Source addressed; acceptance unverified | Expose adjustable semantic progress and mirrored RTL interaction. |
| SP-121 | P1 | Source addressed; acceptance unverified | Respect system reduced motion and do not keep unnecessary looping motion active. |
| SP-122 | P1 | Requires device, screenshot or integration evidence | Qualify layout for 320/360/390/430dp, landscape, keyboard, 2x text, Hausa, Arabic. |
| SP-123 | P2 | Requires device, screenshot or integration evidence | Audit paired screenshot pixel positions and contrast in the chosen WhatsApp version. |
| SP-124 | P1 | Requires device, screenshot or integration evidence | Test swipe-to-reply against code selection, media swipes, RTL and screen readers. |
| SP-125 | P2 | Requires device, screenshot or integration evidence | Qualify actual header/action menus at 320dp 200% before final sizes. |
| SP-126 | P1 | Source addressed; acceptance unverified | Disclose realistic local privacy guarantees and evaluate device storage encryption/backups as a separate security audit. |
| SP-127 | P1 | Source addressed; acceptance unverified | Specify archived unread-badge behavior and make it consistent across navigation. |
| SP-128 | P1 | Source addressed; acceptance unverified | Preview cost/permissions where required and preserve canonical send transaction handling. |
| SP-129 | P1 | Requires device, screenshot or integration evidence | Separate queued, uploading, inferring and ready states without inventing a delivered receipt. |
| SP-130 | P1 | Source addressed; acceptance unverified | Show cached conversation read-only with a centered recoverable unavailable banner where privacy allows. |
| SP-131 | P1 | Requires device, screenshot or integration evidence | Define archived-while-generating lifecycle without canceling or losing truthful pending work. |
| SP-132 | P1 | Source addressed; acceptance unverified | Persist original draft separately, intercept back/leave while editing, and restore it predictably. |
| SP-133 | P2 | Requires device, screenshot or integration evidence | Show a compact partial-success summary with no filesystem path leakage. |
| SP-134 | P1 | Requires device, screenshot or integration evidence | Add reconciliation tests with simultaneous scroll, edit, archived state and fresh server history. |
| SP-135 | P1 | Requires device, screenshot or integration evidence | Check routing/access after token expiry, phone call interruptions and account change. |
| SP-136 | P0 | First-party baselines automated; third-party reference comparison unavailable | Add original light/dark/RTL/Hausa/phone/large-type golden matrices and compare to reference screenshots. |
| SP-137 | P1 | Source addressed; acceptance unverified | Expand tests to all new audited interaction states and visual breakpoints. |
| SP-138 | P1 | Source addressed; acceptance unverified | Add authenticated API/client integration tests with version conflicts and account change. |
| SP-139 | P1 | Requires device, screenshot or integration evidence | Capture controlled long-press screenshots and verify clipping/placement. |
| SP-140 | P1 | Requires device, screenshot or integration evidence | Add direct visual assertions plus assisted touchscreen exercise. |
| SP-141 | P1 | Requires device, screenshot or integration evidence | Test real camera/gallery picker and Android scoped-storage access without mocked media. |
| SP-142 | P1 | Requires device, screenshot or integration evidence | Validate multi-device history, pin/archive, read and edit semantics against actual Gateway. |
| SP-143 | P1 | Requires device, screenshot or integration evidence | Create stress-data fixtures and test layout/link affordances. |
| SP-144 | P2 | Requires device, screenshot or integration evidence | Measure supported WhatsApp build on comparable device; implement original assets and record target density. |
| SP-145 | P2 | Requires device, screenshot or integration evidence | Record frame build/raster percentiles, scroll jank, cache/memory at 500/2000/10000 messages. |

## Merge gate

- The exact-head CI matrix must be green, including Flutter analyze/tests, build, gateway and database contracts.
- Every SP item must have source evidence and an accepted test/device/screenshot artifact or an explicit owner-approved deviation.
- A real signed-in two-device test, mobile native media lifecycle and the original light/dark/Hausa/Arabic golden screenshots remain necessary; isolated mock tests cannot satisfy those items.
- No merging while the P0 full-Chats localization (SP-111) and golden visual baselines (SP-136) are outstanding; the pull request remains draft.

