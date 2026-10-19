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
