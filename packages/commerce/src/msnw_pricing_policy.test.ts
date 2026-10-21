import {describe,it,expect} from 'vitest';
import {assertMsnwNgnPolicyRate,msnwAtomicFromNgnKobo,msnwNgnReference} from './msnw_pricing_policy.js';
describe('owner-fixed one MSNW per naira',()=>{
 it('converts kobo exactly without rounding, float or dollar assumptions',()=>{
  expect(msnwAtomicFromNgnKobo('1')).toBe('10000');
  expect(msnwAtomicFromNgnKobo('500000')).toBe('5000000000');
  expect(msnwNgnReference('5000000000')).toBe('5000.000000');
  expect(msnwNgnReference('1')).toBe('0.000001');
 });
 it('rejects conflicting rates while using the decided rate by default',()=>{
  expect(assertMsnwNgnPolicyRate()).toBe('100');expect(assertMsnwNgnPolicyRate('100')).toBe('100');
  expect(()=>assertMsnwNgnPolicyRate('10000')).toThrow('policy_conflict');
  for(const value of ['1.2','-1','01','NaN'])expect(()=>msnwAtomicFromNgnKobo(value)).toThrow();
 });
});
