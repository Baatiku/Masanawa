import assert from 'node:assert/strict';
import test from 'node:test';
import { integratedReadOnlyJourney } from './integrated-readonly-smoke.mjs';

const payloads = new Map([
  ['/healthz', { status: 'ok' }],
  ['/readyz', { status: 'ready' }],
  ['/auth/capabilities', { otpChannels: ['email'] }],
  ['/v1/agent/directory', { agents: [{ characterId: 'test' }] }],
  ['/v1/financial/capabilities', { routes: [] }],
]);

test('read-only signed-in integrated route chain uses only GET and no token leaks', async () => {
  const methods = [], paths = [];
  const token = 'private-test-only-bearer';
  const result = await integratedReadOnlyJourney({
    gatewayUrl: 'https://gateway.example.invalid',
    token,
    fetchImpl: async (url, args) => {
      methods.push(args.method); paths.push(url.pathname);
      assert.equal(args.headers.authorization, url.pathname.startsWith('/v1/') ? 'Bearer ' + token : undefined);
      return { ok: true, status: 200, json: async () => payloads.get(url.pathname) };
    },
  });
  assert.equal(result.count, 5);
  assert.equal(result.financialWritesExecuted, 0);
  assert.deepEqual(methods, Array(5).fill('GET'));
  assert.deepEqual(paths, [...payloads.keys()]);
  assert.ok(!JSON.stringify(result).includes(token));
});

test('fail-closed on missing credentials, not-ready or missing directory', async () => {
  await assert.rejects(() => integratedReadOnlyJourney({
    gatewayUrl: 'http://public.example.invalid', token: 'x',
  }), /HTTPS/);
  await assert.rejects(() => integratedReadOnlyJourney({
    gatewayUrl: 'https://gateway.example.invalid', token: '',
  }), /bearer/);
  await assert.rejects(() => integratedReadOnlyJourney({
    gatewayUrl: 'https://gateway.example.invalid', token: 'x',
    fetchImpl: async (url) => ({ ok: true, status: 200,
      json: async () => url.pathname === '/readyz' ? { status: 'not-ready' } :
        payloads.get(url.pathname) }),
  }), /not ready/);
});
