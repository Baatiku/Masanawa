import {isIP} from 'node:net';

/** One deterministic admission rule for advertiser-supplied destinations.
 * This is NOT a phishing verdict: independent staff review remains mandatory,
 * and consumers must not silently follow server-side redirects. */
export function reviewedPromotionDestination(value:unknown):string|null {
 if(value===undefined||value===null||value==='')return null;
 if(typeof value!=='string'||value.length>2048||value.trim()!==value||
    /[\u0000-\u001f\u007f\\]/u.test(value))throw new Error('invalid_promotion_destination');
 let parsed:URL;
 try{parsed=new URL(value);}catch{throw new Error('invalid_promotion_destination');}
 const host=parsed.hostname.toLowerCase();
 const labels=host.split('.');
 if(parsed.protocol!=='https:'||parsed.username||parsed.password||parsed.hash||
  parsed.port||isIP(host)!==0||host==='localhost'||host.endsWith('.localhost')||
  host.endsWith('.local')||host.endsWith('.internal')||host.endsWith('.test')||
  host.length>253||labels.length<2||
  labels.some(label=>!label||label.length>63||!(/^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/u.test(label))||
    label.startsWith('xn--'))||
  !/^[a-z]{2,63}$/u.test(labels[labels.length-1]!))
   throw new Error('invalid_promotion_destination');
 for(const key of parsed.searchParams.keys()){
  if(/^(?:url|redirect|redirect_uri|return|return_url|return_to|next|target|destination|dest|continue|callback|goto|go)$/iu.test(key))
   throw new Error('invalid_promotion_destination');
 }
 return parsed.toString();
}
