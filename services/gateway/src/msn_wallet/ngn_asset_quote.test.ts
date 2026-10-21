import {generateKeyPairSync,sign} from 'node:crypto';
import {expect,it} from 'vitest';
import {validateSignedNgnQuote,createSignedNgnQuoteReader} from './ngn_asset_quote.js';
const keys=generateKeyPairSync('ed25519'),key=keys.publicKey.export({type:'spki',format:'pem'}).toString();
const now=new Date('2026-10-21T12:00:00Z');
const base={policyId:'msnw-ngn-1-v1',referenceCurrency:'NGN',providerCode:'USDTTRC20',quoteId:'fixture-quote-1',source:'fixture authority',numerator:'1000000',denominator:'1500',asOf:now.toISOString(),expiresAt:'2026-10-21T12:02:00Z'};
function envelope(value:unknown){const payload=JSON.stringify(value);return{payload,signature:sign(null,Buffer.from(payload),keys.privateKey).toString('base64')};}
it('verifies exact NGN quote without treating stablecoin as USD parity',()=>{
 expect(validateSignedNgnQuote(envelope(base),key,'USDTTRC20',now)).toMatchObject({numerator:'1000000',denominator:'1500',policyId:'msnw-ngn-1-v1'});
});
it('rejects altered payload, asset, policy, invalid ratios and signed nonobjects',()=>{
 const tampered=envelope(base);tampered.payload=tampered.payload.replace('1500','1000');
 expect(()=>validateSignedNgnQuote(tampered,key,'USDTTRC20',now)).toThrow('signature_invalid');
 for(const value of [{...base,providerCode:'USDCMATIC'},{...base,policyId:'usd-old'},{...base,denominator:'0'},null,[]])expect(()=>validateSignedNgnQuote(envelope(value),key,'USDTTRC20',now)).toThrow();
});
it('rejects expired, future and excessive quote windows',()=>{
 for(const value of [{...base,expiresAt:now.toISOString()},{...base,asOf:'2026-10-21T12:01:00Z'},{...base,expiresAt:'2026-10-21T12:06:00Z'}])expect(()=>validateSignedNgnQuote(envelope(value),key,'USDTTRC20',now)).toThrow('stale');
});
it('requires HTTPS public endpoint and asymmetric verification key',()=>{
 expect(()=>createSignedNgnQuoteReader({url:'http://fixture.invalid',publicKey:key})).toThrow('endpoint_invalid');
 expect(()=>createSignedNgnQuoteReader({url:'https://fixture.invalid?secret=x',publicKey:key})).toThrow('endpoint_invalid');
});
