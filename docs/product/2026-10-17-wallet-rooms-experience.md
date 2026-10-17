# Wallet, calls, memory, contacts and Rooms: owner checklist and focused design

Audit baseline: `bdf3771a50fe13f4c02f5e8bf6860016dea4f0d9` (17 October 2026). This is a source audit and proposed design, not a claim of installed-app or provider acceptance. Direct owner instruction: audit Wallet before redesign; merge the small fixes together; plan substantial changes first. Keep the existing Flutter/Riverpod/Dio, Gateway and PostgreSQL stack and canonical financial services.

## Complete owner checklist

| ID | Request | This batch / next milestone |
|---|---|---|
| W01 | Audit the entire Wallet before changing its design | Source audit below; no Wallet-home redesign in this batch |
| W02 | Better balance card with useful small details | Planned: available balance, eye toggle, refresh freshness, reserved amount only when nonzero, Fund action |
| W03 | Zero balance and Fund instead of unavailable when genuinely empty | Planned: canonical custody readback; distinguish verified zero from failed/unknown read |
| W04 | Replace Services chips with asset-style rows | Planned: Data bundles, Airtime, Electricity, TV; remove duplicate Crypto shortcut |
| W05 | My assets / Transactions tabs | Planned: same Wallet page, recent transactions preview with View all |
| W06 | Dedicated full transaction history | Planned: all platform financial operations, chronological groups, filters, search, pagination and export |
| W07 | Move Fund onto card; Send / Convert / Receive / P2P in one line | Planned; four equally spaced actions, no wrapping at normal phone width |
| W08 | Dedicated pages throughout Wallet; no app sheets/pop-up forms | Planned route migration below, including review, receipt, payment and P2P flows |
| W09 | Simple sending and data purchasing, informed by OPay | Planned short forms, recent recipients, inline validation and clear review |
| W10 | Beautiful, organized transaction rows | Planned single consistent row and receipt; no stacked independent history widgets |
| C01 | Visible Data Bundles on every Masana chat header beside call/search | Small fix: existing billing link restyled and reordered; no new purchase backend |
| C02 | Full call screen instead of pop-up | Small fix: full Navigator route using existing admission, microphone and teardown lifecycle |
| C03 | Call recording | Planned dual-track recording; no second microphone recorder or pretend Record button |
| M01 | Persistent agent memory and stop repeated introductions | Audit + continuity/template/context plan below |
| P01 | Remove P2P landing description | Small fix: remove promotional introduction; preserve payment review and network/escrow instructions where decisions occur |
| A01 | Country flags instead of contact chat icon; search by country | Planned explicit country metadata end to end; never infer nationality from language/name |
| R01 | Audit and simplify Rooms and needed features | Audit + six-page/flow plan below |
| D01 | Checklist first, small fixes merged, substantial design planned, no wasteful work | One combined document/PR; scoped tests once; no repeated APK builds in this pass |

## Wallet audit findings

