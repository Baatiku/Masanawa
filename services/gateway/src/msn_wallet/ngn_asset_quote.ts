import {createPublicKey,verify} from 'node:crypto';
import {MSNW_PRICING_POLICY} from '@masanawa/commerce';

export type NgnAssetQuote=Readonly<{quoteId:string;providerCode:string;numerator:string;denominator:string;source:string;asOf:string;expiresAt:string;policyId:string}>;
export function validateSignedNgnQuote(raw:unknown,key:string,providerCode:string,now=new Date()):NgnAssetQuote{
  if(!raw||typeof raw!=='object'||Array.isArray(raw))throw new Error('msnw.fx.invalid');
  const envelope=raw as Record<string,unknown>;
  if(typeof envelope.payload!=='string'||envelope.payload.length>12000||typeof envelope.signature!=='string'||!/^[A-Za-z0-9+/]+={0,2}$/.test(envelope.signature))throw new Error('msnw.fx.invalid');
  const publicKey=createPublicKey(key);
  if(publicKey.asymmetricKeyType!=='ed25519'||!verify(null,Buffer.from(envelope.payload,'utf8'),publicKey,Buffer.from(envelope.signature,'base64')))throw new Error('msnw.fx.signature_invalid');
  const decoded:unknown=JSON.parse(envelope.payload);
  if(!decoded||typeof decoded!=='object'||Array.isArray(decoded))throw new Error('msnw.fx.invalid');
  const quote=decoded as Record<string,unknown>;
  if(quote.policyId!==MSNW_PRICING_POLICY.id||quote.referenceCurrency!=='NGN'||quote.providerCode!==providerCode||
    typeof quote.quoteId!=='string'||!/^[A-Za-z0-9:_-]{8,128}$/.test(quote.quoteId)||
    typeof quote.source!=='string'||quote.source.length<1||quote.source.length>160||
    typeof quote.numerator!=='string'||!/^[1-9][0-9]{0,29}$/.test(quote.numerator)||
    typeof quote.denominator!=='string'||!/^[1-9][0-9]{0,29}$/.test(quote.denominator)||
    typeof quote.asOf!=='string'||typeof quote.expiresAt!=='string')throw new Error('msnw.fx.invalid');
  const at=Date.parse(quote.asOf),end=Date.parse(quote.expiresAt),time=now.getTime();
  if(!Number.isFinite(at)||!Number.isFinite(end)||at>time+5000||time-at>300000||end<=time||end<=at||end-at>300000)throw new Error('msnw.fx.stale');
  return Object.freeze({quoteId:quote.quoteId,providerCode,numerator:quote.numerator,denominator:quote.denominator,source:quote.source,asOf:quote.asOf,expiresAt:quote.expiresAt,policyId:MSNW_PRICING_POLICY.id});
}
/** Public quote endpoint, signed by the approved treasury rate authority.
 * No owner data or provider secrets are sent. No unsigned/static FX fallback. */
export function createSignedNgnQuoteReader(input:{url:string;publicKey:string;fetchImpl?:typeof fetch}){
  const endpoint=new URL(input.url);
  if(endpoint.protocol!=='https:'||endpoint.username||endpoint.password||endpoint.hash||endpoint.search)throw new Error('msnw.fx.endpoint_invalid');
  if(createPublicKey(input.publicKey).asymmetricKeyType!=='ed25519')throw new Error('msnw.fx.key_invalid');
  return async(providerCode:string):Promise<NgnAssetQuote>=>{
    if(!/^[A-Z0-9_-]{2,40}$/.test(providerCode))throw new Error('msnw.fx.asset_invalid');
    const url=new URL(endpoint);url.searchParams.set('providerCode',providerCode);url.searchParams.set('referenceCurrency','NGN');
    const response=await (input.fetchImpl??fetch)(url,{redirect:'error',signal:AbortSignal.timeout(5000),headers:{accept:'application/json'}});
    if(!response.ok)throw new Error('msnw.fx.unavailable');
    const body=await response.text();if(body.length>20000)throw new Error('msnw.fx.invalid');
    return validateSignedNgnQuote(JSON.parse(body),input.publicKey,providerCode);
  };
}
