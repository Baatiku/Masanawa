import type {FastifyInstance,FastifyRequest} from 'fastify';

type Session={tenantId:string;userId:string};
export interface GuestReviewPort {
 listPending(tenantId:string,limit?:number):Promise<Array<{id:string;postId:string;
  startedAt:unknown;observedAt:unknown;hasReferral:boolean}>>;
 review(tenantId:string,reviewerId:string,id:string,decision:'held'|'rejected',
  reason:string):Promise<{id:string;postId:string;decision:string;
   qualified:false;payable:false}|null>;
}
const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const reasons=new Set(['suspicious_automation','invalid_referral','duplicate_exposure','other_risk']);

/** Tenant-scoped, separately authorized fraud hold/rejection only. The
 * absence of a 'verify' action is intentional: client telemetry is never
 * evidence enough to qualify a visitor or release money. */
export async function registerStatusGuestReviewRoutes(app:FastifyInstance,options:{
 port:GuestReviewPort;principal:(request:FastifyRequest)=>Promise<Session>;
 isEditor:(session:Session)=>Promise<boolean>;enabled:()=>boolean;
}){
 await app.register(async staff=>{
  staff.addHook('onRequest',async(_req,reply)=>{
   reply.header('Cache-Control','private, no-store');
   reply.header('Referrer-Policy','no-referrer');
   reply.header('X-Content-Type-Options','nosniff');
  });
  const authorize=async(req:FastifyRequest,reply:{code:(n:number)=>{send:(x:unknown)=>unknown}})=>{
   if(!options.enabled()){
    reply.code(503).send({code:'guest_review_disabled'});return null;
   }
   const session=await options.principal(req);
   if(!await options.isEditor(session)){
    reply.code(403).send({code:'guest_review_forbidden'});return null;
   }
   return session;
  };
  staff.get('/v1/admin/status/guest-proofs',async(req,reply)=>{
   const identity=await authorize(req,reply);
   if(!identity)return reply;
   const query=req.query as Record<string,unknown>;
   const rawLimit=query.limit;
   if(Object.keys(query).some(key=>key!=='limit')||
     (rawLimit!==undefined&&
      (typeof rawLimit!=='string'||!/^[1-9][0-9]{0,2}$/.test(rawLimit)))||
     new URL(req.raw.url??'/', 'http://local').searchParams.getAll('limit').length>1)
    return reply.code(422).send({code:'guest_review_invalid'});
   const limit=rawLimit===undefined?25:Number(rawLimit);
   if(limit>100)return reply.code(422).send({code:'guest_review_invalid'});
   return {proofs:await options.port.listPending(identity.tenantId,limit),
    reviewOnly:true,payable:false};
  });
  staff.post('/v1/admin/status/guest-proofs/:id/review',async(req,reply)=>{
   const identity=await authorize(req,reply);
   if(!identity)return reply;
   const {id}=(req.params??{}) as {id?:unknown};
   const body=req.body;
   if(typeof id!=='string'||!uuid.test(id)||!body||typeof body!=='object'||
      Array.isArray(body)||Object.keys(body).length!==2||
      !('decision' in body)||!('reason' in body))
    return reply.code(422).send({code:'guest_review_invalid'});
   const decision=(body as Record<string,unknown>).decision;
   const reason=(body as Record<string,unknown>).reason;
   if((decision!=='held'&&decision!=='rejected')||
      typeof reason!=='string'||!reasons.has(reason))
    return reply.code(422).send({code:'guest_review_invalid'});
   const reviewed=await options.port.review(identity.tenantId,identity.userId,
    id,decision,reason);
   if(!reviewed)return reply.code(404).send({code:'guest_proof_not_found'});
   return {proof:reviewed};
  });
 });
}
