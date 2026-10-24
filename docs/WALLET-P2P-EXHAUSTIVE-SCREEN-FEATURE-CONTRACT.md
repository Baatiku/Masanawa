# Masanawa Wallet and P2P — exhaustive screen, function, state and acceptance contract

**Status:** 22 October 2026 source-and-benchmark audit; **not** a completed-feature or production-signoff claim. **Parent acceptance checklist:** [`PRODUCT-ROADMAP-20261019.md`](PRODUCT-ROADMAP-20261019.md), Phases 6, 7, 8. **Screen tree authority:** [`SCREEN-JOURNEYS.md`](SCREEN-JOURNEYS.md), WLT01–10 and A11–A18. This document is the detailed implementation inventory; new IDs below are **subtasks of existing roadmap tasks**, not replacement phase checkboxes. Preserve open gates until real provider, ledger, device, security and production acceptance.

## 0. Evidence confidence, competitor provenance and rules

- **Masanawa observed source:** current `main` at audit start `d24107b12a74ad7fe4625a65e912c35fbfc2d617`; Flutter `apps/mobile/lib/src/finance/`, `screens/wallet/wallet_screen.dart`, `screens/billing/billing_screen.dart`; Gateway `services/gateway/src/p2p/`, `msn_wallet/`, `wallet_projection*`; source/tests may exist without deployed routes, live providers or handset qualification. Actual status must be rechecked against new main before each batch.
- **Telegram Crypto Wallet / Walt (@wallet):** official documentation supports both sell and buy advertisements, maker/taker acceptance, order-specific chat, verification, payment and appeal, P2P Express and active-order resume. These are **external product docs**, not evidence that the uploaded decoded Telegram branch contains implementation. In July 2025 Wallet branded itself Crypto Wallet; later Walt/P2P Express documentation and regional options can differ.
- **Telegram Crypto Bot (@CryptoBot / `help.send.tg`):** a *separate product* with useful editable ad types, offer conditions, payment methods and dispute guides; it must never be merged into an invented Telegram Wallet implementation.
- **Reference branch `feat/telegram-p2p-wallet-reference` at `04a543b`** contains Android manifest, decoded assets/styles/currencies and component inventory, but **not committed DEX source, runnable Wallet mini-app, traced P2P API, escrow rules or trustworthy screen runtime**. TG07–TG15 from `TELEGRAM-REFERENCE-GAP-AUDIT.md` are *provisional* unless independently documented by product sources.
- **OPay decoded `opay-decloned`:** 2,233 XML layout resources, Smali and resource identifiers. Relevant patterns: transfer recipient/repeat prompt, checkout PIN, payment outages, transaction detail/reconciliation, service catalog/recipient validation. It does **not** demonstrate crypto P2P escrow, and original art/code must not be copied.
- **Binance P2P:** useful adjacent benchmark for detailed advertiser settings, status/filtering, market legitimacy, participant order messaging, appeal workflow, notice, merchant analytics and permissioning. Never transplant their KYC rules, merchant tiers, fees, fixed/floating pricing or bank/fiat support without independent Masanawa contracts.
- **Statuses**: **S** = specific source exists (NOT device/provider accepted); **P** = partial source requiring UI/backend changes; **N** = no bounded supporting source observed, to implement; **Q** = source may exist but real provider, approval, installed or deployed evidence is unverified; **C** = conditional later; **X** = deliberately excluded. Each row is a design/engineering requirement, not an assertion of shipped behavior. A feature is **complete** only after exact-SHA client/API/database, financial reconciliation, negative tests and environment/device gates appropriate to its risk.

**Canonical non-negotiable finance rules:** One Wallet and one set of authoritative owned balances; **Send** = internal custody transfer, **Withdraw** = external chain payout, **P2P** = buy/sell assets against *counterparty* fiat payment (never instant fiat platform withdrawal), **Swap** = qualified held-asset-to-held-asset exchange. 1 MSNW = ₦1 policy reference `msnw-ngn-1-v1`; crypto/fiat market rates and platform fees require signed/versioned server quotes and eligibility, never floating-point calculations or invented FX. Distinguish total settled owned, spendable, reserved, pending/uncredited, stale, disputed and unpriced. An order's buyer-paid claim, uploaded receipt, timer, AI message, push alert or bank screenshot **never** settles payment or releases escrow; server custody does so on independently qualified approval/reconciliation. Do not add a Funding/Trading subwallet, a separate P2P ledger, a sixth root tab, unverified key custody or automatic external payout after a P2P buy.

## 1. Roles, directions and exact money movement

| Role and perspective | Discovers | Starts order | Crypto custody | Fiat transfer | Verifies / finalizes |
|---|---|---|---|---|---|
| Taker **buys** asset from a maker's **sell** offer | Buy ads | Enter quantity, review rate/fees, submit order | Maker's *own* qualified available asset → same-Wallet escrow at server-defined admission boundary | Taker pays maker externally using approved bound method | Taker marks paid as claim; maker checks real bank receipt and authorizes release, or dispute |
| Taker **sells** asset into maker's **buy** offer **[N]** | Sell ads | Enter quantity, confirm buyer's terms | Taker seller reserves their asset at server admission | Maker buyer pays seller after both accept order | Taker seller checks receipt and releases, or dispute |
| Maker posts **sell** offer **[S/P]** | My Offers | Select asset/fiat/terms/verified receiving method, preview/publish | Reserve per policy; never overcommit inventory or double spend | Buyer sends to maker's verified payment method | Maker monitors multiple buyer orders; confirms/rejects/reports, pauses/edits offer |
| Maker posts **buy** offer **[N]** | My Offers | Select asset/fiat/payment method, maker funding/availability constraints, publish | Opposite seller reserves exact asset when order admitted | Maker buyer sends own funds externally to seller's verified receiving method | Seller independently verifies bank funds; maker cannot self-release |
| Verified merchant **[P/Q]** | Merchant enrollment/profile | Eligible ad creation, availability/limits and analytics | Same owned/escrow pools; security/risk limits server-side | Whitelisted ownership-verified methods only | Reviews counterparty conditions and responds to disputes; no unilateral escrow overwrite |
| Participant in order | Orders/activity, push/deep link | Resume original reference | Shows reserved/available accurately | Reads authorized order details only | Message, upload evidence, mark paid, support, authorized cancel/confirm |
| Support reviewer and financial operator **[S/P/Q]** | Admin disputes/reconciliation | Case review; not a retail trader | Can order *audited authorized* resolution under dual controls, never mint | Verifies evidence independent of screenshot | Final reconciled refund/release/case closure; immutable event trail |
| Observer or unqualified user | May see eligible public offers only | No trading without verified rights | Never sees another owner's balances | No secret bank details / private chat | Read-only education/eligibility/region reason |

**Escrow ownership matrix:** `available + reserved = settled owner total` before definitive fee/settlement; offer listing does not credit or create assets. Buyer pending claim is *not* owned spendable asset. A legitimate release atomically debits seller reserved, credits buyer available and posts disclosed fees once; a lawful refund returns seller reserved to available once. Paid/disputed expiry is NOT a blind refund. NGN is off-platform settlement denomination unless a separately qualified fiat-custody product exists. The platform must not assume a user's bank transfer succeeded from screenshots, timelines or AI interpretation.

## 2. Navigation tree, complete screen and sheet inventory

**Root:** Chats · Status · **Wallet** · Calls · Rooms. P2P is a **Wallet child**, never a root. Every screen has real Back/Close, canonical deep link and original tab/scroll preservation. Reuse common `WalletFlowPage`, step-up, quote review, receipt, transaction history, error/empty/loading components and design tokens. Standard chrome: clear header, account/asset scope, one dominant primary action, helpful secondary controls, short labels, balanced density, 320dp/200% text, RTL, TalkBack, dynamic layout and reduced motion. Refer to the following IDs for exact screen implementation ownership.

| ID / status | Entry and top-to-bottom screen layout | Controls, navigation and exit | Required non-happy states |
|---|---|---|---|
| **W00 S/P** Wallet home | Quiet title and single compact truthfully labelled balance card containing eye/refresh, **own verified account number+Copy and Deposit**. Beneath it, **one vertically scrolling stack of compact tappable cards**: Withdraw, Send, Swap, P2P, Airtime, Data, TV, Electricity, **My assets** (owned MSNW+crypto entries inline), **Transaction history** (verified recent entries inline + View all). No horizontal quick-action rows, icon grid, My assets/Transactions tabs, external section headings or duplicate crypto wallet | Each icon/title/card is one keyboard/screen-reader accessible tap target; P2P→P00, service→B01, asset→W03, transaction→W18/W19; back restores same vertical-scroll offset, collapsed/expanded subcards and filters | signed out, partial/stale balances, provider pause, zero holdings, empty transactions, offline, unknown rate/rail, wrong owner and hidden amounts; all main actions discoverable by normal vertical scrolling |
| **W01 P** Asset picker | search, verified asset identity/network, eligible operation badges, real exact quantities, risk reason | choose → W03/W05/W09/W12/W15; cancel does not mutate funds | no eligible assets, chain disabled, unsupported ticker, wrong network, account switch |
| **W02 S/P** Asset inventory/manage | available/reserved/total, last verified, price timestamp, network/custodian breakdown, linked pending | filter/search, select asset, refresh, privacy eye | on-chain pending versus custody available, unpriced asset, duplicate ticker, stale service |
| **W03 P** Asset detail | original asset symbol+issuer/network, available/reserved, supported routes, activity, Send/Receive/Withdraw/Swap/P2P conditional | open operation with asset preselected and revalidated | held asset on paused deposit rail remains visible; rate unavailable not zero |
| **W04 S/P** Receive internal | verified Masanawa account number / handle, optional request QR/link, copy/share | copy, specific asset request, Back | wrong recipient, deleted account, sign-out, expired request, QR intent |
| **W05 P/Q** Deposit choice | Same-Wallet internal receive / qualified chain deposit / eligible fiat purchase / P2P | select route → W06/W07/W08/P00 | unavailable route visible with explanation, region/provider denied |
| **W06 P/Q** Chain deposit | exact asset/network selection, address/invoice, memo/tag, QR, limits/fees/confirmations/warnings | copy/share, create invoice as needed, refresh status W18 | address expiry, wrong-chain, under/overpay, reuse restrictions, chain reorg, pending credit |
| **W07 S/P/Q** Fiat MSNW funding | eligible source and verified account/name, transfer instructions, last verified evidence, original-reference status | refresh, initiate only qualified, View receipt W18, report wrong payment | unassigned DVA, provider down, pending bank transfer, fiat rollback, unknown settlement |
| **W08 P/Q** Qualified on-ramp | asset, rate, provider, gross/net, wallet destination, consent | review external payment provider (not auto approve) → W18 | provider unauth, eligibility, redirected app/return, charge with pending issuance |
| **W09 S/P** Internal Send | contact/account lookup, recipient verified display, saved recipients, asset, exact amount, availability, fee | Review W10; account switch invalidates inquiry; paste only on user gesture | recipient ported/blocked, max, insufficient, offline, duplicate intent |
| **W10 S/P/Q** Send review + step-up | sender, recipient, exact units, fees, total and policy, auth challenge | Confirm once → W11; Edit invalidates quote; Cancel safe | passkey/PIN/biometric denied, changed quote, idempotency, auth expiry, unknown result |
| **W11 S/P** Send result | pending/unknown/settled/reversed, reference/time, asset, recipient, history/help | original ID status, receipt W18, back to chat/Wallet | offline-after-submit, duplicate click, compensation or reconciliation |
| **W12 P/Q** Withdraw form | owned asset/network, address+memo/tag, whitelist/saved recipient, fee/net/min, chain risk | Scan/Paste address explicitly → W13 | wrong-chain/network, denied chain, drained fee, unsupported network, malicious QR |
| **W13 P/Q** Withdraw review | amount, fee and net, destination, network/tag, finality, risk, step-up | Confirm/reserve once; edit requires requote → W14 | delayed broker, cancelled challenge, network congestion, address changes, insufficient spendable |
| **W14 P/Q** Withdraw detail | queued/submitted/confirming/completed/failed/manual review, explorer if safe, reference | original-ID status, help, cancel only before irreversible stage | chain reorg, late success, partial provider acceptance, unknown outcome, refund |
| **W15 P/Q** Swap | from held asset/to supported held asset, rate, expiry, min, network/fee, exact received | review quote, confirm once, receipt W18 | unsupported pair, stale FX/liquidity, slippage, reserve race, partial failure |
| **W16 S/P/Q** MSNW conversion-and-withdrawal adapter | specifically labelled MSNW→supported crypto payout, not generic swap | original quote/recovery/readback; link W14 | no guaranteed conversion if real provider unavailable |
| **W17 P** Bills directory/service | Airtime/Data/Electricity/TV and only live eligible categories, beneficiary/recent, provider info | service→B01; back Wallet | no catalog, provider outage, ported phone, region not supported |
| **W18 S/P** Activity/history | unified transaction list, status, asset/type/date filters, search, pending prioritized, last sync | detail W19, export, reload, resume original operation | owner scoping, stale cursor, ambiguous outcomes, duplicate provider substeps |
| **W19 S/P** Receipt + help | canonical reference/status/amount/asset/fiat/fees/parties/network/date, proof state, redacted share | Refresh original, download, Help W20, share to chat only as *informational* card | pending/reversed/redacted, wrong viewer, failed export, proof spoofing |
| **W20 P** Operation-bound support | type/reason/details/evidence with restrictions, original reference, case status | create safe case, attach redacted media, track appeal | restricted participants, evidence expired, repeated ticket, support outage |
| **W21 P** Wallet safety/identity | eligibility/verification, sessions, payment security, trusted destination policy, risk education | start actual provider-backed KYC or secure step-up | denied region, recovery, locked device, no credential, suspension |
| **B01 S/P** Bills recipient & product | service/provider, editable operator, phone/account, saved beneficiaries, eligible denominations | Verify B02; actual product catalog | ported number, invalid meter/card, missing current package, untrusted saved details |
| **B02 P/Q** Bills provider validation | verified customer name/account/product, limits, evidence time, fee | review B03; changed input clears evidence | provider not enabled, mismatch, privacy, stale validation |
| **B03 S/P/Q** Bills purchase | exact MSNW/NGN quote, fees, payment source, consent, step-up | submit once → B04; prior duplicate warning | 2 devices, uncertain charge, provider service unqualified |
| **B04 S/P/Q** Bills delivery/receipt | pending/fulfilled/partial/failed/reversed, token/units privacy, original ID | poll original, help/refund case, receipt W19 | webhook replay, late success, reversal and compensation |
| **P00 S/P** P2P landing | eligible asset/fiat pair and availability, headline Buy / Sell / Orders, entry filters; My offers/merchant/security secondary | Buy→P01, Sell→P02, Orders→P16, My offers→P22 | no market, restricted jurisdiction, no eligible asset, offline, unread order alert |
| **P01 S/P** Buy offers list | asset, fiat, amount, payment method, search/filter, sort, merchant cards (rate/limit/available/trust/terms) | tap card→P03; save filter per account | empty market, offline snapshot with timestamp, disappeared/fully filled offer |
| **P02 N** Sell offers list | counterparties' **buy** ads with same asset/fiat/payment/amount filtering; seller has inventory | select verified buy offer→P04 | no buyer ads, seller balance reserved, counterparties restricted |
| **P03 P** Sell offer detail (taker buying) | merchant, trust methodology, eligible verified method, price/amount limits, terms, live quote indicator | Buy→P05; trader profile P28; report terms | stale/suspended ad, changes to rate/limits, unverified method, counterparty blocked |
| **P04 N** Buy offer detail (taker selling) | verified buyer's terms, who pays fiat, seller custody/fees, payout account, eligibility | Sell→P06; preview before reserving own assets | ownership mismatch, pair/network unsupported, buyer ad unavailable |
| **P05 S/P** Buy amount | quantity fiat or asset entry, exact rate, min/max, estimated fiat and fees, disclosure | quote P07, edit preserves safe draft | insufficient ad inventory, stale quote, invalid precision, account switch |
| **P06 N** Sell amount | quantity held asset, maker-buy ad rate/fees, seller's receiving method | quote P07, backend must reserve actual seller inventory | unsupported asset, reserved funds, maker capacity/expiration |
| **P07 S/P** Trade quote/review | buy/sell direction, maker/taker roles, frozen asset/fiat, verified name/method, exact fee/recipient, deadline and terms | Confirm once→P08; Cancel/Back retains safe draft | requote, seller capacity changed, buyer role switched, market paused |
| **P08 S/P** Order submission/recovery | secure original ID, request status, progress; no second tap if outcome unknown | View order P10, Check original, return P00 | client killed, 5xx, duplicate request across devices, unknown bank instructions |
| **P09 N** Maker acceptance queue | inbound requests per buy/sell ad, partial capacity and whether approval is required | approve/reject (only if server model supports)→P10 | expired request, cross-device race, ignored user, no auto-accept without rules |
| **P10 S/P** Order overview | buying/selling headline, escrow/reservation stage, fixed asset/fiat/fees, protected reference, deadline | Instructions P11, Order chat P13, Evidence P14, Help P15, receipt P18 | active/pending/paid/disputed/expired/settled/reversed, stale server clock |
| **P11 S/P** Payment instructions | participant-only bank/account/name/amount/reference, exact source-of-truth version, copy | external bank transfer → return; buyer marks paid P12 | no payment before accept, bank mismatch, share/screenshot deception, third-party payer |
| **P12 S/P** Mark paid | explicit actual-bank-transfer attestation, what was sent/when, confirm claim (not settlement) | creates auditable claim → waiting seller P10 | deadline race, over/under/partial payment, repeated claim, cancellation unsafe |
| **P13 P** Order-only conversation | participant identities/order header, chronological text, limited attachment preview, send status, moderator notice | replies, reference, report; close→P10 | wrong user, blocked, offline retry, revoked, harassment/PII, account switch |
| **P14 S/P** Payment proof/evidence | owner/time/type, privacy banner, upload/presigned retrieval, evidence history | authorized upload, download, image/pdf preview, redact/report | forged image, large file, revoked rights, duplicate upload, expired links |
| **P15 P** Dispute/appeal center | categorized reasons, protected order timeline, evidence, other party response, staffed case status | open/respond/withdraw only if lawful, return P10 | partial payment, nonreceipt, chargeback, fraud, conflicting release/refund |
| **P16 S/P** My orders | all/active/finished, Buy/Sell, asset/fiat/status/date, incoming requests and updates | order row→P10; support resume; refresh | order missing, offline/stale snapshot, pagination, cross-account |
| **P17 P** Detailed order timeline | immutable created/accepted/escrowed/instructions/paid/released/disputed/refunded event trail | event expands evidence/reference; W19 receipt | delayed event, out-of-order, overpayment and reopened dispute |
| **P18 S/P** P2P receipt | exact asset qty, fiat external denomination, original rate, fees, owner, status/reference | share redacted, Wallet Activity, Help | partial/reversed/cancelled not green-success; no proof by share |
| **P19 P** Trade updates | contextual order/offer alerts, priority and read state | open referenced P10/P22; notifications within Wallet | locked preview, muted, delayed update, duplicate push |
| **P20 S/P** Verify receiving method | bank/provider picker, account name inquiry and ownership, approval/step-up | verified method→P21; no method in public offer comment | wrong/ported account, provider offline, unsafe changes during active order |
| **P21 P** Saved P2P payment methods | masked owned methods, add/edit/delete/default, fee/limits/eligibility | P20 to verify; select in P23 | delete-in-use, unverified method, different country, account switch |
| **P22 S/P** My offers | active/paused/closed, capacities, created/risk flags, count, incoming orders | Manage P26, Create P23/P24 | paused not edit existing orders, closed cannot silently reopen |
| **P23 S/P** Create sell ad | exact asset/fiat, rate fixed, inventory, min/max, verified receiving method, terms, preview | Publish original ID, optional pause, manage P26 | reserved inventory race, self-trade, spoofed pricing, method ownership |
| **P24 N** Create buy ad | exact asset/fiat, fixed/floating only if qualified, budget and available bank means, limits, paying method and terms | Preview/step-up→publish; matching sellers can accept | buyer finance source cannot be fabricated, no assumption of fiat platform custody |
| **P25 N** Preview ad / conditions | how counterparties will see asset, direction, price, fees, eligibility, time limit and notices | edit or confirm publish; legal terms | stale pricing, restricted region, incomplete identity, deceptive terms |
| **P26 S/P** Manage ads | view/ad details, pause/resume/close, permitted edit, availability, remaining size, terms | confirm scoped mutation; list refreshed | edit locked terms for existing order, unknown write recovery |
| **P27 N/P** Merchant/trader profile | public name, qualified account verification, observed completed vs cancelled, window/sample, active offer list, trade time evidence | view eligible offers, block/report, history limited | new seller insufficient data, low sample, rate gaming, fake badge |
| **P28 N** Seller/buyer restrictions | counterparty min requirements, allowlist/denylist, KYC/doc steps only when approved, terms and risk UI | gate offer or prompt approved verification before instructions | false KYC guarantee, illicit data collection, country prohibition |
| **P29 P/Q** Merchant admission/dashboard | KYC/AML/risk tier/verified method, status, cases, volumes and order metrics, break mode | apply/verify/manage if backend authorized | suspension, appeal, withheld deposit (never invent), audit of decisions |
| **P30 N** P2P Express (conditional) | amount + asset + fiat + payment method, *only* server-qualified matching, merchant accept | one review, original order P10 | no matching offer, quote expires, double reservation; no fake instant purchase |
| **P31 P/Q** Settlement recovery | unknown/late/reversal/payment mismatch paths and staff handoff | original ID status, report case, no blind extra debit | bank reversal after release, over/underpay, wrong payer, duplicate notifications |
| **P32 S/P/Q** Admin case/reconciliation | active disputes/late payments, ledger reserve/release/refund, participant evidence ACL, operator decision and audit | approved resolution with dual auth and readback | forged staff role, race release/refund, tampered evidence, lost audit, appeals |

