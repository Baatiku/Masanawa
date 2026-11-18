# Masanawa Civic Directory — coordinated implementation, 8 November 2026

## Product contract

- Keep existing **Home, Chats, Wallet, Calls, Profile** roots. Contacts retains the WhatsApp-like compact list and call-picker behavior; it now offers an **Explore Nigeria** entry and category shortcuts. `/civic` is a secondary browser, not a new root.
- The civic browser includes **All, People, Agencies, Government, Directorates, History**, plus text and sector filters. It groups person, institution, office, department, and jurisdiction as separate record types; a `parentId` builds organisation hierarchy. Individual profiles display overview, offices/chronology, mandates, citizen services, child bodies, source links and review date in Facebook-like profile tabs.
- **15 distinct past/current leaders** from the State House historical tenure table, including the prime minister (not president) and two leaders with two separate tenures; **three arms**, National Assembly chambers, courts, Federal ministries, 16 directly referenced agencies, OHCSF/NIMC directorates, 36 states and FCT. This is a curated introductory catalogue, not a claim of all government entities or full biographies. The live browse catalogue must grow through independently checked records.
- Persona biographies must not conflate office, institution, candidate, current officeholder or former head of state. Do not infer achievements or political ambitions from tenure. Missing independently attributable claims remain explicitly unpublished.
- The catalogue is **public civic reference**, not a government database; every record has a source URL and revision timestamp, and all official links open externally. This code does not scrape social profiles or make unsupported government endorsements.

## Agency AI identity and cost boundaries

- Gateway startup now provisions a controlled, idempotent cohort of **16 independent agency AI guides** as ordinary, platform-owned canonical Characters, not as official agency accounts. Their disclosure policies explicitly say independent guide; they may explain basic public roles and direct users to real official sites, but cannot submit applications, take fees, give account-specific decisions, claim government access or request NIN, BVN, OTPs or passwords.
- The gateway emits `civicAgencyId` **only** from an approved platform-owned profile bearing the protected `masanawa-civic-seed-v1` publisher marker, and only when the ID occurs in the reviewed seed manifest. Client binds a civic profile to a live Chat action by this canonical association, **not by a matching displayed name**. Account-scoped cached snapshots deliberately drop this live association.
- AI reply/call billing stays on existing authoritative NGN pathways (₦2 per reply, ₦1 per connected call second). Reading, searching, and opening a civic profile is free. Nothing adds MB balances, Tip or paid advertising.
- Historical-person AI simulations remain subject to the existing **reviewed biography + admission** pipeline. A source-linked historical tenure entry is not sufficient to bypass that guard. No unreviewed figure is advertised as a live chat partner, nor is one silently bound to a candidate with a similar name.
- Existing approved Masana identities, hidden records, private conversations, receipts, follow state, stored user data and canonical IDs remain untouched. Idempotent startup never repaints hidden guide entries or replaces admin customisations.

## Authoritative starting sources

1. State House historical heads/presidents: <https://statehouse.gov.ng/past-heads-of-state-and-presidents/>
2. State House current President biography: <https://statehouse.gov.ng/team/bola-ahmed-tinubu/>
3. Office of the Head of Civil Service MDA index: <https://ohcsf.gov.ng/ministries-departments-and-agencies/>
4. National Assembly function and chambers: <https://nass.gov.ng/about/item/9> and <https://nass.gov.ng/about/item/17>
5. Judicial jurisdiction: <https://www.supremecourt.gov.ng/court-jurisdiction>
6. Each agency's official domain, linked from its record, is the first-party reference for its introductory mandate.

## Expansion without hallucinations

Each new entity needs a stable opaque ID, legal name, kind, jurisdiction, level, sector, summary, parent/child links, supported capabilities, current source and review date. People separately need verified life status, office tenures with start/end dates, claims for achievements/controversies with direct dates and individual evidence, stated ambitions with dated attribution, and party memberships as time-bounded records. Pending items should not be presented as verified.

Planned next dataset waves: all state assemblies and judiciaries; 774 local government areas and their respective administrations; ministerial directorates from current official organograms; every major federal statutory board/commission and parastatal; documented past cabinet members, vice-presidents, speakers, governors, senators and other relevant citizens. The initial implementation does **not** claim those research-intensive datasets are finished.

## Acceptance and deployment

1. Check IDs unique, HTTPS provenance, parent IDs valid, 15 historical subjects and 36+FCT jurisdictions represented.
2. Exercise search, sector/category filters, compact contact navigation, profile tabs, external references, screen reader and empty states, RTL/narrow screens.
3. Check separate gateway guide identity provenance, tenant and account fences, idempotent startup, and no reactivation of admin-hidden identities.
4. Run full TypeScript+Vitest+workspace build and Flutter analyze+tests; run hosted Mobile Build, Foundation and roster jobs at **exact PR head**. If all pass, merge verified batch.
5. Compile a release APK on the exact civic PR head using the branch-scoped trigger in `.github/workflows/masana-android-apk.yml`. After merge, the normal `workflow_dispatch` with `build_apk=true`, `publish_release=false` can repeat it on main. Verify artifact size, checksums and signature; attach direct artifact link. User-device voice/call and actual production runtime admission remain independent checks.

## Deployment safety

This schema uses existing Identity, Agent Presentation and Masana Profile stores; no migration or bulk deletion is required. Rollout must verify PostgreSQL feature policy, the existing tenant's review gates, and server readiness. A successful APK compile is not proof that the Gateway deployment, model responses, data providers or signed-in user acceptance has been performed.
