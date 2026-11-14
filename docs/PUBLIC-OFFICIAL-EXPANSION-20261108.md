# Nigerian public-official directory — continuity and evidence audit

**Date checked:** 2026-11-08. **Scope:** the owner's request for every head of national government since independence, each serving governor and FCT Minister, and all serving members of the Senate and House of Representatives. This document reports *actual* catalogue coverage, not a promise that future research has already been done.

## Do not remove or remap legacy personas

- `services/gateway/src/official_roster_manifest.ts`: **106** existing immutable subject/character identity mappings. **Unchanged in this batch.** These include historical research into selected 2027 candidacies, which must not be confused with current elected office.
- `services/gateway/src/official_launch_biographies.ts`: **62** reviewed launch biographies mapped to their canonical IDs. **Unchanged in this batch.** Identity-aware biography admission, visibility gating and source-expiry checks remain in place.
- The new civic directory is **not** a second set of working official chat identities. It is a public reference catalogue. A person appearing in reference results is not proof that the person or their office operates an account on Masanawa.
- A future version must reconcile names, punctuation, spelling and renamed public offices against canonical *person IDs*, without repurposing an existing person's character ID.

## Coverage after this source pass

| Group | Target | Verified identity / office mapping | Individually detailed civic record | Live new AI personas |
| --- | ---: | ---: | ---: | ---: |
| National leaders, Tafawa Balewa through Tinubu | 15 distinct people | 15 | 15 structured historical dossiers | 0 newly created |
| Serving state governors | 36 states | 36 officeholder references | 0 newly published governor biographies | 0 newly created |
| Serving FCT minister | 1 | 1 officeholder reference | 0 new full minister biographies | 0 newly created |
| Senate | 109 constitutional seats | 2 verified chamber leaders | 0 new full senator biographies | 0 newly created |
| House | 360 constitutional seats | 2 verified chamber leaders | 0 new full member biographies | 0 newly created |

The 15 national dossiers give distinct historical context, career steps, office terms, policy decisions/developments, stated public priorities, contested issues and individual biographical references. They remain independently authored educational profiles, not exhaustive archives or evidence of government endorsement.

The current state-government jurisdiction pages may name a governor as an *officeholder*, without opening a half-filled personal-profile page. The governor identities, and the FCT Minister, are not silently substituted into the pre-existing 2027 candidate roster.

## Authoritative directory sources and constraints

- National leadership tenure chronology: https://statehouse.gov.ng/past-heads-of-state-and-presidents/
- Current executive: https://statehouse.gov.ng/team/bola-ahmed-tinubu/
- Governors' Forum list of the 36 state executives: https://nggovernorsforum.org/index.php/ngf-governors
- FCT Minister: https://www.fcta.gov.ng/cat_team/minister/
- Senate directory: https://nass.gov.ng/mps/senators
- House directory: https://nass.gov.ng/mps/members
- National Assembly constitutionally comprises 109 senators and 360 representatives: https://ww2.nass.gov.ng/
- INEC 2023 general election report is a historical baseline, not proof of who still holds a seat today: https://www.inecnigeria.org/wp-content/uploads/2024/02/2023-GENERAL-ELECTION-REPORT-1.pdf

**Current legislative source insufficiency:** as indexed and reviewed on 2026-11-08, the NASS public table reported only **74 senator entries** and **246 representative entries**, including a House row with an empty member name. That is not a reliable complete and current 109+360 roster. Seats may be vacant, records stale or the public table incomplete. Do not create people for the missing seats, label a 2023 winner as serving in 2026 without rechecking, or confuse constitutional *seats* with verified living/current *members*.

**External-site integrity problem:** the Governors' Forum governor pages currently show apparently injected unrelated adult/spam links in their page footers. We used the official officeholder names as a checked reference but **disabled user-facing navigation to these pages** while the site's integrity is in question. Do not ingest arbitrary text from its HTML into AI knowledge or the app without sanitisation, cross-verification and explicit evidence review. The FCTA source link remains accessible directly from its civic entry.

## Publication acceptance rule for the remaining 37 + legislature

An official's biography is not complete merely because we have their title, a photograph or a generic definition of their constitutional responsibilities. Before exposing an *individual* new official profile, collect and review all of:

1. Full canonical name, commonly used names/aliases, office, state/district/constituency, tenure start/end, status and `checkedAt` date.
2. Education and pre-office career with individual evidence, plus earlier elected/appointed offices and dated timeline.
3. Documented projects, legislation, policies, programmes and public achievements, with links that distinguish **claimed**, **announced**, **implemented** and **measured outcome**; no transfer of an institution's achievements to one person without support.
4. Publicly stated goals, policy proposals or campaign commitments, with date, context and attribution; deceased/retired persons use historical priorities, not imaginary future ambitions.
5. Material criticism, independently documented contested decisions and opportunity for balanced context; do not automatically conflate allegation with established fact.
6. At least two independent dated references for current status and substantive biography; preference for the National Assembly member page, state government biographies, official gazettes, INEC notices and authenticated bills/legislative records. Record review date and expiry.
7. No chat/call persona until the existing dossier-admission/approved-profile checks pass and the correct *stable character ID* has been allocated. Never pretend to be an actual office, member, aide or verified government channel.

**Complete legislature acceptance:** reconcile all 109 Senate districts and 360 House constituencies to a *seat-level* register; every seat must have a current authenticated occupant or an explicit sourced vacancy. Only after that reconcile names against per-member biographies and committees. Any absent/unnamed source record fails publication; do not fill it with guesses.

## Delivery boundary

This batch retains existing live personas and adds a structured national-leader reading record, a verified 36-state/FCT executive name index and named NASS chamber leadership. **It does not claim that full governor/senator/representative dossiers have been completed.** Complete legislature admission and a new APK/production launch must not be reported on the strength of this index alone.
