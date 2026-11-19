# Civic-persona learning and institution guide expansion — 19 November 2026

## Product objective

Masanawa is an independent Nigerian civic-learning product. A visitor should
be able to study the history, structure, legal mandate, services and public
relationships of an institution, or the verified life and career of a public
official, through natural, sustained and accessible conversations. An AI
persona must never misrepresent itself as a government employee or the real
official, grant approvals, invent facts, or request identity/payment secrets.

## Implemented in this change

1. **Institution identity and coverage.** Preserve the 16 live civic guide IDs,
   add all 57 non-overlapping institutions from the web's 71-record reviewed
   catalogue, and expose **73 distinct constitution-bound civic AI guides**.
   IDs for new organizations are the exact `org-*` IDs in the web directory.
   Do not create a new public-official identity or alter existing Character
   versions. Long IDs use a stable hashed Masana handle without changing the
   canonical civic binding.
2. **Verified grounding.** Introduce a scoped civic-evidence reader. It joins
   the reviewed institution mandate with curated references for agencies where
   available, plus bounded same-host public HTML retrieval on the user's
   question. It tracks review/retrieval dates, limits redirects, page sizes,
   concurrent fetches and cache life, never follows arbitrary question URLs,
   and degrades to reviewed material when an official site is offline.
3. **Checked answers.** Agency replies use independently validated evidence
   IDs and quotations. Factual text can be complete or partially supported;
   sources are appended server-side only after scope/URL checking. Conversation
   and voice transcripts use existing session admission, authorization and
   billing. Checked paragraph streaming withholds incomplete or forged claims.
   A retrieval/quote check verifies provenance, **not automatically the truth
   of every model-generated inference**.
4. **Rich educational guidance.** Describe mandate, history, structure,
   coordinating bodies, services, comparison, guided learning and revision
   questions according to the person's needs. Offer five learning objectives
   for each original sector guide and general journeys for new institutions.
   Respond with suitable depth, vary style, preserve earlier context, and
   avoid reflexive short endings and copied introductions. Public-official
   personas can give sourced chronological narratives and partial answers
   where some life stages remain unverified.
5. **No canned greeting.** New guide presentations have no fixed greeting;
   only legacy greetings that match the original bootstrap string are removed
   on an idempotent restart. Staff-customized greetings and all existing
   voice identities/character IDs survive.
6. **Mobile directory.** Preserve existing mobile civic entries and IDs;
   append missing reviewed institutions with public source links and parent
   relations. Admit chat only through a unique server-approved civic ID or a
   uniquely attributable, reviewed person identity URL. Support full-length
   canonical IDs, and show three clearly labelled, citizen-selected study
   prompts from each linked profile. A learning chip sends a question only
   after the user taps it and displays the existing ₦2-per-reply charge.
7. **Web directory (companion PR).** Add NCDC and CAC to the web's reviewed
   institutional list, map the two original short IDs, bind any direct
   verified `org-*` guide, reject collisions, and provide profile-level study
   questions prefilled in the existing composer. Existing unsent web drafts
   are preserved; a competing study question is copied, not submitted.

## Retained safety boundaries

- One additive, DDL-only reviewed-catalog migration extends the existing
  civic media-rights approval guard to all 73 identities, verifying each
  long-name opaque handle against the published constitution. Apply it before
  agency bootstrap. No table/data rewrite, wallet or ₦2/reply ledger changes,
  government authentication, unsourced officeholder assignments, or hidden
  contact disclosure.
- No changes to paired WhatsApp session, Signal keys, owner takeover, message
  outbox, voice renderer, Gemini tenant key pool or manual pause behavior.
- Independent educational persona disclosure applies at first interaction
  and whenever official authority, applications or payments are relevant.
- Every institutional link is approved by the Gateway, not guessed from name.
  Unverified and conflicting links remain unavailable rather than being faked.

## Coverage and honest limitations

| Area | Included in this batch | Still requires evidence or live acceptance |
| --- | --- | --- |
| Agency/ministry/directorate AI guides | 73 canonical identities from the union of 16 original + 71 web identities | More government bodies beyond this reviewed set; institutional page audits and sources for specific services/fees |
| Institutional knowledge | First-party bounded retrieval + catalogue summaries + curated dossiers where reviewed | Full departmental org charts, legislation, form/fee histories and independent periodic verification for every guide |
| Public official personas | Improved biography teaching, partial-source answers, existing approved identities preserved | Independent, deep dossiers and identity admission for remaining directory people; 439 legislative-roster entries are *not* full biographies |
| Voice | Existing multimodal official/agency chat grounding; prior WhatsApp voice transcription source pass remains unchanged | Actual linked-phone tests in Hausa and English after safe Worker release |
| Web/mobile experience | Canonical chat binding, study prompts, source links, published profiles | Flutter device check, end-to-end web interaction and verified source review at the deployed head |

## Tests and release gates

- Run agency, official, narrative, bootstrap, conversation and safety suites,
  Gateway and Agents TypeScript checks, Gateway build, and the unchanged
  WhatsApp worker regression suite. Run exact-head Foundation/Mobile CI and
  web unit/build checks before merge.
- Verify actual app behavior: five distinct first/returning agency questions;
  a guided lesson followed by a memory-dependent question; truthful partial
  responses; a missing-source request; institution identity switch refusal;
  16 legacy and new `org-*` links; reviewed biography and conflicting sources;
  Hausa voice transcription, two successive voice notes, and wallet idempotency.
- The last observed DigitalOcean deployment attempt failed extracting a large
  Gateway image because `/var/lib/containerd` ran out of space. **No new
  production deployment is authorized by passing tests alone.** First inspect
  disk use, preserve active images/volumes and paired sessions, recover capacity
  safely, then deploy the exact reviewed Worker/Gateway image with rollback.
- An open separate official-dossier expansion PR contains an incomplete
  biography gate; do not bypass it to claim all public officials are complete.

## Source stewardship

This batch reuses the reviewed web institutional catalogue and its cited
historical/function excerpts. Specific NCDC and CAC records refer to the
agencies' own published About pages. The browser retrieval mechanism is
first-party bounded lookup, not a substitute for editorial verification:
record provenance and flag stale, inaccessible or conflicting material.
Never translate an inferred official position into an authorized statement.