| Source | Current behavior | Result / required change |
|---|---|---|
| `screens/wallet/wallet_screen.dart` | Main page, five wrapping actions, asset summary, service ActionChips, four independent activity blocks | Reorganize one card, four actions, two tabs and compact service rows |
| `finance/msn_balance_card.dart` + `msn_balance_transport.dart` | Card reads `/v1/wallet/msnw`; missing binding/404/provider failures appear unavailable | A missing on-chain binding is not zero. Use the spendable custody authority for the in-app card |
| Gateway `msn_wallet/msnw_onchain_balance.ts` | Requires verified chain, token and wallet binding before returning an on-chain amount | Keep this for relevant on-chain asset details; do not require it to display an existing in-app custody balance |
| `finance/msnw_custody_send.dart` | Send uses custody preview/execution; activity reads `/v1/wallet/msnw/custody` and `/transactions` | Header and actions must share the same available/reserved custody balance and asset precision |
| `finance/msnw_paystack_funding_sheet.dart` | Funding is a sheet; verification and payment status are separate from card | Dedicated funding flow and status page; update balance only from settled readback |
| `finance/msnw_stablecoin_convert.dart` | Conversion form/review in sheets/dialogs | Dedicated conversion and review pages preserving quote expiry, consent and recovery |
| `finance/crypto_wallet_screen.dart` | Asset list plus separate activity; buy/receive/convert/withdraw inputs and details use sheets/dialogs | Keep asset rows; migrate the existing connected operations into dedicated pages |
| `finance/msnw_verified_funding_activity.dart`, custody, conversion and P2P activity widgets | Multiple lists with different labels, statuses and refresh behavior | Normalize one account-authorized transaction projection; one operation must not appear repeatedly |
| Gateway `wallet_projection_routes.ts`, `wallet_projection_sources.ts` | Existing `/v1/wallet` projection includes legacy Credits/clone fields; merged history is bounded to a per-source limit | Do not relabel legacy balances as MSNW or call this complete cross-platform history. Extend canonical financial read models with cursor/filter/export contracts |
| `finance/msnw_p2p_screen.dart` | Dedicated landing/order screen, but fields, confirmations, bank selection and evidence actions use dialogs | Keep connected escrow contracts; move forms/reviews to pages, remove landing essay |
| `screens/billing/billing_screen.dart` | Existing connected billing page | Reuse service/catalog/purchase operations; simplify progressive form and dedicated review/result pages |

The on-chain/custody mismatch is an evidenced architectural gap and a likely cause of the owner's card symptom. It is not a diagnosis of their private account balance. No production financial records were inspected or changed in this audit.

## Wallet design: 16 reusable page types

These are routes for existing tasks, not 16 new top-level destinations. Reuse Review and Receipt across operations. Root bottom navigation stays unchanged.

| ID / page | Top-to-bottom design and controls | Entry / next / source |
|---|---|---|
| W-S01 Wallet home | White page; green balance card with MSNW label, hide/show, available amount, last refresh; small reserved row only when needed; Fund button inside card. One row: Send, Convert, Receive, P2P. My assets / Transactions tabs. Asset-style service rows below | Existing Wallet tab. Assets open W-S02; Transactions preview opens W-S11 |
| W-S02 Asset details | Asset name/icon, exact available/reserved amount, network where relevant, supported actions, asset-filtered activity. No unrelated totals or technical audit text | Asset row; Send/Receive/Convert/Withdraw pages |
| W-S03 Fund | Available funding methods as rows; amount/currency, limits, final MSNW credit and fees from server. No carousel or unrelated offers | Card Fund → Review → provider payment/instructions/status |
| W-S04 Payment / deposit instructions | Relevant bank/account or crypto network/address/memo, copy and QR where supplied, expiry/minimum/confirmations; check status and return. Warnings only where needed before payment | Fund or Receive → pending status → Receipt. Redirect alone never means success |
| W-S05 Send | Username search with verified recipient result, amount, available balance, optional note; recent recipients only if real account-scoped data exists | Send → Review → status/Receipt; stable recipient ID, not name/phone alone |
| W-S06 Receive | Choose in-app username/QR or qualified crypto network, then copy/share details. Unsupported address/network gives a recoverable unavailable state | Receive → W-S04 as needed; never fabricate an address |
| W-S07 Convert | Source/destination selectors, source available amount, amount entry; server rate, fee, received amount and expiry | Convert → Review → status/Receipt; changes invalidate prior quote/consent |
| W-S08 Withdraw crypto | Asset/network, destination, memo if required, amount and balance. No platform fiat withdrawal | Asset details → Review → status/Receipt |
| W-S09 Review | Recipient/product/destination, debit and credit assets/amounts, fees, total and quote expiry, one Confirm action; Back preserves draft and revalidates changes | Shared by sending/funding/conversion/billing/P2P; canonical authorization and idempotency |
| W-S10 Receipt / operation status | Clear status header, amount, recipient/product, reference, fees, timestamps and concise chronological timeline. Copy reference, share/download receipt, Help linked to this operation. Pending/failed states have only valid recovery actions | Shared destination after execution and from History; no client-invented success |
| W-S11 All transactions | Search and date-grouped rows: type icon, recognizable recipient/product, time, signed amount/asset and status. Type/status/date/asset/direction filters; search reference/counterparty/product. Load more, pull refresh, Clear filters, Export | History tab → View all; row → Receipt; filters → W-S12; export → W-S13 |
| W-S12 History filters | Full page with inline chips/date fields for All / funds / transfers / conversions / crypto deposits/withdrawals / bills / P2P / calls / Rooms / fees/refunds; status, asset, direction and date range. Apply and Reset | Return preserves filter/search and list position; query is server-authorized |
| W-S13 Export | Selected filters/date range, format CSV or PDF statement, timezone, clear export scope and Generate. Download/share only after complete generation; retry/cancel for failure | Same authorized query as History. Native system save/share picker is acceptable; no custom wallet pop-up form |
| W-S14 Services checkout | Data: network → plan → recipient → Review. Airtime: network/recipient/amount. Electricity: provider/meter lookup/type. TV: provider/smartcard lookup/package. Remember only consented account-scoped recipients | Service rows and chat Data Bundles; reuse existing billing catalog/lookup/quote/execute/status APIs |
| W-S15 P2P market / My orders | Buy / Sell / My orders tabs, compact offers with rate, available amount, limits and payment method. No landing essay. Offer details, sell offer editor and verified bank setup are full-page steps in this flow | P2P action → amount/Review → W-S16; preserve existing merchant/bank authorization |
| W-S16 P2P order / dispute | Exact order status, counterparty, payment details, countdown only while applicable, amount and escrow timeline; valid Pay/Mark paid/Confirm receipt/Cancel/Dispute actions. Evidence and dispute forms use dedicated pages | Orders/history/deep link; original operation/revision retained; a screenshot never releases escrow |

