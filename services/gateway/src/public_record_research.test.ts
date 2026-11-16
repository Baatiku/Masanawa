import {describe,it,expect,vi} from 'vitest';
import {createPublicRecordResearch} from './public_record_research.js';
describe('bounded public-record research',()=>{
 it('reads approved references and relevant links, labels retrieval dates and caches public excerpts',async()=>{
  const root='https://en.wikipedia.org/wiki/Example',child='https://en.wikipedia.org/wiki/Engineering';
  const request=vi.fn<typeof fetch>(async url=>new Response(`<title>Public profile</title><main>${'Engineering education and civic public service. '.repeat(20)}${String(url)===root?`<a href="${child}">Engineering career</a>`:''}<script>PRIVATE SCRIPT CONTENT</script></main>`,{headers:{'content-type':'text/html'}}));
  const research=createPublicRecordResearch({fetch:request,now:()=>Date.parse('2026-11-16T00:00:00Z')});
  const items=await research('engineering education',[root]);expect(items).toHaveLength(2);expect(items.every(e=>e.sourceDateKind==='retrieval'&&e.sourceDate==='2026-11-16'&&!e.content.includes('PRIVATE SCRIPT'))).toBe(true);expect(request.mock.calls.map(c=>String(c[0]))).toEqual([root,child]);await research('engineering education',[root]);expect(request).toHaveBeenCalledTimes(2);
 });
 it('does not follow redirects to private hosts or accept arbitrary caller URLs',async()=>{const request=vi.fn<typeof fetch>(async()=>new Response(null,{status:302,headers:{location:'http://127.0.0.1/private'}}));const research=createPublicRecordResearch({fetch:request});expect(await research('engineering',['https://en.wikipedia.org/wiki/Example'])).toEqual([]);expect(request).toHaveBeenCalledOnce();expect(await research('engineering',['https://127.0.0.1/internal','https://evil.example/source'])).toEqual([]);expect(request).toHaveBeenCalledOnce();});
 it('cancels oversized streams after the bounded prefix',async()=>{let canceled=false;const bytes=new TextEncoder().encode('<title>Source</title><p>Engineering '+ 'a'.repeat(800000));const research=createPublicRecordResearch({fetch:async()=>new Response(new ReadableStream({start(c){c.enqueue(bytes);},cancel(){canceled=true;}}),{headers:{'Content-Type':'text/html'}})});const result=await research('engineering',['https://en.wikipedia.org/wiki/Example']);expect(canceled).toBe(true);expect(result[0]?.content.length).toBeLessThanOrEqual(1400);});
});
