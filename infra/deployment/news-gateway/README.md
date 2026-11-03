# Masanawa public news gateway

Recovered from the existing Higgsfield gateway at `4ed58c4`, with the same pinned
RSS sources and article payload. This service runs independently of SSR and
Higgsfield authentication. It owns only news metadata, D1, and a 15-minute cron.
It contains no wallet, account, chat, or call data and no public write endpoint.

## Deploy and acceptance

Install official Wrangler in the deploy environment. Select the intended account
with `CLOUDFLARE_ACCOUNT_ID` and provide its existing scoped authentication securely
through `CLOUDFLARE_API_TOKEN`. Never commit credentials. From this directory:

```
node deploy.mjs
node smoke.mjs <returned-HTTPS-origin> --require-cron
```

Deploy inventories existing Workers and D1 names, reuses `masanawa-news`, applies
additive migrations, deploys `masanawa-news-gateway`, checks anonymous public HTTP
responses and reads back the configured cron. It does not select or buy a plan.
Review existing resource ownership before running against an account. Existing
Higgsfield migrations are preserved; `0003` adds content dedupe and refresh evidence.
The generated config stays untracked. Dashboard deployment is also supported:
use `src/worker.mjs`, bind D1 as `DB`, apply both migrations in order, and add
`*/15 * * * *`. The always-on service requires no running development sandbox.

`/healthz` proves the handler runs. `/readyz` requires a nonempty D1 index and
successful source refresh within an hour. `/api/news/status` reports storage,
counts, last refresh and last completed **cron** run. `/v1/news` serves indexed
stories; `/v1/news/publishers` serves the fixed catalogue. GET/HEAD/OPTIONS are
public. Failed cold ingestion returns 503. No refresh/admin write route is public.
The initial unfiltered read primes an empty DB; other reads refresh through
`waitUntil`. D1 leases prevent duplicate concurrent refreshes. Cron all-source
failure rejects the execution and remains in D1 evidence. Verify a *later* real
cron run using `--require-cron`, not the initial request refresh. A free-plan
resource limit or inaccessible source must be reported from live logs, not
called a successful production run.

## Connect the actual app

After the live smoke test passes, set these existing Railway worker variables:

- `MASANAWA_NEWS_GATEWAY_ORIGIN`: the exact returned workers.dev HTTPS origin.
- `MASANAWA_NEWS_INGEST_ENABLED=true`.
- `MASANAWA_PLATFORM_TENANT_ID`: the existing gateway platform tenant ID.

The worker imports public Cloudflare metadata into existing `feed.posts` and
`feed.news_articles`. It uses canonical source URLs and database locks to retain
stable post IDs, reactions, comments, reports and sharing across refreshes.
The Flutter Home already calls `/v1/news` through its account-bound Masanawa
API; leave those interaction requests on the Masanawa gateway. Replacing the
whole Flutter API origin with Cloudflare would break auth, wallet and comments.
The Cloudflare IDs are public metadata IDs, not Masanawa social-post IDs.
No user token or personal data is forwarded to Cloudflare. When configured,
upstream errors never silently fall back to a different RSS path.

## Content and verification

Only publisher RSS headline/short-description previews are stored, with an
original link. No article HTML or AI-generated factual replacement is fetched.
Exact normalized headline+summary duplicates are collapsed across publishers;
this does not claim semantic equivalence detection. Source URLs are separately
unique; corrections at an existing URL retain the original ID. Public reads
exclude records older than 30 days and invalid/unknown publisher URLs.

Brand/image licensing is not established by RSS availability or owner approval.
The app retains its existing neutral publisher lettermarks and no copied images
until reviewed rights-backed metadata is supplied. The publisher badge describes
source identity, not independent factual verification of every story. Respect
source suspensions and rights expiry in the Masanawa canonical registry.

## Verification

```
node --test test/gateway.test.mjs
```

The harness uses actual SQLite migrations and statements, with fixture HTTP
publisher responses. It checks ingestion, storage, retry, dedupe, pagination,
expiry, public methods, readiness and scheduled error evidence. This is automated
source verification; it is not Cloudflare D1, real publisher or live cron proof.
Foundation CI also runs these tests and the standalone TypeScript check.
