import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import { probe, safeHttps } from './readiness-watch.mjs';

export function requireGatewayOrigin(value) {
  if (!value || typeof value !== 'string') throw new Error('A Gateway origin is required');
  const url = safeHttps(value);
  if (url.pathname !== '/' || url.origin + '/' !== url.href) {
    throw new Error('Gateway origin must not include a path, query or fragment');
  }
  return url.origin;
}

export async function probeAuthDiscovery(origin, fetchImpl = fetch) {
  try {
    const response = await fetchImpl(new URL('/auth/capabilities', origin), {
      method: 'GET',
      redirect: 'error',
      headers: { accept: 'application/json' },
      signal: AbortSignal.timeout(4000),
    });
    if (!response.ok) return 'http_' + response.status;
    const payload = await response.json();
    return Array.isArray(payload?.otpChannels) ? 'ready' : 'invalid_response';
  } catch {
    return 'unavailable';
  }
}

/**
 * Read-only candidate diagnosis. NEVER changes DNS, starts a service, promotes a
 * replica, tests finance writes or sends a provider webhook. A healthy Gateway
 * is NOT evidence of authoritative/fresh database state or provider acceptance.
 */
export async function evaluateGatewayStandby({
  primaryUrl,
  standbyUrl,
  fetchImpl = fetch,
}) {
  const primary = requireGatewayOrigin(primaryUrl);
  const standby = requireGatewayOrigin(standbyUrl);
  if (primary === standby) throw new Error('Primary and standby must be different origins');

  const [primaryReady, standbyReady, standbyAuth] = await Promise.all([
    probe('primary', primary, fetchImpl),
    probe('standby', standby, fetchImpl),
    probeAuthDiscovery(standby, fetchImpl),
  ]);
  let verdict = 'standby_not_ready';
  if (standbyReady.state === 'ready' && standbyAuth === 'ready') {
    verdict = primaryReady.state === 'ready'
      ? 'primary_healthy_no_outage_cutover'
      : 'candidate_healthy_manual_data_and_provider_approval_required';
  } else if (standbyReady.state === 'ready') {
    verdict = 'standby_auth_discovery_failed';
  }
  return Object.freeze({
    primary: primaryReady.state,
    standby: standbyReady.state,
    standbyAuth,
    verdict,
    dnsChanged: false,
    productionPromoted: false,
    authoritativeDatabaseVerified: false,
    financialProvidersVerified: false,
  });
}

if (process.argv[1] && import.meta.url === pathToFileURL(resolve(process.argv[1])).href) {
  evaluateGatewayStandby({
    primaryUrl: process.env.MASANAWA_PRIMARY_GATEWAY_URL,
    standbyUrl: process.env.MASANAWA_STANDBY_GATEWAY_URL,
  }).then((report) => {
    process.stdout.write(JSON.stringify(report) + '\n');
    if (report.verdict !== 'candidate_healthy_manual_data_and_provider_approval_required') {
      process.exitCode = 1;
    }
  }).catch(() => {
    process.stderr.write('Gateway standby preflight blocked: invalid configuration or transport.\n');
    process.exitCode = 1;
  });
}
