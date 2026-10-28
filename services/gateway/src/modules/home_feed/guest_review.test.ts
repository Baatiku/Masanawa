import Fastify from 'fastify';
import {describe,it,expect,vi} from 'vitest';
import {registerStatusGuestReviewRoutes} from './guest_review.js';

const postId='27c63eb3-0f5e-4849-8670-2eb62c8406bf';
const id='2c517585-75fb-4268-8adc-1b257e41f928';
const headers={authorization:'Bearer real-session','content-type':'application/json'};

describe('tenant-only and fraud-hold-only Status guest review',()=>{
 it('requires independent server authorization and an ON gate',async()=>{
  const listPending=vi.fn(),review=vi.fn(),principal=vi.fn(async()=>({
   tenantId:'approved-tenant',userId:'approved-reviewer'}));
  const isEditor=vi.fn(async()=>true);
  const app=Fastify();
  await registerStatusGuestReviewRoutes(app,{port:{listPending,review},principal,isEditor,
   enabled:()=>false});
  expect((await app.inject({url:'/v1/admin/status/guest-proofs'})).statusCode).toBe(503);
  expect(principal).not.toHaveBeenCalled();
  expect(listPending).not.toHaveBeenCalled();
  await app.close();

  const denied=Fastify();
  await registerStatusGuestReviewRoutes(denied,{port:{listPending,review},principal,
   isEditor:async()=>false,enabled:()=>true});
  const bad=await denied.inject({url:'/v1/admin/status/guest-proofs',
   headers:{...headers,'x-role':'staff'}});
  expect(bad.statusCode).toBe(403);
  expect(listPending).not.toHaveBeenCalled();
  await denied.close();
 });

 it('shows only review summaries, rejects malformed/money-changing decisions and binds staff tenant',async()=>{
  const listPending=vi.fn(async()=>[{id,postId,startedAt:'2026-10-28T12:00:00Z',
   observedAt:'2026-10-28T12:00:07Z',hasReferral:true}]);
  const review=vi.fn(async(_tenant:string,_reviewer:string,_id:string,
   decision:'held'|'rejected')=>({id,postId,decision,payable:false as const,
   qualified:false as const}));
  const app=Fastify();
  await registerStatusGuestReviewRoutes(app,{port:{listPending,review},
   principal:async()=>({tenantId:'real-tenant',userId:'real-reviewer'}),
   isEditor:async()=>true,enabled:()=>true});
  const visible=await app.inject({url:'/v1/admin/status/guest-proofs?limit=10',headers});
  expect(visible.statusCode).toBe(200);
  expect(visible.json()).toMatchObject({reviewOnly:true,payable:false,
   proofs:[{postId,hasReferral:true}]});
  expect(visible.body).not.toContain('viewerDigest');
  expect(visible.headers['cache-control']).toBe('private, no-store');
  expect(listPending).toHaveBeenCalledWith('real-tenant',10);
  for(const query of ['limit=101','limit=0','limit=10&limit=20','tenantId=other']){
   expect((await app.inject({url:`/v1/admin/status/guest-proofs?${query}`,headers}))
    .statusCode).toBe(422);
  }
  for(const payload of [{decision:'verified',reason:'other_risk'},
   {decision:'held',reason:'free text with an identity'},
   {decision:'rejected',reason:'other_risk',creditMb:100}]){
   expect((await app.inject({method:'POST',
    url:`/v1/admin/status/guest-proofs/${id}/review`,headers,payload}))
    .statusCode).toBe(422);
  }
  expect(review).not.toHaveBeenCalled();
  const held=await app.inject({method:'POST',
   url:`/v1/admin/status/guest-proofs/${id}/review`,headers,
   payload:{decision:'held',reason:'suspicious_automation'}});
  expect(held.statusCode).toBe(200);
  expect(held.json().proof).toMatchObject({decision:'held',qualified:false,payable:false});
  expect(review).toHaveBeenCalledWith('real-tenant','real-reviewer',id,
   'held','suspicious_automation');
  await app.close();
 });
});
