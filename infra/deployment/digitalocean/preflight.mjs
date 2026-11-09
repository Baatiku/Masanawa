import { readFileSync, lstatSync } from "node:fs";
import { isAbsolute } from "node:path";
import { pathToFileURL } from "node:url";

function fail(code) {
  throw new Error(`digitalocean.${code}`);
}

/** Strict Compose env-file subset: no execution, interpolation or overrides. */
export function parseEnvFile(source) {
  const entries = new Map();
  for (const line of source.split(/\r?\n/u)) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith("#")) continue;
    const match = /^([A-Z][A-Z0-9_]*)=(.*)$/u.exec(line);
    if (!match) fail("env.syntax_invalid");
    const [, name, value] = match;
    if (entries.has(name)) fail("env.duplicate_key");
    if (value.startsWith('"') || value.startsWith("'") || value !== value.trim()) {
      fail("env.value_format_invalid");
    }
    entries.set(name, value);
  }
  return entries;
}

function required(values, key) {
  const value = values.get(key);
  if (!value || /CHANGE_ME|not-configured|placeholder|example\.test|<|>/iu.test(value)) {
    fail(`config.${key.toLowerCase()}_missing_or_placeholder`);
  }
  return value;
}

const unqualifiedFlags = [
  "MASANAWA_ALPHA_ENABLED",
  "MASANAWA_MB_REPLIES_ENABLED",
  "MASANAWA_MB_CALLS_ENABLED",
  "MASANAWA_NGN_CALLS_ENABLED",
  "MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED",
  "FLUTTERWAVE_BILLS_ENABLED",
  "MASANAWA_GB_DATA_PURCHASE_ENABLED",
  "MASANAWA_NEWS_INGEST_ENABLED",
  "MASANAWA_STATUS_PROMOTIONS_ENABLED",
  "MASANAWA_STATUS_TIPS_ENABLED",
];

export function validatePilotConfig(compose, runtime) {
  const runtimeFile = required(compose, "MASANAWA_RUNTIME_ENV_FILE");
  if (!isAbsolute(runtimeFile) || runtimeFile.endsWith(".env.example")) fail("runtime_file.not_private_path");
  const hostname = required(compose, "MASANAWA_API_HOST");
  if (!/^[a-z0-9](?:[a-z0-9.-]*[a-z0-9])?$/u.test(hostname) || !hostname.includes(".") || hostname.endsWith(".invalid")) {
    fail("api_host.invalid");
  }
  const user = required(compose, "POSTGRES_USER");
  const database = required(compose, "POSTGRES_DB");
  const password = required(compose, "POSTGRES_PASSWORD");
  if (!/^[a-z_][a-z0-9_]*$/u.test(user) || !/^[a-z_][a-z0-9_]*$/u.test(database) || password.length < 24) {
    fail("postgres.credentials_invalid");
  }
  const image = required(compose, "MASANAWA_GATEWAY_IMAGE");
  if (!/(?:@sha256:[a-f0-9]{64}|:[a-f0-9]{40})$/u.test(image)) fail("gateway_image.not_commit_pinned");
  let dbUrl;
  try {
    dbUrl = new URL(required(runtime, "MASANAWA_DATABASE_URL"));
  } catch {
    fail("postgres.connection_url_invalid");
  }
  if (dbUrl.protocol !== "postgres:" && dbUrl.protocol !== "postgresql:") fail("postgres.scheme_invalid");
  if (dbUrl.hostname !== "postgres" || dbUrl.port !== "5432" || dbUrl.username !== user ||
      decodeURIComponent(dbUrl.password) !== password || decodeURIComponent(dbUrl.pathname) !== `/${database}` ||
      dbUrl.search || dbUrl.hash) fail("postgres.connection_mismatch");
  const origin = `https://${hostname}`;
  if (required(runtime, "MASANAWA_PUBLIC_BASE_URL") !== origin ||
      required(runtime, "MASANAWA_AUTH_PUBLIC_BASE_URL") !== origin) {
    fail("public_origin.mismatch");
  }
  const allowed = required(runtime, "MASANAWA_WEB_ALLOWED_ORIGINS").split(",").map((x) => x.trim());
  if (new Set(allowed).size !== allowed.length || allowed.some((entry) => {
    try {
      const url = new URL(entry);
      return url.protocol !== "https:" || url.origin !== entry || url.username || url.password || entry.includes("*");
    } catch { return true; }
  })) fail("web_origin.invalid");
  if (!/^tenant_[0-9a-f]{8}-[0-9a-f]{4}-7[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/u.test(required(runtime, "MASANAWA_PLATFORM_TENANT_ID"))) {
    fail("platform_tenant.not_uuidv7");
  }
  if (required(runtime, "MASANAWA_AUTH_OTP_PEPPER").length < 32) fail("otp_pepper.too_short");
  required(runtime, "MASANAWA_GEMINI_API_KEY");
  if (runtime.get("MASANAWA_PRODUCT_SCOPE") !== "masana-lite") fail("product_scope.not_lite");
  for (const flag of unqualifiedFlags) {
    if (runtime.get(flag) !== "false") fail(`feature_flag.${flag.toLowerCase()}_must_be_disabled`);
  }
  if (runtime.get("RESEND_API_KEY") && !runtime.get("MASANAWA_AUTH_EMAIL_FROM")) fail("otp_sender.missing");
  if (runtime.get("MASANAWA_RUNTIME_ENV_FILE") || runtime.get("POSTGRES_PASSWORD")) fail("runtime_env.cross_contaminated");
  if (compose.get("MASANAWA_GEMINI_API_KEY") || compose.get("RESEND_API_KEY")) fail("compose_env.provider_secret_exposed");
  return Object.freeze({ apiOrigin: origin, imagePinned: true, workerDisabledByDefault: true });
}

function loadPrivateEnv(file) {
  if (!isAbsolute(file)) fail("env.path_not_absolute");
  const stats = lstatSync(file);
  if (!stats.isFile() || stats.isSymbolicLink() || (stats.mode & 0o077) !== 0) fail("env.file_permissions_invalid");
  return parseEnvFile(readFileSync(file, "utf8"));
}

export function runPreflight(composeFile, runtimeFile) {
  const compose = loadPrivateEnv(composeFile);
  const expectedRuntimeFile = required(compose, "MASANAWA_RUNTIME_ENV_FILE");
  if (runtimeFile !== expectedRuntimeFile) fail("runtime_file.path_mismatch");
  const runtime = loadPrivateEnv(runtimeFile);
  return validatePilotConfig(compose, runtime);
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  try {
    if (process.argv.length !== 4) fail("usage_expected_compose_and_runtime_files");
    const result = runPreflight(process.argv[2], process.argv[3]);
    process.stdout.write(`${JSON.stringify({ event: "digitalocean.preflight.ok", ...result })}\n`);
  } catch (error) {
    process.stderr.write(`${error instanceof Error ? error.message : "digitalocean.preflight.failed"}\n`);
    process.exitCode = 1;
  }
}
