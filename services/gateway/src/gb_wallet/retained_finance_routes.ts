import type {FastifyInstance,FastifyRequest} from 'fastify';
import {readLegacyGroup,type LegacyKind,type CaseTarget,type PgRetainedFinanceRepository} from '@masanawa/postgres';
type Actor={tenantId:string;userId:string};
export interface GbRetainedFinancePorts{
 authorize(header:string|undefined):Promise<Actor>;
 reviewer(header:string|undefined,actor:Actor,fresh:boolean):Promise<boolean>;
 repository:Pick<PgRetainedFinanceRepository,'history'|'group'|'submit'|'cases'|'findCase'|'reviewSource'|'resolve'>;
}
const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const kinds=['all','reserve','spend','release','pending'];
const states=['open','acknowledged','awaiting_provider','closed'];
const fail=(status:number,code:string):never=>{throw Object.assign(new Error(code),{status,code});};
function object(value:unknown):Record<string,unknown>{
 if(!value||typeof value!=='object'||Array.isArray(value))return fail(422,'invalid_wallet_history_request');
 return value as Record<string,unknown>;
}
const date=(v:unknown):v is string=>typeof v==='string'&&/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{3}(?:\d{3})?Z$/.test(v)&&Number.isFinite(Date.parse(v))&&
 new Date(v).toISOString()===v.slice(0,23)+'Z';
function cursor(raw:unknown,actor:Actor,scope:string):Record<string,unknown>|null{
 if(raw===undefined)return null;
 try{
  if(typeof raw!=='string'||raw.length>3000||!/^[A-Za-z0-9_-]+$/.test(raw))throw Error();
  const c=object(JSON.parse(Buffer.from(raw,'base64url').toString('utf8')));
  if(c.v!==1||c.tenant!==actor.tenantId||c.user!==actor.userId||c.scope!==scope)throw Error();
  return c;
 }catch{return fail(422,'invalid_wallet_history_cursor');}
}
function pack(actor:Actor,scope:string,values:Record<string,unknown>){
 return Buffer.from(JSON.stringify({v:1,tenant:actor.tenantId,user:actor.userId,scope,...values})).toString('base64url');
}
function limit(q:Record<string,unknown>){const v=q.limit??'20';
 if(typeof v!=='string'||!/^\d{1,2}$/.test(v)||Number(v)<1||Number(v)>30)return fail(422,'invalid_wallet_history_limit');return Number(v);}