**Mandatory UI affordances on each list:** skeleton without noninteractive phantom buttons; zero-state explaining why no data; error with a real scoped Retry; refresh with last-known-fresh indicator; row accessible action label and not color-only status; explicit count, paging/scroll restoration, appropriate density and readable truncation. Touching Back during a pending network mutation never starts another transaction. Number of active tabs can be **Buy, Sell, Orders** with My Offers/Updates nested so P2P is familiar without feature overload. **P01/P02 are directions, not different Wallet ledgers.**


**23 October 2026 P2P source batch (partial; exact PR/head and hosted checks in GitHub):** native Buy/Sell/Orders navigation now keeps My ads and Order updates secondary; Sell truthfully explains that maker-buy/taker-sell is not enabled, while existing sell-ad creation/management survives. Buy discovery adds exact MSNW quantity and literal public trader/ad-reference filters, enforced against verified NG bank methods and actual seller-funded capacity; pagination is bound to account/filter context. P13/P2P16 adds authenticated buyer/seller-only plain-text discussion, server timestamps/roles, bounded history and safe order activity (no private staff reasons), encrypted account/order-scoped original-request recovery, read-only terminal/settling orders and no message-triggered escrow movement. New migration `0138_msnw_p2p_order_messages.sql` is additive; no historical balance or audit rewrite. **Still OPEN:** maker buy ads/taker Sell, other assets/fiats/rails, merchant/risk admission, profile/avatar identity, attachments inside discussion, abuse reports/moderator removals/retention, delivered/read receipts, live staff appeals and two-device/provider/production acceptance. P7-P01–P04/T01/T02 and P8 gates remain unchecked. No APK or live financial operation.

## 3. Atomic feature acceptance inventory — no small control omitted

Legend: `S` source, `P` partial, `N` absent/not verified in inspected source, `Q` external/device/financial qualification outstanding, `C` future conditional, `X` intentionally excluded. **All** source rows remain unaccepted at production unless separately proven. Every feature has a sub-ID for tickets and tests; parent roadmap IDs remain authoritative.

### W0 — Global Wallet shell, discovery and financial literacy (P6-W02/W08/W10/P8-U01)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| W0-01 | S | Wallet occupies exactly one root tab, Back returns to Chats or prior origin. |
| W0-02 | P | **No introductory portfolio heading/description above the card**. The compact card alone identifies its main figure as **MSNW available** or a genuinely verified **estimated portfolio value** with a concise inline partial/FX indicator; details live behind info, never in an explanatory paragraph. |
| W0-03 | S | Privacy eye masks balances and individual activity amounts across Wallet views. |
| W0-04 | P | Verified owned account number and one-tap Copy live **inside the same balance card**, remain legible at 320dp/200% text, never appear as a detached banner or external account list item. |
| W0-05 | P | Safe read-only Receive QR/request links are labelled by selected asset and action intent. |
| W0-06 | P | **Deposit stays inside Wallet card**. Withdraw, Send, Swap, P2P each occupies its own immediately following full-width vertically stacked action card with leading icon/title/trailing chevron. Never hide or bury P2P in a menu or horizontal scroller. Internal Receive remains one branch of Deposit. |
| W0-07 | P | Airtime, Data, TV and Electricity each occupy their **own compact full-width vertical card** directly after P2P, without a “Bills & services” heading or an icon grid. Row remains visible but honestly explains disabled regional/provider capability; no invented rates/packages. |
| W0-08 | P | **Do not render My assets / Transactions tabs or a segmented switch on Wallet home.** Below service cards, render a `My assets` composite card containing *all verified held* MSNW+crypto item rows and a `Transaction history` composite card showing real recent entries and a **View all** affordance. Each opens canonical detail/list. Filters live in dedicated transaction screen and restore on Back, along with Wallet vertical-scroll offset. |
| W0-09 | P | `Transaction history` is a tappable vertical card, with up to three **verified** recent activity rows/statuses and a visible **View all** action to the canonical W18 list; no duplicate totals, invented transactions or separate section heading. Unknown/empty/offline states are compact and correctly labelled in the card. |
| W0-10 | P | Unified fast asset picker and global search from all financial entry points. |
| W0-11 | P | Last successful balances/FX and age visible; never portray stale as current. |
| W0-12 | P | Wallet maintenance notice names affected rail and permitted read-only actions. |
| W0-13 | P | Necessary first-use finance education is an optional contextual help/inline caution **inside the affected operation**; never place a lecture, valuation explanation or empty marketing paragraph on Wallet home. |
| W0-14 | P | Account switch/log out revokes private cached balances, forms and active references. |
| W0-15 | P | Exact unknown/pending status visible above noncritical promotional content. |
| W0-16 | N | Per-rail capabilities screen with plain disabled reason and next action. |
| W0-17 | N | Contextual `i`/Help explains balances, unavailable rates, supported networks and Send/P2P/Withdraw only when opened; no permanently expanded policy notes, repeated headings or intimidating filler on the landing screen. |
| W0-18 | X | No second Credits, Funding, Trading or P2P balance/tab/product. |

### W1 — Identity, balances, assets, rates and custody precision (P6-W01/W02/W11–W15)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| W1-01 | S | Stable server-assigned 10-digit Masanawa account identifier unrelated to phone. |
| W1-02 | P | Public alias versus internal user/tenant custody identity separated. |
| W1-03 | P | Server lookup matches recipient by immutable owner ID, not just name/handle. |
| W1-04 | P | KYC tier, verified names, eligible countries/limits come from live policy only. |
| W1-05 | S/P | MSNW balance strictly from authenticated custody; no legacy Cr/MSN conflation. |
| W1-06 | P/Q | All owned assets listed regardless of deposit rail health; no missing held token. |
| W1-07 | P/Q | Each asset has canonical chain+network+issuer/contract+precision, not ticker alone. |
| W1-08 | P/Q | Cross-network wrapped or bridged tokens never silently aggregate. |
| W1-09 | P/Q | Exact integer atomic amounts; correct asset decimals; no float calculations. |
| W1-10 | P | Available, reserved and settled-owned amount distinguished for every asset. |
| W1-11 | P | Pending uncredited incoming amounts excluded from settled owned quantity. |
| W1-12 | P | Partial outages never replace previously qualified holdings with `0`. |
| W1-13 | P | Portfolio valuation coverage and timestamp; unpriced holdings listed separately. |
| W1-14 | P | NGN default estimate when eligible; explicit display currency preference. |
| W1-15 | P | Foreign conversion rates require qualified source, age, expiry and precision. |
| W1-16 | S/P | MSNW policy consistently 1 MSNW = ₦1; no fixed fictitious dollar peg. |
| W1-17 | N/Q | Server-authorized deposit/hold/Send/Withdraw/Swap/P2P flags independently per asset. |
| W1-18 | N/Q | Backing/custodian domain and reconciliation proofs match displayed ownership. |
| W1-19 | N | Verification/risk/fee badges have provenance and expire on policy change. |
| W1-20 | P | Operations preserve source asset, fee asset, recipient asset and net in receipt. |
| W1-21 | P | Legacy liabilities separate until properly reconciled, never renamed to MSNW. |
| W1-22 | N/Q | Same-Wallet multi-asset Send has balanced server custody and replay protection. |
| W1-23 | N/Q | Asset ownership corrections/reorgs produce explainable negative adjustments. |
| W1-24 | N | User can export exact asset and network positions with verified as-of time. |

