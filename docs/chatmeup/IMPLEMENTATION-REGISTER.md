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
