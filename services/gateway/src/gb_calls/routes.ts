import type {FastifyInstance} from 'fastify';
import Type from 'typebox';
import {GbCallAdmissionError} from '@masanawa/postgres';
import {createGbCallReviewService,GbCallReviewError,type GbCallPorts} from './review.js';

export function registerGbCallRoutes(app:FastifyInstance,ports:GbCallPorts){
  const service=createGbCallReviewService(ports);
  // Fastify's default validator strips unknown keys. Reject before that can
  // obscure a caller-selected actor, duration or other unsupported authority.
  const onlyFields=(value:unknown,allowed:readonly string[])=>{
    if(value&&typeof value==='object'&&!Array.isArray(value)&&
       Object.keys(value).some(key=>!allowed.includes(key)))
      throw new GbCallReviewError('gb.call.invalid_request',400);
  };
  const fail=(error:unknown,reply:{code(status:number):unknown})=>{
    if(error instanceof GbCallReviewError||error instanceof GbCallAdmissionError){
      reply.code(error.statusCode);return {error:{code:error.code}};
    }
    if(error instanceof Error&&error.message==='gb.wallet.insufficient_mb'){
      reply.code(409);return {error:{code:'gb.call.insufficient_mb'}};
    }
    if(error instanceof Error&&error.message==='gb.wallet.account_frozen'){
      reply.code(403);return {error:{code:'gb.call.account_restricted'}};
    }
    const status=typeof error==='object'&&error!==null&&'statusCode' in error
      &&(error.statusCode===401||error.statusCode===403)?error.statusCode:503;
    reply.code(status);return {error:{code:status===503?'gb.call.unavailable':'gb.call.unauthorized'}};
  };
  app.post<{Body:{characterId:string;expectedSeconds:number;idempotencyKey:string}}>('/v1/gb/calls/review',{preValidation:async request=>onlyFields(request.body,['characterId','expectedSeconds','idempotencyKey']),schema:{body:Type.Object({
    characterId:Type.String({minLength:1,maxLength:160}),
    expectedSeconds:Type.Integer({minimum:1,maximum:3600}),
    idempotencyKey:Type.String({minLength:8,maxLength:128,pattern:'^[A-Za-z0-9_-]+$'}),
  },{additionalProperties:false})}},async(request,reply)=>{
    reply.header('Cache-Control','private, no-store');
    try{return {review:await service.review(await ports.authorize(request.headers.authorization),request.body)};}
    catch(error){return fail(error,reply);}
  });
  app.post<{Body:{reviewToken:string;accepted:boolean}}>('/v1/gb/calls/admissions',{preValidation:async request=>onlyFields(request.body,['reviewToken','accepted']),schema:{body:Type.Object({
    reviewToken:Type.String({minLength:1,maxLength:4096}),accepted:Type.Literal(true),
  },{additionalProperties:false})}},async(request,reply)=>{
    reply.header('Cache-Control','private, no-store');
    try{return {admission:await service.confirm(await ports.authorize(request.headers.authorization),request.body)};}
    catch(error){return fail(error,reply);}
  });
  app.get<{Params:{id:string}}>('/v1/gb/calls/admissions/:id',{preValidation:async request=>onlyFields(request.query,[]),schema:{querystring:Type.Object({},{additionalProperties:false}),params:Type.Object({
    id:Type.String({minLength:1,maxLength:160,pattern:'^[A-Za-z0-9][A-Za-z0-9_:.-]*$'}),
  },{additionalProperties:false})}},async(request,reply)=>{
    reply.header('Cache-Control','private, no-store');
    try{return {admission:await service.read(await ports.authorize(request.headers.authorization),request.params.id)};}
    catch(error){return fail(error,reply);}
  });
  if(ports.grant)app.post<{Params:{id:string}}>('/v1/gb/calls/admissions/:id/grant',{
    preValidation:async request=>{onlyFields(request.body,[]);onlyFields(request.query,[]);},
    schema:{body:Type.Object({},{additionalProperties:false}),querystring:Type.Object({},{additionalProperties:false}),params:Type.Object({
      id:Type.String({minLength:1,maxLength:160,pattern:'^[A-Za-z0-9][A-Za-z0-9_:.-]*$'}),
    },{additionalProperties:false})},
  },async(request,reply)=>{
    reply.header('Cache-Control','private, no-store');
    try{return {grant:await ports.grant!(await ports.authorize(request.headers.authorization),request.headers.authorization,request.params.id)};}
    catch(error){return fail(error,reply);}
  });
  if(ports.finish)app.post<{Params:{id:string}}>('/v1/gb/calls/admissions/:id/finish',{
    preValidation:async request=>{onlyFields(request.body,[]);onlyFields(request.query,[]);},
    schema:{body:Type.Object({},{additionalProperties:false}),querystring:Type.Object({},{additionalProperties:false}),params:Type.Object({
      id:Type.String({minLength:1,maxLength:160,pattern:'^[A-Za-z0-9][A-Za-z0-9_:.-]*$'}),
    },{additionalProperties:false})},
  },async(request,reply)=>{
    reply.header('Cache-Control','private, no-store');
    try{return {admission:await ports.finish!(await ports.authorize(request.headers.authorization),request.params.id)};}
    catch(error){return fail(error,reply);}
  });
}
