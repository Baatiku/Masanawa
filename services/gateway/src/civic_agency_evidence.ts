import {createHash} from 'node:crypto';
import {createWebCivicKnowledgeReader} from './web_civic_knowledge.js';
import {CIVIC_AGENCY_CATALOG,approvedCivicAgencyId} from './civic_agency_bootstrap.js';
import {institutionEvidence} from './civic_institution_evidence.js';

export interface CivicAgencyEvidence {
  readonly id:string;
  readonly title:string;
  readonly sourceUrl:string;
  readonly sourceDate:string;
  readonly sourceDateKind:'review'|'retrieval';
  readonly content:string;
}

interface CivicAgencySource {readonly id:string;readonly name:string;readonly short:string;readonly topic:string;readonly source:string}

/** Bounded public-document lookup. Agency homepages are starting points, not
 * delegated tool authority or proof that a current form/fee remains valid.
 * The citizen's question never becomes a URL, and redirects stay on the
 * configured agency's HTTPS host. No customer data is stored in this cache. */
export function createCivicAgencyEvidenceReader(input:{fetch?:typeof fetch;now?:()=>number;web?:ReturnType<typeof createWebCivicKnowledgeReader>}={}) {
  const fetcher=input.fetch??fetch,now=input.now??Date.now;
  // Source-retrieval tests can use a fully local fetcher; only production
  // defaults contact the public, read-only ChatMeUp web dossier feed.
  const web=input.web??(input.fetch||process.env.NODE_ENV==='test'?null:createWebCivicKnowledgeReader());
  const cache=new Map<string,{until:number;data:readonly CivicAgencyEvidence[]}>();
  const pending=new Map<string,Promise<readonly CivicAgencyEvidence[]>>();

  return Object.freeze({
    async read(id:string,question=''):Promise<readonly CivicAgencyEvidence[]> {
      const agencyId=approvedCivicAgencyId(id);
      if(!agencyId)throw Error('civic_agency_not_approved');
      const agency:CivicAgencySource=CIVIC_AGENCY_CATALOG.find(item=>item.id===agencyId)!;
      const root=new URL(agency.source);
      const terms=[...new Set((question.toLowerCase().match(/[\p{L}\p{N}]{4,40}/gu)??[])
        .filter(word=>!['what','where','when','which','about','please','would','could','agency','government'].includes(word)))].slice(0,12);
      const seed:CivicAgencyEvidence=Object.freeze({
        id:`mandate_${agencyId}`,title:`${agency.name} — introductory civic scope`,
        sourceUrl:agency.source,sourceDate:'2026-11-08',sourceDateKind:'review',
        content:`Independent ChatMeUp civic catalogue scope: ${agency.name} (${agency.short}) is covered for ${agency.topic}. This introduction does not verify current leadership, fees, forms, eligibility or individual application outcomes.`,
      });
      const canonicalDirectoryId=agencyId.startsWith('org-')?agencyId:'org-'+agency.name.toLowerCase().normalize('NFKD')
        .replace(/[\u0300-\u036f]/g,'').replace(/[^a-z0-9]+/g,'-').replace(/^-|-$/g,'');
      const reviewed=institutionEvidence[canonicalDirectoryId];
      const reviewedEvidence:CivicAgencyEvidence|undefined=reviewed?Object.freeze({
        id:`reviewed_${agencyId}`,title:reviewed.label,sourceUrl:reviewed.url,
        sourceDate:reviewed.reviewedAt??'2026-11-17',sourceDateKind:'review',
        content:[...reviewed.responsibilities,...(reviewed.history??[]),...(reviewed.services??[])].join(' '),
      }):undefined;
      const starting:readonly CivicAgencyEvidence[]=Object.freeze(reviewedEvidence?[seed,reviewedEvidence]:[seed]);
      const withDossier=async(base:readonly CivicAgencyEvidence[])=>{
        if(!web)return base;
        const topic=['education','road','budget','election','leadership','health','legislation','security',
          'tax','service','history','commissioned','school'].find(t=>question.toLowerCase().includes(t))??'';
        const docs=await web.read({kind:'agency',id:canonicalDirectoryId,name:agency.name,short:agency.short,query:topic});
        return Object.freeze([...base,...docs.slice(0,10).map(d=>({
          id:d.id,title:d.title,sourceUrl:d.sourceUrl,sourceDate:d.sourceDate,
          sourceDateKind:'retrieval' as const,content:d.content
        }))]);
      };
      if(!terms.length)return withDossier(starting);
      const key=agencyId+':'+createHash('sha256').update(terms.join(' ')).digest('hex');
      const old=cache.get(key);if(old&&old.until>now())return withDossier(old.data);
      if(pending.has(key))return withDossier(await pending.get(key)!);
      if(pending.size>=3)return withDossier(starting);
      const task=(async()=>{
        const deadline=AbortSignal.timeout(6500),results:CivicAgencyEvidence[]=[...starting];
        const candidates:{url:string;score:number}[]=[{url:agency.source,score:100}];
        const visited=new Set<string>();
        const baseHost=root.hostname.replace(/^www\./,'');
        const allowed=(url:URL)=>url.protocol==='https:'&&url.hostname.replace(/^www\./,'')===baseHost&&
          !url.username&&!url.password&&!url.port&&!url.search&&!url.hash&&url.pathname.length<=250;
        async function load(raw:string){
          let url=new URL(raw);
          for(let hop=0;hop<3;hop++){
            if(!allowed(url))throw Error('civic_source_outside_agency');
            const response=await fetcher(url.href,{redirect:'manual',signal:deadline,headers:{Accept:'text/html, application/xhtml+xml'}});
            if([301,302,303,307,308].includes(response.status)){
              await response.body?.cancel();const next=response.headers.get('location');
              if(!next)throw Error('civic_source_redirect');url=new URL(next,url);continue;
            }
            if(!response.ok||!response.headers.get('content-type')?.includes('html')||!response.body)throw Error('civic_source_unavailable');
            const reader=response.body.getReader(),chunks:Uint8Array[]=[];let size=0;
            try{for(;;){const part=await reader.read();if(part.done)break;
              const take=Math.min(part.value.length,262144-size);chunks.push(part.value.subarray(0,take));size+=take;
              if(size>=262144)break;
            }}finally{await reader.cancel().catch(()=>undefined);reader.releaseLock();}
            const html=Buffer.concat(chunks.map(v=>Buffer.from(v))).toString('utf8');
            const clean=html.replace(/<(script|style|template|nav|header|footer)\b[^>]*>[\s\S]*?<\/\1\s*>/gi,' ');
            const decode=(value:string)=>value.replace(/&(?:amp|lt|gt|quot|apos|nbsp);/g,s=>({'&amp;':'&','&lt;':'<','&gt;':'>','&quot;':'"','&apos;':"'",'&nbsp;':' '}[s]??s));
            const body=decode(clean.replace(/<[^>]*>/g,' ')).replace(/\s+/g,' ').trim();
            const title=decode((/<title\b[^>]*>([\s\S]*?)<\/title>/i.exec(html)?.[1]??agency.name).replace(/<[^>]*>/g,' ')).trim().slice(0,140);
            const links=[...clean.matchAll(/<a\b[^>]*\bhref\s*=\s*["']([^"']+)["'][^>]*>([\s\S]*?)<\/a>/gi)]
              .slice(0,240).flatMap(m=>{try{const link=new URL(decode(m[1]!),url);link.hash='';
                if(!allowed(link)||link.href===url.href)return [];
                const label=decode(m[2]!.replace(/<[^>]*>/g,' ')).toLowerCase();
                const score=terms.filter(term=>(label+' '+link.pathname).includes(term)).length;
                return score?[{url:link.href,score}]:[];
              }catch{return [];}});
            return {url:url.href,title,body,links};
          }
          throw Error('civic_source_redirect_limit');
        }
        while(candidates.length&&visited.size<3&&!deadline.aborted){
          candidates.sort((a,b)=>b.score-a.score);
          const candidate=candidates.shift()!;
          if(visited.has(candidate.url))continue;
          visited.add(candidate.url);
          try{
            const page=await load(candidate.url),lower=page.body.toLowerCase();
            const hits=terms.map(term=>lower.indexOf(term)).filter(n=>n>=0);
            if(hits.length&&page.body.length>=100){
              const at=hits[0]!;
              const content=Buffer.from(page.body.slice(Math.max(0,at-240)),'utf8').subarray(0,2400).toString('utf8').replace(/\uFFFD$/u,'');
              results.push(Object.freeze({id:'agency_web_'+createHash('sha256').update(page.url+content).digest('hex').slice(0,20),
                title:page.title,sourceUrl:page.url,sourceDate:new Date(now()).toISOString().slice(0,10),sourceDateKind:'retrieval',content}));
            }
            for(const next of page.links.sort((a,b)=>b.score-a.score).slice(0,3))
              if(!visited.has(next.url)&&!candidates.some(p=>p.url===next.url))candidates.push(next);
          }catch{/* Public-source outages leave the reviewed introductory scope available. */}
        }
        const data=Object.freeze(results.slice(0,4));
        cache.set(key,{until:now()+600_000,data});
        while(cache.size>64)cache.delete(cache.keys().next().value!);
        return data;
      })();
      pending.set(key,task);
      try{return await withDossier(await task);}finally{pending.delete(key);}
    },
  });
}
