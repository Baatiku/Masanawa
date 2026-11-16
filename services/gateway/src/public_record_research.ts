import {createHash} from 'node:crypto';
import {isApprovedBiographySourceUrl,type PublicOfficialEvidence} from '@masanawa/agents';

/** Read public approved-source pages and relevant links, never arbitrary model URLs.
 * The citizen query selects excerpts locally and is never sent as a URL query.
 */
export function createPublicRecordResearch(input:{fetch?:typeof fetch;now?:()=>number}={}){
 const fetcher=input.fetch??fetch,now=input.now??Date.now;
 const cache=new Map<string,{until:number;items:readonly PublicOfficialEvidence[]}>();
 const pending=new Map<string,Promise<readonly PublicOfficialEvidence[]>>();
 const allowed=(value:string)=>isApprovedBiographySourceUrl(value);
 const decode=(s:string)=>s.replace(/&(?:amp|quot|apos|lt|gt|nbsp);/g,m=>({'&amp;':'&','&quot;':'"','&apos;':"'",'&lt;':'<','&gt;':'>','&nbsp;':' '}[m]??m)).replace(/&#(x[0-9a-f]+|\d+);/gi,(_,n:string)=>{const v=n[0]?.toLowerCase()==='x'?parseInt(n.slice(1),16):Number(n);return v>0&&v<=0x10ffff?String.fromCodePoint(v):'';});
 async function page(raw:string,signal:AbortSignal){
  let url=raw;
  for(let hop=0;hop<3;hop++){
   if(!allowed(url))throw Error('research_source_not_approved');
   const r=await fetcher(url,{redirect:'manual',signal,headers:{Accept:'text/html, application/xhtml+xml'}});
   if([301,302,303,307,308].includes(r.status)){await r.body?.cancel();const next=r.headers.get('location');if(!next)throw Error('research_redirect_missing');url=new URL(next,url).href;continue;}
   if(!r.ok||!r.headers.get('content-type')?.includes('html')||!r.body)throw Error('research_source_unavailable');
   const reader=r.body.getReader(),chunks:Uint8Array[]=[];let size=0;
   try{for(;;){const v=await reader.read();if(v.done)break;const remaining=524288-size;chunks.push(v.value.subarray(0,remaining));size+=Math.min(v.value.length,remaining);if(size>=524288)break;}}finally{await reader.cancel().catch(()=>undefined);reader.releaseLock();}
   const html=Buffer.concat(chunks.map(c=>Buffer.from(c))).toString('utf8');
   const title=decode((/<title\b[^>]*>([\s\S]*?)<\/title>/i.exec(html)?.[1]??new URL(url).hostname).replace(/<[^>]*>/g,' ')).trim().slice(0,160);
   const clean=html.replace(/<(script|style|template|nav|header|footer)\b[^>]*>[\s\S]*?<\/\1\s*>/gi,' ').replace(/<(script|style|template)\b[\s\S]*$/gi,' ');
   const text=decode(clean.replace(/<[^>]*>/g,' ')).replace(/\s+/g,' ').trim();
   const links=[...clean.matchAll(/<a\b[^>]*\bhref\s*=\s*["']([^"']+)["'][^>]*>([\s\S]*?)<\/a>/gi)].slice(0,500).flatMap(m=>{try{const u=new URL(decode(m[1]!),url);u.hash='';return allowed(u.href)&&u.href!==url?[{url:u.href,label:decode(m[2]!.replace(/<[^>]*>/g,' '))}]:[];}catch{return [];}});
   return {url,title,text,links};
  }
  throw Error('research_redirect_limit');
 }
 return async function research(query:string,sourceUrls:readonly string[]):Promise<readonly PublicOfficialEvidence[]>{
  const terms=[...new Set((query.toLowerCase().match(/[\p{L}]{4,40}/gu)??[]).filter(t=>!['what','when','where','which','about','please','could','would','their','there','person','official'].includes(t)))].slice(0,12);
  if(!terms.length)return [];
  const roots=[...new Set(sourceUrls.filter(allowed))].slice(0,2);
  const key=createHash('sha256').update(JSON.stringify([terms,roots])).digest('hex');
  const old=cache.get(key);if(old&&old.until>now())return old.items;
  if(pending.has(key))return pending.get(key)!;
  if(pending.size>=2)return [];
  const work=(async()=>{const items:PublicOfficialEvidence[]=[],visited=new Set<string>();const signal=AbortSignal.timeout(8000);const queue=[...roots];
   while(queue.length&&visited.size<4&&!signal.aborted){const url=queue.shift()!;if(visited.has(url))continue;visited.add(url);
    try{const p=await page(url,signal);if(p.text.length<100)continue;const lower=p.text.toLowerCase();const positions=terms.flatMap(term=>{const at=lower.indexOf(term);return at<0?[]:[at];});if(!positions.length)continue;
     const at=positions[0]!,excerpt=Buffer.from(p.text.slice(Math.max(0,at-180)),'utf8').subarray(0,1400).toString('utf8').replace(/\uFFFD$/,'');
     const date=new Date(now()).toISOString();items.push({id:'web_'+createHash('sha256').update(p.url+excerpt).digest('hex').slice(0,24),sourceUrl:p.url,title:p.title,content:excerpt,sourceDate:date.slice(0,10),kind:'biographical_reference',retrievedAt:date,sourceDateKind:'retrieval'});
     const ranked=p.links.map(link=>({...link,score:terms.filter(t=>(link.label+' '+link.url).toLowerCase().includes(t)).length})).filter(l=>l.score>0).sort((a,b)=>b.score-a.score);for(const link of ranked.slice(0,2))if(!visited.has(link.url)&&!queue.includes(link.url))queue.push(link.url);
    }catch{/* Keep reviewed knowledge available when a public page refuses access. */}
   }
   const result=Object.freeze([...new Map(items.map(item=>[item.id,item])).values()].slice(0,4));cache.set(key,{until:now()+600000,items:result});while(cache.size>32)cache.delete(cache.keys().next().value!);return result;
  })();pending.set(key,work);try{return await work;}finally{pending.delete(key);}
 };
}
