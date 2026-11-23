import type {PublicOfficialEvidence} from '@masanawa/agents';
/** Bounded read-only projection of the same civic dossiers displayed on
 * app.masanawa.com. A web-profile publication is NOT an identity grant or a
 * government endorsement. The caller must independently bind the identity to
 * its approved backend dossier before invoking this reader.
 *
 * No web-origin instructions, user memories or mutable chat payloads are sent.
 */
type RawRow={id?:unknown;title?:unknown;content?:unknown;sourceUrl?:unknown;sourceDate?:unknown;stage?:unknown};
type RawProfile={schema?:unknown;id?:unknown;kind?:unknown;name?:unknown;agencyShort?:unknown;identitySources?:unknown;
 reviewedAt?:unknown;revision?:unknown;evidence?:unknown};
export type CivicWebEvidence=PublicOfficialEvidence & {sourceDateKind:'retrieval'};
const HOST='https://app.masanawa.com';
const safeUrl=(v:unknown):v is string=>{if(typeof v!=='string'||v.length>1800)return false;try{
 const u=new URL(v);return u.protocol==='https:'&&!u.username&&!u.password&&!u.port&&
  !['localhost','127.0.0.1','0.0.0.0','::1'].includes(u.hostname)&&!u.hostname.endsWith('.local');
 }catch{return false;}};
const norm=(s:string)=>s.normalize('NFKC').trim().replace(/\s+/g,' ').toLowerCase();
function decode(p:RawProfile,identity:{kind:'person'|'agency';name:string;sourceUrl?:string;id?:string;short?:string}){
 if(p.schema!==1||p.kind!==identity.kind||typeof p.id!=='string'||!(/^(person|org)-[a-z0-9-]{3,125}$/.test(p.id))||
    typeof p.name!=='string'||norm(p.name)!==norm(identity.name)||
    typeof p.revision!=='string'||!(/^[a-f0-9]{64}$/.test(p.revision))||
    typeof p.reviewedAt!=='string'||!(/^\d{4}-\d{2}-\d{2}$/.test(p.reviewedAt))||
    !Array.isArray(p.evidence)||p.evidence.length>20||!p.evidence.length)return [];
 const reviewed=Date.parse(p.reviewedAt);
 if(!Number.isFinite(reviewed)||reviewed>Date.now()+86_400_000||reviewed<Date.now()-365*86_400_000)return [];
 if(identity.kind==='person'){
  if(!identity.sourceUrl||!Array.isArray(p.identitySources)||!p.identitySources.includes(identity.sourceUrl))return [];
 }else{
  if(identity.id!==p.id||typeof p.agencyShort!=='string'||norm(p.agencyShort)!==norm(identity.short??''))return [];
 }
 const evidence:CivicWebEvidence[]=[];let bytes=0;
 for(const raw of p.evidence as RawRow[]){
  if(!raw||typeof raw!=='object'||typeof raw.id!=='string'||raw.id.length>1800||
   typeof raw.title!=='string'||raw.title.length>160||
   typeof raw.content!=='string'||!raw.content||raw.content.length>1500||
   !safeUrl(raw.sourceUrl)||typeof raw.sourceDate!=='string'||!/^\d{4}-\d{2}-\d{2}$/.test(raw.sourceDate))continue;
  const size=Buffer.byteLength(JSON.stringify(raw),'utf8');if(bytes+size>25000)break;bytes+=size;
  const excerpt=raw.stage?'[Reported project status: '+String(raw.stage).slice(0,70)+'] '+raw.content:raw.content;
  evidence.push({id:'civic_'+p.revision.slice(0,12)+'_'+String(evidence.length).padStart(2,'0'),
   title:raw.title,sourceUrl:raw.sourceUrl,sourceDate:raw.sourceDate,
   content:excerpt,kind:'official_record',sourceDateKind:'retrieval'});
 }
 return evidence;
}
export function createWebCivicKnowledgeReader(options:{fetch?:typeof fetch;now?:()=>number;origin?:string}={}){
 const fetcher=options.fetch??fetch,now=options.now??Date.now;
 const origin=options.origin??HOST;
 // Overrides are only for hermetic unit tests. Do not delegate a runtime
 // environment variable or a citizen-provided URL to this reader.
 const cache=new Map<string,{until:number;value:readonly CivicWebEvidence[]}>();
 const pending=new Map<string,Promise<readonly CivicWebEvidence[]>>();
 async function read(identity:{kind:'person'|'agency';name:string;sourceUrl?:string;id?:string;short?:string;query?:string}):Promise<readonly CivicWebEvidence[]>{
  if(identity.name.length>160||identity.query&&identity.query.length>500)return [];
  const u=new URL('/api/ai/civic-knowledge',origin);
  if(identity.kind==='person'){
   if(!safeUrl(identity.sourceUrl))return [];
   u.searchParams.set('name',identity.name);u.searchParams.set('source',identity.sourceUrl!);
  }else{
   if(!identity.id||!/^org-[a-z0-9-]{4,120}$/.test(identity.id))return [];
   u.searchParams.set('id',identity.id);
  }
  u.searchParams.set('q',identity.query??'');
  const key=u.href,hit=cache.get(key);
  if(hit&&hit.until>now())return hit.value;
  if(pending.has(key))return pending.get(key)!;
  if(pending.size>=4)return [];
  const job=(async():Promise<readonly CivicWebEvidence[]>=>{
   try{
    const response=await fetcher(u.href,{redirect:'error',signal:AbortSignal.timeout(1800),
     headers:{Accept:'application/json'}});
    if(!response.ok||!response.headers.get('content-type')?.includes('application/json'))return [];
    const bytes=await response.text();if(Buffer.byteLength(bytes,'utf8')>45000)return [];
    const data=JSON.parse(bytes) as RawProfile;
    const value=Object.freeze(decode(data,identity));
    cache.set(key,{until:now()+180000,value});
    while(cache.size>128)cache.delete(cache.keys().next().value!);
    return value;
   }catch{return [];}
  })();pending.set(key,job);try{return await job;}finally{pending.delete(key);}
 }
 return Object.freeze({read});
}
