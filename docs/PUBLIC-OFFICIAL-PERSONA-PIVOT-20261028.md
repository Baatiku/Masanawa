**Owner scope correction, 29 October 2026:** Remove Share & Earn, paid sharing and paid Boost, including admin-funded rewards on official posts. Keep ordinary Share and purchased-MB tipping. Earlier monetization requirements are retired, not completed. Preserve historical receipts, liabilities, refunds and recovery; never erase financial history or repurpose reward balances. This instruction supersedes older paid-promotion scope below.

# Nigerian public-official personas — owner pivot, 28 October 2026

## Scope and delivery status

The owner selected **APC, ADC, NDC and PDP**. Research presidential aspirants/candidates and governorship candidates within these parties. Current officeholding, reported aspiration, party nomination and final electoral admission are different dated facts. Do not infer a candidacy from incumbency or an old party affiliation.

This replaces human post submission and the profession-based direction for new personas. The former twelve-item composer batch is superseded, not completed. Existing financial receipts and cancellation/recovery remain available. Sharing remains available.

**Foundation merged in PR #593 at `125ceefda197cb6d1a6a8f36803a12a7ac62b5ea`, with all five exact-head hosted checks passing (head `af2a35c960d8342fc6ad24c4388df2db656289bc`). Admission/retrieval merged in #594 at `01b448ebe5f945fbca365b3ff181c32328e68fe6`, exact head `72f1a86bc4668979556f4874ce2f8aa684a23c2e`, all eight hosted checks PASS (2,278 backend tests). The remaining code batch is on `feat/official-persona-completion-batch-oct29`. It is not deployed or accepted end to end.** No researched official has been admitted as a live persona, and no reviewed source accounts or provider credentials have been configured by this change.

## Existing implementation and proposed architecture

Keep the existing versioned canonical persona identities, shared chat/call admission, MB billing and private conversation memory. Create new canonical identities for public officials; never rename a fictional identity and inherit its conversations. Reuse the existing Postgres-backed retrieval and scoped memory before introducing another memory service.

Maintain two separately authorized knowledge domains:

1. Public evidence: dated biographies, public records, speeches and original official statements, with URLs, retrieval times, hashes, usage basis and reviewer decisions. Track conflicting and superseded statements rather than silently replacing history.
2. Private citizen memory: conversation preferences and continuity scoped to the user/persona relationship. It cannot become public evidence, leak between users or drive tailored political persuasion.

Every persona must clearly identify itself as an AI simulation. It may explain documented views and quote evidence, but must distinguish quotations, supported facts and inference. It must not invent private knowledge, new policy promises, real-world actions or endorsement. Calls use the same evidence and disclosures with generic voices; the product does not connect callers to an actual officeholder.

