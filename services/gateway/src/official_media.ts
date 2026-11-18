import {createHash,randomUUID} from 'node:crypto';
import {readFile,mkdir,stat,writeFile,rename,unlink} from 'node:fs/promises';
import {join} from 'node:path';
import sharp from 'sharp';
import {OFFICIAL_PORTRAITS} from './official_portraits.js';
export const OFFICIAL_PARTIES=Object.freeze({
 APC:{name:'All Progressives Congress',imageUrl:'https://cdn.legit.ng/images/1120/c80c390d3b880d90.jpeg?v=1',sourceUrl:'https://www.legit.ng/1197958-full-list-political-parties-nigeria-leaders.html'},
 ADC:{name:'African Democratic Congress',imageUrl:'https://adc.org.ng/storage/blog/adc-condemns-inadequate-military-funding-and-calls-for-urgent-action.jpg',sourceUrl:'https://adc.org.ng/news-single/adc-condemns-inadequate-military-funding-and-calls-for-urgent-action'},
 NDC:{name:'Nigeria Democratic Congress',imageUrl:'https://dailyobserver.ng/public/storage/FB_IMG_1782482226926.webp',sourceUrl:'https://dailyobserver.ng/public/court-voids-ndc-registration-orders-fresh-hearing-over-party-logo-dispute'},
 PDP:{name:'Peoples Democratic Party',imageUrl:'https://punchng.com/wp-content/uploads/2026/06/PDP-LOGO_1782487562.webp',sourceUrl:'https://punchng.com/2027-pdp-uploads-70-of-gov-assembly-candidates/'},
});
export const publicOfficialMediaUrl=(key:string)=>`https://api.masanawa.com/public/persona-media/${key}`;
export const OFFICIAL_MEDIA_ASSETS=Object.freeze([
 ...OFFICIAL_PORTRAITS.map(p=>({key:p.assetKey,url:p.imageUrl,kind:'portrait' as const})),
 ...Object.entries(OFFICIAL_PARTIES).map(([code,p])=>({key:createHash('sha256').update(code+'|'+p.imageUrl).digest('hex').slice(0,32),url:p.imageUrl,kind:'party' as const})),
]);
export function partyEmblemUrl(code:keyof typeof OFFICIAL_PARTIES){return publicOfficialMediaUrl(OFFICIAL_MEDIA_ASSETS.find(a=>a.url===OFFICIAL_PARTIES[code].imageUrl)!.key);}
/** Fixed reviewed catalogue only: no request can provide a URL or expand the
 * fetch scope. Bound bytes, pixels, redirects and time; strip metadata and
 * normalize actual decodable images to webp. Concurrent reads share one fetch. */
