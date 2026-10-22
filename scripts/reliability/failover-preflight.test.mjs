import assert from 'node:assert/strict';
import test from 'node:test';
import { evaluateGatewayStandby, requireGatewayOrigin, probeAuthDiscovery } from './failover-preflight.mjs';
import { readFileSync } from 'node:fs';

const workingResponse = (pathname) => pathname === '/readyz'
  ? { status: 'ready', checks: [{ name: 'database', ready: true }] }
  : { otpChannels: ['email'] };

function mockFetch({ primaryStatus = 503, standbyStatus = 200, brokenAuth = false,
  badReadiness = false } = {}) {
  const requests = [];
  async function get(url, options) {
    requests.push({ host: url.host, path: url.pathname, method: options.method,
      redirect: options.redirect });
    const primary = url.hostname === 'primary.example.test';
    const status = primary ? primaryStatus : standbyStatus;
    if (brokenAuth && !primary && url.pathname === '/auth/capabilities') {
      return { ok: true, status: 200, json: async () => ({}) };
    }
    if (status !== 200) return { ok: false, status };
    return { ok: true, status, json: async () =>
      badReadiness && !primary && url.pathname === '/readyz'
        ? { status: 'ready', checks: [{ name: 'database', ready: false }] }
        : workingResponse(url.pathname) };
  }
  return { get, requests };
}
const primaryUrl = 'https://primary.example.test';
const standbyUrl = 'https://standby.example.test';

test('read-only preflight identifies an available standby without promoting it', async () => {
  const mock = mockFetch();
  const result = await evaluateGatewayStandby({
    primaryUrl, standbyUrl, fetchImpl: mock.get,
  });
  assert.equal(result.primary, 'unavailable');
  assert.equal(result.standby, 'ready');
  assert.equal(result.standbyAuth, 'ready');
  assert.equal(result.verdict, 'candidate_healthy_manual_data_and_provider_approval_required');
  assert.equal(result.productionPromoted, false);
  assert.equal(result.authoritativeDatabaseVerified, false);
  assert.equal(result.financialProvidersVerified, false);
  assert.deepEqual(new Set(mock.requests.map((r) => r.method)), new Set(['GET']));
  assert.deepEqual(new Set(mock.requests.map((r) => r.redirect)), new Set(['error']));
  assert.ok(mock.requests.every((r) => ['/readyz', '/auth/capabilities'].includes(r.path)));
});

test('healthy primary is not treated as an outage cutover', async () => {
  const mock = mockFetch({ primaryStatus: 200 });
  const result = await evaluateGatewayStandby({ primaryUrl, standbyUrl, fetchImpl: mock.get });
  assert.equal(result.verdict, 'primary_healthy_no_outage_cutover');
});

test('standby fails closed when readiness or login discovery is broken', async () => {
  for (const option of [{ standbyStatus: 503 }, { badReadiness: true }, { brokenAuth: true }]) {
    const mock = mockFetch(option);
    const result = await evaluateGatewayStandby({ primaryUrl, standbyUrl, fetchImpl: mock.get });
    assert.notEqual(result.verdict, 'candidate_healthy_manual_data_and_provider_approval_required');
    assert.equal(result.productionPromoted, false);
  }
  assert.equal(await probeAuthDiscovery(standbyUrl,
    async () => ({ ok: true, status: 200, json: async () => ({ otpChannels: [] }) })), 'ready');
});

test('requires distinct clean HTTPS origins and protects credentials', async () => {
  for (const url of ['', 'http://public.example.test', 'https://u:p@primary.example.test',
    'https://primary.example.test/token', 'https://primary.example.test/?key=s',
    'https://primary.example.test/#secret']) {
    assert.throws(() => requireGatewayOrigin(url));
  }
  await assert.rejects(() => evaluateGatewayStandby({
    primaryUrl, standbyUrl: primaryUrl,
  }), /different origins/);
  assert.equal(requireGatewayOrigin('http://127.0.0.1:3100'), 'http://127.0.0.1:3100');
});

test('standby compose uses existing build, localhost ingress, explicit env and no automatic migration', () => {
  const compose = readFileSync('infra/deployment/standby/compose.yaml', 'utf8');
  assert.match(compose, /dockerfile:\s*infra\/deployment\/gateway\/Dockerfile/u);
  assert.match(compose, /MASANAWA_STANDBY_ENV_FILE:\?/u);
  assert.match(compose, /127\.0\.0\.1:\$\{MASANAWA_STANDBY_LOCAL_PORT:-3100\}:3000/u);
  assert.match(compose, /gateway-service", "start"/u);
  assert.doesNotMatch(compose, /gateway-service", "migrate"|alpha:prepare|pg_restore/u);
  assert.match(compose, /readyz/u);
});