export async function registerGbRetainedFinanceRoutes(app:FastifyInstance,p:GbRetainedFinancePorts){
 await app.register(async scope=>{
  scope.addHook('onRequest',async(_r,reply)=>{reply.header('Cache-Control','private, no-store');});
  scope.setErrorHandler((error,_r,reply)=>{
   const e=error as {status?:number;statusCode?:number;code?:string};const status=e.status??e.statusCode;
   if(status&&[401,403,404,409,422,429].includes(status))return reply.code(status).send({error:{code:e.code??'wallet_history_denied'}});
   return reply.code(503).send({error:{code:'wallet_history_unavailable'}});
  });
  const actor=async(r:FastifyRequest,admin=false,fresh=false)=>{
   let a:Actor;try{a=await p.authorize(r.headers.authorization);}catch{return fail(401,'wallet_history_unauthorized');}
   if(!a?.tenantId||!a.userId)return fail(401,'wallet_history_unauthorized');
   if(admin&&!await p.reviewer(r.headers.authorization,a,fresh))return fail(403,'wallet_review_permission_required');return a;
  };
  scope.get('/v1/gb/wallet/legacy-history',async r=>{
   const a=await actor(r),q=object(r.query),n=limit(q),kind=q.kind??'all';
   if(typeof kind!=='string'||!kinds.includes(kind))return fail(422,'invalid_history_kind');
   const campaign=q.campaignId;
   if(campaign!==undefined&&(typeof campaign!=='string'||!uuid.test(campaign)))return fail(422,'invalid_history_reference');
   const historyScope='history:'+kind+':'+(campaign??'*');
   const c=cursor(q.cursor,a,historyScope);
   const snapshot=c?.snapshotAt??new Date().toISOString();
   if(!date(snapshot)||Date.parse(snapshot)>Date.now()+1000)return fail(422,'invalid_wallet_history_cursor');
   if(c&&(typeof c.day!=='string'||!/^\d{4}-\d\d-\d\d$/.test(c.day)||!Number.isFinite(Date.parse(c.day+'T00:00:00Z'))||new Date(c.day+'T00:00:00Z').toISOString().slice(0,10)!==c.day||typeof c.campaignId!=='string'||!uuid.test(c.campaignId)||
    typeof c.kind!=='string'||!kinds.slice(1).includes(c.kind)))return fail(422,'invalid_wallet_history_cursor');
   const rows=await p.repository.history(a,kind,snapshot,c?{day:c.day as string,campaignId:c.campaignId as string,kind:c.kind as LegacyKind}:null,n+1,campaign as string|undefined);
   const items=rows.slice(0,n),last=items.at(-1);
   return {items,snapshotAt:snapshot,nextCursor:rows.length>n&&last?pack(a,historyScope,
    {day:last.day,campaignId:last.campaignId,kind:last.kind,snapshotAt:snapshot}):null};
  });
  scope.get('/v1/gb/wallet/legacy-history/:groupId',async r=>{
   const a=await actor(r),raw=(r.params as {groupId:string}).groupId,g=readLegacyGroup(raw),q=object(r.query),n=limit(q);
   const c=cursor(q.cursor,a,'group:'+raw);
   if(c&&(!date(c.at)||typeof c.key!=='string'||!/^[A-Za-z0-9_:.-]{1,200}$/.test(c.key)))return fail(422,'invalid_wallet_history_cursor');
   if(c&&!(await p.repository.group(a,g,null,1)).length)return fail(404,'history_group_not_found');
   const rows=await p.repository.group(a,g,c?{at:c.at as string,key:c.key as string}:null,n+1);
   if(!c&&!rows.length)return fail(404,'history_group_not_found');
   const items=rows.slice(0,n),last=items.at(-1);
   return {group:g,items,nextCursor:rows.length>n&&last?pack(a,'group:'+raw,{at:last.at,key:last.key}):null};
  });
  scope.post('/v1/gb/wallet/inquiries',async r=>{
   const a=await actor(r),b=object(r.body);
   if(Object.keys(b).length!==3||typeof b.targetKind!=='string'||typeof b.category!=='string'||!['activity','hold','legacy_group'].includes(String(b.targetKind))||
    typeof b.reference!=='string'||b.reference.length>1500||!['amount','status','missing','other'].includes(String(b.category)))return fail(422,'invalid_wallet_inquiry');
   if(b.targetKind==='activity'&&!/^(mb:\d+|ngn:[A-Za-z0-9_:.-]{1,160})$/.test(b.reference))return fail(422,'invalid_inquiry_reference');
   if(b.targetKind==='hold'&&!/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/.test(b.reference))return fail(422,'invalid_inquiry_reference');
   if(b.targetKind==='legacy_group')readLegacyGroup(b.reference);
   return {case:await p.repository.submit(a,b.targetKind as CaseTarget,b.reference,b.category as string)};
  });
  const list=async(r:FastifyRequest,admin:boolean)=>{
   const a=await actor(r,admin),q=object(r.query),n=limit(q),state=admin?q.state??'open':undefined;
   if(state!==undefined&&(typeof state!=='string'||!states.includes(state)))return fail(422,'invalid_inquiry_state');
   const name='cases:'+(state??'mine'),c=cursor(q.cursor,a,name);
   if(c&&(!date(c.at)||typeof c.id!=='string'||!uuid.test(c.id)))return fail(422,'invalid_wallet_history_cursor');
   const rows=await p.repository.cases(a,n+1,c?{at:c.at as string,id:c.id as string}:null,state as string|undefined);
   const items=rows.slice(0,n),last=items.at(-1);
   return {items,nextCursor:rows.length>n&&last?pack(a,name,{at:last.createdAt,id:last.id}):null};
  };
  scope.get('/v1/gb/wallet/inquiries',r=>list(r,false));
  scope.get('/v1/admin/gb/wallet/inquiries',r=>list(r,true));
  scope.get('/v1/gb/wallet/inquiries/:id',async r=>{
   const a=await actor(r),id=(r.params as {id:string}).id;if(!uuid.test(id))return fail(422,'invalid_inquiry_id');
   const value=await p.repository.findCase(a,id);if(!value)return fail(404,'inquiry_not_found');return {case:value};
  });
  scope.get('/v1/gb/wallet/review-capabilities',async r=>{
   const a=await actor(r);return {canReview:await p.reviewer(r.headers.authorization,a,false)};
  });
  scope.get('/v1/admin/gb/wallet/inquiries/:id/source',async r=>{
   const a=await actor(r,true,true),id=(r.params as {id:string}).id,q=object(r.query),n=limit(q);
   if(!uuid.test(id))return fail(422,'invalid_inquiry_id');
   const c=cursor(q.cursor,a,'inquiry-source:'+id);
   if(c&&(!date(c.at)||typeof c.key!=='string'||!/^[A-Za-z0-9_:.-]{1,200}$/.test(c.key)))return fail(422,'invalid_wallet_history_cursor');
   const proof=await p.repository.reviewSource(a,id,c?{at:c.at as string,key:c.key as string}:null,n+1);
   const items=proof.source.items.slice(0,n),last=items.at(-1);
   return {...proof,source:{...proof.source,items,nextCursor:proof.source.items.length>n&&last?
    pack(a,'inquiry-source:'+id,{at:last.at,key:last.key}):null}};
  });
  scope.put('/v1/admin/gb/wallet/inquiries/:id',async r=>{
   const a=await actor(r,true,true),id=(r.params as {id:string}).id,b=object(r.body);
   if(!uuid.test(id)||Object.keys(b).length!==2||typeof b.state!=='string'||!states.slice(1).includes(String(b.state))||
    !Number.isInteger(b.expectedRevision)||Number(b.expectedRevision)<1||Number(b.expectedRevision)>=2147483647)return fail(422,'invalid_inquiry_review');
   return {case:await p.repository.resolve(a,id,b.state as string,b.expectedRevision as number)};
  });
 });
}
