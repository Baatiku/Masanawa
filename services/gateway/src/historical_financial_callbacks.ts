import { FlutterwaveWebhookError } from '@masanawa/providers';
import type { BillingCheckoutService } from './billing_checkout.js';
import type { BillingFinancialService } from './financial_billing.js';
import type { BillingWalletService } from './billing_wallet.js';
import type { FastifyInstance } from 'fastify';
import Type from 'typebox';
import type { FinancialService } from './financial_service.js';
import type { MsnwPaystackFiatService } from './msn_wallet/paystack_fiat_evidence.js';

/** Existing provider receipts must reconcile historical obligations after UI retirement.
 * No customer quote, verification, funding-account or spending API is mounted here.
 */
export function registerHistoricalFinancialCallbacks(app: FastifyInstance, options: {
  financial?: FinancialService;
  billingCheckout?: BillingCheckoutService;
  billingFinancial?: BillingFinancialService;
  billingWallet?: BillingWalletService;
  msnwPaystackFiat?: MsnwPaystackFiatService;
}) {
  if (options.financial) {
    const financial = options.financial;
    const headers = Type.Object({
      'x-nowpayments-sig': Type.String({ minLength: 128, maxLength: 128 }),
    }, { additionalProperties: true });
    for (const [path, handle] of [
      ['/v1/financial/nowpayments/ipn', financial.handleNowPaymentsIpn],
      ['/v1/financial/nowpayments/payout-ipn', financial.handleNowPaymentsPayoutIpn],
    ] as const) {
      app.post(path, { bodyLimit: 256_000, schema: { headers, body: Type.Unknown() } },
        async (request, reply) => {
          const signature = request.headers['x-nowpayments-sig'];
          if (typeof signature !== 'string') return reply.code(400).send({ error: 'invalid_signature' });
          await handle({ signature, payload: request.body });
          reply.code(202);
          return { accepted: true as const };
        });
    }
  }
  if (options.billingFinancial) {
    const billing = options.billingFinancial;
    const checkout = options.billingCheckout;
    const wallet = options.billingWallet;
    app.post('/v1/webhooks/flutterwave', { schema: { body: Type.Unknown() } },
      async (request, reply) => {
        const header = request.headers['verif-hash'];
        const input = { rawBody: Buffer.from(JSON.stringify(request.body ?? {}), 'utf8'),
          verifHash: typeof header === 'string' ? header : null };
        try {
          if (wallet) {
            const funding = await wallet.receiveFundingWebhook(input);
            if (funding.handled) return { accepted: true, duplicate: funding.duplicate,
              funding: true, resumed: funding.resumed };
          }
          const result = await billing.receiveWebhook(input);
          if (result.reference && checkout) {
            await checkout.reconcileFulfillment({ reference: result.reference });
          }
          return { accepted: true, duplicate: result.duplicate };
        } catch (error) {
          if (error instanceof FlutterwaveWebhookError) {
            reply.code(error.code === 'invalid_signature' ? 401 :
              error.code === 'payload_too_large' ? 413 : 400);
            return { error: error.code };
          }
          reply.code(503);
          return { error: 'billing_webhook_processing_unavailable' };
        }
      });
  }
  if (options.msnwPaystackFiat) {
    const funding = options.msnwPaystackFiat;
    app.register(async scope => {
      scope.removeContentTypeParser('application/json');
      scope.addContentTypeParser('application/json', { parseAs: 'buffer', bodyLimit: 128 * 1024 },
        (_request, body, done) => done(null, body));
      scope.post('/v1/wallet/msnw/funding/webhook', async (request, reply) => {
        try {
          const result = await funding.handleSignedWebhook(request.body as Buffer,
            request.headers['x-paystack-signature']);
          return { accepted: result.accepted };
        } catch (error) {
          const status = error instanceof Error && 'statusCode' in error &&
            typeof error.statusCode === 'number' ? error.statusCode : 503;
          reply.code(status);
          return { error: 'funding.callback_rejected' };
        }
      });
    });
  }
}
