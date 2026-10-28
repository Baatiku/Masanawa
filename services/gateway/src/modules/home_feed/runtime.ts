import type {FastifyInstance,FastifyRequest} from "fastify";
import {registerHomeFeedRoutes,type FeedRoutesOptions} from "./routes.js";
import {registerAdminFeedReviewRoutes,type AdminReviewRoutesOptions} from "./admin_review_routes.js";
import {registerFeedMediaRoutes,type FeedMediaOptions} from "./media_routes.js";
import {registerPromotionRoutes,type PromotionPort} from "./promotion_routes.js";
import {registerPublicStatusLanding,type PublicStatusPost} from "./public_landing.js";

/** Structural port implemented by the existing platform customer-session
 * authorizer. The host supplies that authority, never an HTTP role header. */
export interface StatusSession {tenantId:string;userId:string}
export interface StatusRuntime {
 sessions:{authorize(input:{authorizationHeader:string|undefined}):Promise<StatusSession>};
 feed:FeedRoutesOptions["service"];
 saved?:{list(actor:{kind:"fan";tenantId:string;id:string},cursor?:string):Promise<unknown>};
 editorial:AdminReviewRoutesOptions["service"];
 isEditor?:(session:StatusSession)=>Promise<boolean>;
 /** Optional server-derived spam risk rule; ordinary authenticated comments are visible. */
 isNewAccount?:(session:StatusSession)=>Promise<boolean>;
 enabled?:()=>boolean;
 promotions?:PromotionPort;
 promotionsEnabled?:()=>boolean;
 publicLanding?:{port:{find(id:string):Promise<PublicStatusPost|null>;
    validReferral?(id:string,token:string):Promise<boolean>;
    readApprovedImage?(postId:string,mediaId:string):Promise<{
      bytes:Buffer;contentType:'image/webp'}|null>};
   enabled:()=>boolean;imagesEnabled?:()=>boolean;publicBaseUrl?:string};
 media?:Omit<FeedMediaOptions,"tenant"|"principal"|"enabled">;
 /** Only authenticated content editors can approve or withdraw descriptive
  * media copy. The database owns rights/revision and approval provenance. */
 updateMediaAlt?:(tenantId:string,reviewerId:string,mediaId:string,
   altText:string|null)=>Promise<{mediaId:string;altText:string|null}|null>;
}

/** One registration for the canonical feed/editorial/media services. No
 * separate session store, publisher, ledger or PostgreSQL connection. */
export async function registerStatusRuntime(app:FastifyInstance,options:StatusRuntime){
 // This route is a read-only crawler preview outside the signed-in fan scope.
 if(options.publicLanding)await registerPublicStatusLanding(app,options.publicLanding);
 await app.register(async scope=>{
  scope.setErrorHandler((error,_request,reply)=>{
   const problem=error as {status?:number;statusCode?:number;code?:string};
   const status=problem.statusCode??problem.status;
   if(status&&[401,403,404,409,410,422,503].includes(status)){
    return reply.code(status).send({code:problem.code??"status_unavailable"});
   }
   return reply.code(503).send({code:"status_unavailable"});
  });
  const identities=new WeakMap<FastifyRequest,StatusSession>();
  const resolve=async(request:FastifyRequest)=>{
   let identity=identities.get(request);
   if(!identity){
    identity=await options.sessions.authorize({authorizationHeader:request.headers.authorization});
    if(!identity||typeof identity.tenantId!=="string"||!identity.tenantId||
       typeof identity.userId!=="string"||!identity.userId){
     throw Object.assign(new Error("authentication_required"),{status:401,code:"authentication_required"});
    }
    identities.set(request,identity);
   }
   return identity;
  };
  const enabled=options.enabled??(()=>true);
  // Media routes read the tenant before principal; authenticate once before
  // any feature handler so every existing route observes the same session.
  scope.addHook("preHandler",async request=>{if(enabled())await resolve(request);});
  const tenant=(request:FastifyRequest)=>identities.get(request)?.tenantId??null;
  const principal=async(request:FastifyRequest)=>{
   const session=await resolve(request);
   const staff=request.routeOptions.url?.startsWith("/v1/admin/")===true&&
     await options.isEditor?.(session)===true;
   return staff
    ?{kind:"staff" as const,tenantId:session.tenantId,id:session.userId,permissions:["content_editor"]}
    :{kind:"fan" as const,tenantId:session.tenantId,id:session.userId};
  };
  await registerHomeFeedRoutes(scope,{service:options.feed,principal,tenant,
   // Do not silently route every authenticated customer's comment into an
   // unserved review queue. A trusted server policy can explicitly quarantine
   // new-account comments without accepting a client-provided role/age flag.
   isNewAccount:async request=>options.isNewAccount
     ? options.isNewAccount(await resolve(request)) : false,enabled});
  if(options.saved) scope.get('/v1/saved',async(request,reply)=>{
   reply.header('Cache-Control','private, no-store');
   const query=request.query as Record<string,unknown>;
   const cursor=query.cursor;
   if(Object.keys(query).some(key=>key!=='cursor') ||
      (cursor!==undefined && (typeof cursor!=='string' || !cursor || cursor.length>240)) ||
      new URL(request.raw.url??'/v1/saved','http://local').searchParams.getAll('cursor').length>1)
     return reply.code(422).send({code:'invalid_cursor'});
   const actor=await resolve(request);
   return options.saved!.list({kind:'fan',tenantId:actor.tenantId,id:actor.userId},
     typeof cursor==='string'?cursor:undefined);
  });
  await registerAdminFeedReviewRoutes(scope,{service:options.editorial,principal,tenant,enabled});
  if(options.promotions)await registerPromotionRoutes(scope,{
    port:options.promotions,principal:resolve,
    isEditor:async session=>await options.isEditor?.(session)===true,
    enabled:options.promotionsEnabled??(()=>false),
  });
  if(options.media)await registerFeedMediaRoutes(scope,{...options.media,principal,tenant,enabled});
  if(options.updateMediaAlt)scope.put('/v1/admin/feed/media/:mediaId/alt',async(request,reply)=>{
    reply.header('Cache-Control','private, no-store');
    if(!enabled())return reply.code(503).send({code:'editorial_feature_disabled'});
    const reviewer=await resolve(request);
    if(await options.isEditor?.(reviewer)!==true)
      return reply.code(403).send({code:'editorial_permission_denied'});
    const {mediaId}=request.params as {mediaId?:unknown};
    const body=request.body;
    if(typeof mediaId!=='string'||!/^media_[A-Za-z0-9_-]{8,128}$/.test(mediaId)||
       !body||typeof body!=='object'||Array.isArray(body)||
       Object.keys(body).length!==1||!('altText' in body))
      return reply.code(422).send({code:'invalid_alt_review'});
    const copy=(body as {altText:unknown}).altText;
    if(copy!==null && (typeof copy!=='string'||copy.trim().length<5||
       copy.trim().length>280))
      return reply.code(422).send({code:'invalid_alt_review'});
    const result=await options.updateMediaAlt!(reviewer.tenantId,reviewer.userId,
      mediaId,copy===null?null:(copy as string).trim());
    if(!result)return reply.code(404).send({code:'media_unavailable'});
    return {media:result};
  });
 });
}
