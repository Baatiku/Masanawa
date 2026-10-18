import assert from 'node:assert/strict';
import { mkdtempSync, writeFileSync, rmSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import test from 'node:test';
import { collectProvenance, pubspecVersion, signerFingerprint } from './release-provenance.mjs';

const digest = 'a'.repeat(64);
test('version parser requires a version, including build number', () => {
  assert.equal(pubspecVersion('name: x\nversion: 1.2.3+17\n'), '1.2.3+17');
  assert.throws(() => pubspecVersion('name: x'), /version/);
});
test('signer fingerprint requires exactly one signed certificate', () => {
  assert.equal(signerFingerprint('Signer #1 certificate SHA-256 digest: ' + digest), digest);
  assert.throws(() => signerFingerprint('unsigned'), /signer/);
  assert.throws(() => signerFingerprint('Signer #1 certificate SHA-256 digest: ' + digest +
    '\nSigner #2 certificate SHA-256 digest: ' + digest), /exactly one/);
});
test('manifest binds SHA, Flutter version, artifact bytes and certificate', () => {
  const dir = mkdtempSync(join(tmpdir(), 'masanawa-provenance-'));
  try {
    const apk = join(dir, 'app.apk');
    const pubspec = join(dir, 'pubspec.yaml');
    const lockfile = join(dir, 'pubspec.lock');
    writeFileSync(apk, Buffer.from('synthetic apk fixture only'));
    writeFileSync(pubspec, 'name: masanawa\nversion: 1.0.4+5\n');
    writeFileSync(lockfile, 'locked');
    const values = { apk, pubspec, lockfile,
      signerOutput: 'Signer #1 certificate SHA-256 digest: ' + digest,
      commit: 'b'.repeat(40), flutterVersion: '3.x / Dart 3.x' };
    const result = collectProvenance(values);
    assert.equal(result.gitCommit, 'b'.repeat(40));
    assert.equal(result.appVersion, '1.0.4+5');
    assert.equal(result.artifact.certificateSha256, digest);
    assert.match(result.artifact.sha256, /^[0-9a-f]{64}$/);
    assert.equal(result.acceptance, 'NOT_RUN');
    assert.equal(result.productionQualified, false);
    assert.throws(() => collectProvenance({ ...values, commit: 'main' }), /40-character/);
  } finally {
    rmSync(dir, { recursive: true, force: true });
  }
});
