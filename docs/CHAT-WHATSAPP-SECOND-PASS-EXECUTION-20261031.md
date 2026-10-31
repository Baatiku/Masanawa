# Chats second-pass execution — 31 October 2026

The owner requested execution of the complete WhatsApp-style Chats audit,
while preserving Masana-only AI conversations and the five app roots.
The audit contains 145 individually numbered findings (SP-001–SP-145), not
148. Three additional historical Chats/Calls refinements had already been
implemented separately; they are not duplicated in this PR.
The [145-row acceptance register](CHAT-WHATSAPP-145-ITEM-ACCEPTANCE.md)
tracks each remaining acceptance condition without treating source work as
verified device behavior.

## Connected source changes in this branch

- Canonical inbox on initial empty-query load, refresh and pagination;
  per-account revision fencing, remote pin pending state and separate unread
  badge; cached conversation search and length guidance (SP-010, 017–018,
  022–023, 107–108, 114).
- Single New Chat affordance; navigable full archived list with search, safe
  unknown-directory names and honest device-only labels; enriched draft and
  message-state snippets; local-time timestamps and weekday names
  (SP-001–009, 013–016, 104–106, 127).
- Preserve local-only edits/hides on canonical history refresh, confirm and
  undo local message hides, remove synthetic AI greeting, request older
  server history pages and best-effort markRead (SP-024–028, 061–065).
- Persistent AI identity subtitle, search in header and matched-text emphasis,
  edit-specific composer state, blocked-update send, directional reply quotes,
  broader reaction control, adaptive message and media widths, local-safe
  missing-directory history, and readable code blocks (SP-029–030, 037,
  045–052, 057–059, 072–073, 094–095, 103, 109, 116–120, 130).
- Native voice pause/resume, paused/locked labels, RTL seeking, reduced-motion
  recording dot and inline remote-media retry (SP-076, 081, 084, 087–088,
  098, 121).
- Account-scoped server archive, unarchive and private conversation rename,
  including an additive forward-only database migration, revision-CAS
  receipts, archive-bound page cursors, active/archived list isolation,
  remote-only row actions, conflict refresh, account-rotation fencing and
  preservation of local media/drafts; device-only operations remain labelled
  where the server has no matching record (SP-019–021, 107–108).
- Searchable forwarding to another approved Masana with an explicit possible
  paid-turn warning and honest failures, file-picker save/share outcomes,
  a full-screen photo viewer with caption/share/save, native voice draft
  scrubbing, single playback ownership across voice bubbles and composer
  previews, message tails and grouped metadata, collapsible audio transcripts,
  edit-exit confirmation and long-draft expansion.
- Added revision-conflict gateway/repository tests and a widget scenario for
  rename → archive → server archived list → unarchive, including preserved
  authorized title and unread projection.
- Additional UI repair and coverage: adaptive trailing chronology next to
  unread badges without 48dp overflow, dialog-owned rename editing lifetime,
  two-row voice controls at 320dp/2× text, compact-width attachment fallback
  for Camera, a bounded 2–8-photo album with full viewer access, and an
  English/Hausa/Arabic localization catalog wired to the Chats inbox,
  archived route, conversation header and core composer controls. The catalog
  includes locale widget regressions, but the remaining Chats surfaces have
  **not** been exhaustively localized.
- The long-press reaction menu now reserves independent 44dp touch areas for
  six reactions and the full picker action, with a phone-width widget
  regression (SP-056–057, 115). The runtime screenshot/assistive-technology
  edge-position matrix is still open.
- Privacy regression: unknown cached local threads stay out of active inbox
  discovery/search until the current directory or server inbox authorizes the
  identity. Archived device-only recovery labels remain separate.

These are **source-level implementation changes pending CI**, not proof of all
145 item-level acceptance conditions or a physical WhatsApp-equivalent render.

## Explicitly unfinished

- The server now has archive and rename contracts, but **not an approved
  cross-device delete**. Delete and per-message hide remain explicitly
  device-local. A migration must run before archive/rename can be deployed;
  repository source or tests do not constitute a production rollout.
- Full localized Hausa/Arabic Chats text coverage, visual screenshot goldens
  and real-device/provider/two-device evidence remain unfinished (notably
  SP-111, SP-122–125, SP-136–145). No claim is made that golden or handset
  parity was achieved.
- A global audio owner beyond Chats (including platform live audio/calls),
  provider-backed cross-device convergence, richer sticker/reaction licensing,
  anchored menu parity and end-to-end translated content still require
  their own evidence. Any audit condition not tied to a verified regression
  remains open rather than being marked complete based on visual resemblance.

## Source validation and acceptance boundary

- Full workspace TypeScript package typechecks and production builds passed
  after restoring tracked packages omitted by the partial local checkout.
- Focused gateway/repository tests: 17 passed; the actual PostgreSQL
  integration suite is skipped without a configured live PG fixture.
- Full Vitest suite: **390 files passed, 48 skipped; 2,029 tests passed,
  314 skipped** (local fixture limitations, not asserted as PASS_REAL).
  Postgres integration requires a live database fixture. The Flutter
  toolchain is unavailable locally; widget tests are added but require
  hosted Mobile Build execution.
- The owner requested **all source changes first, followed by one commit,
  PR and merge only if checks are green**. This document is a coverage
  record, not an assertion that all 145 manual audit findings are complete.

No human-human chat, copied proprietary assets, claimed WhatsApp E2EE,
unqualified provider approval, production financial write or APK is added.
