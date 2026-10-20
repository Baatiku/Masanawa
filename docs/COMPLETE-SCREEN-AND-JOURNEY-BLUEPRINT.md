# Masanawa — Complete application screen-by-screen audit and final functional blueprint

**Owner directions:** 20 October 2026 (latest overrides earlier 19–20 October Status/Room design statements). **Evidence snapshot:** repository `main` at `c944045ef2f80a83839a9aa2c6eb13cd53975ff6`; open PR #227 (human messaging/calls), #228 (Masana memory) and docs PR #232 (this planning work). **This document specifies targeted functionality; it is NOT an assertion of executed Flutter/build/device/provider acceptance.** Existing source audited through GitHub file reads, not complete line-by-line running-app analysis. **One implementation authority:** [PRODUCT-ROADMAP-20261019.md](PRODUCT-ROADMAP-20261019.md). **Navigation/journey authority:** [SCREEN-JOURNEYS.md](SCREEN-JOURNEYS.md).

## 0. Final product decisions and quality bar

- The five structural destinations are **Chats · Updates · Wallet · Calls · Rooms**. **Updates is the user-visible rename of Status**, replacing the visible Status label and two-category Status/Videos top tabs. Retain legacy internal route key `status` and `/status/:postId` as compatibility aliases until migration. Chats remains the default.
- **Updates is a Facebook-style continuous mixed-author social feed, NOT WhatsApp disappearing Status/stories/rings.** Humans and Masana share one timeline, each with clear identities, likes, comments and share/save/report. **Video is retained** as a supported item/player/source; remove the dedicated Videos tab from the PRIMARY Updates interface only after migration, not the existing player, video catalogue or its content.
- Ordinary **human feed publishing is a paid operation**. Reading, following, liking and commenting do not require a publication charge. The fee amount is NOT owner-approved: backend must return a server-configured MSNW quote (amount, currency, validity, applicability, policy/region). Charge once only upon confirmed publish with exactly-once accounting and recovery; if billing is unqualified, drafts/preview/read work but publication is explicitly unavailable. Existing Masana/creator publishing requires proper owner/worker/moderation authority; **never quietly bill a human for an AI-owned post**.
- **Human profile** is the canonical social identity across Chats, Updates, Rooms and P2P. Facebook-style organized social header/activity + WhatsApp direct actions + OPay account safety + Binance *individual* trader performance, without copying brand artwork or creating business/merchant products.
- **One Room** absorbs group, community, channel and Telegram-inspired capabilities; existing Rooms need real schema, API and UX overhaul. Details: [UNIFIED-ROOMS-PRODUCT-SPEC.md](UNIFIED-ROOMS-PRODUCT-SPEC.md).
- **No cards, merchant onboarding, merchant commerce, merchant storefronts, POS or separate merchant checkout.** The P2P seller is an **individual**, not a merchant.
- Design for quick useful tasks. No unnecessary story carousel, public follower census, excessive top navigation, trading terminals, speculative charts, unrelated social games or standalone video root tab. Reuse all existing domain sources and financial liabilities.
- Before any screen implementation, freeze its actor, arrival/back route, content order, enabled states, error/empty/offline/revoked/account-switch behavior, API/permission contract, exact test gates and neighboring screen handoffs. A screen is **DONE** only after backend/data/provider and behavior on physical devices are properly qualified.

## 1. Repository-to-experience source audit (verified source presence, NOT live completion)

