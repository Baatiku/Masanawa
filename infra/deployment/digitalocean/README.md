# Masanawa — portable DigitalOcean pilot runbook

**Stage:** deployment-source candidate, **not a provisioned server, qualified production service or completed 189-item app**. Read [the approved shared-platform decision](../../../docs/DIGITALOCEAN-SHARED-PLATFORM-DECISION-20261109.md) and the existing web parity register before advertising readiness. Current user choice: start with one **$12 DigitalOcean Basic Droplet**, upgrade after evidence. Prices, DNS, backups, Gemini usage, transactional providers and data storage are additional/subject to current provider terms.

## What this creates (and what it does not)

| Unit | Default startup | Resource boundary | User-data authority |
| --- | --- | --- | --- |
| PostgreSQL 18 + pgvector | Yes; internal Docker network only | 640 MiB memory / 128 PID cap | Canonical accounts, sessions, chat, memory, NGN financial records |
| One-shot canonical migration | Yes, only after healthy PostgreSQL | 896 MiB; exits on success | Forward-only, checksum-locked production migrations; **no Alpha seed, no Railway import** |
| Canonical Fastify Gateway | Yes, after successful migration; host loopback `127.0.0.1:3100` | 896 MiB / Node 640 MiB heap limit | One REST/streaming API for Flutter and web |
| Caddy HTTPS proxy | **Explicit `public` profile**, only after DNS/TLS checks | 128 MiB | Reverse proxy; never authenticates as a second app |
| Canonical Worker | **Explicit `worker` profile; not pilot-approved** | 384 MiB if started | **Must remain off** until legacy jobs are retired and resource/lease/job safety qualified |
| Cloudflare news gateway | External existing Worker+D1 | External free/paid provider allowance | Public article metadata only; not chat, accounts, Wallet or memory |
| Cloudflare Site frontend | External existing Site | External provider allowance | Non-authoritative browser UI; uses the same Gateway |

The 2 GiB server is **only a low-concurrency pilot**. Do not run Gateway+PostgreSQL+worker+proxy+voice inference+other businesses on it. Build images on GitHub Actions/GHCR, not on the RAM-constrained Droplet. Upgrade to a larger Droplet if measured memory/CPU requires background jobs or LiveKit presence. Docker `mem_limit` is not a promise of performance or no OOM.

### Step 0 — gates, before creating resources

1. DigitalOcean account, billing, chosen region and SSH key require an authenticated operator. None are asserted to exist. Do not provision or pay without this.
2. Review the **exact green GitHub commit** and its immutable image tag in GHCR; pull using approved package permissions if private. The release pipeline must never push a `latest` image.
   The pilot images use their own GHCR package names and carry the `org.opencontainers.image.source` repository label. If GitHub rejects a push with `denied` despite `packages: write`, stop and check package-level **Actions access** in the owning account; GitHub may withhold permission for a pre-existing, unlinked package. Never substitute a personal access token or make a private image public just to bypass that permission gate.
3. Verify that `api.masanawa.com` is a domain you control; reserve it for a real Gateway TLS target. An older Billstack DNS audit records a **Railway CNAME for this same hostname**; inspect the *live* Cloudflare DNS record before cutting over and replace the retired origin only once DigitalOcean TLS/health tests pass. **Do not point Cloudflare DNS to an empty Droplet**. Verify Cloudflare TLS mode is Full (strict) once Caddy has a valid origin certificate; never Flexible.
4. Obtain provider-scoped Gemini key (server only), a verified OTP email/SMS route, and private recipient for encrypted off-Droplet backups. Rotate any historic keys exposed in chat; do not reuse expired Railway variables as a secret source.
5. No previously used Railway/Postgres/D1 history is to be migrated. Start with an empty PostgreSQL volume, but **never erase an existing later deployment** under this rule.

### Step 1 — prepare the host

- Ubuntu LTS, an ordinary sudo operator account, SSH public-key auth, no password-only SSH, automatic security updates, firewall and provider firewall for reviewed `22/tcp`, `80/tcp`, `443/tcp` only. Review changes before enabling the firewall so active SSH is not cut off.
- Install maintained Docker Engine and Docker Compose plugin, Node 22+ only for the preflight script (or run it from a trusted Node container with read-only mounts), `age`, `rclone`, `flock` and monitoring/backup tooling. Keep the operator out of public Docker API exposure; Docker group membership has root-equivalent privileges.
- Create `/etc/masanawa/compose.env` and `/etc/masanawa/runtime.env` as **two independent mode-0600 private files**. Do not put either under the repository, a public build artifact or Cloudflare Pages. The checked-in `.env.example` and `runtime.env.example` are deliberately *non-runnable*. Use a protected editor/secret delivery channel, and a unique password at least 24 characters. URI-encode it in `MASANAWA_DATABASE_URL`.
- The Compose file is **interpolation** and DB bootstrap settings only; the runtime file is passed into Gateway and migration containers. Keep Gemini, OTP, payment and channel secrets out of `compose.env`.

