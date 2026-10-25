# Five-tab functional gap audit — 25 October 2026

**Basis:** active `main` after merges #413/#414 and canonical `AGENTS.md`, `PRODUCT-ROADMAP-20261019.md`, `SCREEN-JOURNEYS.md`. This file records source/runtime facts and unmerged code separately; it does not claim provider/device qualification. Historical financial records, old applied migrations and the separate `Baatiku/Masanawa-App` are protected.

| Feature / journey | Main before work | Live remaining work / qualification |
| --- | --- | --- |
| Wallet summary | Server-backed MB readout already mounted; 1000 MB=1 GB; distinguishes Welcome, purchased and reserved | Account not created if grant absent; welcome-identity issuance must be verified |
| Add data / fund MB | Six server-rate package previews, no verified bank destination on main | #415 integrates authoritative 9PSB assignment view from previous #396; Billstack backend/provider activation remains unverified |
| Send MB | Wallet Send disabled; an unmerged standalone review contract existed in #392 | This batch mounts reviewed exact purchased-MB Send on authentic PG account & active, unblocked user identity **only with a server-side 32-byte review secret and recovery guard**. Requires qualified test migration and production Railway configuration |
| Request MB | Disabled; no one-time review/fill endpoint mounted | Seven-day signed request, decline/cancel/expiry, one-time Send settlement and receipt remain open |
| Tip Masana | No purchased-MB-only tip UI/write/readback | Separate immutable Masana tip ledger, receipts and moderation/attribution remain open |
| Wallet activity/receipts | Historical account export survives; no new MB receipts UI | New MB transactions, search, pending/reversed readback and safe original-status recovery still required |
| Data redemption | UI entirely disabled, Gateway whole-GB catalogue/quote ready only when certified provider item mapping is configured | #415 enables server-proven catalogue and quote UI. Provider-delivery-confirmed purchase journal #398 is unmerged; no live debit before real status reconciliation |
| Billstack funding | Provider parser and repository logic exist; public account funding not qualified | #397 unmerged; verified merchant terms, persistent account assignment, signed real callback, actual bank settlement and negative-liability correction needed |
| Masana chat | Active text/media conversation and inbox; legacy Credits surfaces still reachable internally | Approve Masana-only write admission; 1 MB reservation/capture on successful unique reply; remove old Credit flows and dormant group/attachment code |
| Masana audio calls | Masana-only history and voice pickers; Calls root has no funded New Call | Provider-confirmed connected-second MB metering, free setup/ringing, partial reserve release, expiry and reconnect safety; two-device/lock-screen qualification |
| Admin | Legacy admin/account scaffolding; Status editorial authorization | Fresh-auth allowlist; immutable rate/bundle approvals and operational reconciliation |
| Account and privacy | Auth, profile, block/report, notifications, deletion/export stay | Verify Send recipient block policy; offline, account A→B switch; high-font, RTL and real device |
| Historical obligations | Immutable old journal/migrations and signed provider callback paths retained | Any retirement migration is forward-only; never delete persisted financial liabilities |

## Verification and rollout rule

A merged source change is not certification of provider deposits, SMS/9PSB eligibility, Flutterwave allowance, bank settlement or connected provider audio. Feature UI should be presented from verified server state and return a truthful unavailable/error condition when required live qualifications, environmental secrets or routes are absent. No APK should ever be described as proving payments or actual call meter validity.

## This batch

The exact review-token nonce is the immutable PG transaction identity; server re-resolves a currently active, mutually unblocked human profile under the caller's tenant before Send, and only purchased MB moves. Quote is non-mutating; confirmation has account-sensitive authorization/recovery hold, while the existing SQL journal idempotently returns its receipt on replay. The Wallet exposes `/wallet/send` without reviving direct messages or old Credits. Live enablement needs `MASANAWA_GB_SEND_REVIEW_SECRET` (Railway secret, at least 32 UTF-8 bytes); absent secret leaves the new route unmounted and the UI reports a non-success state. Device/source checks and real tenant SQL testing must pass before any settlement acceptance claim.