Services rows: **Data bundles · Airtime · Electricity · TV / Cable**, with icon, concise name, optional relevant provider/last-use value and chevron. Remove the separate Services heading/chip cluster and duplicate Crypto entry. Do not add loans, cards, savings, rewards, charts, a second currency balance or speculative services.

### Balance states and presentation

- Verified `availableMicro=0`: show **0 MSNW**, Fund; no red error and no unnecessary explanatory paragraph.
- Verified positive balance: exact formatted amount; never sum custody and an on-chain representation of the same funds.
- Reserved amount: show only when nonzero; spending uses available amount.
- Loading: amount skeleton; do not briefly flash zero. Refresh failure can retain same-account cached value only with a visible stale indicator.
- Unknown/error: show a dash and concise Retry; Fund can remain reachable if the funding capability is available. Do not call an unavailable balance empty.
- Signed out/account switch: clear private values/drafts and require sign-in; no previous account flash.
- The live product remains **MSNW**, matching current repository/owner authority. Historical MSN/Cr obligations are preserved, not renamed or silently converted.

### History and export contract

Use a read projection over existing ledgers/provider operations, not a second money ledger. Record includes stable transaction/operation ID, category, direction, asset and exact atomic amount, fees, server status, created/updated/settled timestamps, public counterparty/product label, receipt reference and source link. Include funding, transfers, conversions, crypto deposits/withdrawals, service purchases, P2P, paid calls, paid Room subscriptions, fees, refunds and reversals where actually supported. Exclude free chats and internal implementation events.

Historical charges retain their original exact denominations in receipt/audit records; never relabel legacy Credits/MSN as MSNW or expose a second spendable balance. Qualify the paid-call/Room charge adapters against their actual settlement asset before unifying those rows.

Correlate funding/payment/conversion legs under one operation with an expandable timeline. Keep linked refund/reversal entries clear; avoid duplicate rows from custody, provider and reconciliation feeds. Stable newest-first cursor uses timestamp plus ID. Filters and export cover all matching pages, not only the currently loaded rows. Export captures a bounded query snapshot and exact timezone, includes pending/failed rows and a status column, separates totals by asset, escapes CSV formula prefixes, fences authorization at creation/download, and never exports another user's data or private secrets. Start with CSV and existing receipt download; PDF statement follows in the same History milestone using the repository's existing generation capability, without a new paid service.

### Shared interaction rules

