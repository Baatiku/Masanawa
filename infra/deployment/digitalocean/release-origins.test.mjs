import assert from "node:assert/strict";
import { readFileSync } from "node:fs";
import { test } from "node:test";

const entrypoints = [
  "apps/mobile/lib/src/core/network/api_client.dart",
  "apps/mobile/lib/src/agents/masanawa_transport.dart",
  "apps/mobile/scripts/build_production_apk.ps1",
  "apps/mobile/docs/BUILDS.md",
  "ops/render-masanawa-apk-build.sh",
  "infra/verification/mobile-apk/Dockerfile",
  ".github/workflows/mobile-build.yml",
  ".github/workflows/masana-android-apk.yml",
  ".github/workflows/communication-regression.yml",
  ".github/workflows/retirement-test-apk-20261025.yml",
  ".github/workflows/five-tab-final-owner-apk-20261025.yml",
  "services/gateway/src/auth_email_templates.ts",
  "services/gateway/src/main.ts",
];

test("every launch APK, mobile transport and OTP default targets the same provider-neutral HTTPS API", () => {
  for (const file of entrypoints) {
    const source = readFileSync(file, "utf8");
    assert.doesNotMatch(source, /https?:\/\/[^\s'"`]+\.railway\.app/iu, file);
    assert.match(source, /https:\/\/api\.masanawa\.com/u, file);
  }
});
