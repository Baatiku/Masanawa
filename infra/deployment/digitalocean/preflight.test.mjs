import assert from "node:assert/strict";
import { mkdtempSync, writeFileSync, chmodSync, rmSync } from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";
import { test } from "node:test";
import { parseEnvFile, runPreflight, validatePilotConfig } from "./preflight.mjs";

function goodConfig() {
  const secret = "a-unique-secret-with-adequate-entropy-123456";
  return {
    compose: new Map(Object.entries({
      MASANAWA_RUNTIME_ENV_FILE: "/etc/masanawa/runtime.env",
      POSTGRES_DB: "masanawa", POSTGRES_USER: "masanawa", POSTGRES_PASSWORD: secret,
      MASANAWA_GATEWAY_IMAGE: `ghcr.io/baatiku/masanawa-do-pilot-gateway:${"a".repeat(40)}`,
      MASANAWA_WORKER_IMAGE: `ghcr.io/baatiku/masanawa-do-pilot-worker:${"a".repeat(40)}`,
      MASANAWA_OPS_IMAGE: `ghcr.io/baatiku/masanawa-do-pilot-ops:${"a".repeat(40)}`,
      MASANAWA_API_HOST: "api.masanawa.com",
    })),
    runtime: new Map(Object.entries({
      MASANAWA_DATABASE_URL: `postgres://masanawa:${secret}@postgres:5432/masanawa`,
      MASANAWA_PUBLIC_BASE_URL: "https://api.masanawa.com",
      MASANAWA_AUTH_PUBLIC_BASE_URL: "https://api.masanawa.com",
      MASANAWA_PLATFORM_TENANT_ID: "tenant_019b5040-1234-7000-8000-000000000000",
      MASANAWA_AUTH_OTP_PEPPER: "a-long-auth-pepper-with-minimum-entropy",
      MASANAWA_GEMINI_API_KEY: "example-only-provider-token",
      MASANAWA_WEB_ALLOWED_ORIGINS: "https://web.masanawa.com,https://masanawa-civic-directory.shrewdmural8.chatgpt.site",
      MASANAWA_PRODUCT_SCOPE: "masana-lite",
      MASANAWA_ALPHA_ENABLED: "false",
      MASANAWA_MB_REPLIES_ENABLED: "false",
      MASANAWA_MB_CALLS_ENABLED: "false",
      MASANAWA_NGN_CALLS_ENABLED: "false",
      MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED: "false",
      FLUTTERWAVE_BILLS_ENABLED: "false",
      MASANAWA_GB_DATA_PURCHASE_ENABLED: "false",
      MASANAWA_NEWS_INGEST_ENABLED: "false",
      MASANAWA_STATUS_PROMOTIONS_ENABLED: "false",
      MASANAWA_STATUS_TIPS_ENABLED: "false",
    })),
  };
}

test("pilot schema validates one canonical Postgres, HTTPS API, pinned image and inactive financial flags", () => {
  const { compose, runtime } = goodConfig();
  assert.deepEqual(validatePilotConfig(compose, runtime), {
    apiOrigin: "https://api.masanawa.com", imagePinned: true, workerDisabledByDefault: true,
    qualifiedFeatures: { ngnCalls: false, ngnCatalog: false, ngnData: false, flutterwave: false, news: false },
  });
});

test("never admits placeholders, cross-linked databases, permissive CORS or early real-money switches", () => {
  for (const [scope, key, value] of [
    ["compose", "MASANAWA_API_HOST", "not-configured.invalid"],
    ["compose", "POSTGRES_PASSWORD", "short"],
    ["compose", "MASANAWA_GATEWAY_IMAGE", "masanawa-gateway:latest"],
    ["compose", "MASANAWA_WORKER_IMAGE", "masanawa-worker:latest"],
    ["compose", "MASANAWA_OPS_IMAGE", "masanawa-ops:latest"],
    ["compose", "MASANAWA_RUNTIME_ENV_FILE", ".env.example"],
    ["runtime", "MASANAWA_DATABASE_URL", "postgres://masanawa:wrong@postgres:5432/masanawa"],
    ["runtime", "MASANAWA_PUBLIC_BASE_URL", "https://other.example.org"],
    ["runtime", "MASANAWA_WEB_ALLOWED_ORIGINS", "*"],
    ["runtime", "MASANAWA_WEB_ALLOWED_ORIGINS", "http://web.masanawa.com"],
    ["runtime", "MASANAWA_NGN_CALLS_ENABLED", "true"],
    ["runtime", "MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED", "true"],
    ["runtime", "MASANAWA_AUTH_OTP_PEPPER", "weak"],
    ["runtime", "MASANAWA_PLATFORM_TENANT_ID", "tenant_invalid"],
    ["runtime", "MASANAWA_GEMINI_API_KEY", ""],
    ["runtime", "MASANAWA_PRODUCT_SCOPE", "legacy"],
  ]) {
    const { compose, runtime } = goodConfig();
    (scope === "compose" ? compose : runtime).set(key, value);
    assert.throws(() => validatePilotConfig(compose, runtime), /digitalocean\./u, `${scope}.${key}`);
  }
});

