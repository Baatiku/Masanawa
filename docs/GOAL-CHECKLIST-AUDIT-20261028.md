# Goal checklist and retirement audit — 28 October 2026

This audits the stable UX checklist in `PRODUCT-ROADMAP-20261019.md`, not the separate 88-item Promote & Earn expansion. A source checkmark means implemented source plus relevant green automated verification; it does not certify production deployment, provider delivery, funds finality or physical-device behavior. No new owner-handset-only acceptance gate is introduced.

## Retirement and retained history

The reachable product remains the five Home/Chats/Wallet/Calls/Data tabs. Legacy Rooms, human direct communication, free human publishing, P2P/crypto consumer routes and multi-Masana calls stay retired. Approved funded human promotions are the explicit Home exception. Protected historical finance callbacks, immutable ledgers and financial recovery outboxes remain: removing consumer entry points is not authority to erase obligations.

The architecture/Gateway retirement tests confirm retired consumer services are not composed and retired routes stay unavailable. Flutter deep-link and five-tab tests cover redirects without instantiating removed screens. No active reference to the removed `GatewayGroupCallTransport` remains. Android permissions still have active media/voice/notification consumers; removal is reference-based, not cosmetic.

Privacy review found and repaired omissions rather than certifying the old deletion behavior: newer names/contact/country/subdivision/provenance must be erased after canonical disablement; MB/NGN financial history, held funds, cash debt and uncredited referral liabilities participate in the existing financial-clearance hold. Empty initialized wallets alone do not create an obligation. Account identifiers and immutable history remain. This extends the existing clearance contract; it is not a legal retention-policy certification or a new proof that concurrent external financial events cannot occur.

## Verification scope

- PASS_REAL: TypeScript compiler and architecture/registered-route checks; PostgreSQL-WASM SQL execution for private erasure, disabled-user/tenant isolation, MB/NGN ownership, recipient movements, referral liabilities and empty-wallet behavior.
- PASS_SIMULATED: Flutter sharing/media/player/session/call interruption tests (23 after reconciliation), plus prior five-tab/deep-link retirement batch (26). Native player/share channels are simulated; no real media/provider/device outcome is inferred.
- The consolidated identity/Gateway/privacy/retirement batch passed 38 tests. The deletion subset passed 10 tests. Exact-head hosted source PR checks and merge references are recorded below.
- NOT_RUN here: live calls/replies, Billstack funds verification, paid Flutterwave delivery, production rollout, APK delivery, native-device audio/share acceptance. No infrastructure mutation or live financial/account-deletion action occurred.

## Remaining substantive qualification

| Stable IDs | Remaining work |
|---|---|
| UX-R02, UX-R06 | Qualify approved live provider/model/voice, trusted connected-second/reply outcome and settlement, then authorized rollout. Source integration and automated accounting coverage are recorded in the roadmap. Current deployed switches were not queried by this audit. |
| UX-R03, UX-F03 | Correlate the reported installed-build/deployed-stage incident with exact versions and prove the actual repaired provider connection; do not infer success from old HTTP status logs. |
| UX-W04 | Independent fulfillment cost, fee, margin and limits evidence for the proposed versioned price ladder. Source rejects missing/expired/unprofitable evidence. |
| UX-D05 | Independent Flutterwave allowance/validity contract qualification. Authenticated 62-item discovery and the owner's 36-plan selection exist; raw `s` suffixes are not independently certified day units. |
| UX-D06 | Supported provider delivery/readback/webhook qualification against original MB operations, including unknown/late/reversed outcomes. HTTP 200 alone is not delivery. |
| UX-NGN06 | Independent Billstack finality/reversal qualification remains separate from the implemented PG/HTTP/mobile source checks and owner-authorized signed-webhook credit mode. |

The separate Promote & Earn checklist still contains substantial backend, fraud, financial, approved-media and privacy work. This audit neither closes those items nor changes another window's claimed backend batch. Historic dated progress paragraphs remain an audit trail; this checkpoint supersedes their old pending source counts.

## Stable-ID reconciliation

59 unique active stable UX IDs: 51 source-closed (including this audit after merge), 8 substantive qualification items open. UX-Q02 is the retired process-only gate; UX-R01 is not an active checkbox. No active ID is duplicated.

| Group | Source-closed IDs | Open IDs |
|---|---|---|
| R | UX-R04, UX-R05, UX-R07, UX-R08 | UX-R02, UX-R03, UX-R06 |
| C | UX-C01, UX-C02, UX-C03, UX-C04 | — |
| P | UX-P01, UX-P02, UX-P03 | — |
| F | UX-F01, UX-F02, UX-F05, UX-F04 | UX-F03 |
| S | UX-S01, UX-S02, UX-S03, UX-S04, UX-S05, UX-S06 | — |
| W | UX-W01, UX-W02, UX-W03, UX-W05 | UX-W04 |
| T | UX-T01, UX-T02, UX-T03, UX-T04, UX-T05 | — |
| D | UX-D01, UX-D02, UX-D03, UX-D04 | UX-D05, UX-D06 |
| H | UX-H01, UX-H02, UX-H03, UX-H04, UX-H05 | — |
| L | UX-L01, UX-L02, UX-L03 | — |
| N | UX-N01, UX-N02 | — |
| Q | UX-Q01, UX-Q03 | — |
| NGN | UX-NGN01, UX-NGN02, UX-NGN03, UX-NGN04, UX-NGN05 | UX-NGN06 |

## Source checkpoints

- Sharing/audio: #549, exact head `19feeab75919971c2d560b15f2ce1c0ff7874749`, merge `7c8f128c8b16524cd2b9f086e301f2fb2ea1bb5e`; Mobile Build `40654211390` and Foundation `40654211416` PASS. UX-S05/S06 source-closed.
- Private erasure/financial safeguards: #566, documentation-reconciled exact head `b74b010b79cd2f4a02397bfae5c00014693fb3a0`; Foundation `40654844132` and canonical runtime `40654844137` must PASS and #566 must merge before this audit/checklist closure merges. Initial source head `e1e681f7f254008c2dbb246fcd548cca27a1c447` also passed Foundation `40654162540` and canonical runtime `40654162590`.
- Activity reconciliation, hold history and posted receipts: merged #539, #544 and #533; see UX-H01–H05 for their exact source/check evidence.
