import {describe,it,expect} from 'vitest';
import {reviewedPromotionDestination} from './promotion_destination.js';

describe('SPE-A09 advertiser destinations',()=>{
 it('keeps link optional and canonicalizes safe explicit HTTPS',()=>{
  expect(reviewedPromotionDestination(undefined)).toBe(null);
  expect(reviewedPromotionDestination(null)).toBe(null);
  expect(reviewedPromotionDestination('')).toBe(null);
  expect(reviewedPromotionDestination('https://example.org/campaign?source=masanawa'))
   .toBe('https://example.org/campaign?source=masanawa');
 });
 it.each([
  'http://example.org','javascript:alert(1)','data:text/html,hi',
  'https://user:pass@example.org/','https://example.org/#hidden',
  'https://localhost/','https://internal.local/','https://server.internal',
  'https://127.0.0.1','https://[::1]/','https://example.org:8443/',
  'https://example.org/?next=https%3A%2F%2Fattacker.invalid',
  'https://example.org/?redirect_uri=https%3A%2F%2Fevil.invalid',
  'https://xn--80ak6aa92e.com/','https://example.test/',
  ' https://example.org','https://example.org\\evil.invalid',
 ])('rejects nonreviewable or deceptive destination %s',bad=>{
  expect(()=>reviewedPromotionDestination(bad)).toThrow('invalid_promotion_destination');
 });
 it('rejects non-string values and overlong destinations',()=>{
  expect(()=>reviewedPromotionDestination({url:'https://example.org'})).toThrow();
  expect(()=>reviewedPromotionDestination('https://example.org/'+ 'a'.repeat(2100))).toThrow();
 });
});
