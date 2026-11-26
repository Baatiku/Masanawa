# ChatMeUp migration — 26 November 2026

Owner scope: existing web application and supporting Gateway configuration only.
No Android build, independent News/Knowledge edits, data migration, new droplet,
plan change or storage rename is authorized or performed.

## Evidence

- Backend baseline: 0bce1db2ce7b31c51c1135e770d97c6f3fc3f7a7.
- Full reference inventory: reference-audit.json (file/line/classification; no secrets).
- Existing outbound deploy agent invokes deploy-whatsapp-live.sh after exact main
  Foundation and DigitalOcean checks. That installer recreates Gateway/Ops/Worker
  and browser calling services; this is more disruptive than a proxy-only migration.
  Do not trigger it solely to add a hostname.
- Local executor has no SSH key or injected Cloudflare credentials.
- Google public DNS: chatmeup.online NS = frida.ns.cloudflare.com and
  piotr.ns.cloudflare.com. app/api records return NXDOMAIN on 26 November.
- HTTPS probes from executor report proxy 403; this does not prove origin failure.

## Implemented, verification pending

- Optional MASANAWA_API_ADDITIONAL_HOSTS permits new and old Caddy routing together.
- Private API/auth routes explicitly emit private, no-store.
- Existing internal names, database, volumes, R2 and mobile API hostname retained.

## Pending

Caddy validation; protected host configuration and reload; DNS record activation;
SSL and independent public probes; exact-head CI and PR; real feature acceptance.
No production deployment is claimed.

## Local validation

Caddy 2.10 validates with and without additional hostname. Compose normalization
passes. Eight preflight tests and private-env migration preservation test pass.
No application runtime or database schema change is included.

## Existing Droplet console cutover (after exact-head checks and merged SHA)

Run as root on masanawa-pilot-lon1. Download only the three files below from the
verified merged commit into a private staging directory. Never paste credentials.
The existing deployment-agent installer is not used for this proxy-only change.

```sh
umask 077
stage=$(mktemp -d /etc/masanawa/chatmeup-stage-XXXXXXXX)
# Set release_sha to the verified merged 40-character commit, recorded in this PR.
for file in Caddyfile migrate-chatmeup.py; do
  curl --fail --proto '=https' --tlsv1.2 "https://raw.githubusercontent.com/Baatiku/Masanawa/$release_sha/infra/deployment/digitalocean/$file" -o "$stage/$file"
done
free -m
df -h / /var/lib/docker
docker stats --no-stream
docker system df
docker exec masanawa-postgres-1 pg_isready
cp -p /opt/masanawa/current/Caddyfile "$stage/Caddyfile.before"
python3 "$stage/migrate-chatmeup.py"
# Save the private rollback directory printed above.
```

Before reloading, merge the new `MASANAWA_API_ADDITIONAL_HOSTS` environment entry
from the reviewed compose.yaml into the *existing* proxy service, preserving
production overrides. Set it from compose.env. Validate Compose `config --quiet`.
Do not replace live Compose wholesale or run `docker compose down`.

```sh
install -m 600 "$stage/Caddyfile" /opt/masanawa/current/Caddyfile
# An exec override lets validation/reload add the hostname without restarting proxy.
docker exec -e MASANAWA_API_ADDITIONAL_HOSTS=api.chatmeup.online masanawa-proxy-1 caddy validate --config /etc/caddy/Caddyfile
docker exec -e MASANAWA_API_ADDITIONAL_HOSTS=api.chatmeup.online masanawa-proxy-1 caddy reload --config /etc/caddy/Caddyfile
```

Inspect actual proxy container/mount first; if it uses another name or path,
adapt the command to that verified mount. Updating a bind-mounted file in place
may be required if its original inode is pinned. Validate again inside the
container before reload. Caddy ACME needs public api DNS and ports 80/443.

Recreate Gateway and Ops only if necessary to apply their changed env_file,
using the existing Compose files, project name and every current override:
`docker compose -p masanawa --env-file /etc/masanawa/compose.env -f
/opt/masanawa/current/compose.yaml --profile ops up -d --no-build --no-deps gateway ops`.
Verify real effective compose command before executing; preserve worker/browser
and all image references. These services need a short restart for changed env.
Do not recreate PostgreSQL, Worker, browser calls, proxy or volumes.

```sh
curl --fail --resolve api.chatmeup.online:443:68.183.46.65 https://api.chatmeup.online/healthz
curl --fail --resolve api.chatmeup.online:443:68.183.46.65 https://api.chatmeup.online/readyz
curl --fail --resolve api.masanawa.com:443:68.183.46.65 https://api.masanawa.com/readyz
curl --fail https://api.chatmeup.online/readyz
```

Record HTTP status, x-masanawa-release, cert issuer/expiry, Docker health/OOM,
free RAM/disk and private runtime diff key names only. Verify CORS preflight from
https://app.chatmeup.online and rejection from an unrelated origin. Preserve all
existing callback/provider URLs until each external provider is updated through
its own account dashboard. Do not change independent News/Knowledge domains.

