import {expect,it,vi} from 'vitest';
import {createWebCivicKnowledgeReader} from './web_civic_knowledge.js';
const source='https://statehouse.gov.ng/team/bola-ahmed-tinubu/';
const fixture={
 schema:1,id:'person-bola-ahmed-tinubu',kind:'person',name:'Bola Ahmed Tinubu',
 identitySources:[source],reviewedAt:'2026-11-21',revision:'a'.repeat(64),
 evidence:[{id:'p_1',title:'Road commissioning',content:'Lagos–Calabar 30 km section commissioned; this is not the entire highway.',
  sourceUrl:'https://statehouse.gov.ng/road-commissioned/',sourceDate:'2026-11-21',stage:'commissioned'}],
};
it('binds web dossier facts to independently verified identity, bounds fetch and caches by topic',async()=>{
 const fetcher=vi.fn(async(_url:string)=>Response.json(fixture));
 const reader=createWebCivicKnowledgeReader({fetch:fetcher as unknown as typeof fetch});
 const query={kind:'person' as const,name:'Bola Ahmed Tinubu',sourceUrl:source,query:'road'};
 const first=await reader.read(query);
 expect(first).toHaveLength(1);
 expect(first[0]).toMatchObject({kind:'official_record',sourceDateKind:'retrieval'});
 expect(first[0]?.content).toContain('not the entire highway');
 expect(first[0]?.content).toContain('commissioned');
 expect(await reader.read(query)).toBe(first);
 expect(fetcher).toHaveBeenCalledTimes(1);
 const requested=new URL(String(fetcher.mock.calls[0]?.[0]));
 expect(requested.origin).toBe('https://app.chatmeup.online');
 expect(requested.searchParams.get('source')).toBe(source);
 expect(requested.searchParams.get('q')).toBe('road');
});
it('rejects identity substitution, stale revisions and unsafe URLs without allowing instructions',async()=>{
 const wrong=createWebCivicKnowledgeReader({fetch:async()=>Response.json({...fixture,identitySources:['https://attacker.invalid']})});
 expect(await wrong.read({kind:'person',name:'Bola Ahmed Tinubu',sourceUrl:source})).toEqual([]);
 const stale=createWebCivicKnowledgeReader({fetch:async()=>Response.json({...fixture,reviewedAt:'2024-01-01'})});
 expect(await stale.read({kind:'person',name:'Bola Ahmed Tinubu',sourceUrl:source})).toEqual([]);
 const broken=createWebCivicKnowledgeReader({fetch:async()=>Response.json({...fixture,evidence:[
  {...fixture.evidence[0],sourceUrl:'http://127.0.0.1/private'}]})});
 expect(await broken.read({kind:'person',name:'Bola Ahmed Tinubu',sourceUrl:source})).toEqual([]);
 const agency=createWebCivicKnowledgeReader({fetch:async()=>Response.json({...fixture,
  kind:'agency',id:'org-corporate-affairs-commission',name:'Corporate Affairs Commission',
  agencyShort:'CAC',evidence:[{...fixture.evidence[0],sourceUrl:'https://www.cac.gov.ng/about'}]})});
 expect(await agency.read({kind:'agency',id:'org-corporate-affairs-commission',name:'Corporate Affairs Commission',short:'CAC'})).toHaveLength(1);
 expect(await agency.read({kind:'agency',id:'org-national-identity-management-commission',name:'Corporate Affairs Commission',short:'CAC'})).toEqual([]);
});
