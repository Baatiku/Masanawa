import {parsePhoneNumberFromString} from 'libphonenumber-js/max';

/** Private self-declared signup context: a dial code never proves residence,
 * GPS location, provider eligibility or opt-in to geographic advertising. */
const dialCodes:Readonly<Record<string,string>>=Object.freeze({
 NG:'234',GH:'233',KE:'254',ZA:'27',UG:'256',TZ:'255',RW:'250',CM:'237',
 SN:'221',CI:'225',BJ:'229',BF:'226',ML:'223',NE:'227',GN:'224',SL:'232',
 LR:'231',GM:'220',TD:'235',TG:'228',CG:'242',CD:'243',ET:'251',EG:'20',
 MA:'212',DZ:'213',TN:'216',US:'1',CA:'1',GB:'44',IE:'353',FR:'33',
 DE:'49',ES:'34',IT:'39',NL:'31',IN:'91',PK:'92',BD:'880',CN:'86',
 AE:'971',SA:'966',QA:'974',AU:'61',BR:'55',
});
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
 const phone=input.contactPhone.replace(/[\s()-]/gu,'');
 // Existing Nigerian-only clients send local digits; preserve their records.
 if(!input.countryIso&&!input.subdivisionIso&&/^0(?:70|80|81|90|91)\d{8}$/u.test(phone))
  return {contactPhone:phone,countryIso:'NG'};
 const country=input.countryIso;
 const code=country===undefined?undefined:dialCodes[country];
 const region=input.subdivisionIso??null;
 if(!code||!/^\+[1-9]\d{6,14}$/u.test(phone)||!phone.startsWith(`+${code}`)||
   (region!==null&&(!/^[A-Z]{2}-[A-Z0-9]{1,3}$/u.test(region)||
    !region.startsWith(`${country}-`))))throw new SignupContactError();
 const parsed=parsePhoneNumberFromString(phone);
 if(!parsed||!parsed.isValid()||parsed.country!==country||parsed.number!==phone)
  throw new SignupContactError();
 return {contactPhone:phone,countryIso:country!,...(region?{subdivisionIso:region}:{})};
}
