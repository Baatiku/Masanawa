import { pathToFileURL } from 'node:url';

export function requireGatewayUrl(value) {
  const url = new URL(value);
  if (url.username || url.password || url.search || url.hash ||
      (url.protocol !== 'https:' && !(url.protocol === 'http:' &&
        ['127.0.0.1', 'localhost', '[::1]'].includes(url.hostname)))) {
    throw new Error('Integrated smoke requires an HTTPS origin or local test server');
  }
  return url;
}

/** One deployed Gateway, real signed-in account, real backing database.
 * All requests are strictly read-only and have bounded response sizes/times.
 * This does not substitute physical-device, payment or LiveKit acceptance. */
export async function integratedReadOnlyJourney({ gatewayUrl, token, fetchImpl = fetch }) {
  if (!token || !token.trim()) throw new Error('Operator test account bearer required');
  const url = requireGatewayUrl(gatewayUrl);
  const results = [];
  async function get(path, authorized) {
    let response;
    try {
      response = await fetchImpl(new URL(path, url), {
        method: 'GET', redirect: 'error',
        headers: { accept: 'application/json',
          ...(authorized ? { authorization: 'Bearer ' + token } : {}) },
        signal: AbortSignal.timeout(8000),
      });
    } catch { throw new Error('Integrated smoke transport failure: ' + path); }
    if (!response.ok) throw new Error('Integrated smoke HTTP failure at ' + path);
    let data;
    try {
      // Do not persist or print private account contents.
      data = await response.json();
    } catch { throw new Error('Integrated smoke invalid JSON at ' + path); }
    if (!data || typeof data !== 'object' || Array.isArray(data)) {
      throw new Error('Integrated smoke invalid response at ' + path);
    }
    results.push(path);
    return data;
  }
  const health = await get('/healthz', false);
  if (health.status !== 'ok') throw new Error('Gateway health contract mismatch');
  const ready = await get('/readyz', false);
  if (ready.status !== 'ready') throw new Error('Gateway not ready');
  const auth = await get('/auth/capabilities', false);
  if (!Array.isArray(auth.otpChannels)) {
    throw new Error('Authentication discovery contract missing');
  }
  const directory = await get('/v1/agent/directory', true);
  if (!Array.isArray(directory.agents) || directory.agents.length === 0) {
    throw new Error('Signed-in Masana directory empty');
  }
  const finance = await get('/v1/financial/capabilities', true);
  if (typeof finance !== 'object') throw new Error('Financial capabilities missing');
  return Object.freeze({
    mode: 'read-only-real-backend',
    checks: results,
    count: results.length,
    // Do not return user/account identity, financial amounts, agent transcripts or tokens.
    customerActionsExecuted: 0,
    financialWritesExecuted: 0,
    completed: true,
  });
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  integratedReadOnlyJourney({
    gatewayUrl: process.env.MASANAWA_GATEWAY_URL,
    token: process.env.MASANAWA_TEST_ACCOUNT_TOKEN,
  }).then((result) => {
    process.stdout.write(JSON.stringify(result) + '\n');
  }).catch((error) => {
    process.stderr.write((error instanceof Error ? error.message : 'Integrated smoke failed') + '\n');
    process.exitCode = 1;
  });
}
