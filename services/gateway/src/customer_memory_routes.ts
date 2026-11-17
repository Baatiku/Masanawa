import type {FastifyInstance} from 'fastify';
import Type from 'typebox';import type {TypeBoxTypeProvider} from '@fastify/type-provider-typebox';
import {CustomerMemoryError,createCustomerMemoryService} from './customer_memory.js';
export function registerCustomerMemoryRoutes(server:FastifyInstance,service:ReturnType<typeof createCustomerMemoryService>){
 const app=server.withTypeProvider<TypeBoxTypeProvider>();
 const execute=async(reply:{code:(n:number)=>unknown;header:(n:string,v:string)=>unknown},run:()=>Promise<unknown>)=>{reply.header('Cache-Control','private, no-store');try{return await run();}catch(error){const e=error as {statusCode?:number;code?:string};reply.code(error instanceof CustomerMemoryError?error.statusCode:e.statusCode??503);return {error:error instanceof CustomerMemoryError?error.code:e.statusCode===401?'sign_in_required':e.statusCode===403?'account_denied':'memory_action_unconfirmed'};}};
 const op=Type.String({minLength:16,maxLength:128}),character=Type.String({pattern:'^character_[0-9a-fA-F-]{36}$'}),record=Type.String({pattern:'^memory-record_[0-9a-fA-F-]{36}$'}),content=Type.String({minLength:3,maxLength:1000}),revision=Type.Integer({minimum:1,maximum:Number.MAX_SAFE_INTEGER});
 app.get('/v1/account/memory/contacts',async(q,r)=>execute(r,()=>service.contacts(q.headers.authorization)));
 app.get('/v1/account/memory/export',async(q,r)=>execute(r,()=>service.export(q.headers.authorization)));
 app.get('/v1/account/memory/settings',async(q,r)=>execute(r,()=>service.preferences(q.headers.authorization)));
 app.put('/v1/account/memory/settings',{schema:{body:Type.Object({enabled:Type.Boolean(),retentionDays:Type.Integer({minimum:30,maximum:365}),expectedRevision:Type.Integer({minimum:0,maximum:Number.MAX_SAFE_INTEGER}),operationId:op},{additionalProperties:false})}},async(q,r)=>execute(r,()=>service.configure(q.headers.authorization,q.body)));
 app.get('/v1/account/memories',{schema:{querystring:Type.Object({characterId:character},{additionalProperties:false})}},async(q,r)=>execute(r,()=>service.list(q.headers.authorization,q.query.characterId)));
 app.post('/v1/account/memories',{schema:{body:Type.Object({characterId:character,content,type:Type.Union([Type.Literal('fact'),Type.Literal('preference')]),operationId:op},{additionalProperties:false})}},async(q,r)=>execute(r,()=>service.add(q.headers.authorization,q.body)));
 app.put('/v1/account/memories/:recordId',{schema:{params:Type.Object({recordId:record}),body:Type.Object({content,expectedRevision:revision,operationId:op},{additionalProperties:false})}},async(q,r)=>execute(r,()=>service.edit(q.headers.authorization,{...q.body,recordId:q.params.recordId})));
 app.post('/v1/account/memories/:recordId/forget',{schema:{params:Type.Object({recordId:record}),body:Type.Object({expectedLifecycleRevision:revision,operationId:op,confirmed:Type.Boolean()},{additionalProperties:false})}},async(q,r)=>execute(r,()=>service.forget(q.headers.authorization,{...q.body,recordId:q.params.recordId})));
 app.post('/v1/account/memory/proposals/:proposalId',{schema:{params:Type.Object({proposalId:Type.String({maxLength:100})}),body:Type.Object({accept:Type.Boolean(),operationId:op},{additionalProperties:false})}},async(q,r)=>execute(r,()=>service.decideProposal(q.headers.authorization,{...q.body,proposalId:q.params.proposalId})));
}