### W2 — Deposit, receive, funding, invoice and status (P6-W03/W06/W11–W14)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| W2-01 | S/P | Receive own internal Masanawa account/shareable payment request. |
| W2-02 | P | Deposit asset selector only lists eligible chain/network routes. |
| W2-03 | S/P | Provider-backed invoice/address generation is not an asset-credit event. |
| W2-04 | P | QR includes correct asset, network and required memo/tag, not a generic payment QR. |
| W2-05 | P | Address + memo/tag have separate accessible Copy and checksum/warning. |
| W2-06 | N/Q | Reusable versus single-use address and invoice expiry are explicit. |
| W2-07 | P | Minimum amount, possible fees and net credit explained before deposit. |
| W2-08 | P | Required confirmations/network status visible and independently refreshed. |
| W2-09 | P | Pending/verifying/confirmed/credited/rejected/reversed statuses use one reference. |
| W2-10 | N/Q | Underpayment/overpayment, expired/late invoice recovery. |
| W2-11 | N/Q | Wrong-chain, wrong-memo/tag transfer recovery policy or clear unrecoverable warning. |
| W2-12 | N/Q | Duplicate provider callbacks and chain reorg never double-credit. |
| W2-13 | P | Provider temporarily disabled doesn't hide already owned deposited holdings. |
| W2-14 | S/P | Qualified local MSNW funding displays verified account identity and rails. |
| W2-15 | P/Q | NGN bank credit only after independent fiat evidence/reconciliation. |
| W2-16 | P/Q | Unmatched/wrong-amount bank transfer can open a reference-bound support case. |
| W2-17 | P | Deposit/status remains resumable after app quit without recreating invoice. |
| W2-18 | N/Q | Regional on-ramp eligibility, provider quote, redirect/callback and settlement proof. |
| W2-19 | N/Q | Fee policy version persisted with deposit credit and receipt. |
| W2-20 | P | Receive share intentionally excludes secret keys, balances or personal phone. |

### W3 — Internal Send, requests, saved recipients, review and approval (P6-W01/W03–W09)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| W3-01 | S/P | Human chat Pay and Wallet Send both use one canonical transfer endpoint. |
| W3-02 | S/P | Search by handle/account/allowed link with server identity resolution. |
| W3-03 | P | Picker distinguishes verified recipient from suggested/history match. |
| W3-04 | P | Saved recipient add/remove requires owner consent and secure account scope. |
| W3-05 | P | Recent recipients stored without unsolicited contacts upload. |
| W3-06 | S/P | User-initiated paste and scan of allowed request link; no startup clipboard harvesting. |
| W3-07 | P | Wrong/expired/malformed request links open safe recovery, not payment. |
| W3-08 | S/P | Asset, unit, exact available amount, recipient and step-up review displayed. |
| W3-09 | P | Editable amount/destination revalidates every quote/approval. |
| W3-10 | P | Fee and exact sender debit/recipient credit separate with inclusive precision. |
| W3-11 | P | Server-bounded min/max/daily limits and per-asset eligibility. |
| W3-12 | S/P | Repeat transfer warning distinguishes same pending ID from intentional new send. |
| W3-13 | S/P | Original idempotency/request ID saved before first mutating request. |
| W3-14 | S/P | Ambiguous network failure checks original request; no second send as retry. |
| W3-15 | P/Q | Payment PIN / supported biometric maps to *server-bound* fresh step-up, not client success. |
| W3-16 | P | Cancelling before server confirmation causes no mutation. |
| W3-17 | P | Pending, held, completed, failed, reversed readback and actionable receipt. |
| W3-18 | P | User sees exact account/asset in chat payment request and receipt bubble. |
| W3-19 | N | Multi-asset internal Send validated against qualified same-custody asset adapter. |
| W3-20 | N | Sender's and recipient's distinct owner-side receipt/history entries reconcile. |
| W3-21 | P | Account switch/change/revocation clears draft approval and stale recipient lookup. |
| W3-22 | Q | True two-device duplicate-submit race, network timeout and step-up denial acceptance. |

### W4 — External withdrawal, swaps and conversion (P6-W04/W05/W11–W15)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| W4-01 | P | Withdrawal is clearly labelled external blockchain transfer, not Send/P2P. |
| W4-02 | P | Network/chain/issuer displayed beside address and fee/net amount. |
| W4-03 | P | Destination address validation, checksum where applicable and tag/memo rules. |
| W4-04 | P | Explicit QR scan/paste, user-selected source; clipboard never monitored. |
| W4-05 | N/Q | Recipient allowlist/cooling-off and address-change step-up per real provider policy. |
| W4-06 | P | Fee token and gas/fee changes disclosed; requote after edit. |
| W4-07 | P | Exact net received, minimum and maximum, asset precision and risk warning. |
| W4-08 | P/Q | Reserve source funds atomically before provider chain submission. |
| W4-09 | P/Q | Queued/approval/submitted/confirming/final/failed/refunded/manual review states. |
| W4-10 | P | Cancel allowed only while underlying provider can honor it. |
| W4-11 | N/Q | Partial execution, chain reorg, stuck gas, replay and replacement transaction tracking. |
| W4-12 | P | Explorer link, transaction hash and status only when verified against correct network. |
| W4-13 | P | Original withdrawal reference/idempotency after restart or gateway outage. |
| W4-14 | N/Q | Multi-asset Withdraw is not forced to convert MSNW first. |
| W4-15 | P | Swap shows both exact held assets, liquidity route and net quote. |
| W4-16 | P/Q | Swap pricing, fee, slippage, expiry and spread confirmed server-side. |
| W4-17 | N/Q | Swap debits/credits exactly once with reserved balances and compensation on failure. |
| W4-18 | S/P | Existing MSNW→stablecoin conversion labelled conversion-and-withdrawal adapter. |
| W4-19 | P | Unsupported swap pairs/networks disabled without hiding holdings. |
| W4-20 | P/Q | Suspended provider, liquidity failure, stale quote, rate drift and reversal recover original ID. |

### W5 — Bills, airtime, data, utilities, purchase ledger and recurring helpers (P7-S01–S07)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| W5-01 | S/P | Live service-category discover: airtime/data/electricity/TV; no mock catalog in production. |
| W5-02 | S/P | Country-aware phone normalizer supports editable operator independent of prefix. |
| W5-03 | P | Current biller/provider package and price chosen from server catalog. |
| W5-04 | P | Saved explicitly authorized beneficiary add/remove and fresh repeat quote. |
| W5-05 | P | Meter/card/customer identifier verification, returned account name and bounds. |
| W5-06 | P | Changed recipient/network/item invalidates old approval/quote. |
| W5-07 | P | Verification evidence timestamp and supported provider rail status visible. |
| W5-08 | P | NGN service, separate fee and exact MSNW spend tied to 1 MSNW = ₦1 version. |
| W5-09 | P | User explicitly selects approved payment source; no double charge via fallback. |
| W5-10 | S/P | Purchase consent, server reservation, protected original operation ID. |
| W5-11 | P | Recent same-item purchase warns, prior unsettled operation blocks accidental duplicate. |
| W5-12 | P | Fulfillment pending, delivered, partially delivered, refunded, failed and reversed. |
| W5-13 | P | TV token/utility units delivered only from provider truth, with private receipt. |
| W5-14 | P | Timestamped outage message + retry only original status, no silent provider reroute. |
| W5-15 | Q | Flutterwave real merchant enrollment/product/customer/fulfillment contract qualified. |
| W5-16 | Q | Verified live low-value transaction/readback/webhook/reconciliation per service family. |
| W5-17 | Q | Late callback, duplicate token, charge reversal, partial delivery and compensation. |
| W5-18 | P | Gwani/agent purchase proposal uses same human confirmation/ledger/provider path. |
| W5-19 | C | Recurring/autopay only if explicitly authorized and provider supports cancel/limits. |
| W5-20 | X | No operator prefix as proof, fake MTN defaults or background auto-purchase. |

### P0 — P2P discover, trade direction and filtering (P7-P01/P7-T01)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| P0-01 | S | User enters marketplace from same Wallet, not ordinary internal Send. |
| P0-02 | P | Primary Buy / Sell / Orders navigation, Updates and My Offers nested. |
| P0-03 | S | Seller's sell offers allow taker **Buy** with server-capped stock. |
| P0-04 | S/P | Maker-buy/taker-Sell source uses actual-seller canonical escrow and original-request recovery; default closed pending trusted identity/risk/geography admission. |
| P0-05 | N/Q | Eligible asset filter based on *actual* multi-asset escrow support. |
| P0-06 | N | Fiat currency filter with supported eligible payment methods and quote currency. |
| P0-07 | P | Payment method filter excludes unavailable/unsupported method. |
| P0-08 | S/P | Exact MSNW amount or NGN bank-amount limit filters, server min/max/capacity fit, integer rounding and final quote cap are implemented in source; device/provider acceptance remains open. |
| P0-09 | S/P | Newest and direction-aware best eligible price sort with bound keyset are implemented in source; verified-method/funded availability still applies. Reliability ranking and independently observed trade-time evidence remain open. |
| P0-10 | P | Search by verified trader/merchant name and offer ID without sensitive PII. |
| P0-11 | P | Offer cards show unit price, available volume, order min/max, payment method. |
| P0-12 | S/P | Readable seller display with *verified bank-method* label, not invented KYC badge. |
| P0-13 | S/P | 30-day completed-order count shown only when sufficient terminal sample. |
| P0-14 | N | Completion percentage requires calibrated denominator and explicit date/window. |
| P0-15 | N | Median payment/release time if independently observed (not inferred from ratings). |
| P0-16 | N | Terms preview clearly distinguished from verified banking instructions. |
| P0-17 | P | Suspended/fully consumed ad disappears or is disabled without stale checkout. |
| P0-18 | S/P | Eligible public trader context and paginated ads are accessible from offer cards; no fabricated merchant badge or score, device/provider acceptance remains open. |
| P0-19 | P | Marketplace pages use cursor pagination and duplicate-proof merge. |
| P0-20 | S/P | Skeleton, no ads, no matching filtered ads, offline cache, error/Retry states. |
| P0-21 | P/Q | Country/AML/block/fraud eligibility checked before disclosure and before order submit. |
| P0-22 | X | No hardcoded 15-minute deadline, artificial market-making or fake rate leaderboard. |

### P1 — Payment methods, onboarding, merchant trust and eligibility (P7-P01/P7-T01/P8-X03/X04)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| P1-01 | S/P | Bank directory and verified receiving bank enrollment through owner-bound API. |
| P1-02 | P | Verify account number/name/identity with actual provider, no simulated approval. |
| P1-03 | S/P | Own-method APIs return masked digits; full original receiving instructions remain participant-only after acceptance. Provider/device privacy acceptance remains open. |
| P1-04 | S/P | Multiple independently verified owned bank methods are selectable in source; live provider/policy/device qualification remains open. |
| P1-05 | S/P | Private nickname/clear, one default for new ads, deactivation and owner-bound unused-method removal/readback are implemented in source; immutable referenced records are retained and provider/retention/device acceptance remains open. |
| P1-06 | S/P | Immutable verified method records preserve accepted-order instructions after ad edits/deactivation; device/provider acceptance remains open. |
| P1-07 | N | Supported rail, bank/provider, network routing, transfer type/interbank permission. |
| P1-08 | S/P | Existing provider-bound ownership match plus explicit own-account/third-party-payment guidance in method management; live provider/user-policy qualification remains open. |
| P1-09 | N | Method country, currency, transfer window, bank availability and limits. |
| P1-10 | N | Trading identity/region/KYC/AML level and capability shown before ad creation. |
| P1-11 | N | Merchant verification workflow only with a real provider and audit trail. |
| P1-12 | N | Independent evidence of merchant badge authenticity and revocation. |
| P1-13 | S/P | Public eligible trader profile shows same-opening-window completed/cancelled/expired/currently-disputed/total counts; device acceptance and approved reputation/risk policy remain open. |
| P1-14 | N | Anti-self-trade and wash-trading metric defense enforced server-side. |
| P1-15 | N | Merchant reputation score withheld for low or missing samples. |
| P1-16 | N | Counterparty restrictions and anti-scam checks only from approved risk policy. |
| P1-17 | N | Restricted jurisdiction/blocked merchant/revoked account clear reason and appeal. |
| P1-18 | S/P | Private eligible-ad report, immutable public snapshot, original receipt/history and independent reasoned support review implemented; operational policy/retention, handset acceptance and enforcement remain open. |
| P1-19 | N/Q | Fraud and sanction decisions applied before custody reservation or instructions. |
| P1-20 | X | Do not copy Telegram merchant deposit (e.g. 50 USDT) or Binance tiers as Masanawa policy. |

### P2 — Posting, editing, pausing, pricing and maker request workflow (P7-P01/P02)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| P2-01 | S/P | Existing **sell** ad editor: verified bank selection, rate, min/max, inventory. |
| P2-02 | S/P | Buy-ad editor/review/recovery source is integrated; enablement remains closed pending independently qualified maker admission. |
| P2-03 | N/Q | Server-qualified asset and fiat pairing, eligible region and method list. |
| P2-04 | S/P | Exact positive amount/price precision; client and backend both validate. |
| P2-05 | P | Offer stock and fee reserve shown separately from actual available balance. |
| P2-06 | N | Fixed-price mode plus optional floating mode only with signed live index. |
| P2-07 | N | Floating price margin, index revision, interval, max drift and fallback. |
| P2-08 | P | Min/max per order cannot exceed eligible remaining inventory. |
| P2-09 | N | Per-ad time/payment window from server-authorized policy with fee exposure. |
| P2-10 | N | Public terms and permitted extra conditions with prohibited-language moderation. |
| P2-11 | N | Message template/auto-reply restricted to order-specific channel, not general DMs. |
| P2-12 | N | Buyer/seller qualification conditions with valid privacy/legal basis. |
| P2-13 | N | Public / private / paused availability only if server product supports them. |
| P2-14 | S/P | Exact bank/rate/limits/inventory/direction preview precedes explicit publishing; device/provider acceptance remains open. |
| P2-15 | S/P | Stable idempotency key persists across uncertain **sell** offer publishing. |
| P2-16 | S/P | Buy-ad publishing retains exact original payload/key and account-fenced recovery; trusted admission and production acceptance remain open. |
| P2-17 | S/P | Pausing/resuming/closing own sell ad without altering active orders. |
| P2-18 | S/P | Versioned own-ad price/limits/bank/remaining edits and original-request audit/recovery are implemented in source; accepted orders stay immutable. Public terms/moderation and device/production acceptance remain open. |
| P2-19 | P | Current ads can be paused atomically with original recovery; future publications remain explicit new ads. Persistent merchant-offline policy and schedules remain open. |
| P2-20 | N | Manual versus automatic maker acceptance, if and only if server supports safe policy. |
| P2-21 | N | Maker incoming request queue (accept/reject/expiry), original quote bound. |
| P2-22 | P | Rejected/expired/ambiguous offer write explicitly recoverable and auditable. |
| P2-23 | N | Share a public ad safely without injecting payment account details. |
| P2-24 | P | Closed ad history shows rate/status/past linked orders and terminal reason. |