Grokipedia is the requested biographical reference, corroborated by primary records. Access to its pages could not be verified in this environment, so no biography has been fabricated or marked reviewed. Check applicable [xAI terms](https://x.ai/legal/terms-of-service) and page-level licenses before ingestion; attribution alone is not a blanket reuse license.

## Research scope

The [presidential ticket CSV](research/ng-2027-selected-party-presidential.csv) records four selected-party tickets reviewed against the attached [INEC primary list](https://www.inecnigeria.org/documents/press/2027%20PRESIDENTIAL%20FINAL%20LIST.pdf): APC — Bola Ahmed Tinubu; ADC — Atiku Abubakar; NDC — Peter Gregory Obi; PDP — Sandy Ojang Onor. This verifies ticket-list text, not persona biographies, accounts or endorsement. Governorship verification is recorded per row: 76 primary ticket text matches and 26 still pending.

## Work already present in the branch

- Home composer removed; authenticated legacy submission attempts rejected server-side while historical recovery remains available.
- Reviewed public-official dossier/evidence schema and readers, exact published-version binding, expiry checks and shared chat/call persona instructions.
- Directory/profile metadata and a provenance tick that expires and is not trusted from an offline cache. The tick means source reviewed, not official endorsement.
- X/Facebook source adapters preserving original text, author matching and source URLs, with durable import deduplication, edit revisions, leases, checkpoints and withdrawal support.
- A background importer available behind a disabled-by-default switch. This is polling, not an instant delivery guarantee.
- Research queue at [selected-party governorship CSV](research/ng-2027-selected-party-governorship.csv): 102 reported tickets across 28 states, with primary-document links. 76 candidate/running-mate/party tuples now match the primary INEC PDF text; 26 remain pending because primary PDFs could not be read. All biographies and live admissions remain pending.

These are source changes, not a claim of production readiness. Tests already cover retirement, stale verification, private continuity and exact source text. Local verification: workspace TypeScript passed; Flutter analysis passed with existing informational lints and no warnings/errors. The 34-file backend/architecture batch passed 178 tests with 24 skipped and one environment-registry failure; after registering all four new optional variables, the repaired registry plus updated evidence/eligibility policies passed all 7 tests. The earlier database setup timeouts disappeared when the batch ran serially with a 60-second setup allowance. Mobile batches passed 32 tests for feed/attribution/badges and 21 tests for retired historical management/profile/Saved; a final profile/badge/source batch passed 10 tests and Gateway TypeScript passed again. Hosted CI remains separately recorded below. Skipped real-Postgres suites are not live acceptance.

## Current delivery checklist — 9 code checkpoints, 6 external/launch checkpoints

The nine code checkpoints close with this batch after its exact-head required checks pass and merge. Six actual data/access/launch checkpoints remain open; none is an owner-phone-only gate.

- [ ] **PO01** Finish primary nomination/party review for the remaining 26 governorship tickets. Four presidential and 76 governorship tickets are already text-matched to primary documents.
- [ ] **PO02** Obtain accessible licensed Grokipedia/primary biographies, dated speeches/positions and cleared imagery for the first cohort; record actual reviewer decisions.
- [x] **PO03** Trusted operator dossier/source admission, exact canonical/version binding, no fictional-persona reassignment, immutable hashed receipts and safe retries.
- [x] **PO04** Bounded public-evidence retrieval for text/captions and approved original social posts, with content-hash-bound citation identities and final freshness checks.
- [x] **PO05** Captionless speech transcription, multilingual query expansion and server-owned live-call evidence lookup with current account/version checks and bounded read-only tools.
- [x] **PO06** Checked source IDs/URLs and literal quotations before citizen output, honest insufficient-evidence fallback, and reviewed gold-case evaluation tooling. This validates provenance contracts, not all possible factual claims.
- [ ] **PO07** Run the first cohort against real reviewed biographies and configured models/providers: factual accuracy, dated affiliations, quotations, unknowns, injection, multilingual and chat/voice consistency. Synthetic fixtures are not live qualification.
- [ ] **PO08** Verify each selected official account's ownership and stable provider ID; choose one active source per person.
- [ ] **PO09** Configure authorized X/Meta secrets and qualify actual access, usage rights, quotas and provider compliance obligations. Required variable names are absent from Railway's read-only inventory.
- [x] **PO10** Original-source attribution shared across Home/detail/Saved; safe photo/story source links and metadata retained through reactions/save.
- [x] **PO11** Source/dossier/evidence expiry, withdrawal, suspension and exact canonical version enforced at read time; AI disclosure persists when provenance verification expires.
- [x] **PO12** Explicit per-object deletion/access reconciliation, X edit-history normalization, stable original timestamps, platform-wide rate backoff, bounded concurrency and independent head/backfill recovery.
- [x] **PO13** Consolidated schema/recovery, source isolation, accessibility and historical-finance regression checks. Local: 197 backend tests and 62 mobile tests PASS; required hosted PostgreSQL/full-suite checks gate merge.
- [x] **PO14** Scoped source PR, review and exact-head required checks before merge. Source-closed on the completion batch's green merge, not a deployment claim.
- [ ] **PO15** Qualify production rollout and a genuinely sourced live pilot after PO02/PO07/PO08/PO09. No official profile, source account or importer has been activated by this batch.

Do not mark these items complete merely because an adapter or schema exists. Do not retire old user finances or enable public profiles based on a research shortlist.

## Source ingestion

Use supported APIs, not a public-page scraping promise. [X user posts API](https://docs.x.com/x-api/users/get-posts) requires appropriate account access and quotas. Facebook public Page access can require app review; qualify current Meta permissions before enabling it. Imported text remains verbatim, retaining source URL, original publication time and revision history. Media-only posts need an explicit qualified media strategy before they can be represented faithfully. Never generate replacement posts or attribute unrelated quotations to an official.

Configuration implemented in the branch:

- `MASANAWA_OFFICIAL_SOCIAL_IMPORT_ENABLED` — off unless explicitly configured.
- `MASANAWA_OFFICIAL_X_BEARER` — server secret.
- `MASANAWA_OFFICIAL_FACEBOOK_BEARER` — server secret.
- `MASANAWA_OFFICIAL_FACEBOOK_VERSION` — pinned supported Graph API version.

No settings were changed in Railway. Start with a small reviewed cohort; the completion batch adds bounded two-worker/eight-job polling, provider-aware backoff and per-object reconciliation. Actual quotas, cadence and compliance obligations need provider qualification before a large roster.

## Memory choices

[Graphiti](https://github.com/getzep/graphiti) is a candidate for dated public relationships and conflicting historical facts, but adds graph infrastructure, extraction and evaluation costs. [Mem0](https://github.com/mem0ai/mem0) is a candidate for private conversational preferences, with strict identity scope and deletion guarantees. [Letta](https://github.com/letta-ai/letta) is a broader agent-runtime choice. None is required to replace the existing runtime for the first release. Benchmark the existing retrieval first, then add a system only for a demonstrated gap.

## Research references

Use [INEC publications](https://www.inecnigeria.org/press) and attached original lists as admission authority. The CSV links each state document individually; finding a link is not row-by-row verification. The [secondary state compilation](https://ngelections.com/blog/2027-governorship-final-lists-by-state/) is a discovery aid only. Verify temporal revisions and candidates individually before any names, offices or party badges appear in production.

## Delivery checkpoint — 29 October continuation

The implementation removes composer/Boost routes from all production entry points, including Saved and owner profiles. Existing receipt, cancellation and deletion recovery remains. New source-policy SQL also prevents unsourced editorial posts under an admitted public-official identity from appearing publicly. AI disclosure persists when verification expires; the verification expiry is bounded by required evidence validity. Profile sources expose the biography reference and review date.

External admission work remains open: qualified X/Meta access, actual reviewed Grokipedia/primary biographies, new canonical identities with cleared imagery, deeper per-turn/voice retrieval, automated provider deletion compliance and an evaluated live pilot. No production credentials, importer flags or wallets were changed.

Research verification, 29 October: primary-document text matching confirms 76 contiguous candidate/running-mate/party tuples. This is ticket transcription verification only. The other 26 tickets remain reported entries pending primary access/review, not negative findings about candidacy. All 102 remain `persona_admitted=false`.

Admission/retrieval follow-up: initial six-file batch passed 39 tests; consolidated seven-file batch passed 44 tests, including old-policy retrieval, missing-dossier rejection, idempotent operator review and immutable receipts. Gateway TypeScript passed. Preview/apply command build and hosted checks are recorded at delivery, not assumed to activate real officials.

The operator packet can also admit one reviewed social source atomically. Platform switches suspend prior source bindings and retain their provenance; cross-person account reassignment is refused. A failed source update rolls back the dossier review. All source accounts remain unconfigured in production. Gateway build and compiled preview with a deliberately invalid database sentinel passed, demonstrating that preview does not open a database connection.

Disclosure continuation: direct-entry chat headers identify public officials as AI simulations, and full-screen calls explicitly say they are not the official or their office. Consolidated chat/call/MB-recovery/badge tests: 25 passed, including 320dp/200% text; Flutter analysis passed with informational lints only.

## 29 October one-pass completion batch — local verification complete; hosted merge gate

All connected source changes are being made before one consolidated test phase, as requested by the owner. The batch covers speech/query grounding after turn reservation, server-only live evidence lookup, citation/quotation validation before citizen output, multilingual gold-case evaluation tooling, original social edits/deletion/access-loss reconciliation, durable provider backoff, bounded concurrency, head polling independent of backfill, and matching mobile source-link parsing. No new wallet operation or real-official identity is created.

Read-only Railway OAuth inventory confirms the required official-source/X/Meta variable names are absent; values were withheld and no variables changed. Gemini variable names exist, which establishes configuration presence only. Research retries still could not read the four Grokipedia pages or seven primary state PDFs covering the remaining 26 tickets. These are substantive external/data dependencies; no candidate biography, image rights, account ownership, provider ID or live qualification has been invented.

The completion batch also includes approved original social posts in public knowledge search, with content-hash-bound evidence IDs. Edited/withdrawn originals cannot silently retain the same citation identity. Text/voice-note answers re-read authorized evidence before final display; speech rendering omits raw source URLs while written replies retain citations. Real source accessibility and required API configuration findings are recorded in [external-readiness evidence](research/official-pivot-external-readiness-20261029.json).

Verification: all planned connected source edits preceded the first consolidated run (196 backend tests, 62 mobile tests, workspace TypeScript and Flutter analysis PASS). Final audit added old-official-session version rejection before a new hold and single-quote fidelity checking; the second backend run passed 197 tests. Seventeen real-Postgres-only tests were skipped locally and remain required in hosted checks. Full workspace build PASS; both compiled operator commands passed offline preview with invalid provider/database sentinels and zero provider calls. A stale local compiled dependency found by the first evaluation preview was resolved by the full rebuild.
