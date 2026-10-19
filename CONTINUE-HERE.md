# Continue Masanawa — current source authority
**Current revision:** 2026-10-19.

Read in this order: [product phases and statuses](docs/PRODUCT-ROADMAP-20261019.md) → [screens and customer journeys](docs/SCREEN-JOURNEYS.md) → [contributor/financial security rules](AGENTS.md) → only the technical contracts needed for your assigned milestone.

## Canonical owner decisions
- International **Masana** AI communication and creators with Chats / Status / Wallet / Calls / Rooms, Chats default. Preserve WhatsApp-like visual simplicity.
- One free published creator Masana per user lifetime; additional successful publications **5,000 MSNW default**, subject to admin-edited future pricing and canonical server-authorized settlement. Creator edits, media, earnings and optional voice references need completion as the roadmap specifies.
- **MSNW only** for customer wallet credit and designated official token, not MSN/Cr/Credits. Preserve unreconciled historical financial records and separate source availability from on-chain launch/redeemability.
- Only authorized market/provider capabilities appear available; users approve money actions. No screenshot escrow release. No direct platform fiat cashout.
- Approved voices where configured: **Bodi male, Fora female**. Other personas may use distinct supported voices after qualification.
- Do not reintroduce retired Twins, personal clones, human-to-human messaging, user-created Rooms or separate Agent/Gwani root tabs.

## What the source already contains
A Flutter five-tab app; Gateway/Worker/PostgreSQL; Masana directory and chat/call/Status/Room flows; MSNW Wallet and P2P source; creator wizard/first-free/paid-publication (#212); creator voice binding (#214); notifications/search (#207); and multiple regression fixes (#218). **Do not create duplicates**. Issue [#220](https://github.com/Baatiku/Masanawa/issues/220) is open; its claimed checkpoint is not treated as merged code.

## Execution
Start from current `main` with fresh branch/PR/issue inspection and exact path ownership. Complete one **customer journey** at a time, including client, backend, DB, permissions, billing/receipts, failure recovery and tests. Merge safe, compatible work promptly after applicable executable checks and diff inspection; document skipped/unrun tests, actual provider/device gaps and deployed SHA separately. Railway Gateway, Worker and PostgreSQL are the relevant backend services. Preserve live database volumes, migration history, transaction obligations, signing keys and secret boundaries. A merge is not authorization to move money without qualified custody/settlement.
