# Nigerian news publishing: activation and proof

The public web feed at `/api/news` is a live RSS fallback. It is **not** proof
that the canonical database publisher is operating. The canonical worker writes
`feed.posts` plus `feed.news_articles`, providing stable article IDs for
signed-in reactions and comments.

## What runs automatically

- The worker runs the news scheduler immediately when started, then every **5 minutes**.
- Each due approved source is polled individually: sources producing new posts
  are due again after **15 minutes**, idle sources after **20 minutes**.
  Failed sources retry after **60 minutes**, without blocking other sources.
- Content older than **7 days**, unverifiable locality, irrelevant/gossip
  content and near-duplicate events are rejected *before* publication.
- The scheduler is on by default **only when the existing platform tenant ID is
  configured**. Setting `MASANAWA_NEWS_INGEST_ENABLED=false` overrides this.
- Each scheduler run writes `news_ingest.batch` with counts
  `checked/imported/failed/enrolled`. When disabled, startup writes
  `news_ingest.disabled` and the reason.

## Production activation on the existing Droplet

Use the verified SSH operator session; never paste a private env file,
database password or SSH private key into a ticket or chat. The original host
has a 2 GiB RAM limit: first inspect headroom and the existing worker; **do not
add another Droplet, resize it or enable paid backup services**.

From the **exact deployed backend commit** in
`infra/deployment/digitalocean`:

```sh
free -m
docker stats --no-stream
docker compose --env-file /etc/masanawa/compose.env -f compose.yaml --profile worker ps
```

Check that `/etc/masanawa/runtime.env` (mode `0600`) contains the actual
`MASANAWA_PLATFORM_TENANT_ID` belonging to this already-provisioned platform.
Never replace it with a newly generated tenant ID. Set
`MASANAWA_NEWS_INGEST_ENABLED=true` in that **private runtime file**, if
currently `false`. The default-on code does not override an explicit `false`
in the runtime file.

Ensure the migration including `0029_nigeria_news_intelligence.sql` has
completed and the immutable worker image matches the reviewed release commit.
After checking memory headroom, update **only** the existing worker with its
approved image:

```sh
docker compose --env-file /etc/masanawa/compose.env -f compose.yaml --profile worker pull worker
docker compose --env-file /etc/masanawa/compose.env -f compose.yaml --profile worker up -d --no-build --no-deps --force-recreate worker
docker compose --env-file /etc/masanawa/compose.env -f compose.yaml --profile worker logs --since=15m worker
```

Do not restart PostgreSQL, drop a volume, or disable Gateway/OTP sessions.

Check the worker's configuration **without printing the tenant ID or secrets**:

```sh
docker compose --env-file /etc/masanawa/compose.env -f compose.yaml --profile worker exec -T worker node -e 'console.log(JSON.stringify({tenantConfigured:Boolean(process.env.MASANAWA_PLATFORM_TENANT_ID?.trim()),newsIngestFlag:process.env.MASANAWA_NEWS_INGEST_ENABLED === "false" ? "disabled" : "permitted"}))'
```

The worker logs should contain `news_ingest.batch`; `imported` will be
positive when qualifying new stories exist. `news_ingest.disabled` means
there is **no scheduled publisher**: fix the reported configuration reason.
Repeated `news_ingest.retry` indicates an infrastructure or database fault.

Check the canonical database from the **PostgreSQL container** (credentials
stay inside its private environment):

```sh
docker compose --env-file /etc/masanawa/compose.env -f compose.yaml exec -T postgres sh -c 'exec psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB"' <<'SQL'
SELECT count(*) AS fresh_posts, max(original_published_at) AS newest_story
FROM feed.news_articles
WHERE original_published_at >= now() - interval '7 days';
SELECT publisher_id, state, last_poll_at, next_poll_at, last_error
FROM feed.news_publishers ORDER BY publisher_id;
SQL
```

**Acceptance:** the worker is running; no disabled warning; at least one
`news_ingest.batch` shows `checked > 0`; recent sources have `last_poll_at`;
and `fresh_posts > 0` once approved relevant stories have been found.
Then verify signed-in `/api/masana/news` returns `source: "gateway"`, not just
the public RSS fallback. An initial batch may import nothing if all currently
available headlines fail the Nigeria/public-interest filters; check the
source-level `last_error` values before interpreting this as a scheduler
failure.

This is an operator runbook, not an automated remote deployment. The GitHub
workflow builds immutable images; it does not SSH into or redeploy the Droplet.