Minimum `compose.env` key list (shown as **variable names only**, never copy placeholder values into production):

```text
MASANAWA_RUNTIME_ENV_FILE=/etc/masanawa/runtime.env
POSTGRES_DB=...
POSTGRES_USER=...
POSTGRES_PASSWORD=...
MASANAWA_GATEWAY_IMAGE=ghcr.io/baatiku/masanawa-do-pilot-gateway:<40-character-commit-sha>
MASANAWA_WORKER_IMAGE=ghcr.io/baatiku/masanawa-do-pilot-worker:<same-commit-sha>
MASANAWA_GATEWAY_LOOPBACK_PORT=3100
MASANAWA_API_HOST=api.masanawa.com
```

Minimum `runtime.env` names:

```text
MASANAWA_DATABASE_URL=postgres://<user>:<url-encoded-password>@postgres:5432/<db>
MASANAWA_PUBLIC_BASE_URL=https://api.masanawa.com
MASANAWA_AUTH_PUBLIC_BASE_URL=https://api.masanawa.com
MASANAWA_WEB_ALLOWED_ORIGINS=https://masanawa-civic-directory.shrewdmural8.chatgpt.site,https://web.masanawa.com
MASANAWA_PLATFORM_TENANT_ID=tenant_<UUIDv7>
MASANAWA_AUTH_OTP_PEPPER=<new-secret-at-least-32-characters>
MASANAWA_GEMINI_API_KEY=<server-key>
MASANAWA_PRODUCT_SCOPE=masana-lite
```

Leave retired Alpha, MB/GB, MSNW and paid-Status flags disabled. The pilot preflight now permits the separately implemented **NGN Calls**, **NGN Buy Data** and **publisher-only news** paths when explicitly configured and qualified. For NGN Calls, use `MASANAWA_NGN_CALLS_ENABLED=true` plus a private review secret of at least 32 characters, real Gemini credentials and an approved live relay. For Buy Data, set both NGN data flags, an operator-reviewed approvals JSON array, Flutterwave billing and its complete webhook/provider/action credentials, with `MASANAWA_FLUTTERWAVE_VERIFY_ON_START=true`. Gateway startup independently rejects incomplete provider, DB, ledger or session prerequisites. For news, set `MASANAWA_NEWS_INGEST_ENABLED=true` only after validating publisher feed access, the approved sources and worker logs. No source flag itself proves live-provider qualification. OTP delivery additionally needs a real `RESEND_API_KEY` and verified `MASANAWA_AUTH_EMAIL_FROM`, or reviewed SMS provider credentials. `MASANAWA_WEB_ALLOWED_ORIGINS` is an exact HTTPS origin allowlist: no `*`, HTTP, subpaths or duplicate entries. Flutter mobile uses the same Gateway without a browser Origin.

`compose.env` must include **both** exact-commit images (`MASANAWA_GATEWAY_IMAGE` and `MASANAWA_WORKER_IMAGE`) produced by the DigitalOcean CI workflow. On the $12/2-GB pilot, the steady-state container limits total 1,760 MiB before host overhead; inspect OOM and PostgreSQL pressure and reduce workload before increasing concurrency.

Generate a fresh tenant UUIDv7 **once**, in a trusted local checkout with dependencies installed:

```sh
corepack pnpm --dir packages/contracts exec node --input-type=module -e 'import {v7} from "uuid"; console.log("tenant_"+v7())'
```

Persist the generated identity and reuse it for redeploys. Normal Gateway startup inserts only this tenant if absent and initializes canonical policy, but does not mint Alpha dev identities. Never recalculate it per container start.

### Step 2 — dry run and start privately

From this directory in a checkout of the **exact deployed Git commit**:

```sh
node preflight.mjs /etc/masanawa/compose.env /etc/masanawa/runtime.env
docker compose --env-file /etc/masanawa/compose.env -f compose.yaml config --quiet
docker compose --env-file /etc/masanawa/compose.env -f compose.yaml --profile worker pull postgres gateway worker
docker compose --env-file /etc/masanawa/compose.env -f compose.yaml --profile worker up -d --no-build postgres migrate gateway worker
curl --fail http://127.0.0.1:3100/healthz
curl --fail http://127.0.0.1:3100/readyz
```

The `worker` profile runs canonical pending-turn recovery and the verified account-deletion worker; it runs publisher ingestion only when the reviewed news flag is enabled. Lite-mode filtering stops old P2P, MSNW and paid-Status jobs. Check `/readyz` on the worker's private Docker network and its scheduler health before claiming deletion or news is operational. `--profile public` starts the Caddy HTTP/HTTPS listener *only* when DNS, Cloudflare proxy mode, certificates, origin firewall and user-client settings are ready. The Gateway loopback port **must not** be opened to the internet; PostgreSQL has **no host-published port**. PostgreSQL and worker share the private database network; Caddy has only the edge network. Verify TLS and `https://api.masanawa.com/readyz` before switching client API origin.