### P3 — Exact order quote, escrow, reservation and confirmation (P7-P02/P04)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| P3-01 | S/P | Buyer on sell ad enters eligible MSNW quantity and sees exact NGN counterpart. |
| P3-02 | N | Seller on buy ad enters held asset quantity and sees buyer's terms. |
| P3-03 | P | Quote binds ad ID/revision, asset ID, quantity, rate, fiat currency, fee and expiry. |
| P3-04 | P | Quote shows sender/receiver, maker/taker identities and who sends *fiat*. |
| P3-05 | P | Consent to current terms before creating a unique order request. |
| P3-06 | S/P | Buyer request identity saved in secure account-scoped storage before POST. |
| P3-07 | S/P | Original request status queried before same-key replay, not create new order. |
| P3-08 | P/Q | Seller available/reserved and fee hold atomically updated with valid same-wallet escrow. |
| P3-09 | N/Q | Same reservation for sellers responding to *buy* ads. |
| P3-10 | P/Q | Concurrent takers, max offer capacity and two-device oversell prevented. |
| P3-11 | P | Initial `awaiting_payment` (or accepted order stage) visible with real server clock. |
| P3-12 | P | Immutable payment method/bank detail snapshot bound after acceptance. |
| P3-13 | P | Partial confirmed reserve failure leaves no phantom order/balance. |
| P3-14 | P | Fee reserve only charged after authoritative completion. |
| P3-15 | P | Prior order must be reconciled before allowing a replacement attempt. |
| P3-16 | N | Maker acceptance request state if offered by qualified marketplace contract. |
| P3-17 | N/Q | Different assets each have qualified custody pool, integer precision and fee token. |
| P3-18 | N/Q | Correct distributed lock/transaction isolation across provider+database boundaries. |
| P3-19 | P | Never count pending buyer claim as asset held or fiat owned. |
| P3-20 | Q | Balanced journal, reserve, release/refund and fee invariants verified by real DB tests. |

### P4 — Payment instructions, paid claim, countdown and bank transfer failures (P7-P02/P03)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| P4-01 | S/P | Participant-only bank name, account owner, number and fiat amount in order. |
| P4-02 | S | Explicit Copy order reference, Copy approved bank field, Copy exact payment amount. |
| P4-03 | P | Payment deadline based on server clock; never auto-release on local zero. |
| P4-04 | N | Payment method compatibility (same-bank/interbank/rails) and fee advisory. |
| P4-05 | P | Order warnings prohibit transfers to contacts/messages or unverified details. |
| P4-06 | N | First-party payer name must match independently approved verification identity. |
| P4-07 | P | Buyer can claim paid only after bank transfer, explicitly not confirmation. |
| P4-08 | P | Seller gets claimed-paid state and manual independent bank receipt prompt. |
| P4-09 | P | Seller attests exact fiat amount and authorizes release under server role controls. |
| P4-10 | P | Refund/cancel only while bank payment is genuinely unmade or legally returned. |
| P4-11 | P | Claimed-paid/under-dispute expiry cannot unlock escrow automatically. |
| P4-12 | S/P | Late payment after expired/refunded order opens separate staff case, no new escrow. |
| P4-13 | N/Q | Partial fiat transfer: top-up or verified return-to-sender workflow. |
| P4-14 | N/Q | Overpayment / double bank transfer: excess return or whole refund, documented amounts. |
| P4-15 | N/Q | Wrong bank / wrong beneficiary: explain recovery uncertainty and case path. |
| P4-16 | N/Q | Third-party payer: halt, independent checks, approved return-to-origin path. |
| P4-17 | N/Q | Bank chargeback/frozen/recalled payment after release triggers controlled risk case. |
| P4-18 | N/Q | Fake receipt, forged screenshot, fake bank alert and social engineering controls. |
| P4-19 | P | Upload/payment proof never changes ledger state by itself. |
| P4-20 | P/Q | Seller receipt confirmation goes through auditable API, never button-only success. |
| P4-21 | N | Received bank payment with wrong amount and seller refuses release: full case log. |
| P4-22 | N | Recipient bank unavailable during countdown: eligible pause/requote/report policy. |

### P5 — In-order messages, evidence, case handling, refunds and notices (P7-P03/P7-T02)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| P5-01 | P | Dedicated order-scoped two-party discussion (not general Chat room/AI). |
| P5-02 | P | Text bubbles with participant avatar, time, delivered/failed/retry original ID. |
| P5-03 | P | Order-context system messages for escrow, paid claim, escalation and decision. |
| P5-04 | P | Block third user/other tenant/order cross-read, unauthorized reply, impersonation. |
| P5-05 | N | Restricted MIME/size attachment preview within order chat. |
| P5-06 | P | Receipt/evidence upload to participant-only order storage, 2MB cap in source. |
| P5-07 | S/P | Evidence list includes creator, date, file type, authorized preview/download. |
| P5-08 | P | Evidence links short-lived, authenticated, non-guessable, no public bank records. |
| P5-09 | N | Evidence metadata hashes and linked original request/file on uncertain upload. |
| P5-10 | N | Report/deletion/retention policy preserving investigation evidence legally. |
| P5-11 | P | Open dispute against original order with typed reason and text. |
| P5-12 | S/P | Typed reason picker, immutable original opening and order-bound recovery implemented through canonical dispute transition; device/operational acceptance remains open. |
| P5-13 | P | Participant support context shows current order status, own opening and recent public transitions without private staff/counterparty notes; formal responses/staff thread/appeal remain open. |
| P5-14 | P | Frozen escrow clearly marked while dispute unresolved. |
| P5-15 | N | Support intervention with staff notes, request for additional evidence, response window. |
| P5-16 | N | Withdraw/reopen dispute only under safe and authorized rules, no timer hacks. |
| P5-17 | P | Report late payment on already refunded/expired order as separate case. |
| P5-18 | P/Q | Operator case listing, evidence read rights and audited authorized decision. |
| P5-19 | P/Q | Refund/release is exactly once and creates balanced journal/reconciliation event. |
| P5-20 | N/Q | Counterparty response to decision, appeal/escalation and dispute audit receipt. |
| P5-21 | P | Notifications identify original order without showing private bank details on lockscreen. |
| P5-22 | N | Muted/blocked/quiet-hours/revoked push permissions still preserve in-app order access. |
| P5-23 | P | Foreground/resume refreshes original order; delayed events cannot downgrade terminal state. |
| P5-24 | N | Spam/scam moderation without making agent suggestions a payment authority. |

### P6 — Activity, merchant operations, support, compliance, resilience, polish (P7-P01–P04/P8-X01–06)
| ID | State | Atomic requirement / user-observable acceptance |
|---|---|---|
| P6-01 | S/P | P2P order list with stable cursor, all/active/finished and user Buy/Sell role. |
| P6-02 | S/P | Orders/own ads have server status/direction/inclusive UTC-date filters and scoped keysets in the qualified MSNW/NGN/bank market; additional asset/rail qualification and device acceptance remain open. |
| P6-03 | P | My Offers and Updates nested below primary Buy/Sell/Orders flow. |
| P6-04 | P | Dedicated support view shows up to 50 recent public order transitions and current status; complete historical audit/retention and device qualification remain open. |
| P6-05 | S/P | Canonical receipt and Wallet Activity point to same operation and roles. |
| P6-06 | S/P | Public trader profile pages live eligible ads and same-window real order outcomes; no invented badge/rating, device/provider acceptance remains open. |
| P6-07 | S/P | Owner pause-all-current-ads, durable original receipt/recovery and individually eligible resume implemented; schedules/persistent offline mode and device acceptance remain open. |
| P6-08 | N | Merchant support case performance without exposing competitor proprietary limits. |
| P6-09 | N/Q | Verified region/currency/provider/KYC eligibility gates every offer action. |
| P6-10 | P/Q | Suspended account cannot trade; can still view own records/support. |
| P6-11 | N/Q | AML/sanctions/fraud/velocity review, identity proof and audit logs as applicable. |
| P6-12 | N/Q | Bank method owner identity/name mismatch triggers fail-closed risk state. |
| P6-13 | P/Q | SQL row locks/transactions and unique original IDs survive cross-device races. |
| P6-14 | P/Q | Ledger holds, release, refund, fees never double count in portfolio estimates. |
| P6-15 | P | All errors show safe original ID status or Retry, no fake success indicator. |
| P6-16 | N | Account/phone switch and logout clear protected lists and invalidate stale replies. |
| P6-17 | P | Small screen 320dp at 200% text, RTL, TalkBack, keyboard action order, non-color labels. |
| P6-18 | P | Loading/empty/error/offline/blocked/permission-limited states for each screen ID. |
| P6-19 | N | Exact user-facing service maintenance/degraded-rail and stale price clock. |
| P6-20 | N/Q | Real payment-method provider readback, manual staff escalation and account restriction. |
| P6-21 | N/Q | Two-device race release/refund/dispute; forged owner/tenant/case evidence. |
| P6-22 | N/Q | Provider/network/backend outage with app restart and one original order. |
| P6-23 | N/Q | Installed Android 12–current release, low-memory, process kill, notification and permission QA. |
| P6-24 | N/Q | Reconciliation monitoring/alerts, fallback/rollback, database migrations with approval. |
| P6-25 | N/Q | Operator/admin workflows verified as deployed against exact policy and database SHA. |
| P6-26 | N/Q | Privacy/PII retention, lawful transaction records, redacted exports and subject rights. |
| P6-27 | C | Auto-match P2P Express only after server-safe quotes, real merchants and liquidity. |
| P6-28 | C | Floating ad pricing, auto-accept, automated merchant analytics only after policy proof. |
| P6-29 | X | Never clone Telegram branding, Binance VIP tiers, bank-account digits or unreadable dense terminals. |
| P6-30 | X | No on-device escrow signing, automatic release after screenshot, or unstated platform fiat balance. |

## 4. Canonical backend/ledger/API/UX contracts — do not implement independent lookalikes

### 4.1 Verified source surface and provisional mapping

| Existing source/API area | Bounded observation | Use / required change |
|---|---|---|
| `apps/mobile/lib/src/screens/wallet/wallet_screen.dart` | Existing single home, history tabs, assets, P2P entry, funding and service shortcuts | Preserve as navigation root. Do not fork portfolio or expose historical Credits as MSNW. |
| `apps/mobile/lib/src/finance/wallet_recent_activity.dart` | Three-row authorized Wallet activity readback from PR #287 | Reuse; present verified pending and exact status rather than second P2P list as financial truth. |
| `apps/mobile/lib/src/finance/msnw_p2p_screen.dart` | `MsnwP2pScreen`, 4 source chips Buy/Sell/Orders/Updates, buy amount, bank verification, **seller offer** creation, rate/min/max/inventory, original-request recovery, offer pause/resume/close, order detail, claim, dispute, late-payment, seller confirm and evidence | Keep functional MSNW seller-offer path. Redesign around P00–P32, explicitly implement maker **buy offers**, taker **sell into buy ad** and participant chat; no phantom second direction. |
| `apps/mobile/lib/src/finance/p2p_order_presentation.dart` | Text status, steps, authorized payment detail, server-derived deadline | One shared timeline/receipt presentation; actual state comes from server, never client countdown. |
| `services/gateway/src/p2p/routes.ts` | Existing REST routes include `/offers/page`, `/my-offers/page`, `/offers/by-request/:requestKey`, `/offers`, `/offers/:offerId/{pause,resume,close,quote}`, `/methods`, `/methods/verify`, `/seller-capacity`, `/orders/page`, `/orders/by-request/:requestKey`, `/orders/:orderId`, `/orders/:orderId/{receipt,claim,cancel,dispute,confirm-receipt,late-payment}`, order evidence list/upload/retrieval and admin dispute/reconciliation/late-payment routes | Extend *same* authoritative P2P namespace, do not create a P2P microservice, another ledger or unversioned parallel endpoints. Missing buy-ad/participant-chat APIs require explicit schema, ACL, quotas, idempotency and migrations. |
| `services/gateway/src/p2p/service.ts` | `createP2pService()` with server amount/fee validation, offer/write/read, order quote/create/claim/dispute/refund, late-payment case, reconciliation, evidence visibility and admin decisions | Preserve tenant/user ownership, transaction locks and existing server functions; extend quote/order schema to distinguish maker/taker and BOTH trade directions without client-inferred roles. |
| `services/gateway/src/p2p/custody_escrow.ts` | `createMsnwP2pCustodyEscrow()` uses **same MSNW custody domain** as `/v1/wallet/msnw/send`; no qualification for non-MSNW asset holds | Keep MSNW-only enforcement until W12–W14 custody supports true multi-asset reserve/release/refund/fee precision. |
| `services/gateway/src/p2p/bank_methods.ts`, `seller_confirmation.ts`, `evidence_storage.ts` | Bank method/provider checks, typed seller confirmation and privately authorized evidence | Audit current provider real-account availability, media lifecycle, identity match and changed account after order acceptance before relabeling “verified”. |
| `services/gateway/src/p2p/*.test.ts`, `services/gateway/src/msn_wallet/*.test.ts` | Source for service, storage, escrow and activity regressions | Add fresh 2-role, 2-device, provider/data fixtures and rejection/race regressions; prior source tests are not a real bank settlement test. |
| `apps/mobile/lib/src/finance/crypto_transport.dart`, `crypto_state.dart`, `crypto_wallet_screen.dart` | Holdings, capabilities, routes, provider intent/readback, deposit/buy/convert/withdraw presentations | Refactor to shared asset/operation pages where appropriate. Do not collapse invoice deposit, Send, Withdraw or Convert into same financial action. |
| `apps/mobile/lib/src/finance/msnw_custody_send.dart`, `msnw_stablecoin_convert.dart` | Server lookup/preview/send/status and MSNW→stablecoin quote/status adapter with recovery | Integrate same asset/fee status presentation; keep provider limitations explicit. |
| `apps/mobile/lib/src/finance/msnw_transaction_history.dart`, `wallet_transaction_help.dart` | Canonical Wallet activity, filters, receipt/help and export | An order always resolves to *one* history reference; chat/push/P2P UI are scoped projections, not additional balances. |
| `apps/mobile/lib/src/finance/msnw_billing_checkout.dart`, `screens/billing/billing_screen.dart`, `services/gateway/src/msn_wallet/billing_service.ts` | Bills preview/execute/status, beneficiary/operator and provider recovery | Preserve one real Flutterwave fulfillment authority, no manual acceptance from UI or fabricated live products. |
| `services/gateway/src/wallet_projection*`, `msn_wallet/custody_send.ts`, `wallet_activity.ts` | Authenticated ledger projections, Send and activity readbacks | Extend exact-per-asset accounting and reconcile cross-asset effects before showing broader P2P asset controls. |

**Required future contracts (names conceptual, not already built):**