All app money input, selection, confirmation, status and receipt views are full routes with normal Back behavior. Preserve draft on Back; invalidate obsolete quotes; prevent repeat Confirm while execution is pending; an ambiguous network outcome opens Checking status instead of creating a second operation. Use concise labels and inline validation. Required network, fee and escrow warnings stay at the relevant decision, not as introductory essays.

Every page handles loading, empty, partial failure, offline/stale, retry, authentication expiry, validation, unavailable capability, pending, failed, successful and account-switch states as applicable. Use server capabilities rather than extra compile-time flags. Support small phones, large text, keyboard insets, screen-reader labels, 48dp actions and horizontal layouts that do not overflow. No amount arithmetic in binary floating point.

## Memory and persona audit / plan

Evidence: Gateway `agent_conversation.ts` already loads completed history from `mobileShell.listHistory(limit:16)` into text/media inference. `conversation_history.ts` retains bounded complete pairs. PostgreSQL `agents/mobile-shell.ts` scopes by tenant/user/character/relationship and reverses newest-first rows into chronology. Therefore it would be inaccurate to say there is no conversation history at all.

The live-call client currently sets a generic name-only system instruction and starts a new conversation with a greeting. No durable user-fact/summary injection is established by that path. Memory packages exist in the monorepo; reuse and wire them before creating another memory store. The repeated introduction symptom still needs a two-turn/provider reproduction; a longer persona prompt alone is not a complete fix.

M-S01 (no new top-level screen): server-controlled, versioned persona template = identity/profession/country + voice/language + tone + relevant skills + continuity behavior. Greet briefly once at the start; answer follow-ups directly; never repeat biography unless asked. Do not claim memory that is not present.

M-S02 (existing chat/call): compose recent conversation, bounded durable summary, explicit confirmed preferences/facts, relevant task state, then the latest user turn. Scope to tenant + user + Masana; a different agent cannot automatically read another private conversation. Apply the same server-owned context to text, voice notes and Live grant/setup. Preserve provider reconnection semantics. Memory cannot authorize spending or override tool/financial checks.

M-S03 (existing profile privacy action): Forget this conversation/memory with a clear dedicated confirmation page; delete/tombstone the relevant summary/facts and prevent queued extraction from resurrecting them. App restart and session renewal retain permitted memory; logout clears local private caches. Keep shared/public persona facts separate from private user memory.

Acceptance: user gives a name/preference → later text and voice-note follow-up recalls it → app restart and Live call reuse permitted context → fresh/forgotten/different user or agent does not leak it. Measure repeated introductions, fabricated recall, extraction failures and prompt size. No new vector service or paid provider until existing retrieval is shown insufficient.

## Calls and recording

C-S01: full-screen active call using current verified admission, audio ownership and lifecycle reporting; caller identity/status above, mute/speaker/end anchored for easy reach. Back ends through existing cleanup; no second microphone claim. The small batch only changes the existing call container/route.

C-S02: recording is a separate native audio milestone, default off. Start/stop is explicit, with a persistent recording indicator and a clear participant recording notice. Capture the existing local microphone PCM and remote playback PCM with timestamps; mix/resample both tracks using the current session/audio bridges. Do not open another `AudioRecorder` or record only the local microphone. Stop/finalize on hangup, interruption, permission loss and account change; handle low storage and failed finalization without breaking the call.

C-S03: recording detail reached from that call's history entry: play, filename/date/duration, delete and explicit share. Store privately for the correct account, no automatic upload, no hidden/background recording beyond the active call. Qualify both directions, headset/speaker, mute, interruption, reconnect, timing and cleanup on Android before claiming recording works. Do not add an inert Record button in the small patch.

## Country flags and search

A-S01: add explicit nullable ISO country code and country display name to canonical admin persona metadata, Gateway directory response, Flutter model and cached directory. Backfill all 26 personas from established identity/backstory, never from their language or name. Render the flag with accessible country label in the contact trailing slot; keep tapping the contact to chat, and Room access on profile. Unknown country uses a neutral globe, not a guessed flag. Search matches name, profession and normalized country name/code/localized aliases. Cover cache round-trip, missing/malformed code, Nigeria/NG and multi-country search fixtures. Do not create a client-side hardcoded nationality map.

