import { createHash } from 'node:crypto';
import { execFileSync } from 'node:child_process';
import { readFileSync, statSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

export function sha256(path) {
  return createHash('sha256').update(readFileSync(path)).digest('hex');
}

export function pubspecVersion(text) {
  const match = text.match(/^version:\s*([0-9]+\.[0-9]+\.[0-9]+(?:[-+.][0-9A-Za-z.+-]+)?)\s*$/m);
  if (!match) throw new Error('Missing explicit Flutter app version');
  return match[1];
}

export function signerFingerprint(output) {
  // apksigner versions emit either numbered signers or one record per scheme.
  // Scheme records may repeat a certificate, but must describe one identity.
  const counts = [...output.matchAll(/^Number of signers:\s*(\d+)\s*$/gim)];
  if (counts.some((match) => Number(match[1]) !== 1)) {
    throw new Error('APK must have exactly one discoverable signer');
  }
  const records = [...output.matchAll(/^(Signer #(\d+)|V\d+(?:\.\d+)? Signer):? certificate SHA-256 digest:\s*([^\r\n]*)$/gim)];
  const numberedSigners = new Set(records.filter((match) => match[2]).map((match) => match[2]));
  if (records.length === 0 || numberedSigners.size > 1) {
    throw new Error('APK must have exactly one discoverable signer');
  }
  const fingerprints = records.map((match) => {
    const value = match[3].trim();
    if (!/^(?:[0-9a-f]{64}|[0-9a-f]{2}(?::[0-9a-f]{2}){31})$/i.test(value)) {
      throw new Error('Invalid APK certificate digest');
    }
    return value.replaceAll(':', '').toLowerCase();
  });
  if (new Set(fingerprints).size !== 1) {
    throw new Error('APK must have exactly one discoverable signer');
  }
  const fingerprint = fingerprints[0];
  return fingerprint;
}

function run(command, args) {
  return execFileSync(command, args, { encoding: 'utf8', stdio: ['ignore', 'pipe', 'pipe'], timeout: 30000 }).trim();
}

export function collectProvenance({
  apk, pubspec, lockfile, signerOutput, commit, flutterVersion,
}) {
  if (!/^[a-f0-9]{40}$/.test(commit)) throw new Error('Expected a full 40-character Git commit SHA');
  if (!flutterVersion || !flutterVersion.trim()) throw new Error('Flutter SDK identity is required');
  const signer = signerFingerprint(signerOutput);
  if (statSync(apk).size <= 0) throw new Error('Empty APK');
  return {
    schemaVersion: 1,
    gitCommit: commit,
    appVersion: pubspecVersion(readFileSync(pubspec, 'utf8')),
    flutterVersion: flutterVersion.trim(),
    artifact: {
      filename: 'app-release.apk',
      bytes: statSync(apk).size,
      sha256: sha256(apk),
      certificateSha256: signer,
      signatureVerified: true,
    },
    pubspecLockSha256: sha256(lockfile),
    productionQualified: false,
    // A build and valid signature do not prove device, provider or financial acceptance.
    acceptance: 'NOT_RUN',
  };
}

export function main(args = process.argv.slice(2)) {
  const options = {};
  for (let i = 0; i < args.length; i += 2) {
    if (!args[i]?.startsWith('--') || args[i + 1] === undefined) {
      throw new Error('Provide --apk --pubspec --lockfile --apksigner --output');
    }
    options[args[i].slice(2)] = args[i + 1];
  }
  for (const key of ['apk', 'pubspec', 'lockfile', 'apksigner', 'output']) {
    if (!options[key]) throw new Error('Missing --' + key);
  }
  const apk = resolve(options.apk);
  const certOutput = run(options.apksigner, ['verify', '--print-certs', apk]);
  const flutterVersion = JSON.parse(run('flutter', ['--version', '--machine']));
  const record = collectProvenance({
    apk, pubspec: resolve(options.pubspec), lockfile: resolve(options.lockfile),
    signerOutput: certOutput,
    commit: run('git', ['rev-parse', 'HEAD']),
    flutterVersion: flutterVersion.frameworkVersion + ' / Dart ' + flutterVersion.dartSdkVersion,
  });
  writeFileSync(resolve(options.output), JSON.stringify(record, null, 2) + '\n', { mode: 0o600 });
  process.stdout.write('Verified signed APK; release evidence manifest written (not device-qualified).\n');
  return record;
}

if (process.argv[1] && import.meta.url === pathToFileURL(resolve(process.argv[1])).href) {
  try { main(); } catch (error) {
    // Avoid tool stderr containing certificate dumps, environment variables or paths with secrets.
    process.stderr.write('Release provenance failed: ' + (error instanceof Error ? error.message.split('\n')[0] : 'unexpected error') + '\n');
    process.exitCode = 1;
  }
}