- `AssetCapability`: `{assetId, issuer, chain, network, decimals, custodyDomain, available, reserved, settled, lastVerifiedAt, operationFlags:{hold,deposit,send,withdraw,swap,p2p}, disableReasons, feeAsset, min/max, eligibleRegions, policyVersion}`; signed/authorized server context, never ticker-based inference. Resolve same representation before internal transfer.
- `P2pOffer`: stable `offerId`, `{makerUserId, role: BUY_ASSET|SELL_ASSET, assetId, fiatCurrency, unitPrice, rateType, rateRevision, quantityAvailableAtomic, min/max, eligiblePaymentMethodIds, regionPolicyId, methodVerificationState, termsRevision, visibility, status, expiry, approvalMode}`. Client public projection MUST redact account numbers, KYC ID and tenant secrets.
- `P2pOrder`: stable `orderId` and `requestKey`, buyer/seller/maker/taker/asset identity, offer + version/accepted terms, immutable server quote/fee/fiat/asset/decimal snapshot, actor-scoped receiving method, escrow hold/journal reference, `serverNow` + timestamped deadline, actor-eligible actions, current state/version, audit events, case references and linked canonical receipt.
- `PaymentMethod`: owner and bank/provider verification (real schema/provider evidence and expiry), currency/region, masked display and participant-only full fields. A chat message or changed profile method is *never* the authority for an accepted order.
- `P2pEvent`: immutable `{eventId, orderId, tenantId, actorId, actorRole, type, stateBefore, stateAfter, version, serverTimestamp, requestKey, traceId, redactedMetadata}`. API exposes a visibility-filtered projection; raw PII/evidence retained under restricted ACL and retention policy.
- `OrderMessage`: `{messageId, orderId, senderId, body/media metadata, contentRevision, status, createdAt, moderationState, expiresAt}` with exactly-one send identity, independent of human chat. Optional inline attachments use existing scoped media pipeline and content policy.
- `P2pDispute`: `{caseId, orderId, reasonCode, opener, assignee, participant visibility, payment discrepancy subtype, evidence references, frozen escrow status, milestones, decision, reviewedBy, secondApproval where applicable, revision, closedAt}`. Moderator and claimant scopes cannot override custody without server-side policy.
- `OperationReceipt`: transaction and proof references, actual net debit/credit/fees, stage, status, canonical event source and timestamp. Display-only shares are never cryptographic or banking settlement proof unless separately attested.
- `P2pMerchantMetrics`: bound denominators, distinct counterparty counts, meaningful time windows, freshness, anti-gaming and completeness; `null` if missing. Verified badge requires a traceable issuer, status and revocation. New accounts show **Not enough trading history**, never 100% success.
- `P2pEligibility`: actual country, payment corridor, provider, verification, risk and consent scopes with user-readable disabled reasons; no imaginary jurisdiction/partner support from the presence of a fiat currency in a list.

All new state-changing APIs require actor authentication, role ownership and tenant predicate, step-up where risk warrants, anti-replay request key, immutable quote snapshot, server transaction locks, atomic ledger journal and post-action original-reference GET. Never reuse an endpoint name if its financial semantics change; version and migrate backward-compatibly. No client preview or successful HTTP acknowledgement is an escrow or fiat settlement event.

### 4.2 Complete order states and actor-action permissions

| Canonical order stage | Buyer UI / permitted actions | Seller UI / permitted actions | Ledger, expiry and recovery invariant |
|---|---|---|---|
| Draft / selecting offer | Quote, edit amount, cancel | Browse open capacity and own ad terms | No mutation. A stale quote cannot be submitted. |
| Admission pending / maker decision **new if accepted model** | Waiting, cancel only if server has not locked order | Accept/reject only under legal maker role | Never reveal payment bank details before accepted rights; timeout releases only non-paid holds. |
| Escrow reservation started | Checking original request | Reserved state, capacity updated | One atomic original journal ID. Unknown commit → status lookup, no new order. |
| `awaiting_payment` | Exact bank details, Copy, Pay externally, **I have paid**, cancel only if unpaid | Wait for verified payment, dispute if needed | Server clock and deadline; never automatically release. |
| `payment_claimed` | Payment marked as user claim, add optional evidence, message, dispute | Independent real-bank verification, release or dispute | No refund by deadline without funded/paid/dispute policy. |
| Release pending / unknown | Checking original order | Release authorization submitted once; wait for canonical status | Never allow contradictory refund/release across devices. |
| Completed / released | Own exact credited asset balance, receipt, Wallet activity | Fiat proceeds are off-platform; own reserved asset removed, fee posted once | Terminal, deduplicated balanced journals; no later client cancel. |
| `disputed` / case under review | Evidence and moderated response | Bank proof/response, not unilateral release | Escrow frozen; staff action audited and case-version bound. |
| Unpaid cancelled / expired | No asset credited, recovery if bank was accidentally paid | Reserve refunded to seller available | Must prove there was no valid paid/disputed blocker at boundary. |
| Refunded / reversed / chargeback investigation | Original receipt and case, no silent asset award | Original event trail and compensating ledger | Do not overwrite completed status or erase payment history. |
| Late payment after expiry | File late-payment case, never assume escrow revived | Staff-authorized return-to-original payer may be required | Separate case; no auto-mint or re-lock completed refund. |
| Ineligible/restricted/maintenance | Read existing permitted orders/cases, no new order | Same, and no deceptive active ads | Explicit capability status, stale data and alternative only if independently qualified. |

**Data transition rule:** current MSNW implementation uses `awaiting_payment`, `payment_claimed`, `disputed`, `completed`, `cancelled`, `expired`, with release-pending handling and support cases. This table also enumerates missing explicit UI/contract stages; it is **not** a claim every state currently exists server-side. Do not remap historical events without a reversible migration and ledger proof.

### 4.3 Global screen-state and accessibility checklist (every W/B/P screen)

| State/event | Minimum exact UI requirement | Negative test |
|---|---|---|
| Initial loading | Bounded accessible skeleton, named loaded content, safe Back, no optimistic zeros or balance flashes | 3G connection with 5s/15s delays |
| Empty eligible list | Honest empty explanation, disabled operations and qualified actions to enable | No asset/provider/offer; signed in versus signed out |
| Partial refresh | Label last successful timestamp and stale status; keep only authorized prior data | one asset provider fails while others succeed |
| Offline before submit | No queueing unsanctioned irreversible money operations; safe nonfinancial draft if encrypted | airplane mode, restore original account |
| Network error after submit | Distinguish **outcome unknown** from failed; lock duplicate buttons and query original ID | accepted server mutation, client times out |
| Permission or KYC denied | Code/country/service reason, prescribed verification/support, no copied verification badge | forbidden tenant, wrong user, revoked case access |
| Sign out / account switch | Immediate mask, clear old snapshot and discard stale future response | A's late activity/order result after B logs in |
| Price/quote changes | Indicate new asset rate/fee and request fresh confirmation | server quote revision changes before submit |
| Reversed/partial outcome | Prominent status text and Help; avoid green check, hidden deficit or impossible balances | provider late success and chargeback |
| Notification open | Resolve authenticated deep link, lockscreen redact private bank/account details | push after logout, wrong account, deleted order |
| Background/process death | Reopen original operation draft/reference and check status before retry | kill app after accepted request, resume later |
| Accessibility | 320dp/200%/RTL/TalkBack, 44–48dp hit target, zoom, accessible error/units/role, reduced motion and non-color status | Android handset landscape, large font and screen reader |
| Security screen | Appropriate sensitive-screen protection/permissions, no unsupported biometric assertion | recent-app preview and credential revocation |
| Rate / identity disclosure | Screen-relevant disclaimer without crowding primary action; no fake KYC/tier | unsupported NGN network or index down |

## 5. Golden journeys and adversarial full-device acceptance

**Happy-path journeys, each requiring deterministic fixture tests, exact-SHA app + backend + database integration, device screenshots/accessibility and (where actual money is involved) independent provider approval:**

1. **Masanawa signed-out → login → Wallet** with rail outage; no capability infinite spinner, no historical balance leakage, one account and identity.
2. **Wallet portfolio → owned MSNW asset → Deposit**; valid receipt, single server credit, balance and activity reconcile.
3. **Deposit USDT on one qualified network**, detect contract and memo, verify confirmations, exact available amount and asset detail; other networks never merge falsely.
4. **Internal MSNW Send to authorized user** via Wallet; lookup/name match → amount/fee → step-up → accepted original ID → recipient credited once → redacted receipt.
5. **Internal crypto asset Send** without chain fee/transaction when it is eligible for same-custody transfer; unsupported asset stays disabled with reason.
6. **Withdraw actual held crypto** to external supported chain; address/tag validation, fee/net, reserve → submission → confirmed transaction → exact portfolio reconciliation.
7. **Swap asset A→B** from owned balances with server price/fee, both journals and one receipt; never fake success if liquidity failed.
8. **Buy a live bill** with verified customer/product, accurate NGN/fee/MSNW quote, consent, provider fulfillment, token/receipt, durable one-time debit.
9. **P2P taker Buy from maker Sell ad (MSNW)**: eligible Buy list → merchant profile/terms → frozen quote → seller MSNW reserved → verified bank details → true fiat payment → buyer claim → seller reads bank ledger → seller authorizes release → buyer owns asset → Activity receipt.
10. **P2P maker Sell**: verify owned bank, create sell ad, order and inventory management, partial fulfillment across multiple buyers, pause/close without altering accepted orders.
11. **P2P taker Sell into maker Buy ad** (future): select source asset/owned balance and counterparty buy ad → seller reserve → maker pays fiat → seller confirms bank receipt → asset transferred once.
12. **P2P maker Buy** (future): create exact buy ad with permitted funding source, receive seller request, accept/reject terms, pay seller bank and await seller release; no fake instant fiat custody.
13. **Two-party order conversation** (future): buyer/seller securely exchange messages within correct order, evidence requests and system events; notifications reopen original order only.
14. **Dispute both roles**: paid claim vs seller nonreceipt → freeze → private evidence both sides → reviewed authorized staff decision → balanced release/refund → case/receipt.
15. **Merchant pause / edit / update**: publish ad, price change for future orders only, release old accepted orders on old rates, cross-device consistency.
16. **P2P Express** (conditional): choose eligible pair and amount → server-matched merchant → acceptance → same P10 escrow/order; no independent P2P wallet/ledger.
17. **Wallet Activity → P2P receipt → Help**, original reference, redacted share, return to same order and active inbox.
18. **Account logout/change during any wallet/order action**, private prior activity disappears before new account's async reads settle.

**Required adversarial journeys, independently repeat for buyer, seller, merchant and support role where applicable:**

- Race A01: two simultaneous takers against final offer inventory must yield at most one compatible reservation, never negative available.
- Race A02: release and refund/dispute/expire on two devices in same instant; at most one balanced terminal journal.
- Race A03: maker pauses/closes ad while a taker reviews old quote; only previously admitted immutable orders remain valid.
- Race A04: seller confirms actual bank receipt twice via rapid taps/offline replay; at most one release and fee.
- Race A05: buyer marks paid just as deadline expires; paid/disputed order may never be auto-refunded based only on wall clock.
- Race A06: unauthorized third user or another tenant reads order/evidence/chat/bank details; uniformly forbidden.
- Race A07: owner account changes before slow HTTP and secure-storage operations complete; old result cannot reappear.
- Race A08: provider accepted funding/withdrawal/bill but response lost; recovery original ID with one journal and one history row.
- Risk R01: forged verified badge, self-trade wash metrics, omitted sample size; surface null/low sample rather than fabricated history.
- Risk R02: wrong buyer payer name, third-party transfer, different bank, mismatched amount; stop release and offer audited case.
- Risk R03: buyer screenshot claiming payment with no bank credit; seller confirmation remains independent and protected.
- Risk R04: bank transfer received *after* original refund/expiry; case may request verified return; never silently recreate escrow.
- Risk R05: payment shortfall and multiple top-ups; staff decides validated net versus refund and records all original references.
- Risk R06: overpayment, duplicate bank transfer, wrong bank routing; return excess/entire payment only via authorized process.
- Risk R07: bank reversal/chargeback after crypto finality; risk support/capital exposure tracked, no fabricated recoverable crypto.
- Risk R08: tampered PDF/PNG, oversized payload, expired signed evidence URL, malicious content; deny, quarantine and audit.
- Risk R09: fake payment details pasted in order chat; only order-bound verified payment instructions are copyable authoritative fields.
- Risk R10: masked bank details appear in screenshot, push lockscreen, analytics, crash logs or export; never reveal unauthorized PII.
- Risk R11: support operator impersonation, unauthorized resolution, forged actor ID; role-separated enforcement and immutable audit.
- Risk R12: no liquid market in selected fiat/asset, custody temporarily down, AML restriction, bank outage; source read/Help available, new order disabled.
- Risk R13: duplicate maker requests / buy ads; accept one matching original payload only, no double reserve.
- Risk R14: manipulated device clock / timer / timezone; order deadline from trusted server time and version.
- Risk R15: held asset exists but deposit/withdraw rail disabled; history and custody remain visible, action names accurate.
- Risk R16: stale currency FX or unknown quote revision; no inferred market price or approval continuity.
- Risk R17: app crash/resume, Android permission revoked and 320dp/200% text keyboard; no hidden confirmation button or lost reference.
- Risk R18: KYC document requested in P2P chat without provider-backed legal gate; never collect unsolicited private data.
- Risk R19: cancelled ad with existing active orders; those orders stay resolvable independent of ad visibility.
- Risk R20: expired/revoked quote, mismatched asset decimals, maximum amount overflow, negative zero and SQL decimal-cast bugs.

## 6. Prioritization, path ownership, release gates and explicit omissions

Implement connected vertical slices in **this order**, not dozens of independent decorative screens. One integrator owns contested canonical ledger, schema and shared route files; parallel writers own exact UI/test paths and deliver SHA-specific PR handoffs:

| Wave / roadmap owners | Source deliverable, exact ownership | Acceptance and stop gate |
|---|---|---|
| **A CORE NOW · P7-P01/P02, P6-W12–W15** | Server implement opposite-direction buy advertisements and seller response in `services/gateway/src/p2p/service.ts`, `routes.ts`, custody authority, tests and **versioned migration** after financial design review; Flutter P02/P04/P06/P24 in `msnw_p2p_screen.dart` or separated widgets | Live-like Pg concurrency and balanced same-owner reserve; merchant and asset role eligibility; no asset trading UI enabled until qualified; old MSNW buy-from-sell path unchanged |
| **B CORE NOW · P7-P03/T02** | Dedicated per-order message and event timeline under `services/gateway/src/p2p/` with ACL/retention; shared Flutter P10/P13/P15/P17 views and scoped media | 2 authorized participants and 3rd user attack, device restart, payment proof/release invariants, moderation and evidence privacy |
| **C CORE NOW · P7-P01/T01** | P00/P01/P03/P21/P22/P25/P26/P27/P29 card+seller control improvements, authenticated filter/read endpoints and merchant status policy | P2P Buy/Sell/Orders familiarity; accessible statuses; no forged badges/scores; ad edit never mutates live order |
| **D CORE NOW · P6-W02–W15** | Shared Wallet asset detail, eligible asset picker and operation review across existing `finance/crypto_*`, `msnw_*`, `wallet_*`; canonical wallet projections and tests | Real held asset precision, fees, pending/reserved and original-ID recovery; no unqualified chain or provider promise |
| **E CORE NOW · P7-S01–S07** | Bills/Funding/Flutterwave current product/name/amount validation, duplicate recovery and exact NGN/MSNW receipts | Provider credential/merchant/version verified with independently authorized low-value test; real refund/late callback; no fake bill |
| **F CORE NOW · P8-X03–X06/APK03–05** | Installed user journeys, precise accessibility, secure payment details, freeze/appeal operator tools, event audit/metrics, deployment rollback | Android/native tests, actual real-provider status, deployment/monitoring/rollback; completion only after acceptance evidence |
| **G LATER/CONDITIONAL** | Optional Express matching, floating-price ads, auto-accept, additional payment methods, merchant break mode and analytics after demand/partner qualification | Separate explicit policy/provider approval before enabling; not a prerequisite for a correct one-asset P2P release |
| **H EXCLUDE** | Copying Telegram/OPay layouts or copyrighted art, Telegram merchant deposits and fees, Binance tier thresholds, unsupported foreign corridors, crypto seed wallet, direct platform fiat cashout and unsupervised AI financial actions | Do not add through an unrelated sprint or marketing UI |

