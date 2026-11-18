import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { describe, expect, it } from "vitest";

const android = (relative: string) =>
  readFileSync(fileURLToPath(new URL(
    `../../apps/mobile/android/app/src/main/${relative}`, import.meta.url,
  )), "utf8");

describe("Android release private-data policy", () => {
  it("disables cloud and legacy backups and release cleartext", () => {
    const manifest = android("AndroidManifest.xml");
    expect(manifest).toContain('android:allowBackup="false"');
    expect(manifest).toContain('android:fullBackupContent="false"');
    expect(manifest).toContain('android:usesCleartextTraffic="false"');
    expect(manifest).toContain(
      'android:dataExtractionRules="@xml/masanawa_private_backup_rules"',
    );
  });

  it("excludes entire private-data root from cloud and device transfers", () => {
    const rules = android("res/xml/masanawa_private_backup_rules.xml");
    expect(rules).toMatch(
      /<cloud-backup>[\s\S]*?<exclude domain="root" path="\."\s*\/>[\s\S]*?<\/cloud-backup>/,
    );
    expect(rules).toMatch(
      /<device-transfer>[\s\S]*?<exclude domain="root" path="\."\s*\/>[\s\S]*?<\/device-transfer>/,
    );
  });
});