test("approved new NGN calls and publisher-only news can run on the pilot without reviving legacy switches", () => {
  const { compose, runtime } = goodConfig();
  runtime.set("MASANAWA_NGN_CALLS_ENABLED", "true");
  runtime.set("MASANAWA_GB_SEND_REVIEW_SECRET", "ngn-call-review-secret-with-at-least-32-characters");
  runtime.set("MASANAWA_NEWS_INGEST_ENABLED", "true");
  const result = validatePilotConfig(compose, runtime);
  assert.equal(result.workerDisabledByDefault, false);
  assert.equal(result.qualifiedFeatures.ngnCalls, true);
  assert.equal(result.qualifiedFeatures.news, true);
  runtime.set("MASANAWA_MB_CALLS_ENABLED", "true");
  assert.throws(() => validatePilotConfig(compose, runtime), /mb_calls_enabled_must_be_disabled/u);
});

test("live NGN Buy Data can pass preflight only with reviewed mapping and provider startup qualification", () => {
  const { compose, runtime } = goodConfig();
  runtime.set("MASANAWA_NGN_DATA_CATALOG_ENABLED", "true");
  runtime.set("MASANAWA_NGN_DATA_PURCHASE_ENABLED", "true");
  runtime.set("FLUTTERWAVE_BILLS_ENABLED", "true");
  for(const [key,value] of [
    ["MASANAWA_NGN_DATA_APPROVALS_JSON", '[{"id":"operator-reviewed-catalog"}]'],
    ["FLUTTERWAVE_SECRET_KEY", "provider-auth-token"],
    ["FLUTTERWAVE_WEBHOOK_SECRET_HASH", "provider-auth-hash"],
    ["FLUTTERWAVE_WEBHOOK_URL", "https://api.masanawa.com/billing/webhook"],
    ["MASANAWA_BILLING_ACTION_SECRET", "signed-billing-action-secret-longer-than-32"],
    ["MASANAWA_FLUTTERWAVE_VERIFY_ON_START", "true"],
  ]) runtime.set(key,value);
  assert.equal(validatePilotConfig(compose, runtime).qualifiedFeatures.ngnData, true);
  runtime.delete("FLUTTERWAVE_SECRET_KEY");
  assert.throws(() => validatePilotConfig(compose, runtime), /flutterwave_secret_key_missing/u);
  runtime.set("FLUTTERWAVE_SECRET_KEY", "provider-auth-token");
  runtime.set("MASANAWA_NGN_DATA_CATALOG_ENABLED", "false");
  assert.throws(() => validatePilotConfig(compose, runtime), /ngn_data.catalog_or_provider_missing/u);
});

test("env parser refuses duplicate keys or shell syntax", () => {
  assert.equal(parseEnvFile("A=a=b\n# comment\nB=2\n").get("A"), "a=b");
  assert.throws(() => parseEnvFile("A=1\nA=2\n"), /duplicate_key/u);
  assert.throws(() => parseEnvFile("export A=1"), /syntax_invalid/u);
  assert.throws(() => parseEnvFile('A="quoted"'), /value_format_invalid/u);
});

test("preflight requires private mode-0600 real files and matching runtime path", () => {
  const dir = mkdtempSync(join(tmpdir(), "masanawa-do-preflight-"));
  try {
    const { compose, runtime } = goodConfig();
    const composeFile = join(dir, "compose.env");
    const runtimeFile = join(dir, "runtime.env");
    compose.set("MASANAWA_RUNTIME_ENV_FILE", runtimeFile);
    writeFileSync(composeFile, [...compose].map(([k, v]) => `${k}=${v}`).join("\n") + "\n", { mode: 0o600 });
    writeFileSync(runtimeFile, [...runtime].map(([k, v]) => `${k}=${v}`).join("\n") + "\n", { mode: 0o600 });
    assert.equal(runPreflight(composeFile, runtimeFile).imagePinned, true);
    assert.throws(() => runPreflight(composeFile, join(dir, "wrong.env")), /runtime_file.path_mismatch/u);
    chmodSync(runtimeFile, 0o644);
    assert.throws(() => runPreflight(composeFile, runtimeFile), /file_permissions_invalid/u);
  } finally {
    rmSync(dir, { recursive: true, force: true });
  }
});
