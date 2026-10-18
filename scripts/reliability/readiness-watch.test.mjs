import assert from 'node:assert/strict';
import test from 'node:test';
import { probe, evaluateJobs, stateFingerprint, safeHttps, alertWebhook } from './readiness-watch.mjs';

test('readiness requires ready status and all advertised dependency checks', async () => {
  const get = async () => ({ ok: true, status: 200,
    json: async () => ({ status: 'ready', checks: [{ name: 'db', ready: true }] }) });
  assert.deepEqual(await probe('worker', 'https://worker.example.test', get),
    { service: 'worker', state: 'ready' });
  const fail = async () => ({ ok: true, status: 200,
    json: async () => ({ status: 'ready', checks: [{ name: 'db', ready: false }] }) });
  assert.equal((await probe('worker', 'https://worker.example.test', fail)).state, 'not_ready');
});
test('missing readiness and invalid JSON cannot pass as healthy', async () => {
  const missing = async () => ({ ok: true, status: 200, json: async () => ({}) });
  const invalid = async () => ({ ok: true, status: 200, json: async () => { throw Error('bad'); } });
  assert.equal((await probe('gateway', 'https://gateway.example.test', missing)).state, 'not_ready');
  assert.equal((await probe('gateway', 'https://gateway.example.test', invalid)).state, 'invalid_response');
});
test('job health rejects malformed or delayed records', () => {
  assert.equal(evaluateJobs({ jobs: [{ name: 'settlement', stuck: 0, oldestPendingSeconds: 30 }] }), 'ready');
  assert.equal(evaluateJobs({ jobs: [{ name: 'settlement', stuck: 1, oldestPendingSeconds: 30 }] }), 'delayed');
  assert.equal(evaluateJobs({ jobs: [{ name: 'settlement', stuck: 0, oldestPendingSeconds: 360 }] }), 'delayed');
  assert.equal(evaluateJobs({ jobs: [{ name: 'settlement', stuck: -1, oldestPendingSeconds: 0 }] }), 'invalid');
  assert.equal(evaluateJobs({ status: 'ready' }), 'unknown');
});
test('URLs cannot leak credentials or insecure endpoints', () => {
  assert.throws(() => safeHttps('http://example.test'), /HTTPS/);
  assert.throws(() => safeHttps('https://user:pass@example.test'), /HTTPS/);
  assert.throws(() => safeHttps('https://example.test?token=private'), /HTTPS/);
  assert.equal(safeHttps('http://127.0.0.1:3001').host, '127.0.0.1:3001');
});
test('alert payload contains only service names and states, never response bodies', async () => {
  let request;
  await alertWebhook('https://ops.example.test/webhook', [{ service: 'worker', state: 'unavailable' }],
    async (_url, init) => { request = JSON.parse(init.body); return { ok: true }; });
  assert.deepEqual(request.services, [{ service: 'worker', state: 'unavailable' }]);
  assert.equal(request.severity, 'critical');
  assert.equal(stateFingerprint(request.services), 'worker:unavailable');
});
