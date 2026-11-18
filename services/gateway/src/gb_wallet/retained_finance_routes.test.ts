import Fastify from 'fastify';
import {expect,it,vi} from 'vitest';
import {registerGbRetainedFinanceRoutes} from './retained_finance_routes.js';
import {legacyGroupId} from '@masanawa/postgres';
const id='10000000-0000-4000-8000-000000000001';
const group={kind:'pending' as const,campaignId:id,day:'2026-10-27',snapshotAt:'2026-10-27T13:00:00.000Z',eventCount:1};
const receipt={id,targetKind:'activity',reference:'mb:1',category:'amount',state:'open',revision:1,
 createdAt:'2026-10-27T10:00:00.123456Z',updatedAt:'2026-10-27T10:00:00.123456Z'};
async function fixture(){
 const app=Fastify({routerOptions:{maxParamLength:1024}});const history=vi.fn(async()=>[
  {id:legacyGroupId(group),campaignId:id,postId:id,kind:'pending',day:group.day,eventCount:1,halfMb:1},
  {id:legacyGroupId({...group,kind:'spend'}),campaignId:id,postId:id,kind:'spend',day:group.day,eventCount:1,halfMb:2},
 ]),source=vi.fn(async()=>({case:receipt,source:{kind:'activity',reference:'mb:1',fields:[],items:[]}}));
 const repository={history,group:vi.fn(async()=>[{key:'charge:'+id,reference:'original-operation',at:receipt.createdAt,halfMb:1}]),
  submit:vi.fn(async()=>receipt),cases:vi.fn(async()=>[receipt]),findCase:vi.fn(async()=>receipt),
  resolve:vi.fn(async()=>({...receipt,state:'closed',revision:2})),reviewSource:source};
 const reviewer=vi.fn(async(header:string|undefined,_a:unknown,fresh:boolean)=>{
  if(header==='Bearer stale'&&fresh)throw Object.assign(new Error('fresh'),{status:403,code:'fresh_auth_required'});
  return header==='Bearer staff'||header==='Bearer stale';
 });
 await registerGbRetainedFinanceRoutes(app,{repository,reviewer,authorize:async header=>{
  if(!header)throw new Error('not signed in');return {tenantId:'t',userId:header==='Bearer other'?'other':'owner'};
 }});
 return {app,repository,reviewer};
}
it('binds history cursors to owner and filter and preserves exact half-MB amounts',async()=>{
 const f=await fixture();try{
  const headers={authorization:'Bearer owner'};
  const first=await f.app.inject({url:'/v1/gb/wallet/legacy-history?limit=1',headers});
  expect(first.statusCode).toBe(200);expect(first.headers['cache-control']).toContain('no-store');
  expect(first.json().items[0].halfMb).toBe(1);
  const cursor=encodeURIComponent(first.json().nextCursor);
  expect((await f.app.inject({url:'/v1/gb/wallet/legacy-history?limit=1&cursor='+cursor,headers})).statusCode).toBe(200);
  expect((await f.app.inject({url:'/v1/gb/wallet/legacy-history?kind=pending&cursor='+cursor,headers})).statusCode).toBe(422);
  expect((await f.app.inject({url:'/v1/gb/wallet/legacy-history?cursor='+cursor,headers:{authorization:'Bearer other'}})).statusCode).toBe(422);
  expect((await f.app.inject('/v1/gb/wallet/legacy-history')).statusCode).toBe(401);
  const encoded=legacyGroupId(group),detail=await f.app.inject({url:'/v1/gb/wallet/legacy-history/'+encoded,headers});
  expect(detail.statusCode).toBe(200);expect(detail.json().items[0].reference).toBe('original-operation');
  f.repository.group.mockResolvedValueOnce([]);
  expect((await f.app.inject({url:'/v1/gb/wallet/legacy-history/'+encoded,headers})).statusCode).toBe(404);
 }finally{await f.app.close();}
});
it('accepts only original reference/category requests, never caller identities or money instructions',async()=>{
 const f=await fixture();try{
  const headers={authorization:'Bearer owner'},url='/v1/gb/wallet/inquiries';
  const body={targetKind:'activity',reference:'mb:1',category:'amount'};
  expect((await f.app.inject({method:'POST',url,headers,payload:{...body,userId:'victim'}})).statusCode).toBe(422);
  expect((await f.app.inject({method:'POST',url,headers,payload:{...body,category:['amount']}})).statusCode).toBe(422);
  expect((await f.app.inject({method:'POST',url,headers,payload:body})).statusCode).toBe(200);
  expect(f.repository.submit).toHaveBeenCalledWith({tenantId:'t',userId:'owner'},'activity','mb:1','amount');
  f.repository.findCase.mockResolvedValueOnce(null as never);
  expect((await f.app.inject({url:'/v1/gb/wallet/inquiries/'+id,headers})).statusCode).toBe(404);
  expect((await f.app.inject({url:'/v1/gb/wallet/inquiries',headers})).json().items).toHaveLength(1);
 }finally{await f.app.close();}
});
it('requires server reviewer authority and fresh authentication for evidence and annotations',async()=>{
 const f=await fixture();try{
  const regular={authorization:'Bearer owner','x-role':'admin'},staff={authorization:'Bearer staff'},stale={authorization:'Bearer stale'};
  expect((await f.app.inject({url:'/v1/gb/wallet/review-capabilities',headers:regular})).json()).toEqual({canReview:false});
  expect((await f.app.inject({url:'/v1/admin/gb/wallet/inquiries',headers:regular})).statusCode).toBe(403);
  expect((await f.app.inject({url:`/v1/admin/gb/wallet/inquiries/${id}/source`,headers:regular})).statusCode).toBe(403);
  expect((await f.app.inject({url:`/v1/admin/gb/wallet/inquiries/${id}/source`,headers:stale})).json()).toMatchObject({error:{code:'fresh_auth_required'}});
  expect((await f.app.inject({url:`/v1/admin/gb/wallet/inquiries/${id}/source`,headers:staff})).statusCode).toBe(200);
  const url='/v1/admin/gb/wallet/inquiries/'+id;
  expect((await f.app.inject({method:'PUT',url,headers:staff,payload:{state:'closed',expectedRevision:0}})).statusCode).toBe(422);
  expect((await f.app.inject({method:'PUT',url,headers:stale,payload:{state:'closed',expectedRevision:1}})).statusCode).toBe(403);
  expect((await f.app.inject({method:'PUT',url,headers:staff,payload:{state:'closed',expectedRevision:1}})).statusCode).toBe(200);
  expect(f.repository.resolve).toHaveBeenCalledOnce();expect(f.reviewer.mock.calls.some(c=>c[2]===true)).toBe(true);
  f.repository.history.mockRejectedValueOnce(new Error('private-provider-body-must-not-leak'));
  const failed=await f.app.inject({url:'/v1/gb/wallet/legacy-history',headers:staff});
  expect(failed.statusCode).toBe(503);expect(failed.body).not.toContain('private-provider');
 }finally{await f.app.close();}
});
