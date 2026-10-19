# Continue Masanawa — current source authority
**Current revision:** 2026-10-19.

Read in this order: [product phases and statuses](docs/PRODUCT-ROADMAP-20261019.md) → [screens and customer journeys](docs/SCREEN-JOURNEYS.md) → [contributor/financial security rules](AGENTS.md) → only the technical contracts needed for your assigned milestone.

## Canonical owner decisions
- International human and **Masana** communication and creators with Chats / Status / Wallet / Calls / Rooms, Chats default. Preserve WhatsApp-like visual simplicity.
- One free published creator Masana per user lifetime; additional successful publications **5,000 MSNW default**, subject to admin-edited future pricing and canonical server-authorized settlement. Creator edits, media, earnings and optional voice references need completion as the roadmap specifies.
- **MSNW only** for customer wallet credit and designated official token, not MSN/Cr/Credits. Preserve unreconciled historical financial records and separate source availability from on-chain launch/redeemability.
- Only authorized market/provider capabilities appear available; users approve money actions. No screenshot escrow release. No direct platform fiat cashout.
- Approved voices where configured: **Bodi male, Fora female**. Other personas may use distinct supported voices after qualification.
- Do not reintroduce retired Twins, personal clones, separate Agent/Gwani root tabs.

## Current next phase
Owner approved human chat/calls, Contacts **Masana / Humans**, one unified human/creator profile, and user-created channel-style **Rooms** on 19 October. Start Phase 4 in the canonical roadmap; Phase 5 covers Rooms/creator carry-forward, Phases 6–8 preserve Wallet/P2P/operations. Previous Phases 1–3 are owner-closed delivery rounds; #225 explicitly leaves source gaps carried into P5-C. Do not silently mark them verified.

## Phase 4 continuation
[PR #227](https://github.com/Baatiku/Masanawa/pull/227) implements human messaging and voice calls on top of #226. Source includes requests, media/voice notes, private encrypted draft/retry journal, authenticated event catch-up/outbox, combined inbox/history, unified profile Message/Call, privacy and Room invitation admission, qualified account deletion/export. Migration `0015_human_communication.sql` is additive; apply before upgraded Gateway/Worker. No financial changes. Hosted validation is being completed; consult the canonical roadmap for exact final head/evidence. Physical Firebase/LiveKit/device and deployed migration acceptance is not claimed. Phase 5 is the next source implementation phase, retaining **Rooms**.

## What the source already contains
A Flutter five-tab app; Gateway/Worker/PostgreSQL; Masana directory and chat/call/Status/Room flows; MSNW Wallet and P2P source; creator wizard/first-free/paid-publication (#212); creator voice binding (#214); notifications/search (#207); and multiple regression fixes (#218). **Do not create duplicates**. Issue [#220](https://github.com/Baatiku/Masanawa/issues/220) is open; its claimed checkpoint is not treated as merged code.

## Execution
Start from current `main` with fresh branch/PR/issue inspection and exact path ownership. Complete one **customer journey** at a time, including client, backend, DB, permissions, billing/receipts, failure recovery and tests. Merge safe, compatible work promptly after applicable executable checks and diff inspection; document skipped/unrun tests, actual provider/device gaps and deployed SHA separately. Railway Gateway, Worker and PostgreSQL are the relevant backend services. Preserve live database volumes, migration history, transaction obligations, signing keys and secret boundaries. A merge is not authorization to move money without qualified custody/settlement.
