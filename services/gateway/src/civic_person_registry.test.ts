import {expect,it} from 'vitest';
import {civicPersonBinding,decodeCivicPersonRegistry,loadCivicPersonRegistry} from './civic_person_registry.js';
const row={id:'person-example',name:'Example Person',aliases:[],office:'Legislator',jurisdiction:'Nigeria',status:'Current',period:'2023–2027',evidenceLevel:'roster',summary:'Published directory row',sources:['https://nass.gov.ng/mps/members']};
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
