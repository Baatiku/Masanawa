import {registerOwnerMailboxRoutes} from './owner_mailbox_routes.js';
import { WhatsAppAdminError, type createWhatsAppAdmin } from './whatsapp_admin.js';
import type {createOwnerMailbox} from './owner_mailbox.js';
import type {createDataReconciliation} from './data_reconciliation.js';
import Fastify from "fastify";
import {VoiceAdminError,type createVoiceAdmin} from './voice_admin.js';
import {WalletAdminError,type createWalletAdmin} from './wallet_admin.js';
import type {createBillstackPaymentAdmin} from './billstack_payment_admin.js';
import {PersonaAdminError,type createPersonaAdmin} from './persona_admin.js';
import type {createPortraitAdmin} from './portrait_admin.js';
import type {createRoleAdmin} from './role_admin.js';
import type {createContentAdmin} from './content_admin.js';
import type {createUserAdmin} from './user_admin.js';
import type {createDataAdmin} from './data_admin.js';
import type {createEvidenceAdmin} from './evidence_admin.js';
import type { Instant } from "@masanawa/contracts";
import { nowInstant, parseCanonicalId } from "@masanawa/contracts";
import type { AgentAdminService } from "./agent_admin.js";
import { OpsAdminAccessError, type OpsAdminDashboardService } from "./admin_dashboard.js";
import {
  admitTelemetryCorrelation,
  injectCorrelationHeaders,
} from "@masanawa/telemetry";
import type { TypeBoxTypeProvider } from "@fastify/type-provider-typebox";
import Type from "typebox";

export interface ReadinessCheck {
  readonly name: string;
  check(): Promise<{ readonly ready: boolean; readonly reason?: string }>;
}

export interface OpsAppOptions {
  readonly whatsappAdmin?:ReturnType<typeof createWhatsAppAdmin>;
  readonly evidenceAdmin?: ReturnType<typeof createEvidenceAdmin>;
  readonly voiceAdmin?: ReturnType<typeof createVoiceAdmin>;
  readonly walletAdmin?: ReturnType<typeof createWalletAdmin>;
  readonly billstackPaymentAdmin?: ReturnType<typeof createBillstackPaymentAdmin>;
  readonly personaAdmin?: ReturnType<typeof createPersonaAdmin>;
  readonly portraitAdmin?: ReturnType<typeof createPortraitAdmin>;
  readonly roleAdmin?: ReturnType<typeof createRoleAdmin>;
  readonly contentAdmin?: ReturnType<typeof createContentAdmin>;
  readonly userAdmin?: ReturnType<typeof createUserAdmin>;
  readonly ownerMailbox?:ReturnType<typeof createOwnerMailbox>;
  readonly dataReconciliation?:ReturnType<typeof createDataReconciliation>;
  readonly dataAdmin?: ReturnType<typeof createDataAdmin>;
  readonly runtimeMetadata?:{providers:readonly {name:string;configured:boolean;verification:string}[];flags:readonly {name:string;enabled:boolean}[]};
  readonly readinessChecks?: readonly ReadinessCheck[];
  readonly now?: () => Instant;
  readonly isDraining?: () => boolean;
  readonly agentAdmin?: AgentAdminService;
  readonly adminDashboard?: OpsAdminDashboardService;
}

const HealthResponseSchema = Type.Object(
  {
    service: Type.Literal("ops"),
    status: Type.Literal("ok"),
    time: Type.String(),
  },
  { additionalProperties: false },
);

const ReadinessCheckSchema = Type.Object(
  {
    name: Type.String(),
    ready: Type.Boolean(),
    reason: Type.Optional(Type.String()),
  },
  { additionalProperties: false },
);


const AgentPresentationSchema = Type.Object(
  {
    schemaVersion: Type.Literal(1),
    tenantId: Type.String(),
    characterId: Type.String(),
    characterVersionId: Type.String(),
    displayName: Type.String(),
    roleLabel: Type.String(),
    about: Type.String(),
    greeting: Type.Union([Type.String(), Type.Null()]),
    visibleInUserApp: Type.Boolean(),
    sortOrder: Type.Integer(),
    revision: Type.Integer(),
  },
  { additionalProperties: false },
);


const AgentAdminSkillOptionSchema = Type.Object(
  {
    skillVersionId: Type.String(),
    key: Type.String(),
    version: Type.String(),
    displayName: Type.String(),
    description: Type.String(),
    readiness: Type.Union([
      Type.Literal("ready"),
      Type.Literal("degraded"),
      Type.Literal("blocked"),
      Type.Literal("disabled"),
      Type.Literal("unknown"),
    ]),
    advertised: Type.Boolean(),
  },
  { additionalProperties: false },
);

const AgentSkillAssignmentSchema = Type.Object(
  {
    schemaVersion: Type.Literal(1),
    tenantId: Type.String(),
    characterId: Type.String(),
    skillVersionIds: Type.Array(Type.String()),
    revision: Type.Integer(),
  },
  { additionalProperties: false },
);