| Section / current source path | Existing implementation in main | Confirmed gap / required decision | Target specification / milestone |
|---|---|---|---|
| Onboarding: `apps/mobile/lib/src/screens/onboarding/{phone_login,otp,password,name,recover_phone_password}_screen.dart`; `services/gateway/src/customer_auth.ts` | Phone/email selection based on server capabilities, six-digit phone password, email OTP, OTP paste, name onboarding, recover password; device/session and OTP-rate-limits source | Sequence clarity, create-vs-sign-in states, trusted restore, verification recovery, user-first profile readiness and true handset delivery; server advertises email OTP only, phone password primary | AUTH-01–09 / P1-A01 |
| Chats root: `screens/chat/chat_list_screen.dart`, `human_contacts_list.dart` and `masana_list_screen.dart` | Existing agent threads, pin/archive/rename/delete locally, remote Masana search, human contact directory | Open PR #227 human messages not merged; one true inbox/search, request bucket, drafts/unread/requests across human+Masana | CHAT-01–06 / P4-12 |
| Masana chat: `screens/chat/ai_chat_screen.dart` | Deep AI text/voice/media/Wallet shortcuts and thread state | Consolidate with human chat UI rhythm while keeping separate typed transport, clear AI identity, permitted memory, billing and error states | CHAT-07–08 / Phase 2/P4-12 |
| Human conversation: `apps/mobile/lib/src/human_chat` on PR #227 | Proposed human transport/controllers, privacy and read/delivery sources in open PR | Not merged or physical-device proven. Rich message operations, voice/media, calls from thread | CHAT-09–12 / P4-05–15 |
| Human/creator public profile: `screens/profile/{person_profile,edit_profile}_screen.dart`, `social/talk_social_profiles.dart` | Display name, avatar, handle, bio, follow/follower counts, My Masana section, owner Edit Profile, privacy/readback | Chat/call actions and joined public Room/author posts absent/incomplete; no real trader trust surface; risk of empty clutter and unverified badges | PROFILE-01–06 / P4-16 |
| Masana profile: `screens/profile/masana_profile_screen.dart` | Masana title/role/presence, Message/Follow, recent posts, lessons/Rooms links | Consistent AI disclosure, call capability, creator authority/ownership, no invented verification and feed compatibility | PROFILE-07–08 / P4-17 |
| Current Status: `screens/status/status_screen.dart` | Two primary top tabs Updates + Videos; account-safe video repository/player, existing media/audio routing | User explicitly REJECTS WhatsApp Status UI; rename root to Updates, delete *primary tab split* not media/video system | UPDATE-01 / P5-U01 |
| Existing feed: `features/home_feed/{feed_screen,feed_api,feed_comments_sheet,feed_post_detail_screen}.dart`; `packages/feed/src/index.ts`; `gateway/modules/home_feed/routes.ts` | Masana-only posts (text/image/audio), For You/Following, cursor, like/save/comment/reply, moderation/media links | `PostKind=text|image|audio`, `authorMasanaId` required; fan cannot post; no authorized mixed human author; no paid publish quote/journal; dedicated Video catalogue separate | UPDATE-02–08 / P5-U02–U08 |
| Existing videos: `features/videos`, `modules/external_videos` | Approved external video catalogue and player used by Status tab | Must retain video asset/source/player while adapting feed item model; no need to launch a video-only home view | UPDATE-04 / P5-U04 |
| Wallet: `finance/msnw_wallet_home.dart`, `msnw_custody_send.dart`, `msnw_transaction_history.dart`, `screens/wallet` | MSNW balance/account number, Send/Fund/Convert/P2P/Bills, history/receipt APIs, server name inquiry from merged #230 | Consistent entry routes, verified vs stale state, review/fee clarity, agent/chat request, provider readback | WALLET-01–10 / P6-W |
| P2P frontend: `finance/{msnw_p2p_screen,p2p_order_presentation,msnw_p2p_activity}.dart` | Buy/Sell/Orders/Updates chips, seller bank verification, create offer, quote, order timeline, escrow-related status, evidence, disputes, receipts, replay recovery | Too many competing primary chips; trader profile/trust view is missing; discovery filters and seller view need cleanup; trade-specific chat and audit completeness needs review | P2P-01–10 / P7-P01–P10 |
| P2P service: `services/gateway/src/p2p/{routes,service,custody_escrow,bank_methods,evidence_storage}.ts` | Real account authorization, offers, capacity, escrow reserve/release/refund, payment clock, bank methods, receipt, disputes, late payment | Qualify actual provider/custody end-to-end, verified performance metrics and operator workflow; never replace with a parallel order ledger | P2P-03–10 / P7-P01–P10 |
| Calls: `screens/calls/calls_screen.dart`, `human_calls` PR #227; existing LiveKit/voice | Masana call history and human voice implementation branch, prior app call controllers | Consolidated Calls; voice/video availability based on provider; signed-in background incoming lifecycle and group entry from Rooms | CALL-01–05 / P4-14 |
| Rooms: `packages/rooms`, `gateway/modules/rooms`, `features/rooms` | Teacher-bound professional Room, lessons/Q&A/threads/invites/subscriptions, staff room creation and some moderator membership | Requires creator ownership migration, rich posts/chat/topics, follower privacy and creator governance, NOT fresh Room parallel stack | ROOM-01–18 / P5-R01–22 |
| Creator: `screens/profile/{my_masana,creator_earnings}_screen.dart`, `packages/masana` and creator services | Creator Masana creation, publication, profile, some economics/presentation | Published revision, earnings settlement, origin/authorship in mixed feed, Room creation and safe pricing | CREATOR-01–05 / P5-C |
| Billing/digital services: `screens/billing/billing_screen.dart`, `finance/msnw_billing_checkout.dart`, `gateway/src/msn_wallet/billing_service.ts` | Airtime/data/TV/electricity catalog and checkout foundation | Customer verification, quote expiry, provider outage, fulfillment status, safe repeat | BILL-01–05 / P7-S |
| Search/alerts/settings: `screens/search`, `screens/settings`, `core/shell_deep_link.dart`, notification preferences | Search, notifications, account security, sessions, data export/delete, diagnostics, account fencing | Cross-content-author search, privacy and fee controls, incident/support entry, device verification and route compatibility | SYSTEM-01–09 / P8-X |
| App shell/router: `shell/five_tab_shell.dart`, `router/app_router.dart` | Five tab shell, Chats default, deep link routes `/status/:postId`, `/rooms/:id`, `/u/:handle`, Wallet and Calls | User-visible Status -> Updates only, not breaking old deep links, route state, notifications or test fixtures | NAV-01–03 / P1-A02 |

