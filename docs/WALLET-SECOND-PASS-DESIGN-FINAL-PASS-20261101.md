# Wallet second-pass design refinement record — 1 November 2026

Source: `Masanawa_Wallet_Second_Pass_Gaps_2026-10-31.md` (103-item second-pass audit). Base: merged PR #618 and subsequently merged updates on `main`. This record describes source-level work and must not be treated as a handset visual approval.

## Design refinement status
- **Shared UX:** G01/G02 remain workflow-specific; review sheets already expose edit/back actions. G04/G05/G09 are present in earlier work. This pass adds G06 shared single-outcome result presentation, reused by Buy Data and Send, and T07 more compact receipt preview.
- **Wallet/NGN:** W02/W04/W05 and stale-balance W03 are present. W06 is now near-field name/phone validation, with disabled invalid submission and one-action correction. W07 shows pending/disabled/ready/unavailable as distinct provider-backed states.
- **Buy Data:** B01, B02, B03, B05, B06, B07, B08, B09, B10, B12 are present on current main. This pass turns the completed exchange into one reusable result hero (B11). B04 remains an optional typographic/layout polish item pending rendered acceptance.
- **Redeem Data:** R01/R02/R04/R05/R07/R08/R09/R11/R12/R13/R14/R15/R16/R17/R18 are source-backed, including the original-status panel (only one hero, no redundant success card). This pass improves R10 spoken debit/allowance distinction in bundle semantics. R03/R06 remain visual/formatting refinements for emulator acceptance.
- **Send MB:** S01/S02/S03/S04/S05/S06/S07/S08/S09/S10/S11/S13 are source-backed. This pass makes the selected verified-person row more compact (S05) and shortens the original recovery message (S12).
- **Activity:** H01/H02/H03/H05/H06/H07/H08/H09/H10/H12/H13/H14/H16/H18/H19 are present on current main. H04 compact toolbar height and H11/H15/H17 are subject to device/functional acceptance; no new financial filters are invented.
- **Transaction details/receipts:** T01/T02/T03/T04/T05/T06/T09/T12/T13 already exist. This pass refines T07 sheet hierarchy and centers real amounts/status on raster receipt pages (T08), preserving original financial data. T10/T11 remain separate performance/revocation acceptance tasks.

## Verification boundaries
The source-backed tests added in this branch cover funding-applicant near-field validation and reusable result rendering; existing suite verifies original-key and wallet-owner protection. The original audit's Q04-Q06/Q09 (device screenshot matrix, keyboard, VoiceOver/TalkBack, dark/reduced-motion visual acceptance) are not discharged by CI or code reading. The PDF is currently image-backed and cannot be asserted text-selectable; this is an explicit limitation, not a completed T10.

No money API, provider settlement logic, migration, production payment claim, or live device result is changed in this batch. The PR must pass exact-head Mobile Build and Foundation CI before merge.
