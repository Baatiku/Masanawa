#!/usr/bin/env bash
set -euo pipefail

# Development-only, unprivileged toolchain for Higgsfield's Debian 12 sandbox.
# Never point these commands at a production database or import customer data.
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
TOOL_DIR="${MASANAWA_HF_TOOL_DIR:-/home/user/masanawa-toolchains}"
STATE_DIR="${MASANAWA_HF_STATE_DIR:-/home/user/masanawa-state}"
NODE_VERSION="v24.22.2"
NODE_DIR="$TOOL_DIR/node-$NODE_VERSION-linux-x64"
PG_ROOT="$TOOL_DIR/postgres18/root"
PG_PACKAGES="$TOOL_DIR/postgres18/pkg"
PG_BIN="$PG_ROOT/usr/lib/postgresql/18/bin"
PG_SHARED="$PG_ROOT/usr/share/postgresql/18"

source /etc/os-release
if [[ "$ID" != debian || "$VERSION_ID" != 12 || "$(uname -m)" != x86_64 ]]; then
  printf 'This staging toolchain requires Debian 12 x86_64.\n' >&2
  exit 1
fi

mkdir -p "$TOOL_DIR" "$STATE_DIR" "$PG_PACKAGES" "$PG_ROOT"

if [[ ! -x "$NODE_DIR/bin/node" ]]; then
  curl --fail --location --silent --show-error --retry 2 \
    "https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz" \
    --output "$TOOL_DIR/node24.tar.xz"
  tar -xJf "$TOOL_DIR/node24.tar.xz" -C "$TOOL_DIR"
fi
export PATH="$NODE_DIR/bin:$PATH"
corepack enable --install-directory "$NODE_DIR/bin"
corepack prepare pnpm@12.8.2 --activate

download_deb() {
  local filename="$1" url="$2"
  if [[ ! -s "$PG_PACKAGES/$filename" ]]; then
    curl --fail --location --silent --show-error --retry 2 \
      "$url" --output "$PG_PACKAGES/$filename"
  fi
  dpkg-deb -x "$PG_PACKAGES/$filename" "$PG_ROOT"
}

PGDG="https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18"
download_deb server.deb "$PGDG/postgresql-18_18.6-3.pgdg12%2B1_amd64.deb"
download_deb client.deb "$PGDG/postgresql-client-18_18.6-3.pgdg12%2B1_amd64.deb"
download_deb libpq.deb "$PGDG/libpq5_18.6-3.pgdg12%2B1_amd64.deb"
download_deb liburing.deb \
  'https://deb.debian.org/debian/pool/main/libu/liburing/liburing2_2.3-3_amd64.deb'
download_deb vector.deb \
  'https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg12%2B1_amd64.deb'

export LD_LIBRARY_PATH="$PG_ROOT/usr/lib/x86_64-linux-gnu${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
if [[ ! -f "$STATE_DIR/pgdata/PG_VERSION" ]]; then
  "$PG_BIN/initdb" -D "$STATE_DIR/pgdata" --username=masanawa \
    --auth-local=trust --auth-host=trust --no-instructions -L "$PG_SHARED"
fi

cd "$ROOT_DIR"
pnpm install --frozen-lockfile
pnpm --filter @masanawa/gateway-service... build
pnpm --filter @masanawa/worker-service... build

printf '\nHiggsfield staging toolchain ready. Start PostgreSQL using serve.sh postgres.\n'