## 2. Final screen specifications by journey

### A. Authentication and first-run sequence (AUTH-01–AUTH-09)

**AUTH-01 Splash/restore.** App logo centered on clean white/green surface with light progress; short authorized token/session recovery without displaying an unrelated account's Chats. Check token expiry, server session revocation, account state, pending intended deep link. If offline and an authenticated session/cache exists, show usable authorized read-only content with offline banner; if no valid authenticated cache, show Sign in with explicit connection error. Never claim login based only on local token presence.

**AUTH-02 Sign-in method.** One branded welcome screen, language selector upper right, concise privacy/terms. Main field only shows the method actually supported: email + Send code or phone + Continue with six-digit password as indicated by backend. Phone country picker is international, editable and not predetermined by device locale. Do not advertise SMS login OTP when backend explicitly returns PHONE_PASSWORD_REQUIRED. Existing segmented switch only when both methods qualify. One primary action, no wallet/sales carousel, loading and Retry when capability request fails.

**AUTH-03 Email OTP.** "Verify email" header, masked destination, six-digit input with OS keyboard OTP autofill, explicit Paste code, change email, resend countdown, attempt/expiry explanations. Pending verification persists through back/restart only without leaking code; codes never logged, resent OTP invalidates stale ones according to actual policy. Allow new-user name request without silently consuming challenge. On success go to profile completion or destination.

**AUTH-04 Phone password.** "Welcome back" with masked phone, six-digit secure numeric password, show/hide toggle, forgot password, error and lockout/retry. Distinguish new phone setup from existing account login with server authority, not a UI guess. Do not conflate six-digit sign-in password, Wallet/P2P transaction PIN and device biometric unlock.

**AUTH-05 Phone password recovery.** Phone account -> purpose-bound recover challenge -> new six-digit password -> revoke/reset sessions according to policy -> explicit return to sign in. Do not mint session directly with a password-recovery challenge. Resend/expiry/rate-limit states and abuse controls.

**AUTH-06 Name + initial public identity.** Minimal user display name mandatory only when needed for creating account; optional avatar or skip, unique @handle only when registration authority supports it, no creator/Masana upsell during first-run. Show "Your public profile can be changed later"; private phone/email never displayed in public. Preserve existing one-free-Masana offer as optional **post-onboarding** discover path.

**AUTH-07 Session result and deep link.** After server token verified, switch to Chats by default or requested authorized Room/Post/P2P order if valid. If blocked/deleted, show safe unavailable and Chats; never restore another account's target or drafts.

**AUTH-08 Re-auth/step-up.** Wallet transfer, bank verification, P2P seller release, paid human post and owner transfer use exact-purpose session/OTP/PIN/biometric challenge from server; same digest requestId/amount/recipient/post content and expiry. Failure/cancel returns without side effect, no global "one unlock approves all" behavior.

**AUTH-09 Account/security settings.** Accessible from own human profile and Settings: sessions/device list, recent logins, password change, verification/recovery, privacy, linked email/phone, export/delete, sign out others. Before changing credentials invalidate old approval proof as required.

**Auth gap gates:** country code and accessibility; email/phone branching; resend/attempts/rate limit; no SMS false affordance; multiple devices; account restriction; offline token; OTP clipboard consent; restore route; full Android email delivery and recover password proof. **Do not rewrite existing customer_auth/session tables as an auth redesign.**

### B. Chats, contacts and conversation (CHAT-01–CHAT-12)

