import { readFileSync, writeFileSync, renameSync, mkdirSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

export function safeHttps(input) {
  const url = new URL(input);
  if (url.username || url.password || url.search || url.hash ||
      (url.protocol !== 'https:' && !(url.protocol === 'http:' &&
        ['localhost', '127.0.0.1', '[::1]'].includes(url.hostname)))) {
    throw new Error('Monitoring URLs must be HTTPS (or loopback) without credentials or query parameters');
  }
  return url;
}

export async function probe(name, baseUrl, fetchImpl = fetch) {
  const url = new URL('/readyz', safeHttps(baseUrl));
  for (let attempt = 1; attempt <= 3; attempt++) {
    let status = 0;
    try {
      const response = await fetchImpl(url, {
        method: 'GET', redirect: 'error',
        headers: { accept: 'application/json' },
        signal: AbortSignal.timeout(4000),
      });
      status = response.status;
      if (response.ok) {
        const body = await response.json();
        const checks = body?.checks;
        if (body?.status === 'ready' &&
            (!Array.isArray(checks) || checks.every((item) => item.ready === true))) {
          return { service: name, state: 'ready' };
        }
        return { service: name, state: 'not_ready' };
      }
      if (status < 500 && status !== 429) return { service: name, state: 'http_' + status };
    } catch {
      // Transport, timeout or invalid JSON: never print request, response or credential data.
      if (status >= 200 && status < 300) return { service: name, state: 'invalid_response' };
    }
    if (attempt < 3) await new Promise((r) => setTimeout(r, attempt * 250));
  }
  return { service: name, state: 'unavailable' };
}

export function evaluateJobs(report, maxLagSeconds = 300) {
  if (!report || !Array.isArray(report.jobs) || report.jobs.length === 0) return 'unknown';
  let enabled = 0;
  let unstarted = 0;
  for (const job of report.jobs) {
    if (typeof job.name !== 'string' || !job.name ||
        !Number.isInteger(job.stuck) || job.stuck < 0) return 'invalid';
    // The worker's canonical scheduler reports process-local activity.
    if (typeof job.enabled === 'boolean') {
      if (!Number.isInteger(job.consecutiveFailures) || job.consecutiveFailures < 0 ||
          !Number.isFinite(job.runningSeconds) || job.runningSeconds < 0 ||
          (job.lastSuccessAgeSeconds !== null &&
           (!Number.isFinite(job.lastSuccessAgeSeconds) || job.lastSuccessAgeSeconds < 0))) {
        return 'invalid';
      }
      if (!job.enabled) continue; // absent optional adapter, not a stuck lease
      enabled++;
      if (job.stuck > 0 || job.consecutiveFailures >= 3 ||
          job.runningSeconds > maxLagSeconds ||
          (job.lastSuccessAgeSeconds !== null &&
           job.lastSuccessAgeSeconds > maxLagSeconds)) return 'delayed';
      if (job.lastSuccessAgeSeconds === null) unstarted++;
      continue;
    }
    // Compatible with a future authoritative DB-queue report.
    if (!Number.isFinite(job.oldestPendingSeconds) ||
        job.oldestPendingSeconds < 0) return 'invalid';
    enabled++;
    if (job.stuck > 0 || job.oldestPendingSeconds > maxLagSeconds) return 'delayed';
  }
  if (enabled === 0 || unstarted > 0) return 'unknown';
  return 'ready';
}

export async function probeJobs(baseUrl, token, fetchImpl = fetch, maxLagSeconds = 300) {
  const url = safeHttps(baseUrl);
  if (!token || token.length < 32) return { service: 'jobs', state: 'unauthorized' };
  try {
    const response = await fetchImpl(url, {
      method: 'GET', redirect: 'error',
      headers: { accept: 'application/json', authorization: 'Bearer ' + token },
      signal: AbortSignal.timeout(4000),
    });
    if (!response.ok) return { service: 'jobs', state: 'http_' + response.status };
    return { service: 'jobs', state: evaluateJobs(await response.json(), maxLagSeconds) };
  } catch { return { service: 'jobs', state: 'unavailable' }; }
}

export function stateFingerprint(results) {
  return results.map((item) => item.service + ':' + item.state).sort().join('|');
}

export function recordTransition(file, fingerprint) {
  const path = resolve(file);
  let previous = null;
  try { previous = readFileSync(path, 'utf8').trim(); } catch (error) {
    if (error.code !== 'ENOENT') throw error;
  }
  if (previous === fingerprint) return false;
  mkdirSync(dirname(path), { recursive: true, mode: 0o700 });
  const pending = path + '.' + process.pid + '.pending';
  writeFileSync(pending, fingerprint + '\n', { mode: 0o600 });
  renameSync(pending, path);
  return true;
}

export async function alertWebhook(urlText, results, fetchImpl = fetch) {
  const url = safeHttps(urlText);
  const response = await fetchImpl(url, {
    method: 'POST', redirect: 'error',
    headers: { 'content-type': 'application/json' },
    body: JSON.stringify({
      event: 'masanawa.operational.health_change',
      severity: results.every((x) => x.state === 'ready') ? 'recovered' : 'critical',
      services: results,
    }),
    signal: AbortSignal.timeout(5000),
  });
  if (!response.ok) throw new Error('Operational alert destination rejected the notification');
}

export async function main(env = process.env, fetchImpl = fetch) {
  if (!env.MASANAWA_GATEWAY_URL || !env.MASANAWA_WORKER_URL) {
    throw new Error('MASANAWA_GATEWAY_URL and MASANAWA_WORKER_URL are required');
  }
  const results = await Promise.all([
    probe('gateway', env.MASANAWA_GATEWAY_URL, fetchImpl),
    probe('worker', env.MASANAWA_WORKER_URL, fetchImpl),
    ...(env.MASANAWA_JOB_HEALTH_URL
      ? [probeJobs(env.MASANAWA_JOB_HEALTH_URL, env.MASANAWA_JOB_HEALTH_TOKEN, fetchImpl)]
      : []),
  ]);
  const healthy = results.every((x) => x.state === 'ready');
  if (env.MASANAWA_ALERT_WEBHOOK_URL) {
    if (!env.MASANAWA_WATCH_STATE_FILE) throw new Error('Alert delivery requires a persistent MASANAWA_WATCH_STATE_FILE');
    // Deliver first; only advance state when receiver accepts the event.
    const fingerprint = stateFingerprint(results);
    let previous = null;
    try { previous = readFileSync(resolve(env.MASANAWA_WATCH_STATE_FILE), 'utf8').trim(); }
    catch (error) { if (error.code !== 'ENOENT') throw error; }
    if (previous !== fingerprint) {
      await alertWebhook(env.MASANAWA_ALERT_WEBHOOK_URL, results, fetchImpl);
      recordTransition(env.MASANAWA_WATCH_STATE_FILE, fingerprint);
    }
  }
  process.stdout.write(JSON.stringify({ healthy, services: results }) + '\n');
  if (!healthy) process.exitCode = 1;
  return results;
}

if (process.argv[1] && import.meta.url === pathToFileURL(resolve(process.argv[1])).href) {
  main().catch(() => {
    process.stderr.write('Operational readiness check failed (details intentionally withheld).\n');
    process.exitCode = 1;
  });
}
