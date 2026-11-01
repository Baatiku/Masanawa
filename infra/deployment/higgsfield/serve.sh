#!/usr/bin/env bash
set -euo pipefail

# Run one subcommand per Higgsfield sandbox_exec call. For postgres, gateway,
# worker, and tunnel use sandbox_exec background:true (15-minute maximum lease).
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
TOOL_DIR="${MASANAWA_HF_TOOL_DIR:-/home/user/masanawa-toolchains}"
STATE_DIR="${MASANAWA_HF_STATE_DIR:-/home/user/masanawa-state}"
NODE_DIR="$TOOL_DIR/node-v24.22.2-linux-x64"
PG_ROOT="$TOOL_DIR/postgres18/root"
PG_BIN="$PG_ROOT/usr/lib/postgresql/18/bin"
DATABASE_URL='postgresql://masanawa@127.0.0.1:55432/masanawa_staging'
STAGING_TENANT='tenant_01a19863-4871-74c6-a499-43b4520f6110'

export PATH="$NODE_DIR/bin:$PATH"
export LD_LIBRARY_PATH="$PG_ROOT/usr/lib/x86_64-linux-gnu${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export MASANAWA_DATABASE_URL="$DATABASE_URL"
export MASANAWA_PLATFORM_TENANT_ID="$STAGING_TENANT"
export NODE_ENV=development

if [[ ! -f "$STATE_DIR/pgdata/PG_VERSION" || ! -x "$NODE_DIR/bin/node" ]]; then
  printf 'First run bash infra/deployment/higgsfield/setup.sh.\n' >&2
  exit 1
fi

case "${1:-}" in
  postgres)
    # Loopback-only and development authentication; NEVER expose this port.
    exec "$PG_BIN/postgres" -D "$STATE_DIR/pgdata" -h 127.0.0.1 \
      -p 55432 -k "$STATE_DIR" -c max_connections=30 \
      -c shared_buffers=64MB -c fsync=on
    ;;
  migrate)
    if [[ "$("$PG_BIN/psql" -h 127.0.0.1 -p 55432 -U masanawa -d postgres \
      -Atqc "SELECT 1 FROM pg_database WHERE datname='masanawa_staging'")" != 1 ]]; then
      "$PG_BIN/createdb" -h 127.0.0.1 -p 55432 -U masanawa masanawa_staging
    fi
    "$PG_BIN/psql" -h 127.0.0.1 -p 55432 -U masanawa -d masanawa_staging \
      -v ON_ERROR_STOP=1 -c 'CREATE EXTENSION IF NOT EXISTS vector;'
    cd "$ROOT_DIR"
    pnpm --filter @masanawa/gateway-service migrate
    ;;
  gateway)
    umask 077
    if [[ ! -s "$STATE_DIR/otp-pepper" ]]; then
      openssl rand -hex 32 -out "$STATE_DIR/otp-pepper"
    fi
    export MASANAWA_AUTH_OTP_PEPPER="$(< "$STATE_DIR/otp-pepper")"
    # Intentional invalid key permits news/API staging without exposing a real
    # AI provider credential. Chat/call inference is NOT qualified by this test.
    export MASANAWA_GEMINI_API_KEY="${MASANAWA_HF_GEMINI_API_KEY:-hf-staging-inert-not-a-real-key}"
    export MASANAWA_GATEWAY_HOST=127.0.0.1 MASANAWA_GATEWAY_PORT=3000
    cd "$ROOT_DIR"
    exec pnpm --filter @masanawa/gateway-service start
    ;;
  worker)
    export MASANAWA_WORKER_HOST=127.0.0.1 MASANAWA_WORKER_PORT=3001
    export MASANAWA_NEWS_INGEST_ENABLED=true
    cd "$ROOT_DIR"
    exec pnpm --filter @masanawa/worker-service start
    ;;
  tunnel)
    if [[ ! -x "$TOOL_DIR/cloudflared" ]]; then
      curl --fail --location --silent --show-error --retry 2 \
        'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64' \
        --output "$TOOL_DIR/cloudflared"
      chmod 755 "$TOOL_DIR/cloudflared"
    fi
    exec "$TOOL_DIR/cloudflared" tunnel --no-autoupdate \
      --url http://127.0.0.1:3000
    ;;
  check)
    curl --fail --silent --show-error http://127.0.0.1:3000/readyz
    printf '\n'
    curl --fail --silent --show-error http://127.0.0.1:3001/readyz
    printf '\nPublisher article counts:\n'
    "$PG_BIN/psql" -h 127.0.0.1 -p 55432 -U masanawa \
      -d masanawa_staging -Atqc \
      'SELECT publisher_id,count(*) FROM feed.news_articles GROUP BY publisher_id ORDER BY publisher_id;'
    ;;
  *)
    printf 'Usage: %s {postgres|migrate|gateway|worker|tunnel|check}\n' "$0" >&2
    exit 2
    ;;
esac
