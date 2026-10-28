import {describe,it,expect} from 'vitest';
import {parseSignupContact,SignupContactError} from './signup_contact.js';
describe('private country-aware contact signup',()=>{
 it('validates normalized E.164 with confirmed country and subdivision',()=>{
  expect(parseSignupContact({contactPhone:'+234 803 123 4567',countryIso:'NG',
    subdivisionIso:'NG-FC'})).toEqual({contactPhone:'+2348031234567',
     countryIso:'NG',subdivisionIso:'NG-FC'});
  expect(parseSignupContact({contactPhone:'+44 7401 123456',countryIso:'GB',
    subdivisionIso:'GB-ENG'})).toMatchObject({countryIso:'GB'});
  expect(parseSignupContact({contactPhone:'0803 123 4567',countryIso:'NG',
    subdivisionIso:'NG-KD'})).toEqual({contactPhone:'+2348031234567',
      countryIso:'NG',subdivisionIso:'NG-KD'});
  expect(parseSignupContact({contactPhone:'00234 803 123 4567',countryIso:'NG',
    subdivisionIso:'NG-FC'}))
    .toEqual({contactPhone:'+2348031234567',countryIso:'NG',subdivisionIso:'NG-FC'});
 });
 it('retains older Nigerian records, without making contact an OTP credential',()=>{
  expect(parseSignupContact({contactPhone:'08031234567'}))
    .toEqual({contactPhone:'08031234567',countryIso:'NG'});
 });
 it('requires an explicit choice for the shared US/Canada +1 code',()=>{
  expect(parseSignupContact({contactPhone:'+14165550123',countryIso:'CA',
    subdivisionIso:'CA-ON'})).toMatchObject({countryIso:'CA'});
  expect(()=>parseSignupContact({contactPhone:'+14165550123'}))
    .toThrow(SignupContactError);
  expect(()=>parseSignupContact({contactPhone:'+14165550123',countryIso:'US'}))
    .toThrow(SignupContactError);
 });
 it('denies prefix, region, country or length mismatches',()=>{
  for(const input of [
   {contactPhone:'+233241234567',countryIso:'NG'},
   {contactPhone:'+2348031234567',countryIso:'NG'},
   {contactPhone:'+2348031234567',countryIso:'NG',subdivisionIso:'GB-LND'},
   {contactPhone:'+2348031234567',countryIso:'NG',subdivisionIso:'NG-ZZ'},
   {contactPhone:'+2348031234567',countryIso:'NG',subdivisionIso:'NG-ABC'},
   {contactPhone:'+2348031234567',countryIso:'NG',subdivisionIso:'CA-ON'},
   {contactPhone:'+23401234',countryIso:'NG'},
   {contactPhone:'+234803123456789012',countryIso:'NG'},
   {contactPhone:'+2348031234567 ext 1',countryIso:'NG'},
   {contactPhone:'+2348031234567',countryIso:'ZZ'},
   {contactPhone:'+99912345678',countryIso:'ZZ'},
   {countryIso:'NG'},
  ])expect(()=>parseSignupContact(input)).toThrow(SignupContactError);
 });
 it('a missing subdivision must be confirmed and is never inferred from phone',()=>{
  expect(()=>parseSignupContact({contactPhone:'+2348031234567',countryIso:'NG'}))
    .toThrow(SignupContactError);
 });
});