const PutPresentationBodySchema = Type.Object(
  {
    schemaVersion: Type.Literal(1),
    characterVersionId: Type.String(),
    displayName: Type.String({ minLength: 1, maxLength: 120 }),
    roleLabel: Type.String({ minLength: 1, maxLength: 120 }),
    about: Type.String({ maxLength: 500 }),
    greeting: Type.Union([Type.String({ maxLength: 1000 }), Type.Null()]),
    visibleInUserApp: Type.Boolean(),
    sortOrder: Type.Integer({ minimum: 0, maximum: 1000000 }),
    expectedRevision: Type.Union([
      Type.Integer({ minimum: 1 }),
      Type.Null(),
    ]),
  },
  { additionalProperties: false },
);

const PutSkillsBodySchema = Type.Object(
  {
    schemaVersion: Type.Literal(1),
    skillVersionIds: Type.Array(Type.String(), { maxItems: 64 }),
    expectedRevision: Type.Union([
      Type.Integer({ minimum: 1 }),
      Type.Null(),
    ]),
  },
  { additionalProperties: false },
);

const CharacterParamsSchema = Type.Object(
  { characterId: Type.String() },
  { additionalProperties: false },
);

const ReadinessResponseSchema = Type.Object(
  {
    service: Type.Literal("ops"),
    status: Type.Union([Type.Literal("ready"), Type.Literal("not-ready")]),
    time: Type.String(),
    checks: Type.Array(ReadinessCheckSchema),
  },
  { additionalProperties: false },
);

