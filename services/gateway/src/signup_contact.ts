import {parsePhoneNumberFromString} from 'libphonenumber-js/max';
import type {CountryCode} from 'libphonenumber-js';
import {contactCountries} from './country_contact_generated.js';

/** Private self-declared signup context: a dial code never proves residence,
 * GPS location, provider eligibility or opt-in to geographic advertising. */
export class SignupContactError extends Error {
 constructor(){super('SIGNUP_CONTACT_INVALID');}
}

export function parseSignupContact(input:Readonly<{
 contactPhone?:string;countryIso?:string;subdivisionIso?:string;
}>):Readonly<{contactPhone:string;countryIso:string;subdivisionIso?:string}>|null{
 if(input.contactPhone===undefined){
  if(input.countryIso!==undefined||input.subdivisionIso!==undefined)
   throw new SignupContactError();
  return null;
 }
 const raw=input.contactPhone.trim();
 if(!/^[+\d\s()-]+$/u.test(raw))throw new SignupContactError();
 const phone=raw.replace(/[\s()-]/gu,'');
 // Existing Nigerian-only clients send local digits; preserve their records.
 if(!input.countryIso&&!input.subdivisionIso&&/^0(?:70|80|81|90|91)\d{8}$/u.test(phone))
  return {contactPhone:phone,countryIso:'NG'};
 const country=input.countryIso;
 const metadata=country===undefined?undefined:contactCountries[country];
 const region=input.subdivisionIso??null;
 if(!metadata||
   (metadata.subdivisions.length>0&&region===null)||
   (region!==null&&!metadata.subdivisions.includes(region)))
  throw new SignupContactError();
 // The maintained parser, not guessed country prefixes, owns normalization.
 // Country is user-confirmed; even shared +1 calling codes must match.
 const international=phone.startsWith('00')?`+${phone.slice(2)}`:phone;
 const parsed=parsePhoneNumberFromString(international,country as CountryCode);
 if(!parsed||!parsed.isValid()||parsed.country!==country||
   !/^\+[1-9]\d{6,14}$/u.test(parsed.number)||
   !parsed.number.startsWith(`+${metadata.dialCode}`))
  throw new SignupContactError();
 return {contactPhone:parsed.number,countryIso:country!,...(region?{subdivisionIso:region}:{})};
}
