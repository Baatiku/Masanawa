import { afterEach, describe, expect, it, vi } from 'vitest';
import { createGatewayApp } from './app.js';

const apps: ReturnType<typeof createGatewayApp>[] = [];
afterEach(async () => { await Promise.all(apps.splice(0).map(app => app.close())); });

describe('permanent customer API retirement', () => {
  it('old scope settings and injected services cannot restore retired routes', async () => {
    const app = createGatewayApp({
      productScope: 'legacy',
      creatorClone: {} as never,
      p2p: {} as never, videos: {} as never,
      msnFunding: {} as never, msnwBilling: {} as never,
      msnwCustody: {} as never, msnwConversion: {} as never,
      commerceCatalog: {} as never, billingCheckout: {} as never,
    });
    apps.push(app);
    for (const url of ['/v1/rooms', '/v1/human/conversations', '/v1/calls/groups',
      '/v1/calls/incoming', '/creator/clone', '/creator/economy', '/v1/videos',
      '/v1/p2p/ads', '/v1/wallet/msn/funding', '/v1/wallet/msnw/balance',
      '/v1/wallet/msnw/custody/send', '/v1/commerce/bills/quotes',
      '/v1/financial/crypto/routes']) {
      for (const method of ['GET', 'POST'] as const) {
        expect((await app.inject({ method, url })).statusCode, `${method} ${url}`).toBe(404);
      }
    }
    expect((await app.inject({ url: '/v1/gb/recharge/packages' })).statusCode).toBe(200);
  });

  it('retains only signed provider callbacks for historical liabilities', async () => {
    const ipn = vi.fn(async () => undefined);
    const webhook = vi.fn(async () => ({ accepted: true }));
    const app = createGatewayApp({
      financial: { handleNowPaymentsIpn: ipn, handleNowPaymentsPayoutIpn: ipn } as never,
      msnwPaystackFiat: { handleSignedWebhook: webhook } as never,
    });
    apps.push(app);
    const url = '/v1/financial/nowpayments/ipn';
    expect((await app.inject({ method: 'POST', url, payload: {} })).statusCode).toBe(400);
    expect(ipn).not.toHaveBeenCalled();
    expect((await app.inject({ method: 'POST', url, payload: { id: 'old-intent' },
      headers: { 'x-nowpayments-sig': 'a'.repeat(128) } })).statusCode).toBe(202);
    expect(ipn).toHaveBeenCalledWith({ signature: 'a'.repeat(128), payload: { id: 'old-intent' } });
    const raw = '{ "reference": "historic-reference" }';
    expect((await app.inject({ method: 'POST', url: '/v1/wallet/msnw/funding/webhook',
      headers: { 'content-type': 'application/json', 'x-paystack-signature': 'signed' },
      payload: raw })).statusCode).toBe(200);
    expect(webhook).toHaveBeenCalledWith(Buffer.from(raw), 'signed');
    expect((await app.inject({ method: 'POST', url: '/v1/wallet/msnw/funding/verify',
      payload: { reference: 'new-reference' } })).statusCode).toBe(404);
  });
  it('reconciles original Flutterwave references without restoring bill creation', async () => {
    const reconcile = vi.fn(async () => null);
    const receive = vi.fn(async () => ({ duplicate: false, reference: 'original-bill' }));
    const app = createGatewayApp({ billingFinancial: { receiveWebhook: receive } as never,
      billingCheckout: { reconcileFulfillment: reconcile } as never });
    apps.push(app);
    const url = '/v1/webhooks/flutterwave';
    expect((await app.inject({ method: 'POST', url, payload: { id: 'old-payment' },
      headers: { 'verif-hash': 'provider-verified-by-service' } })).statusCode).toBe(200);
    expect(receive).toHaveBeenCalledWith({ rawBody: Buffer.from('{"id":"old-payment"}'),
      verifHash: 'provider-verified-by-service' });
    expect(reconcile).toHaveBeenCalledWith({ reference: 'original-bill' });
    reconcile.mockRejectedValueOnce(new Error('historical reconciliation pending'));
    expect((await app.inject({ method: 'POST', url, payload: {} })).statusCode).toBe(503);
    expect((await app.inject({ method: 'POST', url: '/v1/commerce/bills/quotes',
      payload: {} })).statusCode).toBe(404);
  });

  it('keeps social block/report controls while refusing retired report targets', async () => {
    const report = vi.fn(async () => ({ reportId: 'profile-report', status: 'submitted' }));
    const preference = vi.fn(async () => ({ blocked: false, muted: false }));
    const app = createGatewayApp({ talkSafety: { report, readPreference: preference } as never });
    apps.push(app);
    expect((await app.inject({ url: '/safety/profiles/amina/preference' })).statusCode).toBe(200);
    const request = { targetKind: 'profile', targetId: 'amina', reason: 'spam',
      clientRequestId: 'profile-report-request' };
    expect((await app.inject({ method: 'POST', url: '/safety/reports', payload: request })).statusCode).toBe(202);
    expect(report).toHaveBeenCalledTimes(1);
    for (const targetKind of ['talk', 'replay', 'persona']) {
      expect((await app.inject({ method: 'POST', url: '/safety/reports',
        payload: { ...request, targetKind } })).statusCode).toBe(400);
    }
    expect(report).toHaveBeenCalledTimes(1);
  });

});
