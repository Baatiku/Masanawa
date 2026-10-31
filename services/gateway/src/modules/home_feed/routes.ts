import type {FastifyInstance,FastifyRequest} from "fastify";
type Actor={kind:"fan"|"staff"|"masana";tenantId:string;id:string;permissions?:readonly string[];approved?:boolean};
type Filters={source?:'x'|'facebook';from?:string;to?:string};
type FeedPort={
 list(t:string,v:string|null,m:"for_you"|"following"|"mine",c?:string,authorMasanaId?:string,search?:string,filters?:Filters):Promise<unknown>;
 detail(t:string,v:string|null,id:string):Promise<unknown>;
 publish(a:Actor,p:{authorMasanaId:string;kind:"text"|"image"|"audio";body:string;media?:string[];transcript?:string|null;idempotencyKey:string}):Promise<unknown>;
 like(a:Actor,id:string,e:boolean):Promise<unknown>;save(a:Actor,id:string,e:boolean):Promise<unknown>;
 react?(a:Actor,id:string,kind:"like"|"love"|"care"|"haha"|"wow"|"sad"|"angry"|null):Promise<unknown>;
 comment(a:Actor,id:string,text:string,key:string,newAccount:boolean,parentId?:string|null):Promise<unknown>;
 comments(t:string,id:string,v:string|null,b?:string,sort?:"newest"|"oldest",scope?:'roots'|'replies',parentId?:string):Promise<unknown>;
 reactComment?(a:Actor,id:string,kind:'like'|'love'|'care'|'haha'|'wow'|'sad'|'angry'|null):Promise<unknown>;
 editComment?(a:Actor,id:string,body:string,revision:number):Promise<unknown>;
 removeComment?(a:Actor,id:string):Promise<unknown>;
 reportComment?(a:Actor,id:string,reason:string):Promise<unknown>;
 commentReports?(a:Actor):Promise<unknown>;
 resolveCommentReport?(a:Actor,id:string,state:'reviewed'|'dismissed'):Promise<unknown>;
 moderateComment?(a:Actor,id:string,state:'hidden'|'visible',reason:string,revision:number):Promise<unknown>;
};
export interface FeedRoutesOptions {
 readonly service:FeedPort;
 /** AF00 must resolve identity from the authenticated server session; never from request body. */
 readonly principal:(request:FastifyRequest)=>Promise<Actor|null>;
 readonly tenant:(request:FastifyRequest)=>string|null;
 readonly isNewAccount:(request:FastifyRequest)=>Promise<boolean>;
 readonly enabled:()=>boolean;
}
const object=(v:unknown):Record<string,unknown>=>v!==null&&typeof v==="object"&&!Array.isArray(v)?v as Record<string,unknown>:{};
const str=(v:unknown)=>typeof v==="string"?v:"";
const view=(v:unknown)=>v===true;
export async function registerHomeFeedRoutes(app:FastifyInstance,o:FeedRoutesOptions){
 const run=async(req:FastifyRequest,reply:{code:(n:number)=>{send:(v:unknown)=>unknown}},perform:(ctx:{tenant:string;viewer:string|null;actor:Actor|null})=>Promise<unknown>)=>{
  if(!o.enabled())return reply.code(503).send({code:"feature_disabled"});
  const actor=await o.principal(req),tenant=o.tenant(req);
  if(!tenant||(actor&&actor.tenantId!==tenant))return reply.code(403).send({code:"tenant_denied"});
  try{return await perform({tenant,viewer:actor?.kind==="fan"?actor.id:null,actor});}
  catch(e){const err=e as {status?:number;code?:string};if(err.status&&err.status>=400&&err.status<500)return reply.code(err.status).send({code:err.code??"invalid_request"});throw e;}
 };
 const member=(actor:Actor|null)=>{if(!actor)throw Object.assign(new Error("authentication_required"),{status:401,code:"authentication_required"});return actor};
 app.get("/v1/feed",async(req,rep)=>run(req,rep,async({tenant,viewer})=>{
  const q=object(req.query),mode=q.mode===undefined?"for_you":str(q.mode);
  if(mode!=="for_you"&&mode!=="following"&&mode!=="mine")throw Object.assign(new Error("invalid_mode"),{status:422,code:"invalid_mode"});
  // The server checks author ownership and published visibility in the same
  // tenant-scoped read. A client query never authorizes unpublished content.
  const author=q.authorMasanaId;
  if(Object.keys(q).some(key=>key.startsWith("authorMasanaId[")||key.startsWith("authorMasanaId."))||
    (author!==undefined&&(typeof author!=="string"||author.length>128)))
    return rep.code(422).send({code:"invalid_author"});
  const search=q.search;
  if(Object.keys(q).some(key=>key.startsWith("search[")||key.startsWith("search."))||
    search!==undefined&&(typeof search!=="string"||search!==search.trim()||
      search.length<2||Buffer.byteLength(search,"utf8")>80))
    return rep.code(422).send({code:"invalid_search"});
  const parameters=new URL(req.raw.url??"/v1/feed","http://local").searchParams;
  if(['search','cursor','source','from','to'].some(k=>parameters.getAll(k).length>1))
    return rep.code(422).send({code:"invalid_search_query"});
  if(Object.keys(q).some(k=>k.startsWith("cursor[")||k.startsWith("cursor."))||
    q.cursor!==undefined&&(typeof q.cursor!=="string"||!q.cursor))
    return rep.code(422).send({code:"invalid_cursor"});
  if(Object.keys(q).some(k=>/^(source|from|to)[.[]/.test(k))||
    q.source!==undefined&&!['x','facebook'].includes(q.source as string)||
    [q.from,q.to].some(d=>d!==undefined&&(typeof d!=='string'||!/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/.test(d))))
    return rep.code(422).send({code:'invalid_feed_filter'});
  const filters:Filters={};
  if(q.source==='x'||q.source==='facebook')filters.source=q.source;
  if(q.from!==undefined)filters.from=q.from as string;
  if(q.to!==undefined)filters.to=q.to as string;
  const filtered=q.source!==undefined||q.from!==undefined||q.to!==undefined;
  const after=str(q.cursor)||undefined,by=typeof author==='string'?author:undefined;
  return filtered?o.service.list(tenant,viewer,mode,after,by,
    search as string|undefined,filters):search===undefined?
      o.service.list(tenant,viewer,mode,after,by):
      o.service.list(tenant,viewer,mode,after,by,search as string);
 }));
 app.get("/v1/posts/:id",async(req,rep)=>run(req,rep,async({tenant,viewer})=>o.service.detail(tenant,viewer,str(object(req.params).id))));
 app.get("/v1/posts/:id/comments",async(req,rep)=>run(req,rep,async({tenant,viewer})=>{
  const q=object(req.query),sort=q.sort===undefined?"newest":str(q.sort);
  if(sort!=="newest"&&sort!=="oldest")return rep.code(422).send({code:"invalid_sort"});
  if(Object.keys(q).some(k=>k.startsWith("before[")||k.startsWith("before."))||
    q.before!==undefined&&(typeof q.before!=="string"||
    !/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(q.before)))
   return rep.code(422).send({code:"invalid_cursor"});
  if(q.scope!==undefined&&!['roots','replies'].includes(q.scope as string)||
     q.parentId!==undefined&&(typeof q.parentId!=='string'||
       !/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(q.parentId))||
     (q.scope==='replies')!==(q.parentId!==undefined)||
     Object.keys(q).some(k=>/^(scope|parentId)[.[]/.test(k)))
    return rep.code(422).send({code:'invalid_comment_scope'});
  return o.service.comments(tenant,str(object(req.params).id),viewer,
    typeof q.before==="string"?q.before:undefined,sort,
    q.scope as 'roots'|'replies'|undefined,q.parentId as string|undefined);
 }));
 // Direct staff publishing must never bypass A05/A06 editorial review.
 app.post("/v1/admin/feed/posts",async(req,rep)=>run(req,rep,async({actor})=>{
  const a=member(actor);
  if(a.kind!=="staff"||!a.permissions?.includes("content_editor"))return rep.code(403).send({code:"editorial_permission_denied"});
  return rep.code(410).send({code:"use_editorial_review_workflow"});
 }));
 app.put("/v1/posts/:id/like",async(req,rep)=>run(req,rep,async({actor})=>o.service.like(member(actor),str(object(req.params).id),view(object(req.body).enabled))));
 app.put("/v1/posts/:id/reaction",async(req,rep)=>run(req,rep,async({actor})=>{
  const a=member(actor),b=object(req.body),kind=b.kind;
  if(!Object.prototype.hasOwnProperty.call(b,"kind")||
   (kind!==null&&!["like","love","care","haha","wow","sad","angry"].includes(kind as string)))
   return rep.code(422).send({code:"invalid_reaction"});
  if(!o.service.react)return rep.code(503).send({code:"reactions_unavailable"});
  return o.service.react(a,str(object(req.params).id),kind as "like"|"love"|"care"|"haha"|"wow"|"sad"|"angry"|null);
 }));
 app.put("/v1/posts/:id/save",async(req,rep)=>run(req,rep,async({actor})=>o.service.save(member(actor),str(object(req.params).id),view(object(req.body).enabled))));
 app.post("/v1/posts/:id/comments",async(req,rep)=>run(req,rep,async({actor})=>{
  const a=member(actor),b=object(req.body);
  if(b.parentId!==undefined&&b.parentId!==null&&typeof b.parentId!=="string")return rep.code(422).send({code:"invalid_parent_comment"});
  return o.service.comment(a,str(object(req.params).id),str(b.body),str(req.headers["idempotency-key"]),await o.isNewAccount(req),typeof b.parentId==="string"?b.parentId:null);
 }));
 app.put('/v1/comments/:id/reaction',async(req,rep)=>run(req,rep,async({actor})=>{
  const b=object(req.body),kind=b.kind;
  if(!Object.prototype.hasOwnProperty.call(b,'kind')||
    kind!==null&&!['like','love','care','haha','wow','sad','angry'].includes(kind as string))
    return rep.code(422).send({code:'invalid_reaction'});
  if(!o.service.reactComment)return rep.code(503).send({code:'comment_reactions_unavailable'});
  return o.service.reactComment(member(actor),str(object(req.params).id),kind as 'like'|'love'|'care'|'haha'|'wow'|'sad'|'angry'|null);
 }));
 app.patch('/v1/comments/:id',async(req,rep)=>run(req,rep,async({actor})=>{
  if(!o.service.editComment)return rep.code(503).send({code:'comment_edit_unavailable'});
  const b=object(req.body);
  return o.service.editComment(member(actor),str(object(req.params).id),str(b.body),b.revision as number);
 }));
 app.delete('/v1/comments/:id',async(req,rep)=>run(req,rep,async({actor})=>{
  if(!o.service.removeComment)return rep.code(503).send({code:'comment_delete_unavailable'});
  return o.service.removeComment(member(actor),str(object(req.params).id));
 }));
 app.post('/v1/comments/:id/reports',async(req,rep)=>run(req,rep,async({actor})=>{
  if(!o.service.reportComment)return rep.code(503).send({code:'comment_reports_unavailable'});
  return o.service.reportComment(member(actor),str(object(req.params).id),str(object(req.body).reason));
 }));
 app.get('/v1/admin/feed/comment-reports',async(req,rep)=>run(req,rep,async({actor})=>{
  if(!o.service.commentReports)return rep.code(503).send({code:'comment_reports_unavailable'});
  return o.service.commentReports(member(actor));
 }));
 app.put('/v1/admin/feed/comment-reports/:id',async(req,rep)=>run(req,rep,async({actor})=>{
  const state=object(req.body).state;
  if(state!=='reviewed'&&state!=='dismissed')return rep.code(422).send({code:'invalid_report_resolution'});
  if(!o.service.resolveCommentReport)return rep.code(503).send({code:'comment_reports_unavailable'});
  return o.service.resolveCommentReport(member(actor),str(object(req.params).id),state);
 }));
 app.patch('/v1/admin/feed/comments/:id/moderation',async(req,rep)=>run(req,rep,async({actor})=>{
  const b=object(req.body);
  if(!o.service.moderateComment)return rep.code(503).send({code:'comment_moderation_unavailable'});
  return o.service.moderateComment(member(actor),str(object(req.params).id),
    b.state as 'hidden'|'visible',str(b.reason),b.revision as number);
 }));
}
