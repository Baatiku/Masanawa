# Flutterwave Data: Railway direct-IP test deployment

Owner authorization: 27 October 2026. Use Railway's current observed outbound
IPv4 for initial Flutterwave whitelist testing; replace it after a later static-IP
upgrade. No inbound domain/DNS address is an outbound whitelist claim.

The free plan rejected an additional relay service with “Free plan resource
provision limit exceeded.” This deployment therefore uses the existing Gateway
container, without an extra Railway resource. Existing relay credentials remain
saved for rollback; `MASANAWA_FLUTTERWAVE_DIRECT_ENABLED=true` explicitly sends the
Flutterwave adapter directly to its official HTTPS API from Railway.

`MASANAWA_FLUTTERWAVE_OBSERVE_OUTBOUND=true` starts a bounded read-only observer in
the same container. It logs actual public IPv4 and Nigerian Mobile Data
category/biller/item observations to private Railway logs using the existing
Railway-held Flutterwave key. It never logs credentials/customer data, validates a
subscriber, or creates a payment. Failed discovery retries every five minutes;
completed discovery stops catalogue polling while IP observation continues.
An IPv4 observation is current and dynamic, never a reserved address guarantee.

The existing mobile Data flow is already wired to:

- `GET /v1/gb/data/bundles`: authenticated current catalogue, verified exact
  biller/item/allowance/validity/price mapping.
- `POST /v1/gb/data/quote`: phone/network/bundle review without payment.
- `POST /v1/gb/data/redeem` and original-reference purchase readback/reconcile:
  purchased-MB reservation, explicit confirmation, pending/delivery/failure.

Catalogue flag `MASANAWA_GB_DATA_CATALOG_ENABLED=true` and an initially empty
`MASANAWA_GB_DATA_APPROVALS_JSON=[]` mount the real authenticated API while
whitelisting/approval completes. Empty means no offer; never substitute fixtures.
After successful official catalogue discovery, review exact integer-MB allowance,
validity and current amount, version the approved mapping, and enable purchases
only with supported delivery/readback semantics. Flutterwave's receipt/HTTP 200
alone is not a delivered data bundle. Unknown operations keep their original
reservation/reference; no automatic duplicate purchase.

Activation uses existing Railway `FLUTTERWAVE_SECRET_KEY`; no key is copied to
this workspace, GitHub or the phone. `MASANAWA_FLUTTERWAVE_VERIFY_ON_START=false`
keeps a pre-whitelist provider rejection from taking down unrelated Gateway
functions. The observer's status is diagnostic, not fabricated provider success.

Rollback: turn direct mode off to reuse the saved external relay configuration.
Disable Data purchases before changing credentials/routes, retaining original
purchase reconciliation and historical liabilities. When upgrading to static
outbound IP, redeploy, remeasure and update Flutterwave's whitelist before testing.

Local source validation: 109 grouped Gateway/Data/architecture cases and three
IPv4/catalogue-observation tests pass. Exact-head hosted CI and deployment
health/logs are recorded in the handoff as they become available.

## 27 October catalogue and owner selection checkpoint

Authenticated category/biller/item discovery succeeded after the owner added the
observed dynamic outbound IPv4 **152.55.180.252** to the Flutterwave whitelist.
It returned **62** items across all four supported Nigerian networks. This is an
outbound observation, not a reserved IP or a promise that redeployment keeps it.
The source validity observer (#523) retains provider raw values: 47 items expose
a value and 15 do not. Raw strings such as `30s`, `7s` and `30` were interpreted
as days in the owner's reviewed selection; independent provider documentation of
those unit semantics is still outstanding. Never fill missing validity by guess.

The owner approved **36** filtered plans: **14 MTN, 8 Glo, 11 Airtel and 3
9mobile**. Merged #528 supports exact integer MB, purchased funds only, and the
approved manifest at
[`infra/deployment/gateway/flutterwave-data-approved-20261027.json`](../infra/deployment/gateway/flutterwave-data-approved-20261027.json).
Merged #529 includes the two-day validity filter. The manifest excludes call
minutes, the named removed MTN items, MTN long/unknown durations, 9mobile MD152,
and ambiguous Glo MD368. Separate social/YouTube extras never inflate base MB.
Approval version is `owner-selection-20261027-v1`; review expires at
**3 November 2026, 17:04:12.041 UTC**. Re-review current provider price/terms before
renewing it; an expired approval must not silently become a permanent offer.

New mobile clients request `?units=mb` and can display all 36 approved products;
older whole-GB clients receive only their compatible subset. Source catalog
support and an APK do not prove that the matching Railway configuration has been
applied. At the last recorded Railway check (27 October, 19:35 UTC), production
was deployment `4678f3fa-5ecb-4e5c-8815-480e3c8b4415`, while the five selection
configuration changes were still staged. Deployment of those changes was not
confirmed in that observation. Recheck active deployment/configuration before
reporting the entire selection live; do not repeat a blocked deployment through
another mutation path.

No paid purchase, handset bundle delivery, provider finality or independent
validity contract has been established by discovery. UX-D05/D06 stay open for
those substantive provider requirements, rather than an obsolete whitelist or
owner-phone acceptance gate. Original-reference reserve/readback/reconciliation
and unknown-outcome safeguards remain required.
