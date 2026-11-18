# Administrator live data review — 17 November 2026

The existing versioned catalogue editor could not retrieve provider availability
or renew an expired approved selection. The owner requested complete operational
controls and Buy Data activation. This connected batch adds authenticated,
read-only provider comparison and an explicit seven-day renewal of matching,
enabled bundles. Missing credentials remain an actionable configuration error.

Affected source: Ops data service/routes/bootstrap, the existing providers client,
Ops dependency/lockfile, web admin editor and bounded same-origin BFF, data tests,
real PostgreSQL administrator acceptance and browser regression.

`GET /v1/admin/data/provider` requires data.read; direct, bounded Flutterwave
reads compare exact biller/item identity, currency and integer-kobo price. Names
never establish allowance or validity. Missing or duplicate items fail safely;
provider errors and credentials are not returned.

`POST /v1/admin/data/renew` requires fresh data.write authorization, an explicit
reason, selection and expected revision. It rechecks current provider data,
rejects disabled/unknown/changed bundles, preserves approved facts and disabled
expiry dates, then uses the existing CAS catalogue publication and immutable
database audit. Original orders retain their original bundle versions. Publishing
does not enable provider dispatch or generate a financial transaction.

The web BFF binds writes to the administrator who loaded the catalogue. A stale
admin tab cannot submit an earlier operator's draft under a new login. Unsaved
bundle edits must be published or discarded before checking live provider data.

Operational evidence supplied by the owner shows the prior release deployed with
Gateway/Ops healthy, canonical migrations applied and Worker off. Flutterwave
credentials are still missing after the old private transfer key became
unavailable or had invalid permissions. The new code requires an immutable image
rollout and privileged acceptance; source tests alone do not establish either.

Validation: Ops TypeScript and 25 focused tests pass. A disposable real PostgreSQL
18/pgvector instance applies the full canonical migration composition and passes
108 tests, including live catalogue CAS/immutable audit, wallet holds/ledger,
session rotation and deletion/promotion regressions. Provider HTTP items in the
catalogue tests are explicit fixtures. No real provider purchase was attempted.
