# Masanawa Gateway independent-host standby

This is **deployment source**, not a running failover. It reuses the canonical
Node 24 Gateway Dockerfile but avoids the Railway-specific startup script that
automatically runs migrations and launches the cohosted Python LiveKit agent.
It deliberately does not automatically transfer traffic or activate financial
jobs. Launch only after the authoritative data store, credentials and effects
have been reviewed.

## Why Higgsfield is the build/test workspace, not production

Higgsfield `sandbox_exec` gives us a useful Linux environment for executing
bounded builds, tests and diagnostics, but background commands are capped at
15 minutes. E2B can pause processes; Modal replaces running processes when
recycling the sandbox. There is no production contract for a public, persistent,
stable ingress. Repeated keepalive jobs, tunnels or cron restarts do not create
high availability. Higgsfield-hosted websites deploy a different Cloudflare
Worker/TanStack runtime, not this Fastify + Python LiveKit + Postgres process.

Use Higgsfield to *validate the pinned GitHub SHA*, never as an owner of
private user records, payment secrets, persistent storage or public production
traffic. No production secrets or database dumps enter the sandbox.

## Deployment prerequisites

1. Use a separate always-on host with Docker Compose, public HTTPS proxy and
   adequate memory (at least 2 GiB recommended as a starting point; load-test
   before sizing for production). Do not repurpose the existing low-RAM
   `masanawa-relay-bridge` or `masanawa-financial-relay` servers.
2. Verify whether PostgreSQL itself is hosted inside Railway. A new Gateway
   without a reachable authoritative Postgres does **not** restore Masanawa.
   If using a restored copy, independently validate encrypted backup, restore,
   migrations, schema hashes, message/outbox cursors, ledger invariants and
   writer election. Never enable two independent financial writers.
3. Inject production secrets from the owner's independent secret manager to a
   restricted external file (mode 0600). Set
   `MASANAWA_STANDBY_ENV_FILE=/absolute/path/outside/repository`. Use
   canonical `MASANAWA_DATABASE_URL` and other variables from
   `config/production-env.json`. Do not copy values into Git, ChatGPT or
   Higgsfield.
4. Verify current source SHA, image provenance, object storage and LiveKit,
   provider callbacks, fixed-egress financial relays, auth signing keys, push,
   worker scheduler, rate limits, logs, TLS and external DNS. This Compose
   starts **only the Gateway**. It does not replace presence/worker services.
   Silence payment/settlement/webhook/queue effects until the one true writer
   and provider idempotency state are explicitly qualified.

## Manual operating sequence

From a pinned checkout on the independent host:

```sh
export MASANAWA_STANDBY_ENV_FILE=/etc/masanawa/gateway-standby.env
docker compose -f infra/deployment/standby/compose.yaml config --quiet
# ONLY once canonical DB and effect fencing have been reviewed and approved:
docker compose -f infra/deployment/standby/compose.yaml up --build -d
docker compose -f infra/deployment/standby/compose.yaml ps
```

The container binds **only to 127.0.0.1:3100** on the host. Configure a
separate HTTPS reverse proxy with a stable private operator test hostname.
This container does **not** run migrations: a database operator must separately
complete version/SHA-pinned, backup-verified migration steps when needed.
Do not switch the app's production URL or provider webhooks during smoke tests.

From the Higgsfield workspace (or other independent runner), run a strictly
read-only preflight against HTTPS endpoints:

```sh
MASANAWA_PRIMARY_GATEWAY_URL=https://YOUR_EXISTING_GATEWAY_HOST \
MASANAWA_STANDBY_GATEWAY_URL=https://YOUR_STANDBY_TEST_HOST \
node scripts/reliability/failover-preflight.mjs
```

The report contains only readiness/auth-discovery statuses. Even a
`candidate_healthy_manual_data_and_provider_approval_required` result is
**not permission to fail over**; it cannot establish database authority,
financial reconciliation, external providers, recovery-point age, or real
handset acceptance. Separately use the existing authenticated read-only smoke
script with a test account through the owner's secure host, followed by mobile
login/chat/voice/call verification and provider-specific rehearsals.

## Promotion and rollback

After backup, schema, identity/session continuity, outbox and financial writer
fencing, and device/provider gates are satisfied, an authorized operator can
redirect the **existing stable API hostname** from the primary to the standby
with TLS and DNS/proxy health observation. Do not hard-code a new public URL in
an APK. Re-register only callbacks whose URLs actually change and separately
verify signatures and readback. During ambiguous financial operations, recover
the original transaction identifier; do not replay debits or escrow releases.

Rollback only after reconciling writer authority and records, and proving the
original service's `/readyz` and auth-discovery paths. Otherwise leave the
application in a clear degraded/offline state. No automated DNS switching or
production rollout is enabled by this commit.
