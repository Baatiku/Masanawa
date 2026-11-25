import {expect,it} from 'vitest';
import {civicPersonBinding,decodeCivicPersonRegistry,loadCivicPersonRegistry,rotateCivicRecords,summarizeCivicRegistration,type CivicPersonRecord} from './civic_person_registry.js';
const row:CivicPersonRecord={id:'person-example',name:'Example Person',aliases:[],office:'Legislator',jurisdiction:'Nigeria',status:'Current',period:'2023–2027',evidenceLevel:'roster',summary:'Published directory row',sources:['https://nass.gov.ng/mps/members']};
it('validates published registry and rejects duplicate IDs and unsafe source URLs',()=>{
 expect(decodeCivicPersonRegistry({schema:1,people:[row]})).toEqual([row]);
 expect(()=>decodeCivicPersonRegistry({schema:1,people:[row,row]})).toThrow();
 expect(()=>decodeCivicPersonRegistry({schema:1,people:[{...row,sources:['http://127.0.0.1/']}]})).toThrow();
});
it('binds an independent guide only to its exact immutable person identity',()=>{
 const policy={representation:'independent_civic_person_guide',civicPersonId:row.id,civicPersonName:row.name,sourceUrl:row.sources[0]};
 expect(civicPersonBinding(policy,row.name)).toEqual({id:row.id,name:row.name,sourceUrl:row.sources[0]});
 expect(civicPersonBinding(policy,'Other')).toBeNull();
 expect(civicPersonBinding({...policy,representation:'ai_simulation'},row.name)).toBeNull();
});
it('loads only the fixed production registry, with no redirects',async()=>{
 let url='',options:RequestInit|undefined;
 const fetcher=(async(u:unknown,o:RequestInit)=>{url=String(u);options=o;return Response.json({schema:1,people:[row]});}) as typeof fetch;
 expect(await loadCivicPersonRegistry(fetcher)).toEqual([row]);
 expect(url).toBe('https://app.masanawa.com/api/ai/civic-registry');
 expect(options?.redirect).toBe('error');
});

it('rotates bounded retries so repeatedly failing earlier records cannot starve later profiles',()=>{
 expect(rotateCivicRecords([1,2,3,4],2)).toEqual([3,4,1,2]);
 expect(rotateCivicRecords([1,2],9)).toEqual([2,1]);
 expect(rotateCivicRecords([],3)).toEqual([]);
});
it('separates structurally registered guides from hidden, missing, legacy and ambiguous identities',()=>{
 const other={...row,id:'person-other',name:'Other Person'};
 const absent={...row,id:'person-absent',name:'Absent Person'};
 const legacy={...row,id:'person-legacy',name:'Legacy Person'};
 const binding={id:row.id,name:row.name,sourceUrl:row.sources[0]!};
 const ready={id:'canonical-one',name:row.name,binding,configured:true,legacySource:null};
 const result=summarizeCivicRegistration([row,other,absent,legacy],[ready,{id:'canonical-two',name:legacy.name,binding:null,configured:true,legacySource:row.sources[0]!}],['Other Person']);
 expect(result).toEqual({published:4,directReady:1,legacyReady:1,legacyUnresolved:1,ambiguous:0,unready:0,unregistered:1});
 expect(summarizeCivicRegistration([row],[{...ready,configured:false}],[]).unready).toBe(1);
 expect(summarizeCivicRegistration([row],[ready,{...ready,id:'duplicate'}],[]).ambiguous).toBe(1);
});

it('reconciles canonical reviewed legacy source discrepancies and known name ordering without accepting lookalikes',()=>{
 const president:CivicPersonRecord={...row,id:'person-bola-ahmed-tinubu',name:'Bola Ahmed Tinubu',sources:['https://statehouse.gov.ng/team/bola-ahmed-tinubu/']};
 const candidate={id:'character_01a189e8-72e3-7257-bbba-33aa50b111d1',name:'Bola Ahmed Tinubu',binding:null,configured:true,legacySource:'https://en.wikipedia.org/wiki/Bola_Tinubu'};
 expect(summarizeCivicRegistration([president],[candidate],[]).legacyReady).toBe(1);
 expect(summarizeCivicRegistration([president],[{...candidate,id:'different-character'}],[]).legacyUnresolved).toBe(1);
 expect(summarizeCivicRegistration([president],[{...candidate,legacySource:'https://wrong.example/source'}],[]).legacyUnresolved).toBe(1);
 expect(summarizeCivicRegistration([president],[{...candidate,configured:false}],[]).legacyUnresolved).toBe(1);
 const chinda:CivicPersonRecord={...row,id:'person-chinda-kingsley-ogundu-rivers-house',name:'Kingsley Ogundu Chinda',aliases:['Chinda Kingsley Ogundu']};
 const legacy={id:'character_01a189e8-72ec-70ed-be48-c42560540a0f',name:'Chinda Kingsley Ogundu',binding:null,configured:true,legacySource:'https://en.wikipedia.org/wiki/Kingsley_Chinda'};
 expect(summarizeCivicRegistration([chinda],[legacy],[]).legacyReady).toBe(1);
 expect(summarizeCivicRegistration([chinda],[legacy,{...legacy,id:'duplicate'}],[]).ambiguous).toBe(1);
});
