# Optional region personalization — future product contract

Status: design only; geographic ad targeting is not enabled. This contract completes SPE-F07 documentation. Signup/Profile metadata, consent storage, deletion workers and provider-country admission remain separate implementation work under SPE-F01–F06/F08.

## Purpose and user choice

If geographic personalization is approved in a later release, offer it as a separate optional preference in private Account details. Explain before selection: “Use the country and region you choose to make Home promotions more relevant. This is optional. You can change or turn it off at any time.” Do not bundle consent into email OTP, phone verification, account creation, purchasing MB or accepting general terms. Declining keeps ordinary non-geographic Home access and must not block account creation or Wallet history.

Default the preference to off, including for existing users and after policy changes requiring renewed choice. A phone calling code, locale or previous country suggestion is only an editable clue. None proves residence or current location, supplies permission to target advertisements, or authorizes a provider in that country. Do not collect GPS, infer precise location from IP, or derive a state from the phone number for this feature.

Display the saved user-confirmed country and optional State/Province/Region separately from any inferred suggestion. Require explicit confirmation before using them for personalization. Use versioned ISO country/subdivision metadata shared with Profile; changing country clears an incompatible subdivision. Unknown, unsupported and “Prefer not to say” selections do not receive geographic targeting. Never expose contact phone, selected subdivision or consent records in public profiles, share URLs or advertiser reports.

## Future authorization and controls

Before launch, complete product/privacy and applicable legal review, specify the permitted coarse matching rules, and implement an authenticated account-scoped preference API with safe readback and account-switch fencing. Record the notice/purpose version, explicit choice, selected ISO codes and server timestamps; never reuse sign-in or phone-verification consent. Resolve any jurisdiction-specific consent or age requirements before admitting that account. Consent withdrawal stops new geographic matching immediately, invalidates matching caches and removes queued derived audiences. Updating Profile alone must not opt a user in.

Advertisers may receive only aggregate campaign results with a reviewed minimum audience threshold. Do not disclose an individual viewer's region or create sensitive/protected-category audiences. Geographic targeting must remain independently disabled until these controls and API/PG/mobile regressions pass; deploying this document changes no runtime flag or provider admission.

## Deletion and retention policy for the future feature

On withdrawal, erase the personalization copy of country/subdivision, derived audiences and matching caches within 24 hours. A separately confirmed private Profile region may remain for its disclosed account purpose until edited or the account is deleted; it must no longer be read for advertising. Keep only a minimal consent/withdrawal audit record (account pseudonym, purpose/notice version, choice and server time), without the region or phone, for 90 days, then purge it.

On account deletion, immediately revoke access and matching eligibility; delete Profile/contact and personalization region from primary stores, projections, queues and caches within 30 days. Encrypted rolling backups expire within 90 days and must not be used to restore deleted targeting: replay the deletion tombstone before any restored service becomes readable. A restricted tombstone may retain only the pseudonymous account key and deletion time until all backup windows expire. Apply the same deletion to downstream processors with retryable audited acknowledgements.

Immutable MB/NGN receipts and narrowly necessary fraud/legal-hold evidence follow their separately disclosed statutory/contractual retention schedules. Retain only necessary fields with restricted access, a recorded legal basis, owner and review/expiry date; do not preserve region merely because a financial receipt exists. Legal holds never permit continued advertising use. No blanket “retain forever” exception is allowed. Final jurisdiction-specific schedule approval is a future launch condition, not a claim that the deletion pipeline already exists.

## Required launch evidence

Verify default-off and decline behavior, explicit opt-in/withdrawal, editable provenance, shared-country ambiguity, missing region, changed-country clearing, unauthorized/account-switched reads and writes, no region in public responses/logs, cache/queue invalidation, clock-controlled deletion/backup expiry and processor retry. Confirm financial records remain intact while advertising eligibility and region copies are removed. International Wallet services remain unavailable until the specific provider-country contract is qualified, regardless of personalization choices.