export function createOpsApp(options: OpsAppOptions = {}) {
  const app = Fastify({
    logger: false,
    bodyLimit: 1_048_576,
    requestTimeout: 30_000,
  }).withTypeProvider<TypeBoxTypeProvider>();

  const now = options.now ?? nowInstant;
  const checks = options.readinessChecks ?? [];

  app.addHook("onRequest", async (request, reply) => {
    const correlation = admitTelemetryCorrelation({
      carrier: {
        ...(request.headers.traceparent !== undefined
          ? { traceparent: request.headers.traceparent }
          : {}),
        ...(request.headers["x-request-id"] !== undefined
          ? { "x-request-id": request.headers["x-request-id"] }
          : {}),
        ...(request.headers["x-correlation-id"] !== undefined
          ? { "x-correlation-id": request.headers["x-correlation-id"] }
          : {}),
      },
    });
    const headers = injectCorrelationHeaders(correlation);

    request.headers.traceparent = headers.traceparent;
    request.headers["x-request-id"] = headers["x-request-id"];
    request.headers["x-correlation-id"] = headers["x-correlation-id"];
    reply.headers(headers);
  });

  app.addHook('onSend',async(request,reply,payload)=>{if(request.url.startsWith('/v1/admin/'))reply.header('Cache-Control','private, no-store');return payload;});

  if(options.whatsappAdmin){
    const wa=options.whatsappAdmin;
    const handle=async(reply:{code:(status:number)=>unknown},fn:()=>Promise<unknown>)=>{
      try{return await fn();}catch(e){
        reply.code(e instanceof WhatsAppAdminError?e.statusCode:e instanceof OpsAdminAccessError?e.statusCode:503);
        return {error:e instanceof WhatsAppAdminError?e.code:e instanceof OpsAdminAccessError?e.message:'whatsapp_management_unavailable'};
      }
    };
    const channelQuery=Type.Object({channelId:Type.String({maxLength:50})},{additionalProperties:false});
    const threadQuery=Type.Object({threadId:Type.String({maxLength:50})},{additionalProperties:false});
    app.get('/v1/admin/whatsapp',async(q,r)=>handle(r,()=>wa.list(q.headers.authorization)));
    app.get('/v1/admin/whatsapp/gemini-keys',async(q,r)=>handle(r,()=>wa.geminiKeys(q.headers.authorization)));
    app.post('/v1/admin/whatsapp/gemini-keys',{schema:{body:Type.Object({apiKey:Type.String({minLength:20,maxLength:4096})},{additionalProperties:false})}},async(q,r)=>handle(r,()=>wa.addGeminiKey(q.headers.authorization,q.body.apiKey)));
    app.delete('/v1/admin/whatsapp/gemini-keys',{schema:{body:Type.Object({keyId:Type.String({maxLength:50})},{additionalProperties:false})}},async(q,r)=>handle(r,()=>wa.removeGeminiKey(q.headers.authorization,q.body.keyId)));
    app.get('/v1/admin/whatsapp/qr',{schema:{querystring:channelQuery}},async(q,r)=>handle(r,()=>wa.qr(q.headers.authorization,q.query.channelId)));
    app.get('/v1/admin/whatsapp/config',{schema:{querystring:channelQuery}},async(q,r)=>handle(r,()=>wa.config(q.headers.authorization,q.query.channelId)));
    app.get('/v1/admin/whatsapp/threads',{schema:{querystring:channelQuery}},async(q,r)=>handle(r,()=>wa.threads(q.headers.authorization,q.query.channelId)));
    app.get('/v1/admin/whatsapp/messages',{schema:{querystring:threadQuery}},async(q,r)=>handle(r,()=>wa.messages(q.headers.authorization,q.query.threadId)));
    app.get('/v1/admin/whatsapp/analytics',{schema:{querystring:channelQuery}},async(q,r)=>handle(r,()=>wa.analytics(q.headers.authorization,q.query.channelId)));
    app.get('/v1/admin/whatsapp/templates',{schema:{querystring:channelQuery}},async(q,r)=>handle(r,()=>wa.templates(q.headers.authorization,q.query.channelId)));
    app.get('/v1/admin/whatsapp/audit',{schema:{querystring:channelQuery}},async(q,r)=>handle(r,()=>wa.auditEvents(q.headers.authorization,q.query.channelId)));
    app.get('/v1/admin/whatsapp/calls',{schema:{querystring:channelQuery}},async(q,r)=>handle(r,()=>wa.calls(q.headers.authorization,q.query.channelId)));
    app.post('/v1/admin/whatsapp/calls/pair',{schema:{body:channelQuery}},async(q,r)=>handle(r,()=>wa.startCalls(q.headers.authorization,q.body.channelId)));
    app.post('/v1/admin/whatsapp/calls/control',{schema:{body:Type.Object({channelId:Type.String({maxLength:50}),expectedRevision:Type.Integer({minimum:1}),action:Type.Union([Type.Literal('enable'),Type.Literal('disable'),Type.Literal('disconnect')])},{additionalProperties:false})}},async(q,r)=>handle(r,()=>wa.changeCalls(q.headers.authorization,q.body.channelId,q.body.action,q.body.expectedRevision)));
    app.post('/v1/admin/whatsapp/onboarding/start',async(q,r)=>handle(r,()=>wa.start(q.headers.authorization)));
    app.put('/v1/admin/whatsapp/config',{schema:{body:Type.Object({channelId:Type.String({maxLength:50}),expectedRevision:Type.Integer({minimum:1}),
      config:Type.Unknown(),expectedChannelRevision:Type.Optional(Type.Integer({minimum:1}))},{additionalProperties:false})}},
    async(q,r)=>handle(r,()=>wa.save(q.headers.authorization,q.body.channelId,q.body.expectedRevision,q.body.config,q.body.expectedChannelRevision)));
    app.post('/v1/admin/whatsapp/channel',{schema:{body:Type.Object({channelId:Type.String({maxLength:50}),expectedRevision:Type.Integer({minimum:1}),action:Type.Union([Type.Literal('enable'),Type.Literal('disable'),Type.Literal('disconnect'),Type.Literal('reconnect')])},{additionalProperties:false})}},async(q,r)=>handle(r,()=>wa.change(q.headers.authorization,q.body.channelId,q.body.action,q.body.expectedRevision)));
    app.post('/v1/admin/whatsapp/template',{schema:{body:Type.Object({channelId:Type.String({maxLength:50}),name:Type.String({minLength:1,maxLength:100}),body:Type.String({minLength:1,maxLength:4000}),language:Type.Union([Type.Literal('auto'),Type.Literal('en'),Type.Literal('ha')]),enabled:Type.Boolean()},{additionalProperties:false})}},async(q,r)=>handle(r,()=>wa.saveTemplate(q.headers.authorization,q.body.channelId,q.body.name,q.body.body,q.body.language,q.body.enabled)));
    app.post('/v1/admin/whatsapp/handoff',{schema:{body:Type.Object({threadId:Type.String({maxLength:50}),mode:Type.Union([Type.Literal('ai'),Type.Literal('human'),Type.Literal('closed')])},{additionalProperties:false})}},async(q,r)=>handle(r,()=>wa.handoff(q.headers.authorization,q.body.threadId,q.body.mode)));
    app.post('/v1/admin/whatsapp/history',{schema:{body:Type.Object({threadId:Type.String({maxLength:50})},{additionalProperties:false})}},async(q,r)=>handle(r,()=>wa.requestHistory(q.headers.authorization,q.body.threadId)));
    app.post('/v1/admin/whatsapp/contact-name',{schema:{body:Type.Object({threadId:Type.String({maxLength:50}),name:Type.String({maxLength:80})},{additionalProperties:false})}},async(q,r)=>handle(r,()=>wa.verifyContactName(q.headers.authorization,q.body.threadId,q.body.name)));
    app.post('/v1/admin/whatsapp/send',{schema:{body:Type.Object({threadId:Type.String({maxLength:50}),message:Type.String({minLength:1,maxLength:4000}),requestId:Type.String({maxLength:50})},{additionalProperties:false})}},async(q,r)=>handle(r,()=>wa.send(q.headers.authorization,q.body.threadId,q.body.message,q.body.requestId)));
    app.post('/v1/admin/whatsapp/test',{schema:{body:Type.Object({channelId:Type.String({maxLength:50}),action:Type.String({maxLength:80})},{additionalProperties:false})}},async(q,r)=>handle(r,()=>wa.test(q.headers.authorization,q.body.channelId,q.body.action as import('./whatsapp_policy.js').WhatsAppPermission)));
  }

  if(options.ownerMailbox)registerOwnerMailboxRoutes(app,options.ownerMailbox);
  if(options.dataReconciliation){
    const execute=async(reply:{code:(status:number)=>unknown},run:()=>Promise<unknown>)=>{try{return await run();}catch(e){const p=e as {statusCode?:number;code?:string};reply.code(p.statusCode??503);return {error:p.code??'reconciliation_unavailable'};}};
    app.get('/v1/admin/data/orders',async(q,r)=>execute(r,()=>options.dataReconciliation!.list(q.headers.authorization)));
    app.post('/v1/admin/data/reconcile',{schema:{body:Type.Object({userId:Type.String({maxLength:160}),operationId:Type.String({maxLength:160}),reviewId:Type.String({minLength:16,maxLength:128}),operatorId:Type.String({maxLength:160}),reason:Type.String({minLength:10,maxLength:1000})},{additionalProperties:false})}},async(q,r)=>execute(r,()=>options.dataReconciliation!.reconcile(q.headers.authorization,q.body)));
  }
  if(options.dataAdmin){
    const execute=async(reply:{code:(status:number)=>unknown},run:()=>Promise<unknown>)=>{try{return await run();}catch(error){reply.code(error instanceof PersonaAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof PersonaAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'data_admin_unavailable'};}};
    app.get('/v1/admin/data/provider',async(request,reply)=>execute(reply,()=>options.dataAdmin!.preview(request.headers.authorization)));
    app.post('/v1/admin/data/renew',{schema:{body:Type.Object({ids:Type.Array(Type.String({maxLength:260}),{minItems:1,maxItems:100}),expectedRevision:Type.Integer({minimum:0,maximum:Number.MAX_SAFE_INTEGER}),reason:Type.String({minLength:10,maxLength:1000})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.dataAdmin!.renew(request.headers.authorization,request.body)));
    app.get('/v1/admin/data/catalogue',async(request,reply)=>execute(reply,()=>options.dataAdmin!.read(request.headers.authorization)));
    app.post('/v1/admin/data/catalogue',{schema:{body:Type.Object({bundles:Type.Array(Type.Unknown(),{maxItems:100}),expectedRevision:Type.Integer({minimum:0,maximum:Number.MAX_SAFE_INTEGER}),reason:Type.String({minLength:10,maxLength:1000})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.dataAdmin!.publish(request.headers.authorization,request.body)));
  }
  if(options.evidenceAdmin){
    const execute=async(reply:{code:(status:number)=>unknown},run:()=>Promise<unknown>)=>{try{return await run();}catch(error){reply.code(error instanceof PersonaAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof PersonaAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'evidence_admin_unavailable'};}};
    app.get('/v1/admin/persona/evidence',{schema:{querystring:Type.Object({characterId:Type.String({maxLength:128})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.evidenceAdmin!.read(request.headers.authorization,request.query.characterId)));
    app.post('/v1/admin/persona/evidence',{schema:{body:Type.Object({characterId:Type.String({maxLength:128}),expectedReviewId:Type.Union([Type.String({maxLength:36}),Type.Null()]),packet:Type.Record(Type.String(),Type.Unknown()),confirmed:Type.Boolean()},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.evidenceAdmin!.publish(request.headers.authorization,request.body)));
  }
  if(options.userAdmin){
    app.get('/v1/admin/users/account',{schema:{querystring:Type.Object({userId:Type.String({maxLength:254})},{additionalProperties:false})}},async(request,reply)=>{try{return await options.userAdmin!.read(request.headers.authorization,request.query.userId);}catch(error){reply.code(error instanceof WalletAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof WalletAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'user_management_unavailable'};}});
    app.post('/v1/admin/users/state',{schema:{body:Type.Object({userId:Type.String({maxLength:160}),operationId:Type.String({minLength:16,maxLength:80}),state:Type.Union([Type.Literal('active'),Type.Literal('disabled')]),expectedRevision:Type.Integer({minimum:1,maximum:Number.MAX_SAFE_INTEGER}),reason:Type.String({minLength:10,maxLength:500})},{additionalProperties:false})}},async(request,reply)=>{try{return await options.userAdmin!.transition(request.headers.authorization,request.body);}catch(error){reply.code(error instanceof WalletAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof WalletAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'user_management_unavailable'};}});
  }
  if(options.contentAdmin){
    const execute=async(reply:{code:(status:number)=>unknown},run:()=>Promise<unknown>)=>{try{return await run();}catch(error){const e=error as {status?:number;code?:string};reply.code(error instanceof PersonaAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:e.status===409?409:503);return {error:error instanceof PersonaAdminError?error.code:e.status===409?'content_revision_changed':'content_admin_unavailable'};}};
    app.get('/v1/admin/content/reports',async(request,reply)=>execute(reply,()=>options.contentAdmin!.comments(request.headers.authorization)));
    app.post('/v1/admin/content/publisher',{schema:{body:Type.Object({publisherId:Type.String({maxLength:40}),state:Type.Union([Type.Literal('pending'),Type.Literal('approved'),Type.Literal('suspended')]),rightsBasis:Type.String({minLength:13,maxLength:2000}),rightsUntil:Type.Union([Type.String({maxLength:40}),Type.Null()]),reason:Type.String({minLength:5,maxLength:500}),expectedRevision:Type.Integer({minimum:1,maximum:Number.MAX_SAFE_INTEGER})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.contentAdmin!.publisher(request.headers.authorization,request.body)));
    app.post('/v1/admin/content/comment',{schema:{body:Type.Object({commentId:Type.String({maxLength:36}),state:Type.Union([Type.Literal('hidden'),Type.Literal('visible')]),reason:Type.String({minLength:5,maxLength:500}),revision:Type.Integer({minimum:1,maximum:Number.MAX_SAFE_INTEGER})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.contentAdmin!.moderate(request.headers.authorization,request.body)));
    app.post('/v1/admin/content/report',{schema:{body:Type.Object({reportId:Type.String({maxLength:36}),kind:Type.Union([Type.Literal('post'),Type.Literal('comment')]),state:Type.Union([Type.Literal('reviewed'),Type.Literal('dismissed')])},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>request.body.kind==='post'?options.contentAdmin!.resolvePost(request.headers.authorization,request.body):options.contentAdmin!.resolve(request.headers.authorization,request.body)));
    app.post('/v1/admin/content/post',{schema:{body:Type.Object({postId:Type.String({maxLength:36}),state:Type.Union([Type.Literal('published'),Type.Literal('hidden')]),reason:Type.String({minLength:5,maxLength:500}),revision:Type.Integer({minimum:0,maximum:Number.MAX_SAFE_INTEGER}),operationId:Type.String({minLength:16,maxLength:80})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.contentAdmin!.newsPost(request.headers.authorization,request.body)));
  }
  if(options.roleAdmin){
    const execute=async(reply:{code:(status:number)=>unknown},run:()=>Promise<unknown>)=>{try{return await run();}catch(error){reply.code(error instanceof WalletAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof WalletAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'role_admin_unavailable'};}};
    app.get('/v1/admin/roles',{schema:{querystring:Type.Object({userId:Type.Optional(Type.String({maxLength:160}))},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.roleAdmin!.list(request.headers.authorization,request.query.userId)));
    app.post('/v1/admin/roles',{schema:{body:Type.Object({userId:Type.String({maxLength:160}),capabilities:Type.Array(Type.String({maxLength:80}),{maxItems:40,uniqueItems:true}),expectedRevision:Type.Integer({minimum:0,maximum:Number.MAX_SAFE_INTEGER})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.roleAdmin!.put(request.headers.authorization,request.body)));
  }
  if(options.runtimeMetadata&&options.adminDashboard){
    app.get('/v1/admin/providers',async(request,reply)=>{try{await options.adminDashboard!.authorize({authorizationHeader:request.headers.authorization,capability:'runtime.read'});return {...options.runtimeMetadata,source:'Ops runtime environment',providerAuthenticationVerified:false};}catch(error){reply.code(error instanceof OpsAdminAccessError?error.statusCode:503);return {error:'provider_metadata_denied'};}});
  }
  if(options.portraitAdmin){
    const execute=async(reply:{code:(status:number)=>unknown},run:()=>Promise<unknown>)=>{try{return await run();}catch(error){reply.code(error instanceof PersonaAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof PersonaAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'portrait_admin_unavailable'};}};
    app.get('/v1/admin/persona/portrait',{schema:{querystring:Type.Object({characterId:Type.String({maxLength:128})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.portraitAdmin!.read(request.headers.authorization,request.query.characterId)));
    app.post('/v1/admin/persona/portrait',{schema:{body:Type.Object({characterId:Type.String({maxLength:128}),imageBase64:Type.String({maxLength:700000}),credit:Type.String({minLength:3,maxLength:200}),sourceUrl:Type.String({maxLength:2048}),rightsConfirmed:Type.Boolean(),expectedRevision:Type.Integer({minimum:0,maximum:Number.MAX_SAFE_INTEGER})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.portraitAdmin!.put(request.headers.authorization,request.body)));
  }
  if(options.personaAdmin){
    const execute=async(reply:{code:(status:number)=>unknown},run:()=>Promise<unknown>)=>{try{return await run();}catch(error){reply.code(error instanceof PersonaAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof PersonaAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'persona_admin_unavailable'};}};
    app.get('/v1/admin/persona/config',{schema:{querystring:Type.Object({characterId:Type.String({maxLength:128})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.personaAdmin!.read(request.headers.authorization,request.query.characterId)));
    app.post('/v1/admin/persona/config',{schema:{body:Type.Object({characterId:Type.String({maxLength:128}),state:Type.Union([Type.Literal('active'),Type.Literal('paused'),Type.Literal('disabled')]),mainPrompt:Type.String({maxLength:8000}),tone:Type.String({maxLength:2000}),biography:Type.String({maxLength:8000}),context:Type.String({maxLength:16000}),researchEnabled:Type.Optional(Type.Boolean()),expectedRevision:Type.Integer({minimum:0,maximum:Number.MAX_SAFE_INTEGER})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.personaAdmin!.publish(request.headers.authorization,request.body)));
    app.post('/v1/admin/persona/restore',{schema:{body:Type.Object({characterId:Type.String({maxLength:128}),revision:Type.Integer({minimum:1,maximum:Number.MAX_SAFE_INTEGER}),expectedRevision:Type.Integer({minimum:0,maximum:Number.MAX_SAFE_INTEGER})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.personaAdmin!.restore(request.headers.authorization,request.body)));
  }
  if(options.walletAdmin){
    const execute=async(reply:{code:(status:number)=>unknown},run:()=>Promise<unknown>)=>{try{return await run();}catch(error){reply.code(error instanceof WalletAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof WalletAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'wallet_admin_unavailable'};}};
    app.get('/v1/admin/wallet/account',{schema:{querystring:Type.Object({userId:Type.String({maxLength:254})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.walletAdmin!.read(request.headers.authorization,request.query.userId)));
    app.get('/v1/admin/wallet/receipt',{schema:{querystring:Type.Object({userId:Type.String({maxLength:160}),operationId:Type.String({maxLength:160})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.walletAdmin!.receipt(request.headers.authorization,request.query.userId,request.query.operationId)));
    app.post('/v1/admin/wallet/adjust',{schema:{body:Type.Object({userId:Type.String({maxLength:160}),operationId:Type.String({minLength:16,maxLength:160}),mode:Type.Union([Type.Literal('credit'),Type.Literal('set_balance')]),amountKobo:Type.Integer({minimum:0,maximum:Number.MAX_SAFE_INTEGER}),expectedVersion:Type.Integer({minimum:0,maximum:Number.MAX_SAFE_INTEGER}),reason:Type.String({minLength:10,maxLength:1000}),fundingReference:Type.String({minLength:3,maxLength:200})},{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.walletAdmin!.adjust(request.headers.authorization,request.body)));
  }
  if(options.billstackPaymentAdmin){
    const execute=async(reply:{code:(status:number)=>unknown},run:()=>Promise<unknown>)=>{
      try{return await run();}catch(error){
        reply.code(error instanceof WalletAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);
        return {error:error instanceof WalletAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'recovery.unavailable'};
      }
    };
    app.get('/v1/admin/payments',{schema:{querystring:Type.Object({
      limit:Type.Optional(Type.Integer({minimum:1,maximum:100})),offset:Type.Optional(Type.Integer({minimum:0,maximum:10000}))
    },{additionalProperties:false})}},async(request,reply)=>execute(reply,()=>options.billstackPaymentAdmin!.list(request.headers.authorization,request.query.limit??40,request.query.offset??0)));
    app.post('/v1/admin/payments/reconcile',{schema:{body:Type.Object({sessionId:Type.String({minLength:20,maxLength:40,pattern:'^[0-9]+$'})},{additionalProperties:false})}},
      async(request,reply)=>execute(reply,()=>options.billstackPaymentAdmin!.reconcile(request.headers.authorization,request.body.sessionId)));
  }
  if (options.adminDashboard) {
    const admin = options.adminDashboard;
    const handle = async <T>(reply: { code(status: number): unknown }, action: () => Promise<T>) => {
      try { return await action(); }
      catch (error) {
        const status = error instanceof OpsAdminAccessError ? error.statusCode : 503;
        reply.code(status);
        return { code: status === 401 ? "UNAUTHORIZED" : status === 403 ? "FORBIDDEN" : "ADMIN_UNAVAILABLE" };
      }
    };
    const Pagination = Type.Object({
      limit: Type.Optional(Type.Integer({ minimum: 1, maximum: 100 })),
      offset: Type.Optional(Type.Integer({ minimum: 0, maximum: 10000 })),
    }, { additionalProperties: false });
    const Filtered = Type.Object({
      limit: Type.Optional(Type.Integer({ minimum: 1, maximum: 100 })),
      offset: Type.Optional(Type.Integer({ minimum: 0, maximum: 10000 })),
      state: Type.Optional(Type.String({ maxLength: 32, pattern: "^[a-z_-]+$" })),
    }, { additionalProperties: false });
    app.get("/v1/admin/me", async (request, reply) =>
      handle(reply, () => admin.me({ authorizationHeader: request.headers.authorization })));
    app.get("/v1/admin/test-wallet", async (request, reply) =>
      handle(reply, () => admin.testWallet({ authorizationHeader: request.headers.authorization })));
    app.post("/v1/admin/test-wallet/seed", {schema:{body:Type.Object({}, {additionalProperties:false})}}, async (request, reply) =>
      handle(reply, () => admin.seedTestWallet({ authorizationHeader: request.headers.authorization })));
    app.post("/v1/admin/test-wallet/debit", {schema:{body:Type.Object({requestId:Type.String({minLength:16,maxLength:80,pattern:"^[a-zA-Z0-9_-]+$"}),kind:Type.Union([Type.Literal("reply"),Type.Literal("call"),Type.Literal("data"),Type.Literal("send")]),amountKobo:Type.Integer({minimum:1,maximum:500000})},{additionalProperties:false})}}, async(request,reply)=>
      handle(reply,()=>admin.debitTestWallet({authorizationHeader:request.headers.authorization,...request.body})));
    app.get("/v1/admin/summary", async (request, reply) =>
      handle(reply, () => admin.summary({ authorizationHeader: request.headers.authorization })));
    app.get("/v1/admin/users", { schema: { querystring: Filtered } }, async (request, reply) =>
      handle(reply, () => admin.users({ authorizationHeader: request.headers.authorization, ...request.query,
        limit: request.query.limit ?? 50, offset: request.query.offset ?? 0 })));
    app.get("/v1/admin/agent-runs", { schema: { querystring: Filtered } }, async (request, reply) =>
      handle(reply, () => admin.runs({ authorizationHeader: request.headers.authorization, ...request.query,
        limit: request.query.limit ?? 50, offset: request.query.offset ?? 0 })));
    app.get("/v1/admin/operations", { schema: { querystring: Filtered } }, async (request, reply) =>
      handle(reply, () => admin.operations({ authorizationHeader: request.headers.authorization, ...request.query,
        limit: request.query.limit ?? 50, offset: request.query.offset ?? 0 })));
    app.get("/v1/admin/audit", { schema: { querystring: Pagination } }, async (request, reply) =>
      handle(reply, () => admin.audit({ authorizationHeader: request.headers.authorization,
        limit: request.query.limit ?? 50, offset: request.query.offset ?? 0 })));
    app.get("/v1/admin/news", { schema: { querystring: Filtered } }, async (request, reply) =>
      handle(reply, () => admin.news({ authorizationHeader: request.headers.authorization, ...request.query,
        limit: request.query.limit ?? 50, offset: request.query.offset ?? 0 })));
    app.get("/v1/admin/wallet", { schema: { querystring: Pagination } }, async (request, reply) =>
      handle(reply, () => admin.wallet({ authorizationHeader: request.headers.authorization,
        limit: request.query.limit ?? 50, offset: request.query.offset ?? 0 })));
    app.get("/v1/admin/data", { schema: { querystring: Filtered } }, async (request, reply) =>
      handle(reply, () => admin.data({ authorizationHeader: request.headers.authorization, ...request.query,
        limit: request.query.limit ?? 50, offset: request.query.offset ?? 0 })));
    app.get("/v1/admin/calls", { schema: { querystring: Filtered } }, async (request, reply) =>
      handle(reply, () => admin.calls({ authorizationHeader: request.headers.authorization, ...request.query,
        limit: request.query.limit ?? 50, offset: request.query.offset ?? 0 })));
    app.get("/v1/admin/moderation", { schema: { querystring: Pagination } }, async (request, reply) =>
      handle(reply, () => admin.moderation({ authorizationHeader: request.headers.authorization,
        limit: request.query.limit ?? 50, offset: request.query.offset ?? 0 })));
  }

  if(options.voiceAdmin&&options.adminDashboard){
    const service=options.voiceAdmin;
    const preflight=async(request:{headers:{authorization?:string|undefined}},reply:{code:(status:number)=>unknown;send:(data:unknown)=>unknown})=>{try{await options.adminDashboard!.authorize({authorizationHeader:request.headers.authorization,capability:'agents.presentation.write'});}catch(error){reply.code(error instanceof OpsAdminAccessError?error.statusCode:503);return reply.send({error:'Voice administration denied'});}};
    const run=async(reply:{code:(status:number)=>unknown},action:()=>Promise<unknown>)=>{try{return await action();}catch(error){reply.code(error instanceof VoiceAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof VoiceAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'voice_admin_unavailable'};}};
    app.get('/v1/admin/voices',{onRequest:preflight,schema:{querystring:Type.Object({characterId:Type.String({pattern:'^[a-zA-Z0-9_-]{1,128}$'})},{additionalProperties:false})}},async(request,reply)=>run(reply,()=>service.list(request.headers.authorization,request.query.characterId)));
    app.post('/v1/admin/voices/enroll',{onRequest:preflight,bodyLimit:8_100_000,schema:{body:Type.Object({characterId:Type.String({maxLength:128}),requestId:Type.String({minLength:16,maxLength:80}),displayName:Type.String({minLength:1,maxLength:120}),sample:Type.String({maxLength:4_000_000}),consent:Type.String({maxLength:4_000_000}),adultSpeakerConfirmed:Type.Boolean()},{additionalProperties:false})}},async(request,reply)=>run(reply,()=>service.enroll(request.headers.authorization,request.body)));
    app.post('/v1/admin/voices/assign',{onRequest:preflight,schema:{body:Type.Object({characterId:Type.String({maxLength:128}),requestId:Type.String({minLength:16,maxLength:80}),expectedRevision:Type.Integer({minimum:0})},{additionalProperties:false})}},async(request,reply)=>run(reply,()=>service.assign(request.headers.authorization,request.body)));
  }


  if(options.voiceAdmin&&options.adminDashboard){
    app.post('/v1/admin/voices/unassign',{schema:{body:Type.Object({characterId:Type.String({pattern:'^[a-zA-Z0-9_-]{1,128}$'}),expectedRevision:Type.Integer({minimum:1})},{additionalProperties:false})}},async(request,reply)=>{try{return await options.voiceAdmin!.unassign(request.headers.authorization,request.body);}catch(error){reply.code(error instanceof VoiceAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof VoiceAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'voice_unassign_unavailable'};}});
    app.post('/v1/admin/voices/revoke',{schema:{body:Type.Object({characterId:Type.String({pattern:'^[a-zA-Z0-9_-]{1,128}$'}),requestId:Type.String({pattern:'^[a-zA-Z0-9_-]{16,80}$'}),confirmed:Type.Boolean()},{additionalProperties:false})}},async(request,reply)=>{try{return await options.voiceAdmin!.revoke(request.headers.authorization,request.body);}catch(error){reply.code(error instanceof VoiceAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof VoiceAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'voice_revoke_unavailable'};}});
    app.post('/v1/admin/voices/audition',{schema:{body:Type.Object({characterId:Type.String({pattern:'^[a-zA-Z0-9_-]{1,128}$'}),requestId:Type.String({pattern:'^[a-zA-Z0-9_-]{16,80}$'})},{additionalProperties:false})}},async(request,reply)=>{
      try{return await options.voiceAdmin!.audition(request.headers.authorization,request.body);}catch(error){reply.code(error instanceof VoiceAdminError?error.statusCode:error instanceof OpsAdminAccessError?error.statusCode:503);return {error:error instanceof VoiceAdminError?error.code:error instanceof OpsAdminAccessError&&error.message==='fresh_admin_sign_in_required'?'fresh_admin_sign_in_required':'voice_preview_unavailable'};}
    });
  }
  if (options.agentAdmin) {
    const agentAdmin = options.agentAdmin;

    app.get(
      "/v1/agents",
      {
        schema: {
          response: { 200: Type.Array(AgentPresentationSchema) },
        },
      },
      async (request) => [
        ...await agentAdmin.listPresentations({
          authorizationHeader: request.headers.authorization,
        }),
      ],
    );

    app.put(
      "/v1/agents/:characterId/presentation",
      {
        schema: {
          params: CharacterParamsSchema,
          body: PutPresentationBodySchema,
          response: { 200: AgentPresentationSchema },
        },
      },
      async (request) => {
        const body = request.body;
        return agentAdmin.putPresentation({
          authorizationHeader: request.headers.authorization,
          expectedRevision: body.expectedRevision,
          presentation: {
            schemaVersion: 1,
            characterId: parseCanonicalId(
              "character",
              request.params.characterId,
            ),
            characterVersionId: parseCanonicalId(
              "character-version",
              body.characterVersionId,
            ),
            displayName: body.displayName,
            roleLabel: body.roleLabel,
            about: body.about,
            greeting: body.greeting,
            visibleInUserApp: body.visibleInUserApp,
            sortOrder: body.sortOrder,
            revision: body.expectedRevision ?? 1,
          },
        });
      },
    );


    app.get(
      "/v1/skills",
      {
        schema: {
          response: { 200: Type.Array(AgentAdminSkillOptionSchema) },
        },
      },
      async (request) => [
        ...await agentAdmin.listSkills({
          authorizationHeader: request.headers.authorization,
        }),
      ],
    );

    app.get(
      "/v1/agents/:characterId/skills",
      {
        schema: {
          params: CharacterParamsSchema,
          response: {
            200: Type.Union([AgentSkillAssignmentSchema, Type.Null()]),
          },
        },
      },
      async (request) => {
        const assignment = await agentAdmin.readSkillAssignment({
          authorizationHeader: request.headers.authorization,
          characterId: parseCanonicalId(
            "character",
            request.params.characterId,
          ),
        });
        return assignment ? { ...assignment, skillVersionIds: [...assignment.skillVersionIds] } : null;
      },
    );

    app.put(
      "/v1/agents/:characterId/skills",
      {
        schema: {
          params: CharacterParamsSchema,
          body: PutSkillsBodySchema,
          response: { 200: AgentSkillAssignmentSchema },
        },
      },
      async (request) => {
        const body = request.body;
        const assignment = await agentAdmin.putSkillAssignment({
          authorizationHeader: request.headers.authorization,
          expectedRevision: body.expectedRevision,
          assignment: {
            schemaVersion: 1,
            characterId: parseCanonicalId(
              "character",
              request.params.characterId,
            ),
            skillVersionIds: body.skillVersionIds.map((id) =>
              parseCanonicalId("skill-version", id),
            ),
            revision: body.expectedRevision ?? 1,
          },
        });
        return { ...assignment, skillVersionIds: [...assignment.skillVersionIds] };
      },
    );
  }

  app.get(
    "/healthz",
    {
      schema: {
        response: {
          200: HealthResponseSchema,
        },
      },
    },
    async () => ({
      service: "ops" as const,
      status: "ok" as const,
      time: now(),
    }),
  );

  app.get(
    "/readyz",
    {
      schema: {
        response: {
          200: ReadinessResponseSchema,
          503: ReadinessResponseSchema,
        },
      },
    },
    async (_request, reply) => {
      const dependencyResults = await Promise.all(
        checks.map(async (check) => {
          try {
            const result = await check.check();
            return {
              name: check.name,
              ready: result.ready,
              ...(result.reason ? { reason: result.reason } : {}),
            };
          } catch {
            return {
              name: check.name,
              ready: false,
              reason: "readiness check failed",
            };
          }
        }),
      );

      const results = [
        ...(options.isDraining?.()
          ? [
              {
                name: "lifecycle",
                ready: false,
                reason: "service is shutting down",
              },
            ]
          : []),
        ...dependencyResults,
      ];

      const ready = results.every((result) => result.ready);
      if (!ready) {
        reply.code(503);
      }

      return {
        service: "ops" as const,
        status: ready ? ("ready" as const) : ("not-ready" as const),
        time: now(),
        checks: results,
      };
    },
  );

  return app;
}
