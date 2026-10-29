import {expect,it,vi} from 'vitest';
import {createOfficialLiveEvidenceSession} from './official_live_evidence.js';
it('accepts only bounded read-only evidence calls and returns fresh data on replay',async()=>{
 let version=0;const read=vi.fn(async()=>({officialName:'Example',evidence:[{id:'v'+(++version)}]}) as never);
 const session=createOfficialLiveEvidenceSession(read),call={functionCalls:[{id:'call-1',name:'read_official_evidence',args:{query:'public history'}}]};
 expect(JSON.stringify(await session.respond(call))).toContain('v1');expect(JSON.stringify(await session.respond(call))).toContain('v2');
 expect(read).toHaveBeenCalledTimes(2);
 await expect(session.respond({functionCalls:[{id:'call-1',name:'read_official_evidence',args:{query:'different'}}]})).rejects.toThrow('replay_changed');
 for(const raw of [{functionCalls:[{id:'x',name:'send_money',args:{query:'x'}}]},
  {functionCalls:[{id:'x',name:'read_official_evidence',args:{query:'x'.repeat(501)}}]},
  {functionCalls:[{id:'x',name:'read_official_evidence',args:{query:'x',tenantId:'foreign'}}]}])await expect(session.respond(raw)).rejects.toThrow('invalid_official_tool_call');
});
it('limits retrieval volume and redacts database/provider failures',async()=>{
 const session=createOfficialLiveEvidenceSession(async()=>{throw Error('private database password');});
 const result=await session.respond({functionCalls:[{id:'first',name:'read_official_evidence',args:{query:'history'}}]});
 expect(JSON.stringify(result)).toContain('evidence_unavailable');expect(JSON.stringify(result)).not.toContain('password');
 for(let i=0;i<8;i++)await session.respond({functionCalls:[{id:'call-'+i,name:'read_official_evidence',args:{query:'history'}}]});
 expect(JSON.stringify(await session.respond({functionCalls:[{id:'last',name:'read_official_evidence',args:{query:'history'}}]}))).toContain('retrieval_limit');
});