Note: a normal migration step is safe to run repeatedly; a failed migration **blocks Gateway start**. Do not bypass it or start Gateway against a partial schema. Verify image digest and logs after pull. The release default uses non-root process UID 1000; the PostgreSQL image retains its own dedicated user.

### Step 3 — release and client parity qualification

1. Verify `/healthz` for liveness, `/readyz` for database/schema readiness, web CORS preflights from each actual Site domain and exact allowed-origin rejection. Do not allow credentialed wildcard CORS.
2. Confirm one PostgreSQL tenant/session: authenticate user A on Flutter and on web; repeat user B, logout, refresh, account switch, old requests, history/cursor and stream reconnect. Web BFF `GET /api/account` must read canonical `GET /auth/session`, never trust a display-name cookie; the response must be private/no-store, and guest D1/IndexedDB identity must not authorize account data. This remains an **open** acceptance requirement until the Site and both clients pass real checks.
3. Verify both Flutter `API_BASE_URL` and `AGENT_BASE_URL` are the exact HTTPS Gateway origin (their source default is the intended `https://api.masanawa.com`); web bundles must use an approved configurable target and never embed a provider key.
4. Reconcile new NGN account, transaction, Buy Data, billed reply, connected-second calls and voice/model provider tests **before enabling any real-money flag**. The first-source release deliberately leaves these disabled. All 189 web items remain tied to their original Site checklist IDs and receipts.
5. Web/mobile share one canonical authenticated Gateway. Publisher RSS import writes canonical PostgreSQL article metadata; the separate Cloudflare news gateway is optional and must not be mistaken for a second authenticated account store. Confirm `news_ingest.batch` contains successful provider checks and imported rows before declaring publisher auto-publish ready. A live homepage alone is not evidence of ongoing ingestion.

### Backups, restore and security before live users

- Configure `age` with an **offline/private identity kept away from the Droplet**; the host receives **only the public age recipient**. Configure `rclone` for a private off-host R2/S3-compatible bucket with scoped write/read permissions. Never back up solely onto `postgres_data`, never commit `rclone.conf`, credentials or recovery identities. Storage requests may exceed free allowances.
- Schedule `backup.sh` via a reviewed systemd timer/cron **after** one manual encrypted upload succeeds; supply `MASANAWA_BACKUP_AGE_RECIPIENT` and `MASANAWA_BACKUP_REMOTE` securely in the timer's protected environment. The script streams a consistent custom-format `pg_dump` into `age`, then uploads encrypted ciphertext directly to the remote with `rclone rcat`. Do **not** treat an upload success as tested recoverability.
- **Restore drill**: on a separate empty staging database, download an encrypted backup (`rclone cat`), decrypt with the offline age private identity in a trusted recovery environment, verify PostgreSQL 18 + pgvector availability, `pg_restore --list`, then restore into **only that disposable DB** and run smoke/invariant tests. Do not decrypt on a public droplet or run `pg_restore --clean` against an active production volume. Record successful date, size, test identities and agreed RPO/RTO. Repeat after schema changes and before public financial launch.
- Monitor host memory/CPU/disk, Docker restarts/OOM, Postgres disk/connection capacity, gateway error rates/p95 latency, backup age, cron freshness, Geminis costs and ledger/provider reconciliation. Restrict logs to redacted operational data. A $12 pilot is not sufficient for unbounded media/AI workloads.

### Rollback and planned resize

1. Before an upgrade, obtain a **verified off-host encrypted backup**, pin the current app image digest, and take a separate DigitalOcean snapshot if affordable. A snapshot is optional/extra cost, not a replacement for logical backups.
2. Stop writes or schedule downtime; a Droplet CPU/RAM-only resize requires an interruption, but preserves the disk size (no irreversible expansion). Record current and target resource limits before changing them.
3. Restart on the same API hostname, verify `/readyz`, two-client sign-in/history, Gateway logs, database schema and scheduled jobs. Roll back app image to an **already compatible** prior revision only; a database migration may be forward-only and cannot safely be undone with a blind image tag rollback.
4. If schema compatibility fails, restore to a new tested environment using the written recovery drill and deliberately cut DNS after verification. Preserve all real user financial records once any users exist.

### Test/release evidence checklist

- [ ] CI Compose normalization and Gateway+worker container image builds at the exact SHA.
- [ ] Mode-0600 preflight, hostile config unit tests and deployment secrets review.
- [ ] Private Gateway/PostgreSQL boot and **real** migration/readiness checks on a disposable host.
- [ ] Public Caddy TLS, Cloudflare strict-origin configuration and Origin allowlist test.
- [ ] Two-account Flutter+web auth, history, memory and NGN non-duplication tests.
- [ ] Fresh private off-host encrypted backup and successful staging restore.
- [ ] 189-item Site checklist fully evidenced and two-device/mobile/desktop acceptance.
- [ ] Independently qualified biller/deposit/Gemini Live/news worker before switches change.

**If the DigitalOcean account or payment authorization is not available, stop at source+CI checks. Do not state that a Droplet, DNS cutover, paid service or production deployment has been performed.**
