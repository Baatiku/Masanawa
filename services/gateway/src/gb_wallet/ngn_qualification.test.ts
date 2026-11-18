import {describe,it,expect} from 'vitest';
import {qualifiedNgnExchange} from './ngn_qualification.js';
import {NGN_EXCHANGE_RATES,quoteNgnQuantity} from './ngn_exchange.js';
const at=Date.parse('2026-10-27T00:00:00Z');
const q={rateVersion:NGN_EXCHANGE_RATES.version,reference:'test-fixture-only',expiresAt:'2026-10-28T00:00:00Z',
 fulfillmentKoboPerGb:10000,fixedFeeKobo:100,feeBps:100,minimumMarginBps:1000,maximumGb:2000};
describe('version-bound NGN fulfillment qualification',()=>{
 it('qualifies each custom quantity using exact cost/fee/margin arithmetic',()=>{
  expect(qualifiedNgnExchange(JSON.stringify(q),at)).toBe(true);
  for(let n=1;n<=2000;n++){
   const quote=quoteNgnQuantity(n);
   expect(Number.isSafeInteger(quote.amountKobo)).toBe(true);
   expect(quote.amountMb).toBe(n*1000);
  }
  expect(quoteNgnQuantity(10).amountKobo).toBe(500000);
  expect(quoteNgnQuantity(1000).amountKobo).toBe(32500000);
  expect(quoteNgnQuantity(2000).amountKobo).toBe(60000000);
 });
 it.each([{rateVersion:'retired'}, {expiresAt:'2026-10-26T00:00:00Z'},
  {fulfillmentKoboPerGb:30000},{fixedFeeKobo:50001},{feeBps:10000},
  {minimumMarginBps:10000},{fulfillmentKoboPerGb:0},{maximumGb:1000},
  {fixedFeeKobo:0.1},{reference:'private prompt / token'}])('closes new quotes with invalid evidence %j',patch=>{
  expect(qualifiedNgnExchange(JSON.stringify({...q,...patch}),at)).toBe(false);
 });
 it('does not qualify absent, malformed or overflow cost evidence',()=>{
  for(const raw of [undefined,'{','null',JSON.stringify({...q,fulfillmentKoboPerGb:1e30})])
   expect(qualifiedNgnExchange(raw,at)).toBe(false);
 });
});
