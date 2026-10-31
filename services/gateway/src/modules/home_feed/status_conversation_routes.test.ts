import {describe,it,expect,vi} from 'vitest';
import Fastify from 'fastify';
import {registerHomeFeedRoutes} from './routes.js';
const post='381026c2-9d56-47b1-b73d-1784e24e41e2';
const comment='9b8c8884-7a31-49d9-aee5-521364b54aef';
function setup(){
 const service={list:vi.fn(async()=>({items:[],nextCursor:null})),
  comments:vi.fn(async()=>[]),reactComment:vi.fn(async()=>({kind:'love'})),
  editComment:vi.fn(async()=>({revision:2})),removeComment:vi.fn(async()=>({state:'removed'})),
  reportComment:vi.fn(async()=>({id:comment})),commentReports:vi.fn(async()=>({items:[]})),
  resolveCommentReport:vi.fn(async()=>({state:'reviewed'}))};
 const app=Fastify();
 return {service,app,setup:()=>registerHomeFeedRoutes(app,{
  service:service as never,enabled:()=>true,tenant:()=> 'tenant',
  isNewAccount:async()=>false,principal:async()=>({tenantId:'tenant',id:'fan',kind:'fan'})
 })};
}
describe('SF-FB gateway routes',()=>{
 it('rejects polluted source filters and forwards validated scope only',async()=>{
  const {app,service,setup:register}=setup();await register();
  const first=await app.inject(`/v1/feed?source=facebook&from=2026-10-01&to=2026-10-31`);
  expect(first.statusCode).toBe(200);
  expect(service.list).toHaveBeenCalledWith('tenant','fan','for_you',undefined,undefined,
   undefined,{source:'facebook',from:'2026-10-01',to:'2026-10-31'});
  for(const query of ['source=unknown','source=x&source=facebook','from[evil]=1','to=tomorrow']){
   const res=await app.inject(`/v1/feed?${query}`);expect(res.statusCode).toBe(422);
  }
  await app.close();
 });
 it('keeps root/reply pagination validated independently',async()=>{
  const {app,service,setup:register}=setup();await register();
  const res=await app.inject(`/v1/posts/${post}/comments?scope=replies&parentId=${comment}&sort=oldest`);
  expect(res.statusCode).toBe(200);
  expect(service.comments).toHaveBeenCalledWith('tenant',post,'fan',undefined,'oldest','replies',comment);
  expect((await app.inject(`/v1/posts/${post}/comments?scope=replies`)).statusCode).toBe(422);
  await app.close();
 });
 it('routes the native reaction, edit, delete and report to the server principal',async()=>{
  const {app,service,setup:register}=setup();await register();
  expect((await app.inject({method:'PUT',url:`/v1/comments/${comment}/reaction`,payload:{kind:'love'}})).statusCode).toBe(200);
  expect((await app.inject({method:'PATCH',url:`/v1/comments/${comment}`,payload:{body:'Edit',revision:1}})).statusCode).toBe(200);
  expect((await app.inject({method:'DELETE',url:`/v1/comments/${comment}`})).statusCode).toBe(200);
  expect((await app.inject({method:'POST',url:`/v1/comments/${comment}/reports`,payload:{reason:'spam'}})).statusCode).toBe(200);
  expect(service.reactComment).toHaveBeenCalledWith(expect.objectContaining({id:'fan'}),comment,'love');
  expect(service.editComment).toHaveBeenCalledWith(expect.objectContaining({id:'fan'}),comment,'Edit',1);
  expect(service.removeComment).toHaveBeenCalledWith(expect.objectContaining({id:'fan'}),comment);
  expect(service.reportComment).toHaveBeenCalledWith(expect.objectContaining({id:'fan'}),comment,'spam');
  expect((await app.inject({method:'PUT',url:`/v1/comments/${comment}/reaction`,payload:{kind:'unknown'}})).statusCode).toBe(422);
  await app.close();
 });
});
