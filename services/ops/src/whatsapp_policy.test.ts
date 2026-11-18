import { describe, expect, it } from 'vitest';
import { defaultWhatsAppPermissions, evaluateWhatsAppAction, validateWhatsAppPermissions } from './whatsapp_policy.js';

describe('WhatsApp backend role and financial fence', () => {
  it('defaults receptionist to greeting and general knowledge only', () => {
    expect(defaultWhatsAppPermissions(1)).toEqual(['greet','faq']);
    expect(defaultWhatsAppPermissions(5)).not.toContain('advanced_actions');
  });
  it('rejects escalation through an invalid or duplicate role grant', () => {
    expect(validateWhatsAppPermissions(1,['data_purchase'])).toBe(false);
    expect(validateWhatsAppPermissions(4,['greet','greet'])).toBe(false);
    expect(validateWhatsAppPermissions(4,['greet','injected_action'])).toBe(false);
    expect(validateWhatsAppPermissions(4,['greet','data_purchase'])).toBe(true);
  });
  const ctx = {enabled:true,connected:true,humanTakeover:false,level:4,permissions:defaultWhatsAppPermissions(4),accountLinked:false,accountSessionVerified:false,purchaseConfirmed:false};
  it('never treats WhatsApp phone ownership as wallet authorization', () => {
    expect(evaluateWhatsAppAction('wallet_balance',ctx).reason).toBe('authenticated_account_link_required');
    expect(evaluateWhatsAppAction('funding_details',ctx).allowed).toBe(false);
    expect(evaluateWhatsAppAction('faq',ctx).allowed).toBe(true);
  });
  it('requires verified link, explicit purchase confirmation and original idempotency key', () => {
    const linked={...ctx,accountLinked:true,accountSessionVerified:true};
    expect(evaluateWhatsAppAction('data_purchase',linked).allowed).toBe(false);
    expect(evaluateWhatsAppAction('data_purchase',{...linked,purchaseConfirmed:true}).allowed).toBe(false);
    expect(evaluateWhatsAppAction('data_purchase',{...linked,purchaseConfirmed:true,originalIdempotencyKey:'request_1234567890123456'}).allowed).toBe(true);
  });
  it('human handoff and disabled channels block all automated actions', () => {
    expect(evaluateWhatsAppAction('greet',{...ctx,humanTakeover:true}).reason).toBe('human_takeover');
    expect(evaluateWhatsAppAction('faq',{...ctx,enabled:false}).reason).toBe('channel_unavailable');
  });
});
