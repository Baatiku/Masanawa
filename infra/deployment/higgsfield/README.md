# Higgsfield temporary Masanawa staging

This is a **live, Docker-free staging experiment**, **not** a production host.
It uses the public Masanawa source, an isolated new PostgreSQL 18 database,
short RSS publisher previews, and a temporary Cloudflare Quick Tunnel.
Never import customer, WhatsApp, or financial data; never inject production
provider secrets into this environment. It does not qualify Gemini chat/calls,
financial processing, mobile sign-in delivery, or physical-device acceptance.

The Higgsfield sandbox is Debian 12 x86_64, 2 cores, 8 GiB RAM and ships with
Node 22. The Masanawa monorepo needs Node 24 and pnpm 12. The scripts download
Node 24, unpack official PostgreSQL 18 packages and pgvector into the user-owned
workspace, and build the Gateway and Worker. PostgreSQL binds **127.0.0.1 only**
on port **55432**, with staging-only local trust authentication. Never expose it.

## Sandbox steps

In the Higgsfield `sandbox_exec` surface, use one call per step. The repository
must be checked out under `/home/user/masanawa-staging` before starting:

```bash
git clone --depth 1 --filter=blob:none --sparse \
  https://github.com/Baatiku/Masanawa.git /home/user/masanawa-staging
cd /home/user/masanawa-staging
git sparse-checkout set infra config docs adapters apps services packages database contracts scripts
bash infra/deployment/higgsfield/setup.sh
```

Then run these in order, using `sandbox_exec` **background:true** for the
long-running `postgres`, `gateway`, `worker`, and `tunnel` commands:

```bash
cd /home/user/masanawa-staging
bash infra/deployment/higgsfield/serve.sh postgres
```

In a separate normal foreground call, after PostgreSQL is listening:

```bash
cd /home/user/masanawa-staging
bash infra/deployment/higgsfield/serve.sh migrate
```

Then launch the Gateway and Worker separately, each with **background:true**:

```bash
cd /home/user/masanawa-staging
bash infra/deployment/higgsfield/serve.sh gateway
```

```bash
cd /home/user/masanawa-staging
bash infra/deployment/higgsfield/serve.sh worker
```

The Worker enrolls seven fixed publisher RSS sources and ingests due articles.
Check both `/readyz` endpoints and per-publisher article counts:

```bash
cd /home/user/masanawa-staging
bash infra/deployment/higgsfield/serve.sh check
```

For a temporary public HTTPS route, launch `serve.sh tunnel` as a separate
**background:true** call. Read the resulting `https://...trycloudflare.com`
URL from its log. Quick Tunnels do **not** offer stable DNS or uptime.

```bash
cd /home/user/masanawa-staging
bash infra/deployment/higgsfield/serve.sh tunnel
```

Finally, run a real authenticated API smoke test. It creates only a synthetic
staging user and briefly issues/revokes an access session. Never print or share
bearer tokens. Supply the actual temporary tunnel URL to verify external HTTPS:

```bash
cd /home/user/masanawa-staging
MASANAWA_HF_PUBLIC_URL=https://YOUR-TEMPORARY-HOST.trycloudflare.com \
  /home/user/masanawa-toolchains/node-v24.22.2-linux-x64/bin/node \
  --conditions=production infra/deployment/higgsfield/smoke.mjs
```

## What survives, and what does not

- Repository files, installed user-space tools, PostgreSQL data, and staging
  configuration reside beneath `/home/user`, which Higgsfield's current Modal
  sandbox preserves across some replacements. This is **not a database durability
  guarantee** or independent backup.
- `sandbox_exec` background execution is limited to about **15 minutes**.
  PostgreSQL, the Gateway, Worker and tunnel can terminate when the lease ends
  or the sandbox is replaced. Restart the foreground/background sequence after
  each interruption; no always-on guarantee is implied.
- The published Quick Tunnel URL is randomly generated and changes on restart.
  Do not set the Android production API URL or production DNS to it.
- Without a real *development* Gemini key, the Gateway starts with an intentionally
  invalid placeholder credential for **news-only** testing. AI inference and
  calls will fail if attempted. Set `MASANAWA_HF_GEMINI_API_KEY` only from a
  trusted development secret source if testing those paths later.
- Do not run customer-data migrations, financial callbacks, payment-provider
  dispatches, SMS/email onboarding, or WhatsApp customer sessions here.

To promote beyond staging, use a real long-running host with external persistent
storage and an actual named HTTPS endpoint. The staging setup is intentionally
isolated from Railway and production balances.