Rollback: restore compose.env/runtime.env from the printed private checkpoint,
restore Caddyfile.before, validate then reload Caddy, and recreate only the same
Gateway/Ops with original images and overrides. Keep DNS until rollback health
passes. No SQL rollback, volume deletion or R2 cleanup is involved.

## Connected web consumers follow-up

The source audit also identifies civic reconciliation/evidence fetching and
WhatsApp service replies that target the old web hostname. The coordinated map is:
packages/contracts/src/config.ts (validated publicWebOrigin with existing config
exports); Gateway civic_person_registry and web_civic_knowledge; account email
renderer/default URL; WhatsApp Worker web links; corresponding registry, evidence,
email, WhatsApp and config regression tests; private environment migration tool.
MASANAWA_WEB_BASE_URL is the environment override. Explicit legacy HTTPS origins
remain supported. No canonical persona binding, PostgreSQL migration, stored
WhatsApp credential, speech pipeline, pricing, independent News/Knowledge domain
or mobile source is changed. Account email function/asset identifiers remain
stable; displayed identity and web entry point become ChatMeUp. The existing
support mailbox is retained pending separately verified mail-domain setup.

This follow-up changes runtime code and therefore needs a normal exact-green
backend image release through the existing deploy-agent, separately from the
Caddy console cutover. Do not call a merged source commit a deployed release.

Connected consumer local verification: 37 targeted civic-registry/evidence,
account-email, WhatsApp and public-origin tests PASS; root and workspace
TypeScript checks PASS; workspace build PASS; private-env preservation test PASS.
No Android build was run. Next.js generated configuration edits were excluded.
The existing release request currently points at e80946d135a2c9186a57fe7a1a180fc7daa59e49
(request civic-registration-readiness-20261125-e80946d1-v1); preserve that branch
until a new merged release has both required main workflows green.

Hosted first-pass repair: a legacy auth test asserted the former email subject;
it now asserts ChatMeUp. Existing mobile/API fallback origins are retained;
production uses MASANAWA_AUTH_PUBLIC_BASE_URL and MASANAWA_PUBLIC_BASE_URL set by
the reviewed migration. The web origin alone changes by default. No change to
Gateway bootstrap/main.ts is required, so that unnecessary edit was removed.

The final inventory is case-insensitive and includes MASANAWA environment and
service identifiers. reference-audit.json now covers both exact original repository
baselines, with repository/path/line and the five owner classes: 1 public copy,
2 web URLs, 3 retained internals (including excluded Android), 4 shared-compatible
services and 5 independent News/Knowledge. It records 6,579 reference lines across
both repositories without copying source text or private values. Decisions are
conservative; historical documentation and attribution are not globally replaced.

Final connected consumer repair matrix: 62 tests in six files PASS; all eleven
preflight/release-origin/deposit-reconciliation contracts PASS; root/workspace
TypeScript PASS; Gateway and Worker dependency builds PASS; private migration
preservation test PASS. Hosted exact-head checks must still pass after repair.

Final customer-copy map also covers the shared platform guide/persona identity
sentence, emergency intake product identity, security/deletion notices, browser
push title and civic evidence attribution. Only product-name text changes;
pronunciation, ringing, Gemini audio flow, persona IDs/constitutions, provider
permissions and caller memory remain unchanged. Historical persona records are
not rewritten; the current platform guide explicitly identifies ChatMeUp and
preserves independent Masanawa News/Knowledge names.

Complete active customer-copy validation: 87 tests in nine files PASS, including
persona instructions, emergency intake, account security/deletion, civic readers,
email rendering and WhatsApp guidance; root/workspace typechecks and Gateway/
Worker builds PASS. No voice/accent/ringing logic or immutable persona record was
changed. The runtime template remains deliberately non-runnable and now documents
the web-origin variable; the active runbook explicitly points to ChatMeUp cutover.

The normal pinned release installer now applies the tested --web-only migration
after its private checkpoint and before replacing services. It sets the web
origin/allowlist and migrates only legacy app/web billing-return hosts, preserving
paths, queries and all external callbacks. API base URLs remain unchanged until
the validated proxy cutover. Configuration is restored on any preflight failure,
without restarting healthy services. All 32 deployment Python tests and 11 Node
configuration contracts PASS; installer shell syntax PASS. Provider dashboards
still need callback verification after API TLS: Billstack
https://api.chatmeup.online/webhooks/billstack/gb and Flutterwave
https://api.chatmeup.online/v1/webhooks/flutterwave. Never enable a financial flag
or overwrite a shared external callback merely to complete this migration.

Release preservation refinement: the existing WhatsApp installer also activates
call/browser flags and grants billing capabilities. Those actions are outside a
rebranding-only release. The unchanged installed agent schema is reused, but the
pinned installer dispatches authenticated `chatmeup-web-*` requests (matching its
private running receipt and SHA) to deploy-chatmeup.sh. Other releases retain
their existing installer behavior. The migration installer preserves flags,
grants, limits and the browser-call image/service; it pulls only Gateway/Ops/
Worker, verifies a database dump, applies canonical migrations, checks readiness
and the running release header, and saves rollback configuration/images. It never
builds on the Droplet, changes a price/grant, starts a new service, or deletes data.
