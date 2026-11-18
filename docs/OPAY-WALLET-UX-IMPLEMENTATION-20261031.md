# Masanawa wallet UX implementation — 31 October 2026

This is the execution map for the 86-item OPay-clone wallet layout audit, not a request to copy OPay branding or unsupported product features. It records the **single coordinated source batch** across Buy Data, Redeem Data, Send MB, Transactions, transaction details and posted-ledger receipts. The original audit is preserved separately as `Masanawa_OPay_Wallet_UX_Deep_Audit_2026-10-31.md` in the owner's research files.

## Exact sequence / source ownership

1. Read-only wallet source map, route and provider contract confirmation against the exact `main` head.
2. Shared compact review and inline state components in `apps/mobile/lib/src/gb_wallet/gb_wallet_flow_components.dart`.
3. Redeem Data chooser, quote/review/confirm and durable recovery in `data_redemption_screen.dart`, `gb_data_choice_controls.dart` and `gb_data_purchase_panel.dart`.
4. Buy Data NGN exchange chooser, review, funding return and original recovery in `recharge_screen.dart`.
5. Send MB trusted recipient, amount review and original recovery in `gb_send_screen.dart` and `gb_recipient_lookup.dart`.
6. Activity compact filter bar/sheet, sticky-date slivers, list, pagination, journal detail and receipt action in `gb_wallet_activity_screen.dart`, `gb_wallet_activity_detail_screen.dart` and `gb_receipt_actions.dart`.
7. Update this route contract and the affected mobile tests **before** the first combined verification run.
8. Run one combined mobile analyzer/widget suite and relevant Gateway ledger contract suite, group repairs, rerun full suite, then review the exact-head hosted CI status. Device/provider checks are a separate acceptance gate, not a claim inferred from source or CI.

## Audit-ID disposition in this batch

| IDs | Implemented source change / retained contract | Acceptance evidence still required |
|---|---|---|
| UX-01–08 | Reusable bounded review, fixed CTA and safe-area footer; neutral compact lines, contextual notices, stable first-load placeholders; distinct pending/receipt semantics | Widget visual and screen-reader checks |
| UX-09–10 | Adaptive geometry and native unobtrusive interactions; no invented loading progress | 320/360/390, RTL, 200% text, dark and reduced-motion handset acceptance |
| BD-01–08, BD-10–12 | NGN status near selection, tighter four-column presets, chosen-package footer, NGN projection in review, funding route re-quote, compact successful/pending/unknown state, quiet refresh | Exchange/funding widget journey, keyboard and device checks |
| BD-09 | **Preserved** signed quote, server prices, original secure pending intent, NGN ledger separation and non-repeat recovery | Existing exchange tests and Gateway contracts |
| RD-01–14, RD-16–20 | Remove redundant title, network/phone in responsive row, porting hint, segmented validity, four-column adaptivity, honest disabled tiles, automatic server quote, bounded review with **one actual purchase confirm**, purchased-MB remaining, shortage link, preserved draft/refresh quote, compact original result | Quote/selection/return/recovery widgets, small-phone checks |
| RD-15, RD-21–22 | **Preserved and test-gated** purchase-key durability, welcome/purchased separation and definite-pre-dispatch-409 cleanup only | Negative POST tests, restart/owner-switch tests |
| SM-01–06, SM-08–12 | Smaller recipient hint and verified selection, quick amounts/spendable hint, fixed Review, compact Send review, Buy Data shortage link, original recovery priority and result screen | Recipient/quote/restart tests, keyboard/device checks |
| SM-07, SM-13 | **Preserved** automatic quote-to-review, identity authorization, single signed original and same-account fences | Existing MB Send contract tests |
| SM-14–15 | Account/lookup coverage retained; bank transfer, payment PIN, beneficiary and remark features explicitly **excluded** | Negative identity tests; no build work for excluded features |
| TH-01–13 | Category/status toolbar, secondary facet sheet, summary chips, filtered CSV, pinned local-date headers, right-anchored amounts/status, concise divided rows, automatic pagination with retry, skeleton, scoped empty/offline | Page, filter/cursor/export tests; mobile visual acceptance |
| TH-14–16 | **Preserved** journal readback, same-account rows and CSV formula protection; changed layout respects large/RTL amounts | Pagination replay, authorization, RTL/device tests |
| TH-17 | Analytics, custom range, bank filters and OPay promotional modules **excluded** | N/A |
| TR-01–07 | Larger signed-amount hero, grouped plain-language ledger details, closed technical disclosure, direct posted receipt action, return to the same Activity route, bounded retry | Detail/receipt/back and share tests |
| TR-08–09 | **Preserved** readback authorization and distinction between a posted internal ledger and external delivery/settlement | Owner change, reversal, readback tests |
| TR-10 | OPay disputes, POS/merchant print functions **excluded** | N/A |

## Non-negotiable invariants

- Buy Data spends server-authorized NGN and adds purchased MB. Redeem Data and Send MB spend **purchased MB only**. The separate welcome MB allocation never becomes eligible through a UI shortcut.
- A quote is not a payment. Every final CTA is explicit; no return from NGN funding or Buy Data automatically executes another financial POST.
- Unknown transport status or `404` **never** permits a new financial key. Only the original signed token/idempotency key is recoverable. Only a server-proven pre-dispatch `insufficient_purchased_mb` rejection may clear its rejected durable slot.
- A history row marked `completed` means posted to the internal journal. It does not attest to mobile-network data delivery, external bank settlement or provider fulfillment. Receipt export re-verifies the exact posted entry.
- The Android OPay resources were design references for geometry/ordering only. No OPay asset, price, copy, brand or irrelevant product feature is imported.
- Concurrent Chat/Status owner work is out of scope. No backend money endpoint, schema or production provider activation was introduced.

## One combined verification gate

After **all** source and test changes are present, run the affected mobile widget and route tests, analyzer, and the Gateway wallet ledger tests as one batch; inspect all failures together. Include at least the recovery tests for data, exchange and Send, Activity filter/cursor/CSV, receipts, validity, route shell, theme/reduced-motion and account switching. Then apply grouped repairs and rerun the same matrix. Source/CI green does **not** replace real 320/360/390 dp Android acceptance, talkback/keyboard, offline/network transitions or provider reconciliation under real settlement credentials.

### Verification record (31 October)

- **Full Flutter mobile test directory:** **948 passed, zero failed** after one coordinated source pass and grouped corrections to legacy test navigation and guarded balance initialization.
- **Flutter analyzer:** no errors or warnings; 468 informational lint suggestions across pre-existing mobile files were non-fatal. No repository-wide formatting or warning cleanup was attempted.
- **Source invariants:** the original encrypted-key recovery, quote/receipt contracts and account-epoch cases all passed their widget tests. No Gateway contract, database schema or money endpoint was modified in this UI batch.
- **Not verified here:** physical Android devices, live bank/provider settlement, release APK, hosted preview or accessibility screen-reader acceptance. These require their own owners and environment credentials.
