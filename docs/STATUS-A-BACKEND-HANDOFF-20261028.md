# SPE A01–A10 — backend campaign lifecycle source handoff (28 October 2026)

Owner: the explicit A01–A10 claim in the canonical Status Promote & Earn checklist on main (commit `d9ce408`). Other windows own B, C, D and F and must not edit these A IDs.

## Scope implemented in this source branch
- A02: database triggers prevent UPDATE/DELETE on financial quotes and freeze the campaign's payer, post, original quote, fingerprint, idempotency key, target views and price/version while permitting legitimate state, reservation and delivery counter transitions.
- A04/A07/A09: quote-bound optional advertiser URL with HTTPS/public-host/redirect-parameter validation; no public projection until a separately authorized editor reviews and approves; exact reviewed destination stored with the published human post and approval audit. Image approval refuses unapproved registered objects. External redirects, phishing guarantees and upload lifecycle are not qualified.
- A08: a new disposable **real PostgreSQL** last-view contention test alongside existing embedded-PG tests. This is not yet the exhaustive provider/fraud/rollback matrix.
- A10: original-budget-preserving account-fenced rejection appeal, independent review and reasoned resolution without automatic reactivation; prospective paid text/CTA edit proposals use immutable original input, authorization, idempotency and expected content revision, with separate staff approval. Old approved content remains unchanged while edit awaits moderation. New MB exposure requires an independently confirmed quote/Boost, not target mutation.
- The existing A01/A03/A05/A06 implementation remains the single typed feed, quote/confirm, approval, pagination, cancellation, refund and owner receipts. No duplicate ledger/router, no new app tab.

## Delivery gates
Do not mark the entire A01–A10 batch complete from this source:
- Approved human image upload, sanitization, preview, grants, CDN/cache and backup deletion proof remain missing.
- General advertiser redirect/phishing/policy and legal/ARCON clearance is incomplete; no default Sponsored badge is added.
- Complete first-run draft/media/edit/appeal UI and user-facing recovery, all cross-surface attribution fraud, real economic/provider qualification and full concurrency/rollback cases are open.
- All promotion/public/reward monetary admission switches stay **OFF**; no externally funded operation, deployment or APK was run.
- Complete tasks individually only after exact-head hosted CI plus safe merge. Handset-only feedback is not a checkbox.

## Verification
Source changes and focused tests are committed. The first hosted PR #574 heads failed from a TypeScript definite-assignment error in optional destination validation; that code has since been corrected. **No success is claimed for the new exact head until its own CI finishes.** PR #574 was superseded/closed in favor of one clean verification PR #579.
