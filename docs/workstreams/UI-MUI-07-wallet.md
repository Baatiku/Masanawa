# MUI-07 / AF03 — mounted Wallet presentation and account-isolated reads

**Current remaining work:** [Active remaining checklist and P2P design audit](#active-remaining-checklist-and-p2p-design-audit--2026-10-18). Updated from main 3d1b6bf on2026-10-18; earlier delivery/evidence sections are retained below.


## Delivered identity and status

- Starting fresh `origin/main`: **`52c6b5a9afe83d40d1c7ee28ef5d8e7b837e5788`**. This includes MUI-01 #678, MUI-02 #680/#681, partial MUI-03 #682/#683, and MUI-05 #684/#685. All were preserved.
- Implementation/test commit and exact source PR head: **`416a2139c8dccf4747e7ec289ddecd7c381190c3`** on `lane/af03-mui07-wallet-presentation-20261012`.
- [PR #686](https://github.com/weavewellindustrieslimited/masanawa/pull/686) merged normally on 2026-10-12 at **`867d1288885bc335ee0f2704504de8135580dc72`**. Expected-head merge used; no admin flag, test/check disablement or protection change. All five application/test blobs were compared against merged main and match exactly.
- Documentation-only post-merge branch: `docs/mui07-verified-wallet-handoff-20261012`. This handoff and the MUI-03 reconciliation note change no executable source.
- **Implementation: INTEGRATED_SCOPED_SOURCE / PARTIAL_MUI07_ACCEPTANCE.** Verification: **PASS_SIMULATED_WIDGET** for executed Flutter/controller cases and **PASS_REAL_STATIC_ANALYSIS** for focused Dart analysis. **NOT_RELEASED**; no installed phone, live financial provider or production authorization qualification.

## Ownership and fallback resolution

Read current project instructions, queue, milestone handoffs and upstream Software Factory v0.4.4 at `Baatiku/Software-Factory-starter-kit@b8e9437ea40ce22094758a4352d9c88462d3e17a`, including AGENTS and relevant operating/ownership/verification references. Current project development policy governs main integration.

Registry claim **`af03-mui07-wallet-presentation-20261012`** acquired with exact paths before edits and renewed with source/test checkpoints. Two related paths were explicitly added before editing: the existing Wallet test fixture and MUI-03 handoff only. Release after post-merge documentation handoff. No contested implementation path was seized.

Fresh reconciliation found:

- MUI-03 #682 already merged scoped local filtering, with #683 handoff. Registry records the previous narrow recovery of `chat_list_screen.dart` from `af06-pr497-chat-list-async-action-lifecycle-20261010085813` to `af06-mui03-mounted-chats-search-20261012-gpt6`. Old branch checkpoint `3c0e88489baa7b5ad99dff66e69325f23937f086`, remaining broad claim paths and open PR #497 head `82e4f436e47828be76088cabe2c9064a80a548ec` remain preserved. This window did not edit Chats source.
- Canonical C10 #641 inbox is still on older `integration/rebuild`, not mounted on main. Completing it needs AF00 trusted-auth/Gateway/migration composition and an explicit exact-path transfer. `cloud-api-v1-20261011` still holds root composition, and unreleased `af05-android-voice-repair-20261012` still holds `services/gateway/src/main.ts` and voice paths. Expiry was not treated as release. Existing AF00 request: [#616 comment 6128601248](https://github.com/weavewellindustrieslimited/masanawa/pull/616#issuecomment-6128601248).
- MUI-04 canonical Status and MUI-06 persistent Rooms also need AF00 mounting/composition. MUI-05 is already merged with its own executed evidence. Therefore MUI-07 mounted Wallet presentation was the earliest safe disjoint source work.
- Inspected and preserved open MSN PR #576 at `aa88511f4add1bbcf9e213283088fea5a6b0561b` and its financial/reconciliation handoff. Its unmounted readback/ledger proposal was not wholesale-merged or used to rename legacy Credits.

## Exact changed paths and connected behavior

1. `apps/mobile/lib/src/screens/wallet/wallet_screen.dart`: mounted Wallet retains existing root callbacks and independent Billing/Crypto access during loading/outages. Standalone Wallet reuses MUI-01 white header; embedded root keeps its own header. Compact exact Cr balances keep pending/available distinct. Flat activity preserves server order, titles, direction and amounts, adds the actual entry date/time, and wraps long descriptions/amounts. Balance loading is distinct from zero/empty history; previous values are hidden during refresh/reload. Optional actions appear only when their callback exists and wrap at narrow widths. No new root callback or financial operation is activated.
2. `apps/mobile/lib/src/state/wallet_state.dart`: existing balance provider watches authenticated account ID instead of only signed-in boolean. Refresh invalidates and awaits Riverpod's existing managed read lifecycle; manual post-await state writes are removed. Delayed initial/refresh success or failure cannot overwrite newer account/logout/read state. Transport, server authorization, transfer/gift receipt contracts and monetary execution remain unchanged.
3. `apps/mobile/test/ui/mui07_wallet_test.dart`: 21 executed widget cases, including 16 width/text/direction combinations, actual zero versus unavailable, loading service access, retry, existing route opening and a supplied-only callback at 320px/2x.
4. `apps/mobile/test/wallet_account_fencing_test.dart`: nine executed controller races using deferred transport responses: signed-in A→B, refresh A after B, logout success/error, overlapping refreshes, A→B→A, initial load after refresh, initial account replacement and initial logout.
5. `apps/mobile/test/wallet_service_shortcuts_test.dart`: supplies the actual app theme to the existing outage fixture. Its original navigation/order/unavailable assertions remain intact.
6. This handoff and `docs/workstreams/UI-MUI-03-chats.md`: source/ownership/test evidence and remaining queue, no new implementation authority.

Preserved Chats · Status · Wallet · Calls · Rooms, Chats launch default, Masana-only identities, all native/group/history/billing/incoming Calls and other windows' source. No invented balance/valuation, MSN/Cr conversion, second ledger, historical shell replacement, unsupported publishing/Create Room, fiat cashout activation, auth or backend change.

## Executed verification

Local runner `/workspace`, Flutter **3.47.7** (`abaf9c5237`), Dart **3.13.5**. Tests use synthetic fixtures/software-rendered widgets, not real customer/provider/device evidence.

- `/workspace/flutter/bin/flutter --version` — executed; SDK downloaded from official Flutter repository/artifacts.
- `cd apps/mobile && /workspace/flutter/bin/flutter pub get` — **PASS**. SDK generated analysis-config/lockfile edits were restored to original bytes and not committed; later tests used `--no-pub`. This is not a frozen-lockfile qualification.
- RED: `flutter test --no-pub --reporter expanded test/wallet_account_fencing_test.dart test/ui/mui07_wallet_test.dart` — original account/read implementation failed all six initial race cases; header/layout acceptance failed. The additional initial-load-versus-refresh case also failed the first explicit-generation fix. Final code uses the canonical Riverpod lifecycle, not that discarded fix. Date assertions were corrected to Material's locale-format order; fixture-remount/theme mistakes were corrected before final runs.
- **PASS, 96 tests**, exact final application/test source `416a2139...`:
  ```sh
  flutter test --no-pub --reporter expanded \
    test/wallet_account_fencing_test.dart test/ui/mui07_wallet_test.dart \
    test/wallet_service_shortcuts_test.dart test/wallet_models_test.dart \
    test/wallet_http_transport_test.dart test/wallet_receipts_test.dart \
    test/crypto_wallet_test.dart test/ui/mui01_presentation_test.dart \
    test/ui/mui02_auth_language_test.dart test/ui/mui03_chats_search_test.dart \
    test/app_shell_route_compatibility_test.dart
  ```
  Nine new controller + 21 new widget cases; 66 existing cases, including MUI-01, all 33 MUI-02 cases, four scoped MUI-03 cases and route compatibility. Existing Wallet transport idempotency/receipt and crypto contract regressions retained.
- **PASS, zero issues**:
  ```sh
  dart analyze lib/src/screens/wallet/wallet_screen.dart \
    lib/src/state/wallet_state.dart test/ui/mui07_wallet_test.dart \
    test/wallet_account_fencing_test.dart test/wallet_service_shortcuts_test.dart
  ```
- **Full analysis remains non-clean:** `dart analyze` — starting-main snapshot **325 diagnostics**, implementation **324**. Compared diagnostic severity/path/message sets: no introduced diagnostic; only the existing Wallet unnecessary-underscore info removed. Historical 329 diagnostics are not declared passed or suppressed.
- **Full suites remain FAIL:** `flutter test --no-pub --reporter expanded` — untouched starting-main snapshot **496 passed / 9 failed**; same final production source **524 passed / 10 failed**. The source full run started before the final optional-callback test was added; the final 96-case focused run covers that addition. No whole-suite success claim.
- Independent read-only review of five changed app/test paths found **no actionable findings**. Its minor optional-action coverage suggestion was implemented and passed. `git diff --check` passed; exact five app/test blobs equal merge `867d1288...`.

### Whole-suite failures retained by name

Eight fail on both fresh baseline and source:

- `edit_profile_screen_test.dart`: missing profile offers real first-time creation; unsaved or invalid updates cannot be submitted; saved public profile survives leaving and reopening editor; failed save keeps previous server state for recovery.
- `agent_directory_readiness_test.dart`: malformed presence does not crash the whole agent directory.
- `agent_recovery_test.dart`: directory keeps roster on transient failure and clears it on 401.
- `talk_screen_test.dart`: listener opens Sponsor Seat sheet from Add AI; host opens direct Add AI semantics. The latter also fails an isolated source recheck.

Baseline-only ninth failure, `wallet_service_shortcuts_test.dart: service entry survives a wallet balance outage`, reproduced the missing app-theme fixture. Corrected fixture passes with original assertions.

Two additional source full-run failures involve unchanged timer-sensitive audio source/tests:

- `group_call_controller_test.dart: paid participant ends at consented duration cap` — the entire source file rerun **13 passed**; isolated baseline duration-cap case **1 passed**.
- `talk_live_audio_session_test.dart: ended heartbeat closes media instead of keeping synthetic audio alive` — isolated source and baseline reruns each **1 passed**.

These successful rechecks do not erase the full-run failures. Preserve the discrepancy for AF11/AF05/MUI-09; neither affected controller/test file changed in this PR. Raw local evidence logs are `/workspace/scratch/mui07-{focused-final,analyze-final,full-suite,baseline-full-suite,full-analyze,baseline-full-analyze,group-recheck,live-recheck,baseline-live-recheck}.log`.

### Standard CI and unrun scope

- [Foundation CI #38285565891](https://github.com/weavewellindustrieslimited/masanawa/actions/runs/38285565891): **FAIL**, existing `packages/agents/src/talk-replay.test.ts(6,8)` TS2459 (`TalkId` not exported), before later stages. Relevant TS files are unchanged.
- [Mobile Build #38285565739](https://github.com/weavewellindustrieslimited/masanawa/actions/runs/38285565739): **FAIL** at whole-project analyzer diagnostics; later test/APK stages not passed. Relevant focused executable tests/analysis were run locally instead. No check was altered or bypassed.
- Backend Vitest/PostgreSQL changes: **NOT_RUN / not applicable to this source-only Flutter change**. No backend claim from widget/controller fixtures.
- Installed/signed Android/iOS, real IME, full localized/keyboard combined flow, live financial Gateway/provider/account permissions, AF11 incoming/provider devices: **NOT_RUN**. Android SDK/signing/device unavailable in this runner; no APK or release claim.

## Remaining source and smallest next executable action

| Item | State / owner / exact next action |
| --- | --- |
| Mounted existing Wallet presentation + read isolation | Integrated #686, executed scoped tests; no pending implementable source item within this bounded change |
| MUI-07 MSN denomination, financial liabilities and funding/Send | **OPEN**, AF01 canonical financial authority + AF00 exact root/Gateway/migration transfers. Reconcile #576 against current main and qualified quote/receipt/settlement contracts before exposing an MSN/funding/Send journey. No relabeling or invented callbacks |
| MUI-03 canonical server-wide inbox | **OPEN**, AF06 with AF00 trusted auth/composition and AF05 exact `main.ts` coordination. Existing C10 authority must be reconciled, mounted and extended/tested for authorized names/titles/identifiers, bounded search, debounce/query/account/cache fencing, denied/offline/retry and preserved actions |
| MUI-04/06 Status/Rooms | **OPEN**, domain owners + bounded AF00 composition; do not substitute legacy live-Talk UI for canonical acceptance |
| MUI-05 Calls search | Preserve #684/#685 independent executed source; installed/provider qualification remains open |
| MUI-08 Crypto | **Next independent ready source**, AF03 after fresh exact-path claims: refine existing mounted capability-gated Crypto and supported transaction sheets, preserve exact amounts/quotes/expiry/uncertainty; reuse existing source, no aggregate valuation/provider activation |
| MUI-09 / MUI-10 / AF11 | **OPEN**, combined 320/360/390/430px keyboard/large-text/RTL/account/visual regression, signed installed-source identity, live incoming-call/device/provider qualification and named global failures |

Keep MUI-04…08 open until independently accepted; scoped Wallet delivery is not full MSN financial acceptance. Smallest safe independent continuation is MUI-08 on existing mounted Crypto; prefer completing MUI-03 first only when its required explicit protected-path transfers are available.

## Next queue-aware continuation prompt

```text
Continue weavewellindustrieslimited/masanawa from fresh origin/main.
Read AGENTS.md, CONTINUE-HERE.md, docs/MULTI-WINDOW-WORK.md,
docs/workstreams/UI-CONTINUATION-QUEUE-20261012.md,
docs/workstreams/UI-NEXT-WINDOW-PROMPT-20261012.md,
docs/workstreams/UI-MUI-03-chats.md and
docs/workstreams/UI-MUI-07-wallet.md.
Preserve MUI-01 #678, MUI-02 #680/#681, partial MUI-03 #682/#683,
and MUI-05 #684/#685; inspect their exact current handoffs.

MUI-07 bounded Wallet source and PR #686 exact head:
416a2139c8dccf4747e7ec289ddecd7c381190c3.
Merged main: 867d1288885bc335ee0f2704504de8135580dc72.
Starting main: 52c6b5a9afe83d40d1c7ee28ef5d8e7b837e5788.
Local Flutter 3.47.7 / Dart 3.13.5: 96 focused tests PASS,
focused analysis zero issues; full analysis 324 versus 325 baseline,
no new diagnostics. Full suites FAIL: baseline 496 pass / 9 fail,
implementation 524 pass / 10 fail; two unchanged audio timing cases
pass rechecks. Read exact failure names/test-set caveats in the handoff.
Standard CI still FAILS at TalkId TS2459 and global Flutter diagnostics.
No signed/provider/production qualification or disabled checks.

MUI-03 canonical C10 inbox remains unmounted: local filtering is not
server-wide authenticated search. Preserve prior narrow claim recovery,
PR #497 unique source and AF05 voice changes. Obtain explicit AF00 exact
Gateway/auth/migration/router transfers and AF05 main.ts coordination.
MUI-04/06 also need AF00; MUI-07 MSN/funding/Send needs AF01/AF00
reconciliation with #576 at aa88511f4add1bbcf9e213283088fea5a6b0561b.
If these protected dependencies remain unavailable, the next independent
ready source is MUI-08 / AF03: mounted real capability-gated Crypto and
transaction presentation, exact quotes/fees/expiry/status, no invented
valuation. Inspect fresh main, PR heads and claims; claim exact paths.

Preserve Chats · Status · Wallet · Calls · Rooms, Chats default,
Masana-only contacts and all native/group/history/billing/incoming Calls,
Status/media, Rooms, auth and finance. No wholesale historical shell merge,
second ledger, Cr-to-MSN relabel, fake records, fiat cashout or unsupported
publishing/Create Room. Keep MUI-04…08 independent acceptance, MUI-09
combined keyboard/layout/RTL/account, MUI-10 signed installed-source
identity and AF11 live incoming/provider/device qualification OPEN.
Execute relevant tests; review, commit, push and merge compatible source
normally. Record exact SHAs, PR, results and gaps; release ownership and
print the next queue-aware continuation prompt directly.
```


---

# Wallet owner redesign — 2026-10-18

Base: ccf1a2d18293d9574b748f8b739c712d5b06fae4. Source implementation in progress; no APK build.

## Screen and journey contract

All screens use the existing Masanawa primary brand token, white surfaces, charcoal text, 48px controls, concise headings and field labels. No section descriptions. Error/status messages, payment amounts, fees, network labels and explicit authorization remain visible when relevant.

| Screen | Layout and controls | Journey and states |
|---|---|---|
| Wallet | Primary-color MSNW balance card, hide/refresh/Fund; Send/Convert/Receive/P2P row; compact bill shortcuts; My assets/Transactions; real token/network balance rows | Existing canonical custody read; authenticated only; zero only from confirmed zero, unavailable shown as dash/retry; independent crypto error cannot hide services or MSNW; preserve tabs and history |
| Asset details | Asset/network identity, actual balance, Deposit/Withdraw/Convert/Buy actions, asset activity | Tap wallet row opens full page, never a radio selection list; capability/fee/quote/idempotency contracts unchanged; failed reads retry, never invented balances |
| Fund wallet | Bank transfer account/status; copy number; concise verification action | No personal-details form. Identity needed links to full Identity details page; return refreshes status. Consent is explicit before requesting account; pending payment/backing stays pending |
| Identity details | Profile entry, state badge, legal name/email/phone prefilled from existing owner data; verified fields locked; missing fields editable; BVN/personal bank details and consent only when required | Owner-authorized existing enrollment API; no BVN returned or saved in local preferences; loading/retry/validation/pending/verified states; account change clears old data; uncertain submission requires status refresh |
| Bills | Service/category, provider/product selector, recipient, amount, full-screen review and receipt | Data/Airtime/Electricity/TV shortcuts; current MSNW checkout and purchase recovery unchanged; compact inline errors |
| P2P | Buy/My offers/Orders/Alerts, compact offer rows; full bank verification, sell offer, order/release/dispute/evidence/receipt pages | Existing owner, quote, escrow and step-up authority unchanged; release requires explicit verified-payment acknowledgment; no descriptive section copy |
| Transactions | Existing full history/filter/search/export/detail | All platform sources preserved; loading, empty, offline retry and account fencing |

No new provider, payment rail, financial ledger, global theme or infrastructure. Existing Flutter/Riverpod/Dio contracts are retained (no new runtime cost). Binance's asset overview → deposit/withdraw → history pattern is adopted without its extra wallet subdivisions. OPay's profile/KYC separation is adopted without copying branding.

References reviewed 2026-10-18: https://www.binance.com/en/academy/articles/your-guide-to-binance-deposit-withdrawal ; https://static.opayweb.com/privacy-policy . Product choices above are our design decisions, not claims about exact competitor screens.

## Verification

Pending scoped Flutter widget/controller/transport tests, analyzer and visual review. Financial/provider/device qualification is separate. Preserve prior wallet/history protections and no APK compilation.

## Owner expansion — sections 12–16 (2026-10-18)

Keep important behavior and existing implementations; inspect source before replacing anything. Statuses describe implementation, not financial qualification. No section descriptions, mandatory tutorials, speculative trading, extra wallet subdivisions or repeated identity forms. Necessary consent, fees, network warnings and irreversible authorization remain concise and contextual. Saved addresses/recipients are optional.

- [ ] 12.1–4 Confirmed zero vs unavailable; available/reserved/pending separated; balanced card; first-use Fund. Never sum pending fiat or external addresses into spendable MSNW.
- [x] 12.5 Source implemented/tested: supported asset rows with network, real balances and detail destinations.
- [ ] 12.6–8 Server-side reference/recipient/description/asset search; date/category/status/asset/direction/amount filters; date grouping and incoming/outgoing clarity. Extend actual gaps.
- [ ] 12.9–10 Receipts: gross/fee/net/reference/provider/time/status; concise pending/reserved/processing/reversal/refund/failure status at point of need.
- [ ] 12.11–12 Preserve CSV/PDF; date presets/filenames and contextual reference-linked help/disputes through existing support.
- [ ] 13.1–4 Actual chain/contract/custody signer authority/backed issuance and supply/reserve/customer-obligation reconciliation; missing composition/recovery without fabricated deployment or keys.
- [ ] 13.5–7 Enrollment → assigned account → verified payment → qualified backing/issuance → settled balance; actual lifecycle/minimum/charges supplied by server. KYC in profile; compact funding receipt.
- [ ] 13.8–12 One authorized custody balance for Send/P2P/bills/conversions; idempotent mint/burn and uncertain recovery; reversals/chargebacks; historical obligations preserved; genuine NGN/fee/rate/issued-MSNW receipt.
- [ ] 14.1–4 Provider-supported assets/networks, confirmation/credit tracking, conversion/liquidity/limits and authorized/whitelisted payouts. No assumed executable routes.
- [ ] 14.5–8 Distinct networks; address/copy/QR/minimum/contextual wrong-network warning; source/net/fees/price/expiry quote; full destination/net/fee review and final authorization.
- [ ] 14.9–11 Optional verified-address book with existing security, original-payout recovery and verified chain explorer links only for actual references.
- [x] 15.1 Source implemented/tested: dedicated P2P pages/choices/reviews; preserve bank, step-up, escrow, dispute, evidence and receipts.
- [ ] 15.2–4 Legitimate funded order escrow, verified method bound to offer, no release on screenshot/claim. Preserve order reservation; never double-reserve offer inventory and orders.
- [ ] 15.5–9 Offer rate/range/availability/eligibility; progress and authoritative deadline; copyable order-bound bank; explicit actual-receipt seller authorization.
- [ ] 15.10–13 Authorized evidence-based dispute freeze/release/refund; late-payment appeal without automatic reopening; contextual safety prompts; active/completed/expired/disputed activity and receipts.
- [ ] 16.1–2 MSNW reservation → live catalog → fulfillment/reconciliation; supported products only.
- [ ] 16.3–6 Airtime number/operator/amount; data size/validity/network/cost; electricity meter/customer validation/token; TV customer/package/renewal validation.
- [ ] 16.7–10 Optional recent/saved recipients, exact fees/totals, original uncertain-request recovery, detailed receipts and reference-linked support.

Order: finish current wallet/profile/full-screen source and checks, then history/receipts/P2P/billing gaps, then financial composition. External chain/provider/custody execution needs real available authority. No APK build.


## Implemented source and evidence — current owner redesign

- Wallet now uses the existing primary brand token, contrasted text, compact clickable service/actions, real per-network balances, zero/unavailable separation and account-scoped Hide across balances. Reserved funds never read as an empty wallet. The MSNW asset row reuses the verified card response rather than issuing a second balance read.
- Profile → Identity details is separate from funding. Existing legal/contact data is projected by the authenticated enrollment API with editability; canonical contacts and committed verified identity stay protected. A searchable bank choice replaces raw bank-code entry. BVN/account inputs clear on submission and are absent from reads/local caches. Uncertain submissions require status recovery.
- Crypto/bank/billing/history/export choices use full-screen searchable pages. Asset rows open a dedicated asset view rather than a radio list. App-generated financial dialogs/sheets were not introduced. Existing quote/consent/idempotency/step-up and native system share controls remain.
- Preserved history filters, cursor pages and CSV/PDF exports; added UTC presets and dated filenames; removed export section descriptions and fixed Copy reference to the real receipt reference.
- Fixed pre-existing malformed duplicate P2P tail and missing WalletStepUpPage closing brace while retaining their complete first implementations/security.
- Tests: enrollment service/authenticated HTTP 7 passed; strict TypeScript passed. Final Wallet/identity/P2P/balance/history batch 20 passed; additional crypto transport/model and profile regression checks passed (22). Rendered and inspected Wallet at 360px. No physical Android/provider/production qualification or APK compilation is claimed.
- Owner sections 12–16 remain the checklist above; this delivery closes the current redesign, not token deployment/custody/funding activation or every financial item. Next: trace and implement actual missing server history filters/receipt/support and P2P progress/deadlines/payment-detail UX, then provider/financial authority composition.

Final review additionally fenced late crypto operation results and concurrent balance refreshes against account changes; a delayed operation cannot enter another account history or submit a second time. Three controller tests passed. Final scoped evidence totals 43 unique Flutter checks and seven backend checks; the 84 analyzer findings are style infos, zero errors/warnings. Hosted Foundation CI failed before runner allocation (runner empty, no steps), not a passing CI run.


## Section 12 history continuation — 2026-10-18

- Server-side asset, direction and exact decimal amount-range filters apply before cursor pagination and to complete CSV/PDF statements. Amount ranges require one asset so unlike units are never compared. Cursor scope includes all filters.
- Search includes receipt details and owner-associated recipient/sender names and IDs; both tenant and owner predicates remain enforced. Transfer receipt gross/net/zero fee reflect the actual in-platform Send policy. Other receipts retain only real available financial detail.
- Full-screen filter choices use owner-history asset options. Date grouping, original historical units, filters during custody refresh and exports are preserved. Concise point-of-need status labels explain reserved/processing/settlement/refund/reversal/dispute states; no section-description text added.
- Verification: 11 PGlite/HTTP/export checks and strict TS passed. Three new Flutter filter/query/exact-value/reference-copy checks plus 14 Wallet/history regressions passed (17 unique); scoped analysis zero errors/warnings, seven infos. No APK, deployment or live-provider qualification claimed.
- Remaining section12 gap: contextual support for categories without an existing reference-linked case flow, and complete fees/net where the source does not yet supply evidence. Next source is P2P order progress/authoritative deadlines/copyable bank detail and contextual order help; financial issuance/provider work remains separate.


## P2P order continuation — 2026-10-18

- Dedicated order pages show compact progress, an authoritative DB-time/monotonic elapsed countdown, prominent copyable order-bound bank details and clear buyer-report versus seller-bank confirmation states. Disputed/expired/cancelled states never mark bank payment confirmed. Client timers never cancel, settle or refund an order.
- P2P receipts link directly to the original order and existing dispute/late-payment/evidence/receipt flow, with no intervening order search or automatic financial action. Full-Scaffold routes preserve account fences without nested headers, including bank/withdrawal step-up pages. Consumer receipts retain financial/reference/time values and no longer show internal custody-posting bucket names.
- Offer discovery joins the verified bank to both tenant and seller and caps visible inventory/max order by current canonical available MSNW including the seller fee. Below-minimum/unfunded/self offers are hidden. Existing locked, idempotent per-order escrow remains unchanged; inventory is not reserved twice.
- Verification: seven backend checks including a real PGlite owner/deadline/verified-bank/capacity read and existing claim/idempotency/authorization cases; strict TS passed. Twenty-four unique Flutter order/reference-help/account-fence/bank/seller/Wallet/history checks passed; final focused six checks passed; scoped analysis zero errors/warnings, thirty style infos. Order UI rendered/reviewed at360px. No APK, provider spending or live financial qualification claimed.
- Remaining: broader order activity/server filtering, billing product/recipient/receipt/support gaps, authenticated provider capability/crypto deposit detail, and actual chain/custody/issuance/reconciliation composition. Sections12–16 remain the parent checklist; this source does not certify production funding or token circulation.


## Billing catalogue and original-order receipts — 2026-10-18

- Catalogue loading is independent of private history availability. Mobile category aliases are recognized; a missing selected operator never substitutes another provider. Manual operator choice survives typing a ported number. Nigerian numbers are normalized/validated without assigning an operator from the prefix as authority. Catalogue/category/history results are generation/owner fenced, with private recipient/history cleared on account change.
- Category loading awaits the selected provider's products. Daily filtering no longer includes 30-day packages. Product cards retain actual provider names/prices/currency and remove invented instant-activation claims; non-mobile services have a neutral receipt icon.
- Checkout preserves its draft while Fund opens above it. Bill review shows service, fee, total, exact MSNW amount and approved rate. Response references must match the original order. Electricity delivery codes and actual provider references are selectable on the receipt. No provider token, balance or completed status is fabricated.
- Recent receipts open a dedicated full-screen original-order view. MSNW receipt re-entry only GET-reconciles the original fulfillment reference; historical non-MSNW quotes use their original commerce receipt read and retain their NGN units. Receipt status refresh never executes another purchase. History refreshes when checkout/receipt returns. Known uncertain checkout retains its original quote and hides the pay action.
- Verification: four catalogue regressions reproduced before fixes; electricity-token receipt regression reproduced before fix. Final eight focused checks pass, plus two Home intents and three Wallet/identity regressions (13 unique). Scoped analysis: zero errors/warnings, 30 style infos. Tests use synthetic data and do not qualify a physical handset or provider account. No APK compiled.
- Important remaining items stay unchecked above: cross-new-quote pending-purchase prevention across devices; optional recipient reuse; generic reference-linked billing/support cases; validated meter/TV customer details and richer provider-supplied metadata; actual authenticated provider capability/crypto routes and on-chain custody/issuance/funding/reversal/reconciliation qualification. Existing same-quote server reservation retries were inspected and already reconcile without redispatch. This checkpoint changes no financial authority or backend ledger.
- Checklist interpretation: grouped unchecked rows are partial, not untouched. Sections12 card/filter/export/receipt usability and section15 order progress/deadline/bank/help have source evidence in the preceding checkpoints; unchecked groups retain their remaining financial/support/activity gaps. No live chain, reserve backing or provider execution is claimed from source tests.

Final review retained exact integer arithmetic for the displayed MSNW rate and fenced a late provider-loading completion. Final eight focused tests pass. Foundation CI on the original immutable PR head failed before runner allocation (runner empty, no steps); hosted CI is unavailable, not passing. No workflow retry or APK build was requested.


## Active remaining checklist and P2P design audit — 2026-10-18

Owner priority: P2P must feel like the same familiar, simple messaging application as Chats. Visual quality is a required customer milestone, not an optional polish pass.

Audit base: main `3d1b6bfec54dcbcfc8e01c54c376165eae82d54d` (PRs178–181 integrated). This is a source/design audit, not a new rendered, handset or live-provider acceptance. The earlier 360px renders remain historical evidence for their exact source. All unchecked items below are remaining work; an existing helper or test does not complete its parent journey. This section is the current execution order; older grouped section12–16 boxes remain scope/history rather than a claim that nothing was implemented.

### Preserve completed foundations

- [x] Integrated source: primary-brand Wallet, real per-network asset rows, zero/unavailable separation, hide balances, Fund on card, Send/Convert/Receive/P2P and Assets/Transactions.
- [x] Integrated source: separate profile identity collection/prefill, compact funding; full-screen financial pickers/reviews and account fences.
- [x] Integrated source: server history search/filter/cursor/export improvements, date grouping/presets and actual reference copying.
- [x] Integrated source: dedicated P2P routes, funded-capacity offer discovery, owner-bound banks, server-time order countdown, progress, bank copy and receipt→original-order help.
- [x] Integrated source: billing category/network/phone/filter fixes, catalogue independent of history failures, exact review amounts, real electricity delivery codes and original-order receipt recovery.
- [ ] Visual acceptance of the complete P2P family against the design contract below. Existing source integration is not visual completion.

### Concrete findings in current source

| Finding | Evidence | Required adjustment |
|---|---|---|
| Marketplace has four tightly packed segmented choices and generic Card/ListTile rows | `msnw_p2p_screen.dart`, marketplace build | Use compact familiar filter pills, flat white list surfaces and clear primary actions; keep Updates accessible without crowding the main task |
| Offer subtitles combine availability, min/max and bank into one long sentence | Same offer-list builder | Give price, limits, availability and bank separate aligned positions; make offers comparable at a glance |
| Order rows show raw state identifiers and omit a clear role, reference and readable time | Same order-list builder | Buyer/seller role, friendly state, amount, fiat total, counterparty where genuinely available, short reference and local time |
| Order details use several plain text lines, duplicate vertical spacing and actions scattered through the list | `_P2pOrderDetail.build` | One amount/status summary, compact progress, payment card and one state-appropriate primary action; secondary help stays secondary |
| Buy entry/review are generic field and paragraph pages; deadline is hardcoded and fee has a fallback | `_buy`, `_field`, `_confirm` | A coherent amount→review journey with structured rows, actual offer bounds and authoritative fees/deadline; no guessed financial terms |
| Sell form exposes minimum/maximum/inventory without a simple available-funds hierarchy | `MsnwP2pSellerOfferForm` | Group related fields, show real capacity, prevent impossible ranges, keep verified bank visible and preserve the draft |
| Evidence UI shows SHA256, raw timestamps, generic verified-user icons and technical exception strings | Evidence list / request catches | Friendly filename/type/size/date/upload state; preserve hashes internally; readable safe errors; never imply attachment authenticity |
| Status and progress information can repeat, and the entire four-stage stepper appears for ordinary orders | `P2pOrderProgress` and order heading | One compact current-state summary with meaningful completed/current/pending steps; no false indication that buyer-reported payment equals bank receipt |
| List loading is an indefinite spinner and empty state is generic for every tab | Marketplace FutureBuilder | Stable row skeletons, distinct empty states, one useful next action and centered retry/offline feedback |
| Current account/route guards exist, but full visual state preservation and interruption journeys need acceptance | Screen loaders, full-page wrapper and existing tests | Preserve tab/filter/scroll/drafts; revalidate after resume; clear private state on account change; never repeat a financial action |

### P2P design and journey work — implement first

- [ ] **P2P-01 · P1 · Shared visual language.** White light-mode surfaces; canonical Masanawa green only for primary actions, subtle selected pills and meaningful status; charcoal labels/icons; muted gray search/field surfaces; consistent outlined rounded icons, border treatment, typography and spacing with Chats. No gradients, exchange-dashboard styling, decorative charts or blocks of explanatory copy.
- [ ] **P2P-02 · P1 · Navigation.** One app bar/back arrow per full page, concise titles, familiar pill selection, persistent selected state, consistent transitions and predictable Android Back. Keep Buy, Sell and Orders easy to reach; Updates remains a dedicated accessible destination. Preserve shell navigation rather than adding another bottom navbar.
- [ ] **P2P-03 · P1 · Offer cards.** Compact white rows/lightly grouped cards: actual counterparty identity if safely exposed, dominant NGN-per-MSNW rate, clear available amount and min/max, bank badge, one Buy affordance. No invented ratings, trust badges, volume or completion statistics; expose approved public data before displaying it.
- [ ] **P2P-04 · P1 · My-offer cards.** Same visual structure; clearly distinguish active/closed/unavailable capacity, rate and remaining amount. Opening a row shows offer details/manage actions; tapping a whole row must not immediately start closing an offer.
- [ ] **P2P-05 · P1 · Order cards.** Same density and alignment as a chat-list row: role/identity, prominent MSNW amount, fiat total, friendly status and readable time. Group active versus finished orders with simple filters; show disputed/expired states clearly. Full reference is copyable on details, not a UUID wall in the list.
- [ ] **P2P-06 · P1 · Buy amount/review.** Show selected offer/bank, min/max, editable amount and exact payable/receivable values together; structured review instead of prose; explicit final authorization. Inline bounds/precision validation, correct keyboard and retained draft after Back or network failure.
- [ ] **P2P-07 · P1 · Sell offer/bank.** Clean full-screen form and compact review; real spendable capacity and fee coverage; selected verified receiving bank visible; collect only missing bank details. Preserve required consent/step-up and use account-name verification results, not an invented verified state.
- [ ] **P2P-08 · P1 · Order detail hierarchy.** Top status + amount + role, compact current progress, prominent bound payment details, deadline and one primary action appropriate to the state. Place receipt/help/dispute in consistent secondary positions. Avoid displaying inactive bank-payment instructions as a call to pay after expiry/completion.
- [ ] **P2P-09 · P1 · Buyer payment.** Large copyable account number/name, bank and exact NGN total; order reference copy if the payment rail supports using it. Clear copy feedback. Compact contextual safety notice; no automatic “paid” state from copying details or attaching a screenshot.
- [ ] **P2P-10 · P0/P1 · Seller release.** Clearly separate “Buyer reported payment” from “Payment received.” Dedicated review with expected bank amount, order and actual-receipt acknowledgment; retain existing step-up/explicit release safeguards. Review repeated confirmation friction only against the current security contract; never remove authority checks as cosmetic cleanup.
- [ ] **P2P-11 · P1 · Dispute/late-payment pages.** Dedicated reason/evidence form, short field labels, retained draft, clear submission state, case reference and existing outcome. Explain refund/freeze/release only at the relevant state; no repeated warnings on every screen and no implication an expired refunded order automatically reopens.
- [ ] **P2P-12 · P1 · Evidence.** Document-style attachment rows/thumbnail where appropriate, file metadata, upload progress, retry, permission denied and expired-link recovery. Hide implementation hashes from normal UI. Failed upload must not look attached; preview remains owner-authorized.
- [ ] **P2P-13 · P1 · Receipts/updates.** Consistent receipt summary, amount/fee/net/fiat, original order/provider references, readable local time and copy/share through supported native controls. Updates open the exact original order, show friendly states and never simulate a new chat message or provider result.
- [ ] **P2P-14 · P1 · Loading/empty/error/offline.** Separate no offers, no own offers, no orders, no updates and partial failure; use centered feedback, matched skeletons and one relevant action. Retain valid loaded content with a stale/offline indication; payment/release needs server authorization. Failed refresh never resets confirmed balances to zero.
- [ ] **P2P-15 · P0 · Uncertain creation/action recovery.** Inspect and close the new-idempotency-key-on-re-entry gap for order creation and significant actions. Persist/recover the original owner-scoped request/order identity as appropriate; prevent duplicate submissions, reconcile unknown outcomes before creating another order, show in-progress state and prevent repeated taps.
- [ ] **P2P-16 · P0 · Server-authoritative terms.** Replace the mobile hardcoded 30-minute review deadline/default fee with returned policy/quote terms; atomically validate offer bounds/capacity/fees on create. If terms changed, show the actual revised review before another authorization. Preserve existing canonical per-order reservation and all settlement invariants.
- [ ] **P2P-17 · P1 · Activity.** Server-side pagination/filtering for larger offer/order/update histories, useful Active/Finished/All choices, accessible disputed/expired cases, pull-to-refresh and stable scroll. Preserve authoritative expiry; no local timer-driven refund/settlement.
- [ ] **P2P-18 · P1 · Accessibility and low-end Android.** 48dp touch targets, visible focus, screen-reader labels for amounts/status/copy, non-color status cues, large-font wrapping, keyboard-safe bottom actions, safe areas, RTL/localized dates and exact decimals. Verify narrow 320/360px layouts, 200% text and low-connectivity/resume behavior. Announce meaningful state changes rather than the countdown every second.

### P2P page contract for the next implementation

| Page | Top-to-bottom layout and primary control | States/back behavior that must work |
|---|---|---|
| Marketplace / Buy | App bar → subtle search/filter when useful → selection pills → comparable offer rows | Skeleton, no supported offers, stale/offline, retry; selection/scroll retained |
| Sell / My offers | Same header/pills → verified-bank entry → own-offer rows → Create offer | No bank/no offers/capacity unavailable; no accidental close from row tap |
| Offer details / amount | Offer summary → bank/rate/limits → amount + exact totals → Continue | Invalid amount, changed/closed offer, insufficient capacity; Back retains input |
| Buy review | Pay/receive summary → fees/bank/terms → Confirm order | Unknown creation outcome resolves original request; no second order |
| Create/edit sell offer and review | Selected verified bank → rate/range/capacity → structured review → Publish | Validation, step-up cancelled, insufficient capacity, unknown publish; retain draft |
| Bank selection/verification | Searchable list → account input → returned account name/consent → verification | Provider failure, mismatch, missing identity, denied/expired step-up; no duplicate KYC |
| Orders | Simple activity filters → grouped order rows | Pagination, no matching orders, partial refresh; stable state |
| Order details / buyer payment | State/amount/role → progress → bound bank/total → deadline → I have paid | Awaiting/reporting/claimed/disputed/completed/expired/cancelled; valid primary action only |
| Seller release review | Actual expected receipt/amount → acknowledgment → Authorize release | Step-up, double tap, timeout, stale state; original order recovery |
| Dispute / late-payment case | State + original reference → reason/evidence → Submit or existing case outcome | Upload permission/failure, existing case, frozen/refunded escrow; Back preserves draft |
| Evidence viewer | File metadata → authorized preview/open → native share if supported | Unavailable/expired link, unsupported type, denied access; private data fenced |
| Receipt / Updates | Receipt or dated update rows → original order → contextual help | Original reference, localization, no provider/reference fabrication; no financial writes from viewing |

Every page uses the same app bar, type scale, field surfaces, action treatment and spacing as Chats/Wallet. No popups for these application flows. Native permission/file/share controls remain platform-owned. No new user-to-user chat, ratings system, tutorials or trading products are required.

### Remaining Wallet/services/financial work after the P2P milestone

- [ ] **FIN-01 · P0 · MSNW issuance/custody completion.** Establish actual chain/verified contract and deployment authority, controlled custody/signers, verified funding/backing, issuance and supply/treasury/customer-obligation reconciliation. Inspect existing implementations and complete missing composition; retain separate source and live-execution evidence.
- [ ] **FIN-02 · P0 · Full funding lifecycle.** Payment detected → verification → issuance pending → settled/reversed/failed; derive exact fees/rate/issued MSNW from canonical evidence. Compact first-funding facts (minimum/charges/expected time) only when provided by actual policy, with a complete funding receipt.
- [ ] **FIN-03 · P0 · One balance and recovery.** Send/P2P/bills/conversion use the same authorized spendable balance; mint/burn and payout uncertainty recover existing submissions; reversals/chargebacks reconcile safely. Preserve historical Credits/MSN/NGN obligations without relabeling them as MSNW.
- [ ] **FIN-04 · P0 · Real crypto availability.** Connected-account supported assets/networks, limits/liquidity/conversion routes and authorized/whitelisted withdrawals. Listed support is not evidence of executable capability.
- [ ] **FIN-05 · P1 · Crypto details/review.** Real deposit address/QR/network/minimum/confirmation progress; exact source/received/fees/rate/expiry; full destination/network/net review; genuine explorer links. Saved verified addresses remain optional and reuse current step-up.
- [ ] **WAL-01 · P1 · Complete receipts/status/help.** Fill remaining gross/fee/net/provider/time evidence gaps across categories; distinguish available/reserved/pending without adding pending to spendable money; reference-linked help/cases beyond existing P2P help, with case progress/outcome.
- [ ] **BILL-01 · P0 · Cross-quote duplicate recovery.** Prevent a second charge when another quote/device already has an uncertain matching purchase; reconcile the original provider request. Existing same-quote replay protection remains.
- [ ] **BILL-02 · P1 · Complete service journeys.** Actual provider meter/customer and TV/smartcard/renewal validation; product-supplied package size/validity/network/eligibility; exact fees/total before authorization; original receipts/tokens/status/support.
- [ ] **BILL-03 · P1 · Easy repeat purchases.** Optional recent/saved recipient reuse from owner-scoped history; editable recipient/product and a fresh authorized quote, never automatic repeat spending.
- [ ] **APP-01 · P1 · Cross-screen visual continuity.** Apply this same contract to Wallet home, asset detail, funding, Send/Receive/Convert/Withdraw, history/filter/export, billing and identity pages. Audit default Material controls, duplicate headings, oversized inputs, body-copy walls, inconsistent radii and cramped search wherever they remain.
- [ ] **APP-02 · P1 · State/accessibility acceptance.** Preserve drafts/tab/filter/scroll; revalidate after account switch, logout, interruption and resume; friendly centered network/error states; large-text/screen-reader/narrow-phone acceptance and appropriate light/dark contrast.

### Implementation order and completion evidence

1. P2P visual milestone: P2P-01–14 and18, with connected page journeys; implement P2P-15–16 alongside the affected create/release flows rather than postponing demonstrated duplicate/terms risks.
2. P2P activity/pagination and contextual support; complete WAL-01 and billing source gaps.
3. Complete provider/custody/funding/crypto authority composition from actual current source; independent UI/source work continues while external credentials or device acceptance are pending.
4. Owner handset acceptance. No APK compilation requested in this audit.

For each delivered milestone: inspect current main/claims; own exact files; preserve recent work; test buyer and seller journeys, denied/expired step-up, stale terms, duplicate taps, uncertain result, cancelled/expired/disputed order, missing bank/receipt, offline/resume and account isolation. Render/review the entire page family at phone sizes before marking visual acceptance. Record source SHA, integrated SHA, screenshots/test results and remaining device/provider checks separately.

Design reference reviewed 2026-10-18: [Meta, Keeping WhatsApp fresh, simple and approachable](https://www.meta.com/design-at-meta/blog/whatsapp-user-interface-update/) (published2024-05-09). Adopt its documented simplicity, neutral surfaces, selective unified green, rounded outlined icons and familiar navigation. The P2P layout/details above are Masanawa-specific proposals, not claims that WhatsApp ships these financial features. Avoid chasing unconfirmed beta styling or adding friction to imitate a screenshot.
