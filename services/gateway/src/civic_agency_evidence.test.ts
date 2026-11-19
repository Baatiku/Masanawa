import {describe,expect,it,vi} from 'vitest';
import {createCivicAgencyEvidenceReader} from './civic_agency_evidence.js';

describe('bounded agency source retrieval',()=>{
  it('restricts browsing to the published agency host, attributes excerpts and caches the query',async()=>{
    const fetcher=vi.fn(async(url:URL|string)=>{
      const path=new URL(String(url)).pathname;
      return new Response(path==='/services'
        ? '<html><head><title>Verified enrolment services</title></head><body>Enrolment guidance describes a citizen service and its official procedures.</body></html>'
        : '<html><head><title>NIMC official reference</title></head><body>Identity enrolment is discussed in the official agency reference. <a href="/services">Enrolment services</a><a href="https://untrusted.invalid/enrolment">External</a></body></html>',
      {headers:{'content-type':'text/html'}});
    });
    const reader=createCivicAgencyEvidenceReader({fetch:fetcher as unknown as typeof fetch,now:()=>Date.parse('2026-11-19T18:00:00Z')});
    const first=await reader.read('nimc','Explain identity enrolment services');
    expect(first[0]).toMatchObject({id:'mandate_nimc',sourceDateKind:'review'});
    expect(first[1]).toMatchObject({id:'reviewed_nimc',sourceDateKind:'review'});
    expect(first[1]?.content).toContain('National Identification Numbers');
    expect(first.some(item=>item.sourceUrl==='https://nimc.gov.ng/services')).toBe(true);
    expect(first.filter(item=>item.sourceDateKind==='retrieval')).toHaveLength(2);
    expect(first.every(item=>new URL(item.sourceUrl).hostname.endsWith('nimc.gov.ng'))).toBe(true);
    expect(fetcher).toHaveBeenCalledTimes(2);
    expect(await reader.read('nimc','Explain identity enrolment services')).toBe(first);
    expect(fetcher).toHaveBeenCalledTimes(2);
  });
  it('refuses unknown identities and leaves approved scope available during source failures',async()=>{
    const reader=createCivicAgencyEvidenceReader({fetch:async()=>{throw Error('offline');}});
    await expect(reader.read('imposter','Tell me about NIMC')).rejects.toThrow('not_approved');
    expect(await reader.read('nimc','Hello')).toHaveLength(2);
    expect(await reader.read('nimc','Identity enrolment procedures')).toMatchObject([{id:'mandate_nimc'},{id:'reviewed_nimc'}]);
  });
  it('refuses cross-domain redirects instead of fetching an unrelated destination',async()=>{
    const fetcher=vi.fn(async()=>new Response(null,{status:302,headers:{location:'https://untrusted.invalid/private'}}));
    const evidence=await createCivicAgencyEvidenceReader({fetch:fetcher as unknown as typeof fetch}).read('cac','business registration');
    expect(evidence).toHaveLength(2);
    expect(evidence[1]?.sourceUrl).toBe('https://www.cac.gov.ng/about');
    expect(fetcher).toHaveBeenCalledTimes(1);
  });
});
