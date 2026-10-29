# Public-official roster replacement

The initial person manifest contains four presidential subjects and 102 reported governorship subjects across 28 states for APC, ADC, NDC and PDP. It assigns new immutable person/version IDs; a changed party ticket must never inherit another person's ID. It does not contain biographies or claim that any official is active.

The four presidential records are Bola Ahmed Tinubu (APC), Atiku Abubakar (ADC), Peter Gregory Obi (NDC) and Sandy Ojang Onor (PDP), checked against the dated [25 October 2026 report](https://www.premiumtimesng.com/features-and-interviews/920001-profiles-the-men-women-seeking-to-be-nigerias-president-in-2027.html). Governorship names retain the existing per-state research references and are explicitly labelled reported candidates. They require current person-specific review, not a mandatory INEC download. Current candidacy and historical biography remain separate claims.

## Source changes

Normal Gateway startup now registers these new canonical identities, generic Gemini voice assignments and Skills. New public profiles are private drafts and directory entries remain hidden until an actual current biography packet and published biography exist. No generated Status post, made-up portrait, borrowed fictional history or false provenance badge is created. Real photos remain optional; initials are honest when no approved image is available. Attached images still require character-bound rights approval; the original stock-media requirement is unchanged for fictional specialists.

The Identity normalizer previously discarded the public-official marker before storing/reading a Character Constitution. This is now a validated identity field. A real repository create/publish/activate/read test covers it before dossier admission. The marker is not a biography review or permission grant.

Trusted dossier admission can publish the short biography, full public life story and available quick facts as a new approved revision in the same transaction as the actual evidence and immutable review receipt. Full public biography now survives the real directory serializer and mobile parsing rather than being truncated to the 500-character directory overview. A batch operator command validates every packet before connecting, admits each person transactionally, then activates ready entries without a service restart. Safe retries preserve prior receipts; a partial failure reports the completed count.

On the first ready cohort, the old 24 academic/language specialist profiles are retired and hidden. Their identity versions, private conversations, money, receipts and recovery remain intact. The two general account-support identities remain available. Startup resolves historical retired stock handles to prevent staff-renamed specialists reappearing as duplicates. Later staff hides are preserved.

## Apply real reviewed content

After the Gateway deployment has prepared the manifest identities, supply an array of real reviewed dossier packets, each including `publicProfile: {biography, lifeStory, biographicalFacts?}`. Use each subject's exact manifest IDs and the configured platform tenant. Do not submit sample evidence as real content.

```
node --conditions=production services/gateway/dist/official_cohort_cli.js reviewed-officials.json
node --conditions=production services/gateway/dist/official_cohort_cli.js reviewed-officials.json --reviewer operator-name --apply
```

Preview opens no database. Apply requires the existing service database credential, validates the selected-party manifest and tenant, and returns actual prepared/active/pending counts. No customer balance or billable provider operation occurs.

## First-launch source approval and bundled activation

The owner approved reliable attributed sources for this launch on 29 October. The source bundle now includes 62 short person-specific biographies: the four presidential entries and 58 governorship entries. Canonical Wikipedia references, reporting, professional records and clearly attributed self-biographies/opinion articles supply the initial summaries. References and check dates are preserved; check dates are not claimed as publication dates. Unknown or conflicting birthdays are omitted. Birthplace is distinct from state of origin.

Startup automatically admits these actual reviewed packets once, publishes the biographies, then activates the eligible profiles and retires the old specialist catalogue. The other 44 roster entries remain hidden pending an adequate biography. No operator-created packet file is needed for the bundled launch. Automatic admission never overrides an existing dossier or receipt, including a withdrawn review; later staff hides remain in force. The fixed review expires 28 November 2026 and never renews on restart. Social posts remain outside the chat/call biography corpus.

This describes code and bundled content, not a production readback. Deployment and actual live counts must be reported separately after a successful Railway deployment. Local database tests do not prove Gemini audio or handset performance.

## Validation before pull request

Local TypeScript checks pass for Agents, Identity and Gateway. Nine relevant backend files initially produced 17 passing tests and one bootstrap handle collision; the collision was corrected to use the full canonical ID, and the bootstrap plus launch-packet retest passes all three tests. The actual four-person presidential bundle is exercised through repository provisioning, profile/evidence admission, activation, restart and review suspension. Eight targeted mobile biography/provenance/full-phone visual tests pass. Flutter analysis reports existing informational lints only, with no errors or warnings. Full hosted CI and production deployment are recorded separately.
