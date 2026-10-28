import Fastify from 'fastify';
import {describe,it,expect} from 'vitest';
import {registerPromotionRoutes,type PromotionPort} from './promotion_routes.js';

describe('SPE promotion routes inherit the established principal and staff authority',()=>{
 const fake=()=>{
  const events:unknown[]=[];
  const port={
   quote:async(input:unknown)=>{events.push(input);return {quoteId:'owned'};},
   confirm:async(...args:unknown[])=>{events.push(args);return {state:'pending_review'};},
   receipt:async()=>({campaign:null}),
   review:async(...args:unknown[])=>{events.push(['review',...args]);return {state:'approved'};},
   adminQueue:async(...args:unknown[])=>{events.push(['queue',...args]);return {pending:[]};},
   adminOverview:async(...args:unknown[])=>{events.push(['overview',...args]);return {pendingReview:0};},
   adminTakedown:async(...args:unknown[])=>{events.push(['takedown',...args]);return {state:'removed'};},
   cancel:async()=>({}),
   pause:async(...args:unknown[])=>{events.push(['pause',...args]);return {state:'paused'};},
   resume:async(...args:unknown[])=>{events.push(['resume',...args]);return {state:'active'};},
   share:async()=>({url:'https://example.test/status/post'}),
   beginView:async()=>({challengeId:'challenge'}),finishView:async()=>({qualified:true}),
   mine:async()=>({campaigns:[]}),deleteOwnPost:async()=>({}),
   purgeExpired:async()=>({purged:0}),
  } as PromotionPort;
  return {port,events};
 };
 it('defaults to an unconditional safe 503 when financial admission is not qualified',async()=>{
  const server=Fastify();const {port}=fake();
  await registerPromotionRoutes(server,{port,principal:async()=>({tenantId:'one',userId:'fan'}),
   isEditor:async()=>true,enabled:()=>false});
  const result=await server.inject({method:'POST',url:'/v1/promotions/quotes',
   payload:{body:'Bad financial acceptance',targetViews:100}});
  expect(result.statusCode).toBe(503);
  const capabilities=await server.inject({method:'GET',url:'/v1/promotions/capabilities'});
  expect(capabilities.statusCode).toBe(200);
  expect(capabilities.json()).toMatchObject({enabled:false,priceMbPerQualifiedView:1});
  expect(capabilities.headers['cache-control']).toBe('private, no-store');
  await server.close();
 });
 it('ignores forged payer authority and enforces original financial idempotency header',async()=>{
  const server=Fastify();const {port,events}=fake();
  await registerPromotionRoutes(server,{port,principal:async()=>({tenantId:'trusted',userId:'owner'}),
   isEditor:async()=>false,enabled:()=>true});
  expect((await server.inject({method:'POST',url:'/v1/promotions/quotes',
   payload:{body:'Public message',targetViews:5,sponsorId:'attacker'}})).statusCode).toBe(422);
  expect((await server.inject({method:'POST',url:'/v1/promotions/quotes',
   payload:{body:'Public message',targetViews:5}})).statusCode).toBe(200);
  expect(events[0]).toMatchObject({tenantId:'trusted',sponsorId:'owner'});
  expect((await server.inject({method:'POST',url:'/v1/promotions/quotes/quote/confirm',
   payload:{}})).statusCode).toBe(422);
  expect((await server.inject({method:'POST',url:'/v1/admin/promotions/quote/review',
   payload:{decision:'approve'}})).statusCode).toBe(403);
  await server.close();
 });
 it('requires authenticated reviewer role and an explicit rejection/takedown reason',async()=>{
  const server=Fastify();const {port,events}=fake();
  await registerPromotionRoutes(server,{port,principal:async()=>({tenantId:'trusted',userId:'reviewer'}),
   isEditor:async()=>true,enabled:()=>true});
  expect((await server.inject({method:'POST',url:'/v1/admin/promotions/uuid/review',
   payload:{decision:'reject'}})).statusCode).toBe(422);
  expect((await server.inject({method:'POST',url:'/v1/admin/promotions/posts/uuid/takedown',
   payload:{reason:''}})).statusCode).toBe(422);
  expect((await server.inject({method:'GET',url:'/v1/admin/promotions/review'})).json())
   .toMatchObject({pending:[]});
  expect((await server.inject({method:'GET',url:'/v1/admin/promotions/overview'})).json())
   .toMatchObject({pendingReview:0});
  expect((await server.inject({method:'POST',url:'/v1/admin/promotions/uuid/review',
   payload:{decision:'reject',reason:'Disallowed promotion'}})).statusCode).toBe(200);
  expect((await server.inject({method:'POST',url:'/v1/admin/promotions/posts/uuid/takedown',
   payload:{reason:'Unsafe claims'}})).statusCode).toBe(200);
  expect(events).toContainEqual(['queue','trusted','reviewer']);
  expect(events).toContainEqual(['overview','trusted','reviewer']);
  expect(events).toContainEqual(['review','trusted','reviewer','uuid',false,'Disallowed promotion']);
  expect(events).toContainEqual(['takedown','trusted','reviewer','uuid','Unsafe claims']);
  await server.close();
 });
 it('stops new money while preserving owner recovery and staff emergency safety',async()=>{
  const server=Fastify();const {port,events}=fake();
  await registerPromotionRoutes(server,{port,principal:async()=>({tenantId:'trusted',userId:'reviewer'}),
   isEditor:async()=>true,enabled:()=>false});
  expect((await server.inject({method:'POST',url:'/v1/promotions/quotes',
   payload:{body:'Must not spend',targetViews:1}})).statusCode).toBe(503);
  expect((await server.inject({method:'POST',url:'/v1/posts/post/view-challenges',
   payload:{}})).statusCode).toBe(503);
  expect((await server.inject({method:'GET',url:'/v1/promotions/mine'})).json())
   .toMatchObject({campaigns:[]});
  expect((await server.inject({method:'GET',url:'/v1/promotions/quotes/quote/receipt'})).statusCode)
   .toBe(200);
  expect((await server.inject({method:'POST',url:'/v1/promotions/campaign/cancel',
   payload:{}})).statusCode).toBe(200);
  expect((await server.inject({method:'POST',url:'/v1/promotions/campaign/pause',
   payload:{}})).statusCode).toBe(200);
  expect((await server.inject({method:'POST',url:'/v1/promotions/campaign/resume',
   payload:{}})).statusCode).toBe(503);
  expect((await server.inject({method:'POST',url:'/v1/promotions/posts/post/delete',
   payload:{}})).statusCode).toBe(200);
  expect((await server.inject({method:'GET',url:'/v1/admin/promotions/review'})).statusCode).toBe(200);
  expect((await server.inject({method:'GET',url:'/v1/admin/promotions/overview'})).statusCode).toBe(200);
  expect((await server.inject({method:'POST',url:'/v1/admin/promotions/uuid/review',
   payload:{decision:'approve'}})).statusCode).toBe(503);
  expect((await server.inject({method:'POST',url:'/v1/admin/promotions/uuid/review',
   payload:{decision:'reject',reason:'Safety hold'}})).statusCode).toBe(200);
  expect((await server.inject({method:'POST',url:'/v1/admin/promotions/posts/uuid/takedown',
   payload:{reason:'Safety'}})).statusCode).toBe(200);
  expect((await server.inject({method:'POST',url:'/v1/admin/promotions/purge-expired',
   payload:{}})).statusCode).toBe(200);
  expect(events).toContainEqual(['review','trusted','reviewer','uuid',false,'Safety hold']);
  expect(events).toContainEqual(['takedown','trusted','reviewer','uuid','Safety']);
  await server.close();
 });
 it('still rejects an unprivileged admin when payment admission is switched off',async()=>{
  const server=Fastify();const {port,events}=fake();
  await registerPromotionRoutes(server,{port,
   principal:async()=>({tenantId:'trusted',userId:'fan'}),
   isEditor:async()=>false,enabled:()=>false});
  expect((await server.inject({method:'GET',url:'/v1/admin/promotions/overview'})).statusCode)
   .toBe(403);
  expect((await server.inject({method:'POST',url:'/v1/admin/promotions/posts/post/takedown',
   payload:{reason:'Try takeover'}})).statusCode).toBe(403);
  expect(events).toHaveLength(0);
  await server.close();
 });
 it('validates HTTPS destinations and never accepts a CTA on a booster quote',async()=>{
  const server=Fastify();const {port,events}=fake();
  await registerPromotionRoutes(server,{port,principal:async()=>({tenantId:'tenant',userId:'publisher'}),
   isEditor:async()=>false,enabled:()=>true});
  expect((await server.inject({method:'POST',url:'/v1/promotions/quotes',
   payload:{body:'Learn safely',targetViews:10,
     destinationUrl:'https://example.org/articles?source=home'}})).statusCode).toBe(200);
  expect(events).toContainEqual({tenantId:'tenant',sponsorId:'publisher',body:'Learn safely',
   targetViews:10,destinationUrl:'https://example.org/articles?source=home'});
  expect((await server.inject({method:'POST',url:'/v1/promotions/quotes',
   payload:{body:'Unsafe',targetViews:10,destinationUrl:'http://example.org'}})).statusCode).toBe(422);
  expect((await server.inject({method:'POST',url:'/v1/promotions/quotes',
   payload:{postId:'existing',targetViews:10,destinationUrl:'https://example.org'}})).statusCode).toBe(422);
  await server.close();
 });

});
