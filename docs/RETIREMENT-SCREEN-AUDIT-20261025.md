# Consumer screen retirement audit — 25 October 2026

Basis: `AGENTS.md`, `docs/SCREEN-JOURNEYS.md` and live `main` at `b4edb8778ecbcdde4b2946f3c48031a34661085b`. Scope: `Baatiku/Masanawa` **only**, not `Baatiku/Masanawa-App`. The current target has **Chats, Status, Wallet, Calls, Data** with platform Masana-only chat/calls and approved platform-Masana posts. Screen deletion never authorizes deletion of historic financial records.

## Active source cleanup in this batch

| Surface | Retired behavior discovered | Action taken | Proof limit |
| --- | --- | --- | --- |
| Human social profile | Message/Call to another human, shared Rooms query/links, own My Masana creator entry, obsolete LIVE badge | Remove triggers, query/provider, creator list and LIVE badge; retain edit, follow, bio and counts | Source-only pending widget test |
| Masana roster / New chat/call | Humans tab, human call action, public Create Masana FAB | Single Masana list with search/filter and Masana audio call picker; no human contact load | Source-only pending widget test |
| General search | Queried Rooms service on every search and navigated to retired Room | Search Masana, existing Masana chats and recent Status only; remove Rooms query, result and errors | Status matching remains scoped to latest server page, not full history |
| Settings / Edit profile | My Masana creator screens and Rooms-era About/footer/notification description | Remove creation links; update active-five-tab description | Other historic account controls retained |
| Masana profile and chats | Masana Room links and creator link; chat composer document/video/location/contact/poll actions | Remove Room and creator CTA; retain Masana posts, follow, messaging; composer offers camera/gallery/audio | Historic attachments still render read-only; obsolete helper source awaits reference audit |
| Notifications | Rooms / P2P subscriptions/history surfaced | Hide retired switches and history, force retired preferences false on future writes | Legacy response keys preserved temporarily for server contract compatibility |
| Root bootstrap and share intake | `IncomingCallCoordinator` polled retired incoming call endpoint every 5 seconds; `/share` mounted human-message share inbox | Stop root coordinator polling; route old share hint to Chats without activating human send | Native/background push routing and obsolete underlying modules still require retirement |
| Legacy external paths | `/human/*`, `/rooms/*`, `/billing`, `/crypto` | Existing router redirects retained for safe old links | Not the same as deleting server routes/jobs |

## Follow-on deletions still required, not accepted in this batch

1. **High priority:** remove human-chat/calls/Rooms push listeners, native Android reply/call intent channels, obsolete deep-link parsing and permission requests after retained notification audit. `core/mobile_push.dart` and `core/shell_deep_link.dart` still contain legacy paths.
2. **High priority:** replace old Credits, multi-Masana/group admission and Wallet navigation in `screens/chat/ai_chat_screen.dart`, plus retired pick/attachment helper implementations. Current visible composer/menu is pruned, but substantial legacy source remains.
3. **High priority:** confirm Gateway does not register retired human chats/calls, Rooms, public creator creation, crypto, P2P marketplace, non-data billing, human Status publishing or video APIs. Treat historic liabilities and provider reconciliations as protected dependencies.
4. **Medium:** remove unreachable `screens/rooms`, `human_calls`, `human_chat`, `screens/wallet`, `screens/billing`, deprecated web consumers, videos and old tests **only after** a repository-wide import/reference graph and migration check. Do not blindly delete modules the currently built entrypoint or preserved history depends on.
5. **Medium:** reconcile server notification preference schema/categories and original payment requests; remove legacy wire keys only when both server and client upgrade paths are tested.
6. **Acceptance:** Flutter analyze and widget tests, deep links/push smoke tests, startup and idle network trace (notably retired polling), account A→B switch, 320dp/large-font, and real release device before marking these as finished. No APK without explicit owner request.

No live funding or Flutterwave provider operation is involved in these deletions. Oracle Cloud account not activated; the optional fixed-IP relay is parked until a reliable outbound IP exists.

## Source deletion batch — 25 October

Starting main: `26d4e3139192ffcc68b905fb009e6b17b74573a2` (PR #400 already merged, all head checks passed). Deleted 187 unreachable Dart files after an import/export/part traversal from `lib/main.dart`, plus obsolete feature tests. Removed root human call coordinator, human inbox polling/controller subscription, quick reply/share listeners, native share bridge/intents, incoming call notification/channel/background handler and full-screen/phone-call permissions. Removed unused public creator transport implementations/providers and unused WebView/QR scanner dependencies. Preserved retained media authorization, Masana inbox/search and audio/recording tests; adapted mixed tests instead of retaining retired imports. Calls detail/recording helpers retained. This batch does not finish paid Credits replacement, saved-video cleanup, backend routes/workers or measured handset acceptance. No database migration or historical finance mutation.

Validation pending at branch head; no provider/device/APK acceptance claimed.

## Subsequent retirement — legacy Home and CI

A dedicated batch removes the old HTTP `/home` Rooms showcase, deletes three obsolete P2P/Rooms/Status-video CI workflows, and replaces them with retained Status/MB/financial-history PostgreSQL qualification. Tests now assert HTTP `/home` is unavailable and `/agent/directory` remains functional. This is source-level retirement only; migration and historical escrow data remain untouched. Host CI still required on the exact batch head.