export function createOfficialMediaReader(fetcher:typeof fetch=fetch,onFailure?:(key:string,error:unknown)=>void,cacheDir?:string){
 const cache=new Map<string,Buffer>(),pending=new Map<string,Promise<Buffer|null>>();
 const diskBacked=new Set<string>(),failedAt=new Map<string,number>();
 const nextHostSlot=new Map<string,number>(),blockedUntil=new Map<string,number>();
 const wait=(ms:number)=>new Promise<void>(resolve=>setTimeout(resolve,ms));
 const hosts=new Set(OFFICIAL_MEDIA_ASSETS.map(a=>new URL(a.url).hostname));
 async function load(key:string):Promise<Buffer|null>{
  const asset=OFFICIAL_MEDIA_ASSETS.find(a=>a.key===key);if(!asset)return null;
  if(cacheDir){
   const path=join(cacheDir,key+'.webp');
   try{
    if((await stat(path)).size>1_000_000)throw Error('portrait_cache_invalid');
    const bytes=await readFile(path),metadata=await sharp(bytes,{limitInputPixels:512*512}).metadata();
    if(metadata.format!=='webp'||!metadata.width||!metadata.height||metadata.width>512||metadata.height>512)throw Error('portrait_cache_invalid');
    await sharp(bytes).stats(); // Decode pixels; a header alone is not proof.
    cache.set(key,bytes);diskBacked.add(key);return bytes;
   }catch{/* A missing/corrupt cache entry may be repaired from its reviewed source. */}
  }
  let url=new URL(asset.url),response:Response|undefined;
  for(let n=0;n<4;n++){
   for(let attempt=0;attempt<3;attempt++){
    const remaining=(blockedUntil.get(url.hostname)??0)-Date.now();
    if(remaining>15000)throw Error('portrait_source_rate_limited');
    if(remaining>0)await wait(remaining);
    if(url.hostname.endsWith('.wikimedia.org')){
     const slot=Math.max(Date.now(),nextHostSlot.get(url.hostname)??0);
     nextHostSlot.set(url.hostname,slot+2500);
     if(slot>Date.now())await wait(slot-Date.now());
    }
    response=await fetcher(url,{redirect:'manual',signal:AbortSignal.timeout(12000),headers:{'user-agent':'MasanawaPortraits/1.0 (https://masanawa.com; attributed public portrait cache)'}});
    if(response.status!==429)break;
    await response.body?.cancel();
    const retry=response.headers.get('retry-after');
    const delay=retry&&/^\d+$/.test(retry)?Number(retry)*1000:retry&&Number.isFinite(Date.parse(retry))?Math.max(0,Date.parse(retry)-Date.now()):2000*(attempt+1);
    blockedUntil.set(url.hostname,Date.now()+Math.max(1000,delay));
    if(attempt===2||delay>15000)throw Error('portrait_source_rate_limited');
   }
   if(!response)throw Error('portrait_source_unavailable');
   if(![301,302,303,307,308].includes(response.status))break;
   const next=new URL(response.headers.get('location')??'',url);await response.body?.cancel();
   if(next.protocol!=='https:'||next.username||next.password||next.port||!hosts.has(next.hostname))throw Error('portrait_redirect_rejected');url=next;
  }
  if(!response?.ok||!response.body||!/^image\/(jpeg|png|webp|gif)(?:;|$)/i.test(response.headers.get('content-type')??''))throw Error('portrait_source_unavailable_'+response?.status);
  if(Number(response.headers.get('content-length')??0)>10_000_000){await response.body.cancel();throw Error('portrait_too_large');}
  const chunks:Uint8Array[]=[];let bytes=0;const reader=response.body.getReader();
  try{for(;;){const part=await reader.read();if(part.done)break;bytes+=part.value.length;if(bytes>10_000_000)throw Error('portrait_too_large');chunks.push(part.value);}}
  finally{await reader.cancel().catch(()=>undefined);}
  const encoded=await sharp(Buffer.concat(chunks),{limitInputPixels:25_000_000,animated:false}).rotate().resize({width:512,height:512,fit:'inside',withoutEnlargement:true}).webp({quality:85}).toBuffer();
  if(cacheDir){
   const path=join(cacheDir,key+'.webp'),temporary=path+'.'+randomUUID()+'.pending';
   try{await mkdir(cacheDir,{recursive:true,mode:0o700});await writeFile(temporary,encoded,{mode:0o600});await rename(temporary,path);diskBacked.add(key);}
   catch{await unlink(temporary).catch(()=>undefined);onFailure?.(key,Error('portrait_disk_cache_unavailable'));}
  }
  cache.set(key,encoded);return encoded;
 }
 return {stats:()=>({cached:cache.size,persisted:diskBacked.size}),async read(key:string){
  if(!OFFICIAL_MEDIA_ASSETS.some(a=>a.key===key))return null;
  if(cache.has(key))return cache.get(key)!;
  if(Date.now()-(failedAt.get(key)??0)<60_000)return null;
  let result=pending.get(key);if(!result){result=load(key).catch(error=>{failedAt.set(key,Date.now());onFailure?.(key,error);return null;}).finally(()=>pending.delete(key));pending.set(key,result);}return result;
 }};
}
const reader=createOfficialMediaReader(fetch,(assetKey,error)=>{
 process.stdout.write(JSON.stringify({event:'official_media_fetch_failed',assetKey,reason:error instanceof Error?error.message.slice(0,100):'unknown'})+'\n');
},process.env.NODE_ENV==='production'?(process.env.MASANAWA_OFFICIAL_PORTRAIT_CACHE_DIR??'/data/whatsapp-auth/public-portrait-cache'):undefined);
export function registerOfficialMediaRoutes(app:import('fastify').FastifyInstance,mediaReader=reader){
 if(process.env.NODE_ENV==='production')app.addHook('onListen',async()=>{
  // Warm in the background; provider slowness must not block Wallet/readiness.
  void (async()=>{
   const failures:string[]=[];let decoded=0;
   for(let i=0;i<OFFICIAL_MEDIA_ASSETS.length;i+=4){
    const batch=OFFICIAL_MEDIA_ASSETS.slice(i,i+4);
    const result=await Promise.all(batch.map(a=>mediaReader.read(a.key)));
    result.forEach((image,j)=>{if(image)decoded++;else failures.push(batch[j]!.key);});
   }
   process.stdout.write(JSON.stringify({event:'official_media_ready',total:OFFICIAL_MEDIA_ASSETS.length,decoded,...mediaReader.stats(),failed:failures.length,failedAssetKeys:failures})+'\n');
  })();
 });
 app.get<{Params:{key:string}}>('/public/persona-media/:key',async(request,reply)=>{
  if(!/^[a-f0-9]{32}$/.test(request.params.key))return reply.code(404).send({error:'portrait_not_found'});
  const image=await mediaReader.read(request.params.key);
  if(!image)return reply.code(404).header('cache-control','no-store').send({error:'portrait_unavailable'});
  return reply.type('image/webp').header('access-control-allow-origin','*').header('cache-control','public, max-age=86400').header('x-content-type-options','nosniff').send(image);
 });
}