## Rooms: minimal plan, six existing page/flow types

Audit: `features/rooms/rooms_screen.dart` already has Joined/Discover, search, room detail, lessons and questions, but uses dense cards, multiple content sections and a detail sheet. Some text promises a seven-day trial and calls the member count active; those labels must reflect actual server entitlements/presence. Preserve existing membership, lesson, audio, moderation and saved-lesson contracts.

| ID | Minimal design | Journey / important states |
|---|---|---|
| R-S01 Directory | Joined / Discover, full-width search and compact profession rows: portrait, subject, Masana, real latest lesson/activity and free/paid label. Language filter on a dedicated filter page only if needed | Tap → Room; empty Joined has one Discover action; no-match has Clear; cached/offline label and Retry |
| R-S02 Room timeline | Simple header with room subject and info action; one chronological lesson/question/reply stream, date separators, one compact pinned lesson. One media player; no simultaneous autoplay or competing sections | Existing members read/listen and ask; pending send/retry stays bound to original message; account/membership loss removes restricted content |
| R-S03 Room information | Masana/profile, short purpose, language, actual member count, membership/price, notifications, Join/Leave and Report when relevant | Dedicated page; no exaggerated active counts, unsupported trial claims or introductory dashboard |
| R-S04 Membership review | Exact free/paid entitlement, price/period, trial only if server grants it, debit/fee and clear confirmation | Reuse Wallet review/receipt; insufficient funds opens Fund then revalidates; no false joined state |
| R-S05 Lesson detail / question thread | Lesson title/body/audio with transcript, Save, questions and replies; one concise question composer | Paginated thread, moderation feedback, playback completion, failed media/retry and membership checks |
| R-S06 Saved lessons | Compact saved items grouped by Room, search, open and remove | Reuse existing saved-lesson client; empty state, deleted/unavailable lesson and account isolation |

Keep teacher publishing/admin control, existing membership enforcement, concise reporting and essential notifications. Exclude gamification, leaderboards, gifts, redundant dashboards, user Room creation and unrelated live-stage features from this redesign.

## Delivery order and checks

1. **Small batch now:** visible/reordered Data Bundles action, full-screen outgoing call route, P2P landing copy removal; scoped widget checks and one merge.
2. **Wallet home + balance + navigation:** approve this design, connect canonical custody balance, card/zero/error states, Fund placement, four actions, asset/service rows and history tabs; convert connected money forms to dedicated pages. Test zero/unknown/account switch, keyboard and 320px layouts, Back/draft, quote/consent and one canonical operation per Confirm.
3. **Unified History + details + export:** source adapters for every supported financial category, correlation/deduplication, server pagination/filter/search, receipt and CSV/PDF export. Test authorization, exact values, pending/reversal links, full-range export and CSV safety. No provider execution is introduced by the read model.
4. **Contacts country + persona continuity:** publish metadata/context contracts, backfill real identities, wire cache/search and existing memory services. Run cross-account, cross-agent, restart and voice continuity checks.
5. **Rooms simplification:** reuse current membership/media/Q&A flows; scope state/permission and narrow-phone tests to the six flows above.
6. **Call recording:** native two-track implementation and signed Android/device qualification after the call route remains stable.

Avoid repeated broad audits, repeated document variants, new infrastructure and repeated APK builds between minor patches. Run a focused test batch per milestone and compile one APK after the selected implementation batch is integrated. The previous 1.0.5 packaging attempt failed on Gradle cache integrity; no new APK is claimed by this source/plan delivery.

## Pattern research (17 October 2026)

OPay's official site emphasizes funding, transfers and bill payments; its publisher app listing explicitly highlights transaction history and airtime/data purchasing. Adopt short, task-focused flows and discoverable history, not unrelated loans/cards/rewards or a copied visual design. These sources do not establish Masanawa provider readiness or prove OPay's current screen layout:
- https://opayweb.com/
- https://play.google.com/store/apps/details?id=team.opay.pay&gl=NG&hl=en