**CHAT-01 Chats root.** App-bar title "Chats", search and overflow/new-chat. Search across authorized human, Masana, drafts and message requests with top-level chips **All / Unread / People / Masana** only; no separate chat product. Rows: round avatar, bold verified display name where authoritative, HUMAN/AI disclosure only if necessary, latest snippet/media symbol, updated time, unread count, mute/pin/draft label and actual pending/sent/read state. Pinned rows on top; archived via secondary route; one FAB "New chat" opens contacts.

**CHAT-02 Contacts chooser.** Exactly **Masana / Humans** tabs with shared search and independent filters. Humans show followed/conversation contacts, plus public @handle discovery, no phonebook permission required. Row opens existing thread or request flow after participant check; avatar -> profile. Masana row -> Masana profile/chat. If no contacts, clear "Find people" or "Explore Masana".

**CHAT-03 Human request bucket.** Requests count only when nonempty; one page of sender avatar/name, snippet, date, Accept/Delete/Block/Report. Following a person ≠ consent to message. Accept then open H04; blocked sender cannot repush message.

**CHAT-04 Human one-to-one conversation.** Header avatar/name/presence (subject to privacy), Call/search/menu; grouped history with reply/forward/copy/edit/star/delete/report, reactions, delivery/read indicators. Attachment bottom sheet: photo, camera, file, voice, contact, qualified request-money entry. Composer input/send/hold mic at bottom, draft and quoted reply above. Automatic scroll only if near bottom; new-message badge when reviewing old history. No human message goes to a model or Masana spending pipeline. No fake ticks while offline.

**CHAT-05 Voice/media subsystem.** Hold-to-record with lock/pause/preview/delete, duration waveform, playback speed, captions/transcription if permitted, progress/cancel/retry, media expiration and a unified viewer; implement on top of current voice note/attachment source, not new player.

**CHAT-06 Message utility.** Pin/unpin/mute/archive/star/search, message-level info, privacy controls, context menu compact not overloaded; long press reveals contextual actions. Disappearing/view-once and encrypted media only after server/deletion/lifecycle qualification.

