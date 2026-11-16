# NGN activation and persistent login — 16 November 2026

Owner scope: enable existing Billstack deposits, NGN Send/Request, Flutterwave
billing and approved data sales; resolve recipients while typing; retain sign-in
until explicit logout, revocation or browser credential loss. This is an existing
platform update. No new infrastructure, provider keys, money, migration of old
Railway history, paid backup subscription or Worker activation is authorized here.

## Coordinated implementation map

| Surface | Implementation and verification boundary |
| --- | --- |
| Web Gateway/Ops/event BFF | Refresh when the access cookie is absent, not just rejected. Renewal outages retain cookies. Invalid/revoked refreshes clear credentials. Secure HttpOnly SameSite cookies; no bearer in browser storage. |
| Canonical mobile/web sessions | Default rolling refresh lifetime 400 days, browser maximum practical persistence. Short access tokens still expire. Deterministic HMAC successors plus security 0122 permit only identical concurrent rotation retries for 45 seconds. Logout, suspension, tenant disable and deletion remain authoritative. `created_at` does not change: admin mutations still need fresh sign-in. |
| Initial and returning web view | Network/503 failures show retry or retain the current account; only definitive authentication rejection removes the private view. Focus/online retry is throttled. Browser data deletion and explicit server revocation cannot preserve sign-in. |
| Send and Request | Shared 250 ms debounced recipient picker; abort stale results; fixed canonical directory; bounded public name/handle results. Every typed name word may match a displayed-name word prefix. Email/full phone remain exact-match only. Request binds the selected canonical recipient ID and rejects changed resolution before creating a request; old mobile clients remain compatible. |
| Buy Data | Fetch actual authenticated Gateway bundles including fractional/MB selection; show loading and refresh on empty/error. Existing phone/network picker, signed quote, NGN reservation, original-key recovery and provider delivery checks retained. |
| Runtime activation | `activate-payments.template.sh`: inspect existing host, lock, private backups, verified immutable image placeholders resolved only after exact-head CI/publication, stop Gateway/Ops for RAM, canonical forward migrations, credentialed direct Flutterwave reads, audited catalogue revision, private flag installation, restart, health and authenticated-boundary checks, runtime/image rollback on failure. |
| Provider catalogue | `qualify-payments.mjs` + `renew_approvals.ts`: reuse existing DB approvals first, private approvals second, source-reviewed 36-plan selection only when neither exists. Preserve all allowance, validity, bonus, evidence and disabled-state metadata. Renew only exact biller/item/NGN-price matches for seven days. Every user read and purchase still fetches current provider items. No data purchase or fabricated provider receipt during qualification. |

## Operational gates and evidence

The template deliberately requires the existing private Flutterwave secret and
provider webhook hash, Billstack secret, tenant and database. It generates only
internal review/action signing keys if absent. Canonical Flutterwave callback:
`https://api.masanawa.com/v1/webhooks/flutterwave`. Its configured provider-side
secret must match; a locally invented provider secret would not qualify.

The installer enables `MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED`,
`FLUTTERWAVE_BILLS_ENABLED`, `MASANAWA_NGN_DATA_CATALOG_ENABLED`,
`MASANAWA_NGN_DATA_PURCHASE_ENABLED`, `MASANAWA_FLUTTERWAVE_DIRECT_ENABLED` and
`MASANAWA_FLUTTERWAVE_VERIFY_ON_START`. Send/Request composition uses the private
`MASANAWA_GB_SEND_REVIEW_SECRET`. Signed Billstack webhook verification, exact
receiving-account/merchant matching, idempotent NGN settlement, frozen-wallet
checks and funds availability remain enforced. These are operational testing
switches, not independent proof of settlement or authorization to mint money.

Forward migrations and append-only catalogue audit revisions remain on rollback;
application images and runtime settings are restored. The existing PostgreSQL
volume is never replaced. The Worker stays off within the $12/2 GiB pilot budget.

SSH from this environment currently receives TCP connection refusal before key
exchange. An existing trusted key is available locally; replacing keys cannot
repair that refusal. Until a supported connection or root-console execution is
available, the new backend migration, flags and live financial behavior cannot be
claimed deployed. Existing `/healthz` and `/readyz` availability is distinct from
new feature/provider acceptance. Off-server encrypted backups, restore rehearsal,
monitoring and actual signed-deposit/funded-purchase acceptance remain required
before public financial launch. The isolated ₦5,000 test balance stays isolated.

The broader web register remains 36 source-checked / 153 open; this bounded update
does not close unrelated admin, provider, mobile or operations requirements.