**Source ownership checkpoint:** `P7` trading engine `services/gateway/src/p2p/{service,routes,custody_escrow,bank_methods,evidence_storage,seller_confirmation}.ts` and migrations are **single-integrator** files. `P6` canonical Wallet/asset and financial journal are **single-integrator** files. Flutter scoped screen widgets/tests may be parallel only with hard filename ownership and a reviewed, signed API schema. Interdependent PRs must be pinned to actual parent SHAs; no speculative adoption of checkout, backend contracts or release claims.

**Evidence to attach for each parent checkbox:** named feature IDs; screen screenshot (light/dark/320dp/200%/RTL); actual server/DB SHA and sanitized API trace; tests including failures/races; proof of correct ownership and ledger arithmetic; provider eligibility and readback; support appeal; accessibility and offline/device logs; signed build identity; environment/rollback. Use `PASS_REAL`, `PASS_SIMULATED`, `NOT_RUN`, `BLOCKED`, `FAIL`; don't upgrade a simulated test to real completion. Do not generate APKs automatically: explicit owner request only.

**Exclusions by design:** no cloned third-party assets or unsafe clipboard monitoring, no second ledger, no bank transfer magically validated by a screenshot, no automatic P2P release, no fabricated 100% trust score, no unsupported 1 MSNW=USD peg, no invented global KYC tiers, no high-risk margin/futures/leverage, no anonymous circumvention of regulated controls, no unverified fiat wallet or chain adapter. Treat a verified checkout UX as entirely separate from provider money movement acceptance.

## 7. Direct external benchmarks consulted (not implementation proof)

