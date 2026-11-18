import Fastify from 'fastify';
import {expect,it,vi} from 'vitest';
import {registerStatusRuntime} from './runtime.js';
const id='10000000-0000-4000-8000-000000000001';
it('authenticates post controls, rejects spoofed payloads, and restricts operator resolution',async()=>{
 const app=Fastify(),hide=vi.fn(async()=>({hidden:true})),report=vi.fn(async()=>({id,state:'open'})),
 list=vi.fn(async()=>({items:[]})),resolve=vi.fn(async()=>({id,state:'reviewed'}));
 await registerStatusRuntime(app,{sessions:{authorize:async({authorizationHeader})=>{
  if(!authorizationHeader)throw Object.assign(new Error('unauthorized'),{statusCode:401});
  return {tenantId:'tenant',userId:authorizationHeader==='Bearer staff'?'staff':'fan'};
 }},feed:{} as never,editorial:{} as never,safety:{hide,report,list,resolve},isEditor:async p=>p.userId==='staff'});
 try{
  const headers={authorization:'Bearer fan'};
  expect((await app.inject({url:'/v1/feed/safety-capabilities',headers})).json()).toEqual({canReview:false});
  expect((await app.inject({url:'/v1/feed/safety-capabilities',headers:{authorization:'Bearer staff'}})).json()).toEqual({canReview:true});
  expect((await app.inject({method:'PUT',url:`/v1/posts/${id}/hidden`,payload:{hidden:true}})).statusCode).toBe(401);
  expect((await app.inject({method:'PUT',url:`/v1/posts/${id}/hidden`,headers,payload:{hidden:true,userId:'victim'}})).statusCode).toBe(422);
  const hidden=await app.inject({method:'PUT',url:`/v1/posts/${id}/hidden`,headers,payload:{hidden:true}});
  expect(hidden.statusCode).toBe(200);expect(hidden.headers['cache-control']).toContain('no-store');
  expect(hide).toHaveBeenCalledWith('tenant','fan',id,true);
  expect((await app.inject({method:'POST',url:`/v1/posts/${id}/reports`,headers,payload:{reason:'inaccurate'}})).statusCode).toBe(200);
  expect(report).toHaveBeenCalledWith('tenant','fan',id,'inaccurate');
  expect((await app.inject({method:'POST',url:`/v1/posts/${id}/reports`,headers,payload:{reason:'invented'}})).statusCode).toBe(422);
  expect((await app.inject({method:'GET',url:'/v1/admin/feed/reports',headers})).statusCode).toBe(403);
  expect((await app.inject({method:'PUT',url:`/v1/admin/feed/reports/${id}`,headers,payload:{state:'reviewed'}})).statusCode).toBe(403);
  expect(resolve).not.toHaveBeenCalled();
  expect((await app.inject({method:'GET',url:'/v1/admin/feed/reports',headers:{authorization:'Bearer staff'}})).statusCode).toBe(200);
  expect((await app.inject({method:'PUT',url:`/v1/admin/feed/reports/${id}`,headers:{authorization:'Bearer staff'},payload:{state:'reviewed'}})).statusCode).toBe(200);
  expect(resolve).toHaveBeenCalledWith('tenant','staff',id,'reviewed');
  report.mockRejectedValueOnce(Object.assign(new Error('limit'),{status:429,code:'report_limit_reached'}));
  expect((await app.inject({method:'POST',url:`/v1/posts/${id}/reports`,headers,payload:{reason:'spam'}})).statusCode).toBe(429);
 }finally{await app.close();}
});