**CHAT-07 Masana conversation.** Same polished conversation anatomy as human Chat, but visible "Masana · AI" and provider/usage state, authorized memory controls (if #228 lands), optional voice and Wallet-related requests using separate explicit approval. Reuse existing `ai_chat_screen.dart` and typed transports; no silent cross-human memory.

**CHAT-08 Masana header/profile.** Profile opens creator attribution/role/language/verified disclosure, Follow, Message, Voice Call only if qualified, Rooms, Updates. Must not imply a real practitioner or "online" if presence is simulated.

**CHAT-09 Recovery and push.** Same durable client ID on retries, offline drafts, missed notification and background catch-up, account/tenant reset. Group/Community/Channel conversations are inside Rooms, while personal private conversations remain in Chats.

**CHAT-10 Discover/search.** Search results group People, Masana, conversations, posts and Rooms with permitted previews; no leaked message excerpts from blocked/private threads.

**CHAT-11 Message-to-wallet.** Human sends authorized request-money card (NOT spend instruction) -> recipient chooses Review in Wallet -> server-bound fee quote -> explicit approval -> receipt appears in original conversation. Duplicate, expired, blocked, forwarded/revoked card cannot charge.

**CHAT-12 Human vs Masana privacy.** Clear difference in context, history controls and billing; user may report/block either target using the right domain rules. Preserve account-scoped caches, deleted/private media.

### C. Public human profile and Masana profile (PROFILE-01–08)

**PROFILE-01 Unified human public profile, Facebook-inspired but uncluttered.** Top: slim app bar with @handle/More, optional modest cover, avatar overlapping lower edge, display name/@handle, single-line bio/See more, follower/following counts only from authorized source, safe user verification badge only from actual identity provider. Main visitor buttons **Message, Follow/Following**, optional **Call** only if qualified; **Trade** only when a user is actively eligible for individual P2P. No email, phone, personal bank account, full legal name or contact data exposed.

**PROFILE-02 Profile content organization.** Under header show accessible chips/sections **Posts / Masana / Rooms** only when those sections have authorized content; About via menu or compact region. Posts are the same Updates authored by the person, not a second feed. Masana shows actual published agents belonging to creator, Rooms only public/authorized Rooms, not private membership lists. Do not show empty fake sections to non-creators.

**PROFILE-03 Visitor actions.** Tap Message -> H04/request; Follow -> server ack (not provisional fake count); Call -> H07 if allowed; Trade -> P2P trader profile with actual metrics. Share public profile canonical link/QR. More -> mute/report/block. All return preserving scrolled profile context.

**PROFILE-04 Own profile.** Header with Edit profile; posts/drafts/published Masana/public Rooms and qualified P2P participation; account/security in Settings not large public tiles. Avatar/cover replace/edit and server-ack privacy. Owner sees **Create Post** opening paid Updates publishing, with fee preview—not charge from profile navigation.

**PROFILE-05 Trader trust panel, NOT merchant profile.** App's canonical human identity reused; a conditional secondary **P2P trading** section shows actual completed trades, 30-day completion rate where defensible, average pay/release time where measured, verified payment-method eligibility without exposing bank numbers, account age/privacy-safe reputation, dispute safety, and Trade/View offers action. **Never manufacture percentages, minimum history or badges.** If insufficient history, show "Not enough trading history" instead of 100%.

**PROFILE-06 Profile settings and publication history.** Edit only displayName, avatar/cover, bio, controlled handle updates, public/private follower settings and authorized creator outputs; all save via existing profile API. Post history displays paid human posts with receipt link to Wallet, moderation/deletion status; creator Masana posts show attribution not a charge to viewer.

**PROFILE-07 Masana profile.** Large identity portrait, Masana name/role/category, always explicit AI disclosure and creator (if real), language and available modalities; action order **Message · Call (qualified) · Follow**, then Posts and Rooms/lessons. No human private details. Post Feed author tap routes accurately to human /u or Masana profile based on server author type.

**PROFILE-08 Trader click-through from P2P.** Tapping seller name/avatar on offer opens PROFILE-01 focused on PROFILE-05, never an invented Merchant page. Back returns same filter/offer position; blocked/disqualified user denies creation/accept safely.

### D. Updates — separate detailed target specification

See [UPDATES-FEED-FINAL-SPEC.md](UPDATES-FEED-FINAL-SPEC.md). Brief source-driven rules:

- **UPDATE-01:** Rename root label Status -> **Updates**, preserve route aliases; replace current "Updates | Videos" top TabBar with one feed and lightweight **For You / Following** filters immediately below the composer (or accessible filter menu). Never use WhatsApp ring/story UI.
- **UPDATE-02:** Header: title Updates, search, optional notification; own avatar + "Share an update…" composer entry; feed scroll of unified human/Masana posts.
- **UPDATE-03:** One post card: avatar/name, Human / Masana AI disclosure, post time and audience, overflow; text then photo/gallery/video/audio inline; row of like/comment/share plus save via overflow, real counts, comment thread.
- **UPDATE-04:** Preserve current videos and external video player as an authorized **media type inside feed** or secondary media/search browse; do not delete `features/videos` or old source; no dedicated primary Videos tab, no video-only feed requirement or automatic full-screen takeover.
- **UPDATE-05:** Human author create text/photo/video/audio -> review audience/rights -> see **server-quoted MSNW publication fee** -> explicit confirm and purpose-bound auth -> single charge and post publication with receipt. If insufficient MSNW, return Fund Wallet; draft survives; no phantom publish. Where moderation is required, **charge/capture policy must be explicit**: reserve before review and capture only on approval, otherwise release, or quote a non-charge review process. Never take irreversible money for a rejected post without disclosed policy.
- **UPDATE-06:** Masana post authorship bound to approved Masana / creator and agent worker permission with anti-spam and pacing, separate from human fee; no forged role author.
- **UPDATE-07:** Feed sorting following/discover, blocking, saving, comment edit/report/appeals, cursor/offline, account fences, accessibility, media controls.
- **UPDATE-08:** Published post displays on person's public profile and authorized Masana profile; scrolling/likes/comments/notifications are consistent from all entry points. No expiration/rings by default.

### E. P2P market (P2P-01–10)

See [P2P-AND-PROFILE-FINAL-SPEC.md](P2P-AND-PROFILE-FINAL-SPEC.md). Existing `msnw_p2p_screen.dart` (~2.3K source lines) has **Buy / Sell / Orders / Updates** chips, quotes, bank verification, offer creation, recovery, payment details, disputes and receipts. Keep the existing flows; simplify hierarchy.

**P2P-01** From Wallet -> P2P -> top **Buy | Sell** segmented choice; Orders and My Offers are prominent simple secondary actions in header/overflow. Current P2P "Updates" belongs in Orders activity/alerts, NOT as a confusing fourth trading tab or a second social Updates.

**P2P-02** Offer rows: individual avatar/@handle, real account trading reputation, price/rate, min/max, available MSNW, method badge from verification, one Buy/Sell CTA. Search/filters amount, eligible currency and payment method; only real priced offers.

**P2P-03** Trader profile (PROFILE-05) and eligibility: user verification from authority, real completion/response stats, payment method ownership and block/report, no Merchant distinction or merchant onboarding.

**P2P-04** Buy offer -> amount -> server quote with current fiat amount, rate, MSNW, fee, min/max and expiry -> review -> place order once, reserve verified escrow once -> order details.

**P2P-05** Seller flow -> eligible MSNW inventory/available capacity -> verify receiving bank with step-up -> set rate/min/max/inventory -> preview and publish -> My Offers; pause/resume/close; prevent double-reservation.

**P2P-06** One order screen: ordered state timeline, server-remaining payment deadline, exact payment recipient, action buttons based on buyer/seller/settlement state, private order chat, receipt, help. Buyer "I have paid" does not prove settlement. Seller releases only after personally checking payment and server-bound authorization.

**P2P-07** In-order chat with counterparty, optionally attach proof; keep all conversation messages under order ID and preserve immutable dispute audit, not open a public merchant or Room. Share necessary messages with platform operator only when a case is opened and disclosed. Fraud safety warns against off-platform negotiation.

**P2P-08** Dispute/appeal, screenshots as evidence not proof, operator-controlled escrow resolve/refund, late-payment after expiration, no payout caused by text/AI.

**P2P-09** Orders screen: Active / Completed / Disputed / Cancelled; current exact state, action needed, payment expiry, short statuses; resume unknown network/server result, same request ID.

**P2P-10** My Offers + notification centre, completed stats derived from actual finalized orders, fees and receipts; verified provider/bank/ledger, regional restrictions, 320px/200%/RTL and account switch. **No invented market-wide amount/currency support from OPay/Binance.**

### F. Wallet, finance and billing (WALLET-01–10; BILL-01–05)

**WALLET-01 Home.** MSNW balance, available/reserved/pending labels, last actual refresh and privacy eye, account number with copy/QR. Immediate actions Send / Receive / Fund / Convert; Bills and P2P as visible secondary actions. Lower area recent activity/receipts and qualified asset holdings. No fake fiat pegging, extra wallet or card shortcut.

**WALLET-02 Send.** @handle/account input -> authoritative recipient name+avatar where allowed -> exact amount/fee -> review -> purpose-bound approval -> pending/settled/failed with ledger readback. Don't pre-fill untrusted clipboard without consent. Name inquiry invalidates when account edited.

**WALLET-03 Receive/request.** QR/profile intent, share/copy, optional amount/note/expiry, no auto-debit. Receive self-account details exclude secrets.

**WALLET-04 Fund.** Actual supported provider/region only, quote, authorized external redirect, pending provider and reconciled custody state, receipt. No unqualified fiat cashout.

**WALLET-05 Convert/assets.** Asset/network/fee/quote expiration and custodian settlement; no assumed listing/MSNW peg. Unsupported network explicit.

**WALLET-06 History.** One chronological source with actual operation status, filters and exact details, including P2P and human paid-post fee receipts. Avoid duplicate entries.

**WALLET-07 Receipt/help.** Copy/share redacted receipt, report issue linked to reference, status from actual ledger not image.

**WALLET-08 Financial safety.** PIN/biometric are exact operation approval, fraud/unknown recipient warning, attempt and device change limits, no amount manipulation after approval.

**WALLET-09 Offline/unknown.** Cache permitted read-only history with timestamp, no optimistic "paid", distinguish provider outage vs device offline, retry original operation and reconcile.

**WALLET-10 Spend policies.** Creator publication (existing fee 5,000 MSNW default for additional Masana, separate rule), paid human Updates publication (fee TO BE CONFIGURED), Room optional verified subscriptions and P2P escrow each use distinct operation types and bounded rights.

**BILL-01** Wallet/Gwani -> one service catalogue scoped by country/provider.
**BILL-02** Recipient/operator/meter/cable ID verified by provider; do not infer operator solely from prefix.
**BILL-03** Package/amount/price/fee quote -> review -> explicit MSNW consent.
**BILL-04** Provider pending/failed/partial/refunded recovery with real readback.
**BILL-05** Receipts, saved recipients, repeat warning, support case and request ID reuse.

### G. Calls, Rooms, creator, cross-cutting (CALL/SYSTEM/NAV)

**CALL-01** Calls root: recent human/Masana calls interleaved, missed and outgoing indicator, New call, favorites (only if real), search/return to correct chat.
**CALL-02** Person/Masana call entry: caller avatar/name, capability/state and voice/video only if real service available.
**CALL-03** Active call: ringing -> connected, duration, mute/speaker/camera if verified, minimize, hangup and fast route back; busy/permission/offline/device takeover.
**CALL-04** Group calls arise via Rooms invitation or authorized group participation, not a separate root.
**CALL-05** Call history preserves proper identity and no AI billing for human-to-human; provider/device logs and idle teardown.

**ROOM-01–18:** Use [Unified Rooms specification](UNIFIED-ROOMS-PRODUCT-SPEC.md) exactly; migrate teacher-only and staff-create, then publish + chat, then topics/events, then governance/Masana. **Do not skip P5-R07 migration to redesign only Flutter.**

**CREATOR-01** My Masana index and one-free/paid additional-publication policy, creation draft/preview.
**CREATOR-02** Published Masana identity, voice/portrait rights and version editor.
**CREATOR-03** Creator management: actual Masana, public profile, Rooms and approved automatic Updates.
**CREATOR-04** Settled revenue/holds/reversals in Wallet-linked earnings, no second creator wallet.
**CREATOR-05** Blocked/paused/retired agent cannot post into Updates or join Room as active.

**SYSTEM-01 Search.** Unified top search across Humans/Masana/Rooms/Updates, no cross-tenant leaks.
**SYSTEM-02 Notifications.** Messages, calls, followed posts, Rooms, P2P/Wallet and paid publication receipt; opt-in preferences and quiet hours, push reauth.
**SYSTEM-03 Settings.** User-friendly list Profile / Account & Security / Privacy / Notifications / Wallet safety / My Masana / Help & Support / App & data; do not duplicate profile editing.
**SYSTEM-04 Moderation.** Post/report queue, paid-post publication review/financial action reconciliation, individual P2P disputes, user blocks and appeals; audit required.
**SYSTEM-05 Localization.** English/Hausa/Arabic etc with tested RTL, currency/account display, TalkBack and 320px/200% font.
**SYSTEM-06 Offline.** Per section skeleton/empty/error/offline/stale/retry, no fake success.
**SYSTEM-07 Account fence.** Login/logout/change clears all account-scoped Chats, Updates, post drafts, Room membership/push, P2P orders, Wallet caches/media and in-flight calls.
**SYSTEM-08 Support.** Wallet/P2P/order/post receipt opens case with immutable operation reference; support cannot assume a screenshot confirms money.
**SYSTEM-09 Releases.** Device signed APK, source SHA, PostgreSQL migration, restore/rollback, provider qualification and privacy/feature flags.
**NAV-01** Five tab visible labels changed to Chats/Updates/Wallet/Calls/Rooms; aliases `status` and `/status/:postId` preserved, no fifth+ tab.
**NAV-02** Back/deep link restoration: authorized target only after current account sign-in; legacy /status link opens Updates post details.
**NAV-03** Unified single green/white high contrast Masanawa design (brand original, no exact copied Facebook/WhatsApp visual assets), modest spacing and consistent header/empty states.

## 2A. Minimalism filter — complete products without congested screens

A **comprehensive reference catalogue is NOT an obligation to display every switch or ship every candidate immediately**. Screen outcomes, user need and verification determine the active surface. For every register row assign a **decision** (CORE NOW / CONTEXTUAL ADVANCED / QUALIFIED LATER / EXCLUDED WITH REASON) independently from code status (PRESENT / PARTIAL / MISSING / VERIFIED). Those dispositions must be recorded during source-by-source audit; the 417+204 row counts are discovery scope, NOT evidence of 621 useful features or a forced feature checklist.

| Domain | Core visible immediately | Contextual only | Explicitly avoid |
|---|---|---|---|
| Auth | Sign-in method, verify, recover | Device list and step-up when invoked | Overloaded onboarding/AI/Wallet ads |
| Chats | Human/Masana inbox, new chat, requests, text/voice, call | Advanced message tools via long-press/menu | Separate channel/community inbox, additional tabs |
| Human profile | Identity, Message, Follow, Posts | Masana/Rooms when real; P2P stats/Trade only when eligible | Fake follower/trade metrics, business identity |
| Masana profile | AI identity, Chat, qualified Call, published posts | Creator and professional details when authenticated | Fictitious expert verification or hidden AI label |
| Updates | Mixed feed, composer, For You/Following, Like, Comment, Share | Video/media viewer, post rights/fee at publish review | WhatsApp 24-hour status, rings, Videos main tab |
| P2P | Buy/Sell, offer, quote, order, escrow status | Orders/My Offers, trader trust, dispute on state | Merchant profiles, trading terminals, fake ratings |
| Wallet | Available MSNW, Send, Receive, Fund, Convert, Bills/P2P | Advanced assets/receipts/support | Cards, speculative balance, second ledger |
| Rooms | One Room list, short create, conversation/updates | Topics, admin, roles, live stage only if creator enables | Group/Channel/Community type selector |
| Calls | Recent calls, new call, real voice | Video/group/stage only if provider qualified | Cosmetic "connected" fake sessions |

**Rework discipline:** freeze a screen design for each implementation wave after source audit, then implement that whole client/server/database/permission/test slice. Don't redesign a working screen simply because a competitor has another menu. **"Functional and important" outranks feature quantity**. Excluded or not-yet-qualified features remain visibly accounted for, not silently abandoned.

## 3. Priority, dependency and anti-rework policy

| Wave | First finish | Why |
|---|---|---|
| A — product/navigation/auth audit | AUTH-01–09, NAV-01–03, PROFILE-01–08 contracts | First-run and identity shape every downstream screen; do not restart backend auth |
| B — core communications | Complete and reconcile #227, CHAT-01–12, CALL-01–03 | Human messaging is the application foundation |
| C — Facebook-style Updates | UPDATE-01–08 and backend author + fee lifecycle, preserving video source | New user mandate; mixed author feed + paid human publisher requires financial/security contracts |
| D — individual P2P + human reputation | PROFILE-05 + P2P-01–10 | High trust, important user journey; exploit existing real escrow code |
| E — Rooms full overhaul | P5-R01–22 / ROOM-01–18 | One unified configurable Room, start backend ownership migration |
| F — wallet/service/creator integration | WALLET/BILL/CREATOR and remaining roadmap | Transaction, feed and Rooms must share real identity/ledger |
| G — holistic acceptance | SYSTEM-01–09 / Phase 8 | No missing route or invisible privacy/backfill defect |

**Parallelism:** P2P and Updates API/DB work can progress while #227 human messaging integrates, but shared profile schema, one financial approval authority, router, canonical roadmap and migrations require one integrator. The order above is dependency emphasis, not a mandate to block independent lanes.

**Release gate:** Every app section must have (a) documented final screen tree and visuals in prose, (b) current-source mapping with implemented/partial/missing status at exact SHA, (c) complete user journey and state matrix, (d) API + data + permission contract, (e) tests and physical-device/provider/settlement evidence, (f) no silent remaining CANDIDATE register rows. Readable Docs/PR ≠ shipped app.

## 4. Comparative research and omissions to avoid

- [WhatsApp communication and linked-device help](https://faq.whatsapp.com/), static [WhatsApp component index](../whatsapp-decompiled/WHATSAPP-COMPONENTS-INDEX.md): compact inbox/voice/request/blocks/group governance as a journey, not copied protected assets.
- [Facebook Home and Feeds](https://about.fb.com/news/2022/07/home-and-feeds-on-facebook/): one vertically scrolling feed mixed from people/pages/groups, with user-controllable Following. [Facebook creation improvements](https://about.fb.com/news/2025/12/making-it-easier-to-create-discover-and-share-content-on-facebook/amp/): low-friction posting and commenting. [Facebook video publishing](https://about.fb.com/news/2025/06/making-it-easier-create-videos-on-facebook): retain video in main posts.
- [OPay reference guide](AI-DEVELOPER-WALLET-IMPLEMENTATION-GUIDE.md) and [OPay FAQ](https://static.opayweb.com/faqs): verified recipient, receipts to support, unknown outcomes. Financially sensitive operations must use independent real provider evidence.
- [Binance P2P overview, updated June 2026](https://www.binance.com/en/academy/articles/what-is-binance-p2p-and-how-to-use-it) and [P2P user trust metrics guide](https://www.binance.com/en/blog/p2p/7428324997079645557): escrow, seller stats, completed trades, disputes and pay/release time. Reuse such *risk information* for individual traders, NOT Binance merchant admission/crypto product range or unsupported claims.
- [Telegram evolution](https://telegram.org/evolution): topics and linked communities only as inspiration for one Rooms product. No Telegram Stars, TON-based tools or merchant features.

**Source authority warnings:** PR #227/#228 are not merged on this starting SHA. Current feed `authorMasanaId` does not authorize human publishing. Current phone sign-in uses password; existing email supports OTP, not generalized SMS OTP. P2P existing rate is NGN kobo/MSNW: that is a current code-specific workflow and does not imply global fiat support. Do not rebase away PR #227's separate human transport, paid Room entitlements, financial history or account security contracts.
