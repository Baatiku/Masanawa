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
After successful official catalogue discovery, review exact whole-GB allowance,
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