- [Crypto Wallet / @wallet P2P overview](https://wallet.helpscoutdocs.com/article/5-p2p-market-faq) — seller escrow/fee description; **their reserve timing and fee are not Masanawa policy**.
- [Crypto Wallet Buy on P2P](https://wallet.helpscoutdocs.com/article/18-buy-crypto-with-p2p-market) — Buy via sale offer **or create Buy ad**, own bank methods, maker confirmation, customer verification.
- [Crypto Wallet Sell on P2P](https://wallet.helpscoutdocs.com/article/19-sell-crypto-on-the-p2p-market) — Sell into buy offer **or create Sell ad**; merchant fees belong to their product.
- [Crypto Wallet order safety and appeal](https://wallet.helpscoutdocs.com/article/52-questions-on-order) — order-only chat, disputes, receipt and payment checks.
- [Crypto Wallet Express buy and interrupted-order resume](https://wallet.helpscoutdocs.com/article/142-express-purchase) — optional shortcut, authorized merchant confirmation, proof and return to original order.
- [Crypto Wallet P2P terms](https://wallet.helpscoutdocs.com/article/21-p2p-market-rules) — stricter own-account fiat and seller receipt responsibility; do not blindly copy changing regional terms.
- [Crypto Bot P2P article collection](https://help.send.tg/en/collections/10123209-p2p) and [create ad](https://help.send.tg/en/articles/9819607-how-do-i-create-an-offer) — *separate @CryptoBot product* with asset/fiat/price/limits/method/time and ads.
- [Binance P2P create ad (updated July 2026)](https://www.binance.com/en-NG/support/faq/detail/360042084072) — published advanced maker controls, fixed/floating reference, terms and visibility; adapt only justified simple controls.
- [Binance P2P appeals (updated Dec 2025)](https://www.binance.com/en/support/faq/detail/ed6efa0d16054aaa82f701fd7f0c7288) — structured evidence/response/decision and appeal status.
- [Binance merchant principles (updated March 2026)](https://www.binance.com/en-IN/support/faq/detail/360043895111) — no off-platform contact, clear role/rate rules; actual Masanawa obligations determined separately.
- Local `opay-decloned/res/layout/{flow_fragment_transaction_detail.xml,dialog_transfer_repeat_tips.xml,cashier_fragment_pay_pin_input.xml,dialog_bank_unstable.xml,fragment_airtime_data_topup.xml}` — inspected XML IDs support *layout ideas*, not a P2P escrow backend.
- Local `telegram-decompiled/AndroidManifest.xml`, `.attheme`, `assets/currencies.json` on reference commit `04a543b` — resource evidence only, no DEX wallet P2P source.

**Research uncertainty:** Several Wallet HelpScout articles were published/last updated in 2025 or earlier; online products and eligibility change. Reverify actual current supported product and permitted region at implementation time. In particular `@wallet` versus `@CryptoBot` and later Walt naming must not be conflated. Screens should be familiar and original, not pixel-for-pixel copies.

## 8. Final original visual and interaction design — what “beautifully implemented” means

**Presentation targets are original Masanawa components**, not copied Telegram/OPay screenshots or trademarks. All light/dark surfaces use the app's established semantic design tokens rather than hard-coded competitor colors. Group related inputs; maintain one primary action per stage; avoid endless screens of repeated cards or noisy financial banners. Make every action easily understandable to a first-time Nigerian user while preserving regional configuration for eligible international users.

- **P00 Marketplace:** quiet toolbar `P2P · help · orders`, segmented **Buy | Sell | Orders**, one compact filter bar (Asset, Fiat, Amount, Payment), current eligibility/availability, polished offer list. Secondary `My offers`, payment methods and trading profile live behind an overflow or accessible subnav—not an unexplained fourth root-like tab.
- **P01/P02 Offer list:** left grouped trader avatar + name + server-verification *meaning*, top-right bold `₦… / exact asset`, merchant metrics in small subdued text with a definitional tooltip, second line `Available`, `Limits`, `Bank method`; bottom trailing single primary **Buy** or **Sell** action. Don't make numeric rate, trader identity or payment action depend on color alone. When width is 320dp, cards vertically stack price/amount and CTA without truncating critical limits.
- **P03/P04 Offer detail:** trader identity/profile/verified-what, exact rates and timestamp, min/max and remaining held stock, eligible receiving method, public terms and trade rules, bottom pinned **Buy**/**Sell**; incompatible or changed offers show a disabled button *with reason*, not an invisible button.
- **P05/P06 Amount:** large amount field with units and precision help, switch entry unit only where a qualified quote permits, visible available/max and fiat projection, single Continue. Numeric keypad is a usability affordance, not cryptographic security.
- **P07 Quote review:** top clear `You are buying/selling [asset]`, two aligned blocks `Asset quantity` and `Pay/receive fiat`, exact fee and method/participant identity below, clock/expiry and visible `Terms` link, **Cancel** secondary and **Confirm order** primary. A changed rate never silently auto-confirms.
- **P10 Order:** fixed header, status text + illustrated *non-deceptive* step tracker, large payment amount, bound bank details with separate copy actions, deadline directly adjacent to actual user task, quiet evidence/chat/help tabs and one role-specific primary action. Buyer sees **I've paid** only before claim; seller sees **Release assets** only after a separate confirmation explaining irreversible custody movement. Never place **Cancel** where it can be pressed after paying.
- **P13 In-order chat:** private mini conversation with two counterparties and order reference header; ordinary readable bubbles, contextual events separated from people, narrow composer and attach control, clear safety warning `Use only verified payment details above` without duplicating every message. No AI agent is a participant in the financial approval chain.
- **P14/P15 Evidence and disputes:** confidence comes from readable chronology, independent source labels and explicit case status, not screenshots decorated as successful bank payments; show upload size/type and last verified by staff, appeal reply, return to order.
- **P22–P26 Merchant tools:** tasteful data density; available inventory and active offers first, labelled pending inquiries second, seller bank identity restricted to account owner, filters/management menu third. `Pause` and `Close` reveal effect on *new* versus already accepted orders before commit; review exact pricing/fees and method at publish time.
- **W00–W20 Wallet:** use the complete **owner-approved visual blueprint below**. A broad feature inventory alone is not UI acceptance; do not force crypto Withdraw through MSNW conversion and do not show fiat estimates as spendable fiat.
- **B01–B04 Bills:** 2-step simple service form, provider-backed name/denomination and one sheet for verified charge review; pending purchase remains on original reference with actions to Refresh/View receipt/Help.
- **Motion/sensory:** subtle status transitions, no false celebratory completed animation on request submission, haptics only after real acknowledged action, reduced-motion/quiet semantics, no owner-rejected global Masana-work notification strip.

### 8.1 Owner-installed-APK corrective blueprint — 23 October 2026 (REQUIRED, unimplemented)

**Latest owner revision, 23 October 2026: VERTICAL CARDS, NO SECTION HEADINGS OR HOME TABS.** This supersedes earlier home icon-grid/shortcut-row, separate services grid and My assets/Transactions switch specifications in the same document, including the superseded initial PR #296 composition. Retain the compact Wallet card with Deposit/account inside, and preserve every financial eligibility and ledger rule. **Priority:** This supersedes every older Wallet description calling Deposit/Send/Withdraw/Swap the four home shortcuts, treating P2P as a secondary text link, or adding a standalone Bills section/crypto homepage. Source inspection at `e93fbfe8` plus the owner's installed APK report demonstrates that the existing screen lacks this composition. Preserve the **same 59 screen IDs and 286 atomic IDs** (820 app-wide): strengthen their acceptance, **do not manufacture extra checkbox progress**. Implementation owners: P6-W02/W03/W11/W12–15, P7-P01–04/S01–07 and P8-APK03–05. This section is **UX SPEC ONLY**, not shipped/tested code.

**Home anatomy, fixed top-to-bottom at normal scale (W00/WLT01):**
1. **Header:** small `Wallet` title, optional scoped privacy/history/help controls; no description, “portfolio” paragraph, advertising banner, explanatory warnings or redundant conversion heading above/below the card. A genuine financial incident may show a single compact dismissible/status line only when relevant, without displacing actions.
2. **ONE compact card:** original Masanawa green with restrained radius (~18–20dp) and insets (~16dp), **content-driven preferred height 154–190dp** at ordinary font scale (not a forced height under accessibility scaling). First row one short, truthful label (`MSNW available` if only MSNW custody is verified; `Portfolio value · estimate` **only** when genuine per-asset valuation coverage exists), balance eye/refresh; large readable exact number with unit; tiny optional as-of/partial-estimate link; lower row **verified 10-digit Wallet account · Copy** *inside* the card and an obvious white/contrasting **Deposit** button replacing Fund. Account number never floats outside the card. The available MSNW amount is not silently added to a separately displayed “cash” or complete fiat total. Tapping any valuation disclosure opens a sheet; no multiline legal paragraph in the card.
3. **Vertical money-action cards immediately following Wallet card:** one **full-width individual compact card each**, in exact order **Withdraw → Send → Swap → P2P**. Leading icon in subtle circular/square tinted field (~36–40dp), strong label, optional short true status (never filler), trailing chevron or disabled status. One interactive surface per row, 48dp+ tap target, preferred height **56–68dp** at normal text scaling (expand with larger fonts), 8dp vertical spacing, unified radius/border and alignment. All four are ordinary vertical scroll items: **no four-across icon row, horizontal overflow, 2×2 grid, carousel, secondary P2P text link or section header**. P2P still opens Buy/Sell/Orders; paused trading must preserve Orders.
4. **Four more vertical service cards immediately beneath P2P:** one full-width card each **Airtime → Data → TV → Electricity**, visually matching the four financial rows. No multi-column grid, `Bills & services` heading, banners, category divider label or nonfunctional tile. Card opens qualified B01–B04 service or displays concise server-grounded disabled reason; show no fake catalog.
5. **My assets as a single inline composite vertical card:** after Electricity, render a card titled **My assets** (this is the **card label**, not a free-floating section heading). Inside it, list each *actually owned* MSNW and qualified crypto asset in exact-quantity rows with icon, symbol, optional estimated value and trailing chevron. Tap row → W03; an optional `View all`/expand control handles a long inventory without hiding positive balances or creating a duplicate crypto wallet. There are **no home tabs**, asset icons arranged as a separate grid or independent `All crypto assets` menu.
6. **Transaction history as the next composite vertical card:** after My assets, render one tappable card titled **Transaction history**, with up to three actual most recent authorized transactions displayed as aligned compact rows (type icon, direction/asset, exact amount, server status/time), plus **View all → W18**. Item tap opens W19 original receipt. Preserve pending/unknown and correct account scope, and do not show unverified mock entries. An empty card says `No transactions yet` only after a verified empty response; a failed request shows retry, not fake zero. No extra transaction-history section heading, Home `Transactions` tab or separate competing history ledger.
7. **Single continuous feed and density:** scroll the balance card and action/service/asset/history cards as **one native vertical viewport** with stable key/scroll restoration, sliver/lazy handling for long inventories/history, predictable Back, no nested competing scroll physics. Subcard labels (`My assets`, `Transaction history`) are genuine tappable row titles, **not standalone section headings**. Keep one clean green hero and mostly white/surface-neutral option cards with modest shadows or dividers, not ten oversized colorful blocks. Critical security/service incidents may show one unobtrusive contextual state when necessary.

**Screen architecture and visual recipes (applies in both asset-preselected and general entry):**

| Existing IDs | Layout, structure and controls (minimum acceptance) | Required transitions, error and result states |
|---|---|---|
| **Asset picker, holdings and detail (W01/W02/W03)** | Quiet header/back; searchable symbol/name/network picker with selected check, verified holdings and eligible action badges; asset detail shows icon/name/chain, quantity hero, small Available/Reserved breakdown, compact Deposit/Send/Withdraw/Swap, **activity list beneath**, never stacked decorative cards or redundant educational paragraphs | source verified/stale/partial, unpriced assets, network mismatch, restricted asset, no holdings, signed-out, account switch; asset choice and filters restore |
| **Deposit & Receive (W04–W08; WLT03)** | Title `Deposit`, asset chip/picker, **three concise choice rows**: Receive from Masanawa, Deposit crypto, Buy with eligible payment (P2P optional linked shortcut). Internal receive shows **own verified account+Copy and QR/request** in one clear panel. Crypto page shows asset+network chooser FIRST, then clean QR/address with Copy, separated memo/tag with Copy, minimum/fee/confirmations and a single `Track deposit` link. Local purchase displays actual provider/bank details, fee/quote, one Continue. Never duplicate a `Fund` home or generic QR for all assets | route ineligible; QR/address pending, wrong network/tag, expired/reusable invoice, permission denied with manual alternatives, provider outage, uncredited pending, confirmed credit and readback, help referencing original payment |
| **Send (W09–W11; WLT04)** | `Send` page: **To** block with recipient search/@handle/number/scan, saved/recent chips and server-verified recipient preview, **Asset** row, **Amount** large exact-decimal input + Max/available, short fee summary; persistent one **Continue** at bottom above keyboard. Separate calm full-page or bottom-sheet review with verified recipient/asset/amount/fees and distinct Cancel vs `Confirm send`; real secure step-up; status/receipt page with one original reference, Share/Help/Done | lookup loading/no match/blocked/changed identity, invalid precision/insufficient, quote changed, auth deny, repeated transfer warning, ambiguous result/retry original, no double-debit, account switch and restore |
| **Withdraw (W12–W14; WLT05)** | `Withdraw`: chosen owned asset, **network selector visibly above external address**, destination + optional tag/memo and explicit Scan/Paste, amount + Max/available, min/fee/network and `You receive` summary in one tidy quote panel, single Continue. Review displays full destination/chain, amount, exact fee asset/debit, expiry, irreversible nature, step-up; pending detail uses readable timeline and original tx reference, explorer only if real. Never send an existing crypto holding via an MSNW conversion intermediary | network disabled, wrong chain/tag, clipboard spoof, too-small amount, fee race, provider timed-out/unknown, irreversible submission, reorg/refund/manual review and retry same ID |
| **Swap versus conversion (W15/W16; WLT06)** | `Swap` pairs two deliberately distinct **From / To** asset selector rows with swap-direction control only if both directions qualify; large amount/available, **rate + as-of/expiry + fee + minimum received**, one `Review swap` CTA. Reviewed asset A→B must credit B **inside Wallet**. MSNW→external-crypto payout W16 is its own explicitly labeled provider conversion/withdrawal adapter on supported deep link, **not** a home heading, generic Swap or fallback Withdraw | invalid pair, no liquidity, stale rate, slippage, quote mismatch, reserve changes, disabled capability, pending/reversal; avoid a fake successful swap |
| **Activity, receipt and help (W18–W20; WLT07/10)** | Same top/bottom chrome, simple searchable chronological rows, sticky filter chips/status, original reference details, aligned label/value receipt with copy/share/report options, noncolor-only status icon; no paragraph-as-receipt or duplicate records | pending/partial/failed/reversed, status refresh original ID, lost connectivity, permission/redaction, account switch; Back preserves selected tab/filter/scroll |
| **P2P marketplace and orders (P00–P32; WLT08/09)** | **Permanent fourth vertical home card** opens focused `Buy | Sell | Orders` marketplace, visible asset/fiat/payment filters, accessible merchant/price/limits cards, one Buy/Sell CTA, My ads and help secondary. Order screen uses timeline, original quote, private payment instructions, participant-only messages and evidence/help, role-specific escrow confirmation. No remote bank proof inferred from a screenshot | no listings, restricted/paused market, unknown payment, late/appeal, two-account authority/races; Orders accessible despite new-trade pause |
| **Bills services and fulfillment (B01–B04)** | Four vertical home cards (**Airtime/Data/TV/Electricity**) lead directly to the qualified service form, then customer/account block → server-catalog operator/package/amount → verified quote → single review/step-up → actual provider fulfillment/status/receipt. Save recipients only by consent. No useless intermediary `Bills & services` overview/header on home | ported number/name mismatch, provider category missing, stale quote, funded-but-unfulfilled, pending/partial/reversed, retry original and provider readback |

**Shared component rules:** One `WalletFlowPage`/design-system for operation header, iconography, neutral card, `WalletFormSection`, amount field, asset pill, owner-bound recipient card, bottom SafeArea action bar, review breakdown, secure step-up, result tracker and receipt. Consistent 8dp spacing rhythm, ~16dp horizontal gutters, aligned labels/numbers, 12–16dp group gaps, quiet borders, one high-contrast primary CTA per step; no nested multi-level scaffolds with two app bars, overflowing AlertDialog financial summaries, unrelated banners, auto-opened chooser on every resume, or raw `Text()` dumps of pricing/source/fee. Preserve all meaningful disclosures **at the relevant step**, in concise rows/details, not by deleting legal/financial facts. Status text, not only color, communicates proof/uncertainty.

**Implementation gate (visual and functional, NOT screenshot-only):**
- For W00/WLT01, compare **pixel-reviewed 320×640dp, 360×800dp and 412×915dp** device screenshots at 1× and 200% accessible font. At ordinary scale, the **first viewport must show the complete compact Wallet card and the start of the vertical action-card list**; do **not** cram all ten options onto the first viewport. On normal vertical scrolling all eight actions, the composite My assets card and Transaction history card remain reachable with correct keyboard/TalkBack order, no horizontal scrolling or cramped type. No overlarge hero, clipped verified account number, hidden P2P, floating intro paragraph, `Fund`, `Convert MSNW & withdraw`, `Bills & services`, `All crypto assets`, tab bar, action grid, empty section header or fake activity.
- Golden screenshots + navigational widget assertions at both signed-out and fully loaded authorized data, **zero/held/reserved/partial/offline states**, English/Hausa and RTL, TalkBack order/48dp target at accessible scale, keyboard and Android back. No fixed pixel snapshot is a substitute for inspectable active controls.
- Exercise **Home → each vertical card Withdraw, Send, Swap, P2P, Airtime, Data, TV, Electricity, My assets rows, Transaction history rows/View all, plus Deposit in the Wallet card → correct screen → correct form → review/step-up/status (real/simulated distinguished)**, back to the **same Home vertical-scroll position** and original subcard expansion/filter state; every visible control must work. At least one qualified MSNW journey and one qualified non-MSNW asset use real backend data; if a rail is not qualified, disabled state must be visually polished and actionable. Do not enable financial movement just to pass a screenshot.
- A QA owner must manually compare installed APK against this entire sequence and identify remaining alignment/visual defects; CI/widget pass alone cannot close **P6-W11 or P8-APK04/05**. Any observed issue is reopened until same-SHA APK device retest, with explicitly tracked affected screen/ID. Rating “better than OPay/Telegram” is subjective; enforce these measurable user-judged interaction and polish outcomes instead.

**Acceptance scorecard per screen**: (a) user can identify their current money/asset/status and next action in five seconds; (b) all important money fields appear **before** irreversible confirmation; (c) no double action or request recreation when status is unknown; (d) at least one recoverable path for offline/permission/blocked/expiry/unknown; (e) correct accessible screen and keyboard flow at 320dp/200%; (f) no private data from a second account after switching; (g) UI matches true backend authority; (h) support case uses the exact same trace. The screen is not finished if any relevant criterion fails.

## 23 October 2026 — P2P discussion report/review/removal continuation (P7-T02 partial)

Participant order messages can be reported with a bounded category/reason; natural message/reporter identity deduplicates retries, terminal-order reports remain allowed, and self/foreign/tenant-mismatched targets are denied. A separate existing-admin-session queue reviews reports using persisted versions, private reasons and a single immutable audited decision. Removal redacts participant pages, original-request recovery and duplicate-send responses while preserving restricted original support evidence. Every refresh carries bounded tombstones so cached older messages are scrubbed; account/session replacement clears private Flutter state. Reports/reviews do not call custody or change escrow state. Migration `0139_msnw_p2p_message_moderation.sql` is additive.

Higgsfield source tests cover report ACLs/dedup, stale decisions, evidence preservation, redaction and cached history, with hosted full-migration PostgreSQL duplicate-report/competing-review coverage. Final exact head, tests and merge evidence belong to the feature PR. Source is partial: retention/erasure/legal policy, protected discussion attachments, profile identity, maker-buy/taker-Sell, multi-asset/risk qualification, live staff operations and two-device/provider/production acceptance remain OPEN. No APK or live financial operation; P7/P8 parent checkboxes remain unchecked.

## 23 October 2026 — P2P versioned ad editing and quote fencing (P2-18 partial)

PR #319 is merged as `d012c73e3c487f3e0efe6b1575a2e76cf1e04078`; final integration head `ef0bdb4090110f48d2ea1812da8a294eadd1325f` passed Foundation, Mobile, P2P and Status CI, including 79 backend/storage, 7 Worker and 10 real PostgreSQL tests. Its maker-buy/taker-Sell source remains default closed without trusted admission; this is source integration, not live market/device/provider acceptance.

The next connected P7-P01/P02/P2-18 source adds own-ad price, limits, verified bank and remaining-new-order editing with explicit review/save, locked server revision, immutable before/after audit and actor-bound original-request recovery. Additive migration 0141 increments stock/state revision independently from financial terms revision. Concurrent stock changes invalidate stale editors; bank/price/limit changes invalidate stale checkout quotes. Accepted orders keep original bank, amounts, escrow and deadlines. Quantity edits do not change or settle existing reservations; later cancellation still restores its original quantity through canonical refund authority. Sell-ad remaining is capped by actual available principal plus fee; buy-ad edits still require the existing trusted admission gate.

Unedited legacy ads retain terms revision 1 compatibility. After terms change, an order must carry the reviewed server terms revision; old clients must refresh/update rather than silently authorize a changed bank. Accepted request replay/status remains available before new eligibility checks. Native encrypted account-scoped recovery freezes the original edit payload before POST, checks status first after uncertainty/restart and rejects stale overwrite. Review starts at the top of its summary; drafts are revision-bound, and secure reads/writes are fenced to their initiating account/base.

Higgsfield: 80 full P2P backend tests, Gateway typing and the focused 5 SQL/HTTP edit tests PASS; 18 native editor/marketplace/directional journey cases PASS, including 320dp/200% RTL. Rendered review inspected with real fonts. Final exact-head CI and the authored 11-test real PostgreSQL migration/escrow/edit-race qualification are recorded on the actual PR when run; do not infer their pass from this checkpoint. An unexpected Higgsfield volume replacement required source/SDK reconstruction; recovered backend proofs were rerun, and source has an independent recovery copy. No APK or live financial/provider operation.

All parent gates remain OPEN. This implements fixed-price/bank/quantity editing only; public terms moderation, floating indices, merchant schedules/qualification, block/report-ad policy, protected media/retention, qualified multi-asset rails and staff/device/provider/production acceptance remain outstanding. Read order and canonical 177-screen/820-requirement inventory stay intact. Next: complete focused native/visual and exact-head hosted checks, review/merge this connected batch, then continue independent P2P requirements without enabling unqualified capabilities.

## 23 October 2026 — P2P exact bank-amount discovery and price sorting (P0-08/P0-09 partial)

PR #324 is merged as `0847c542311764bf35346cf4d0aead920cec1a37`; final head `f2ef379a8588e57e4c222dbe8205e9a3ab46678a` passed Foundation/Mobile/P2P/Status CI, including 84 backend/storage, 7 Worker and 11 real PostgreSQL tests. Own-ad editing and immutable accepted-order terms are integrated source, not device/provider/production acceptance.

This connected P7-P01/T01 discovery batch adds exact NGN bank-amount limits alongside MSNW amount filters, newest or direction-aware best-price ordering (lowest seller price for Buy, highest buyer price for Sell), and price/time/UUID keyset pagination bound to account, direction, trader, amount, search and sort. Fiat and MSNW amount filters are mutually exclusive. Integer kobo arithmetic derives the maximum eligible micro-MSNW fitting the bank limit with ceiling-rounded final fiat; capacity and verified-method admission remain authoritative. Discovery has no custody writes and creates no fake reliability score. Price edits can change a live market; the original quote/revision checks still govern checkout.

Native filters preserve separate unit drafts, show active sort/NGN limit, cap and prefill a budget-fitting amount, clear both directional caches together and keep Buy/Sell/Orders focused. Amount validation and refreshed quote both enforce the selected NGN limit. Captured account/base intent fences reject an old review after account replacement, including durable order recovery and bank verification callbacks. A regression proves that old-account approval cannot submit under the replacement account; no funds move from filter or sort actions.

Higgsfield: final 87 backend/storage tests and Gateway typing PASS; eight new native cases PASS (exact precision/range, unit/clear, actual query/prefill, 320dp/200% RTL, account replacement, refreshed quote exceeding the limit, delayed-404 order/ad recovery after account replacement). Earlier nine marketplace and nineteen combined affected cases passed; intermittent Flutter test-shell startup segmentation faults are separate runtime failures, not assertion passes. Exact-head hosted Mobile/full suites and the authored twelfth real PostgreSQL no-custody-write discovery test are recorded on the actual PR when run. Independent read-only review found no remaining material blockers after fixing the recovery error-response fence; final delta evidence belongs to that PR. No new ledger, admission policy, production migration, APK, device/provider or live funds operation.

P0-08/P0-09 remain partial; reliability/independent settlement timing, block/report-ad policy, merchant/risk/geography admission, protected media/retention, individually qualified assets/rails and all staff/device/provider/production gates remain open. No parent checkbox or 177-screen/820-requirement total is closed or changed. Next: verify exact published tree, hosted checks and review, merge the coherent source batch, then continue remaining independent P2P source while keeping external gates explicit.

## 23 October 2026 — P2P verified bank-method management (P1-03/05/06/08 partial)

Predecessor [PR #326](https://github.com/Baatiku/Masanawa/pull/326) merged as `fa13dffc9431ac3c023e150583117e1b43d51160`; exact head `8838d2310a9eac1a829c38d13bf6469d577afe2c` passed all four hosted workflows, including 87 backend/storage, 7 Worker and 12 real PostgreSQL tests, full Mobile analysis/tests and Foundation. NGN limit/best-price discovery and account/error-response recovery fences are integrated source. Real-font filter rendering was inspected; no physical-device/provider acceptance implied.

This connected P7-P01/T01 batch adds a secondary **P2P options → Manage bank methods** page with masked account endings, verified-method versus merchant-trust guidance, own-account/third-party-payment warning, explicit deactivation confirmation and authoritative readback/retry. Existing active-method API now masks bank numbers on the server, not only in Flutter. Management/history returns only the last four digits; full original bank instructions remain participant-only on accepted orders and in the existing verification result.

Owner/tenant-scoped deactivation converges on the original method ID and first `disabled_at` timestamp. It locks the same existing row used by reservation/editing; no reverse offer lock, deletion, reactivation, custody mutation or new migration is introduced. New quote/ad/order eligibility excludes retired methods. Accepted orders keep the immutable original bank record, deadlines, custody and original-request recovery. Reuse requires actual provider reverification, never a client-side enable toggle. Disabled history is retained. Rename/default selection/unused deletion and provider policy remain incomplete.

Validation: consolidated Higgsfield source/native checks and independent review are in progress; the thirteenth real PostgreSQL race test is authored for exact-head hosted qualification. Record actual results and merge SHA on the source PR; do not assume passes. Native account/session/base fences, lost-result readback, offline retry and 320dp/200% RTL are covered by focused cases. No APK, production migration/deployment, real provider enrollment or live-funds action.

P1-03/05/06/08 and all parent gates remain OPEN/partial. Remaining P2P source includes report-ad/block policy, public terms moderation, trusted merchant/risk/geography admission, protected discussion media/retention, qualified asset/rail support and staff/device/provider/production acceptance. The five-contract 177-screen/820-requirement inventory is unchanged. Next: finish consolidated checks/review, publish exact tree and merge compatible green source, then continue remaining independent P2P requirements.

## 23 October 2026 — P2P private bank preferences and unused removal (P1-04/P1-05 partial)

Predecessor [PR #334](https://github.com/Baatiku/Masanawa/pull/334) merged as `7875ba9b8933c206bf32b2c08b7f04beec6dbbfe`; final head `416d0a5f929173f5072e1406be1c203c1125db8d` passed all six workflows (Foundation/Mobile/P2P/Status/Calls/Rooms), including 91 backend/storage, 7 Worker and 13 real PostgreSQL cases. The Calls-test cleanup repair waits for actual server disconnect before non-force fixture deletion; the earlier late socket error is repaired and final Foundation is green.

This connected P7-P01/T01 batch extends the existing bank-method page with owner-private nicknames, one default for new P2P ads and removal of unused saved methods. Nicknames appear alongside the genuine bank in owner-only selection, never replace provider-verified identity or appear on public trader/ad responses. Default selection is serialized per owner and constrained to one active verified method; it prefills a new ad only, while an existing draft and every accepted order retain their original bank. Deactivation clears the default. Every publish still uses the existing exact review, quote/revision and canonical custody authority.

Migration `0142_msnw_p2p_method_preferences.sql` adds private preference/archive fields, validation and reference indexes. Removal locks the bank record, refuses any ad/order reference, and archives an unused method while disabling future use; it never deletes immutable banking evidence or moves funds. Repeated removal returns the original archive result. Reuse requires provider reverification. Native nickname/default/remove confirmations, authoritative readback, failed-change recovery and account/base fencing use the same secondary page. Current provider and retention policy/device acceptance remain separately open.

Higgsfield: 30 focused backend/actual-SQL cases and Gateway typing PASS; 30 combined management/edit/Buy-Sell/marketplace cases plus the additional 320dp/200% RTL preference case PASS, including 13 management cases, including default-versus-existing-draft selection, private nickname/clear, removal refusal/recovery, old-account dialog fencing and prior 320dp/200% RTL coverage. First multi-file Flutter run hit a test-shell startup segmentation fault; no crash is counted as a pass. Analyzer reports informational lints only. The authored fourteenth real PostgreSQL case checks concurrent defaults, referenced-method refusal, archive replay, original bank instructions and unchanged custody/journal; independent read-only source review found no material findings; exact published-head hosted qualification belongs to the PR. No APK, live provider enrollment, production migration/deployment or real-funds operation.

P1-04/P1-05 and all parent checkboxes remain partial/open. The five-contract 177-screen/820-requirement inventory is unchanged. Remaining P2P work includes public terms/report-ad/block policy, trusted merchant/risk/geography admission, protected media/retention, separately qualified assets/rails and staff/device/provider/production acceptance. Next: finish consolidated affected checks, preserve fresh-main peer work, publish/review/qualify and merge this coherent source batch, then continue independent required P2P source.

## 23 October 2026 — P2P private ad reporting and support review (partial P1-18/P7-P01)

Customers can report an eligible ad from its trader card, recover the original private receipt after an ambiguous response or later ad closure, and page their own report history. The server retains one immutable report per actor/ad with a whitelist of public ad context; bank account numbers, private bank labels and verification evidence are excluded. An actor-wide 20/hour quota is serialized across ads. Operators have a tenant-scoped paginated queue and independent, reasoned, versioned dismiss/refer reviews; reporting/review does not change ad availability, orders or custody. Referral records triage status only: automated case creation, policy enforcement and provider action remain open.

Higgsfield evidence: six new SQL/HTTP cases, gateway TypeScript, eight customer Flutter cases and five admin Flutter cases passed; affected analyzers report informational lint only. Independent read-only review found no material findings. Added real PostgreSQL cross-ad quota and competing-review coverage for hosted qualification; exact-head CI results belong in the PR before merge. Fixed the existing admin dispute-page closing parenthesis needed to reach the queue. No APK, physical-device acceptance, production migration, provider qualification or live-funds action. Trusted buy-ad admission stays default closed; P1-19 sanctions/fraud enforcement, operational retention/access policy and parent Phase 7/8 gates remain open. The 177-screen/820-requirement scope is unchanged.

Previous connected delivery: PR #335 merged at `29efd85eaf82e3932c1850fdc014a269f51acf82` with all four exact-head CI workflows passing, including 95 backend/storage, 7 Worker and 14 real PostgreSQL cases.

## 24 October 2026 — P2P current-ad bulk pause and trader outcome context (partial P6-07/P2-19/P1-13)

P2P options → Ad availability shows owner-scoped active/paused/closed counts and explicitly confirms pausing the ads active when the operation runs. The original request key is saved in account/base-scoped secure storage before POST; reopening recovers the original receipt before same-key retry. Migration 0144 retains immutable owner-bound pause receipts. UUID-ordered row locks serialize against reservations; no order, inventory, custody or receiving-bank field is changed. Retrying never repauses resumed ads or ads published afterward. Operations above 1000 active ads fail atomically rather than partially pausing. Each ad is resumed individually under existing eligibility checks; schedules and a persistent merchant-offline mode remain unimplemented.

Trader profiles now expose completed/cancelled/expired/currently-disputed/total outcomes from the same last-30-day opening-date cohort. These are current order outcomes, not lifetime dispute counts, a reputation score, merchant verification, sanctions or wash-trading policy. Public eligibility and private identity/bank boundaries remain unchanged.

Higgsfield: five new SQL/HTTP cases and the existing nine read-journey cases pass; gateway TypeScript passes; fifteen Flutter cases pass (six pause and nine trader), including durable-save failure, reopening/lost-result recovery, late 404 after account replacement, outcome display and 320dp/200% RTL. Exact-head hosted CI evidence belongs in the PR. Affected analyzer has informational lints only. Independent read-only review found no material findings. A sixteenth real PostgreSQL test covers duplicate bulk pause/reservation races, accepted bank instructions and replay after resume/new ads; hosted qualification pending. No APK, physical-device, provider or production acceptance claimed. Parent Phase 7/8 and risk/provider gates stay open; 177 screens/820 requirements retained.

Previous delivery: PR #337 merged at `060b61ce4c576ea797d0cb28b15e72c2df10c98d`; exact `4bb1f544` passed Foundation, Mobile, P2P and Status CI, including 101 backend/storage + 7 Worker + 15 real PostgreSQL cases. Ad report policy/retention, enforcement and production/device gates remain open.

## 24 October 2026 — P2P order and own-ad history filters (partial P6-02/P8-X02)

Base `main d83290f24a46c1beeab4f71c9bf247a7f7e263d5`; isolated branch `feat/p2p-history-filters-oct24`. Orders and My ads → Filter history → status/direction/opening-date fields → Apply / Reset / Back now use server-filtered reads. Calendar dates are strict YYYY-MM-DD with inclusive UTC day boundaries. The current qualified market remains MSNW/NGN/bank transfer; unsupported asset/fiat/method requests fail closed rather than implying additional rails. Active/Finished chips clear an incompatible exact status while retaining date/direction; applying advanced order filters resets the broad chip to All. No-matching results are distinct from no history. Validation errors keep the draft, Back cancels it, account/API changes scrub it, and refresh/retry retain only the selected scope.

Dedicated read helpers replace existing order/own-ad page methods. Microsecond time/UUID keysets bind tenant, actor, resource, status, broad category, direction, dates and page size; a changed scope or malformed/legacy cursor requires a fresh first page. SQL applies all predicates before LIMIT. Disabled bank methods remain visible only as safe own-ad history; no receiving-account number is added. Generation fences prevent stale refresh/load-more responses from repopulating a changed filter cache. These reads do not mutate order, ad, custody, provider or verified bank authority; no schema migration.

Higgsfield evidence: 107 P2P backend tests PASS, including four new SQL/HTTP filter cases and nine existing read cases; Gateway and storage-adapter TypeScript PASS. Seventeen Flutter tests PASS (six filter-form plus eleven marketplace journeys), with the final eleven rerun after no-match copy. Strict date/range errors, tenant/account/filter/page-size cursor reuse, tied timestamp pagination, actual root Apply/Reset, account replacement and 320dp/200% RTL controls are covered. Affected analyzer has informational lints only. Independent read-only review found no material findings. A seventeenth real PostgreSQL read test is authored for hosted qualification; exact-head CI is pending until recorded in the PR. Physical handset, multi-asset P2P/provider, production and parent Phase 7/8 acceptance remain open. No APK or live-funds action. Preserve all 177 screens / 820 requirements.

Previous connected delivery: PR #346 merged at `47fec268d08586bdb6c76df3db93f07151a6bba6`; exact `4d4f5b6b` passed all four workflows (Foundation/Mobile/P2P/Status), including 106 backend/storage + 7 Worker + 16 real PostgreSQL cases. Safe next action: exact-head hosted checks → repair genuine failures → merge fresh main; next independent P2P source is typed dispute reasons and participant support context (P5-12/P5-13), with policy/provider gates explicit.

## 24 October 2026 — P2P typed original dispute reports and participant support context (partial P5-12/P5-13/P6-04)

Order → Open dispute / Support context and events now provides a typed reason picker, private opening explanation, original report reference, current canonical order status and up to 50 recent public transitions. The explicit Confirm dispute report action uses the existing participant-authorized, row-locked dispute transition. Migration 0145 records one immutable original opening per order in that same transaction; a failed insert rolls state/event changes back. Same-opener retries recover that original even after settlement without reopening the order or moving funds. Legacy reason-only requests keep their existing behavior; legacy disputes remain readable without inventing a typed report. A changed category/detail cannot overwrite the accepted original.

Participants see their own original explanation; the counterparty sees category/time but no private explanation. Shared timelines exclude staff reasons, evidence/bank records and raw actor IDs. Formal case responses, staff messaging/response windows, appeal/reopen policy, complete historical export and retention/erasure policy remain unfinished. Existing order messages/evidence and late-payment support remain the response paths. A report/screenshot never becomes bank proof or release authority; existing operator settlement controls are preserved.

Staff case context now displays original typed evidence and retains existing audit/evidence/late-case information. The extracted view captures the operator session, scrubs content on token change or failed refresh, and ignores late old-session responses. Private evidence-link requests bind the captured session/base before and after HTTP and before clipboard use. Existing reconciliation/expiry/resolve handlers are unchanged. Customer forms check original context before submission, freeze uncertain payloads, recover before retry, scrub revoked/account-changed state, and show current terminal status on recovery.

Higgsfield: 111 full P2P backend cases PASS, including four new typed-context SQL/HTTP/privacy/rollback cases; Gateway and storage-adapter TypeScript PASS. Twenty-nine focused Flutter cases PASS (seven customer support, twelve marketplace/order integration, five new staff context and five existing staff report cases); affected analyzers have informational lints only. Independent read-only review found no material findings. An eighteenth real PostgreSQL test covers competing participant openings, unchanged escrow hold and original recovery after canonical refund; hosted exact-head qualification remains a merge gate and is recorded in the PR. No APK, physical handset, live provider, production migration or live-funds acceptance. All 177 screens / 820 requirements and parent Phase 7/8 gates remain open.

Previous delivery: PR #352 merged `487fbabd5012b82506f12c3467be47617f4e1a72`; exact `4e382abf` passed Foundation/Mobile/P2P/Status, including 110 backend/storage + 7 Worker + 17 real PostgreSQL cases. Current source is isolated on `feat/p2p-dispute-context-oct24`, with Gateway P2P service/routes/context module, migration 0145, customer order/support pages, staff case view and scoped tests. Safe next action: hosted source/migration/native checks → repair material failures → merge fresh main; operational dispute policy/staffing, formal responses and real-device/provider acceptance remain explicit follow-up.

## 23 October 2026 — P2P public trader context and report-boundary hardening (partial P7-T01/P27)

A native trader profile opens from a presently funded, verified-bank sell ad, shows the existing public profile display name, completed/closed cohort denominator, server sampling date and the precise 30-day opened-order window. Eligible ads paginate within that trader/reference/account scope and return to the original authoritative buy quote/review flow; no order is created from profile viewing. Paused, unverified, unfunded, self or foreign-tenant source references are unavailable, and private user/bank/KYC IDs are not projected. Flutter covers stale references, offline retry, pagination, account replacement and compact large-text RTL.

This batch also addresses PR #309 review observations: Unicode report/review reason minima match PostgreSQL character counts, and a transaction-scoped actor advisory lock serializes the hourly report quota across orders. Sequential PGlite tests explicitly stub only the unsupported advisory primitive; hosted real PostgreSQL concurrency acceptance proves the actual lock. No new schema, custody authority, financial operation or APK. Exact final-head CI/review/merge evidence is attached to the feature PR. Trader avatars, legal/merchant/risk admission, block/report-ad policy, maker-buy/taker-Sell, multi-asset rails, protected discussion media, retention policy and device/provider/production acceptance remain OPEN; no parent checklist is closed.

## 23 October 2026 — P2P maker-buy / taker-Sell source (P7-P01/P02 partial)

Base `0d9803629393b52e42d82a5cd6b1294215f43772`, branch `feat/p2p-maker-buy-source-oct23`; integrate onto fresh main preserving other lanes. Connected source adds direction-aware ad creation/discovery/profile/management, actual taker-seller receiving-bank selection, server quote/review and original-request recovery. Buy-ad remaining is buyer demand, never funded MSNW or proof of fiat balance. Both directions reserve and settle through the existing canonical MSNW custody adapter; orders persist actual seller/buyer roles. Additive migration 0140 preserves legacy financial rows, keys and constraints while binding new original requests to their initiating actor, allowing different sellers to use the same request key against one maker. Accepted requests remain recoverable after admission/method revocation.

Maker-buy/taker-Sell is **default closed**: no production allow-all, client activation switch or new balance/ledger. A trusted current identity/risk/geography admission authority is an explicit external prerequisite; all readers must be direction-aware before activation during rollout. The asynchronous policy interface receives actor identity only, never a pooled transaction client. Synthetic admission, verified-bank fixtures and funds exist only in tests. Existing sell ads/taker-Buy remain available under their current authority.

Higgsfield source evidence: 86 backend/storage/Worker tests and Gateway typing PASS; 32 Flutter marketplace/profile/discussion/two-direction journey tests PASS; analyzer has informational lints only with `--no-fatal-infos`. Rendered Sell review inspected with real fonts. Independent read-only review found a transaction-timeout lifetime issue and legacy direction labels; repaired, with no remaining blockers in reviewed backend/native source. Full-migration real PostgreSQL duplicate reservation, actual-seller release/refund, conservation, independent initiator recovery and rollback/revocation tests are authored for exact-head hosted qualification; final CI/head/PR/merge evidence belongs to the actual PR, not an assumed pass here. No APK, handset, provider, production migration or live funds acceptance claimed.

Parent requirements stay OPEN. Remaining P2P gates include trusted merchant/admission/risk policy and geography, individually qualified multi-asset custody dependency, protected discussion media/retention, block/report-ad policy and staff/device/provider/production acceptance. Read order retained: AGENTS → CONTINUE-HERE → canonical roadmap/SCREEN-JOURNEYS → all five exhaustive feature contracts → current Factory instructions. Next action: finish exact-head hosted checks, review and merge this scoped batch; then continue independent unfinished P2P source, keeping external gates explicit.
