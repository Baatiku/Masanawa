import type {FastifyInstance} from 'fastify';
import type {NgnSpendBalance} from '@masanawa/postgres';
export interface DirectNgnWalletPorts {
 authorize(header:string|undefined):Promise<{tenantId:string;userId:string}>;
 balance(actor:{tenantId:string;userId:string}):Promise<NgnSpendBalance>;
 pricing?(actor:{tenantId:string;userId:string}):Promise<{billingEnabled:boolean;replyKobo:number;callKoboPerStartedSecond:number}>;
 holds(actor:{tenantId:string;userId:string},operationId?:string):Promise<readonly unknown[]>;
}
export function registerDirectNgnWalletRoutes(app:FastifyInstance,p:DirectNgnWalletPorts){
 const actor=async(header:string|undefined)=>{const a=await p.authorize(header);if(!a?.tenantId||!a.userId)throw Error('unauthorized');return a;};
 for(const path of ['/v1/ngn/wallet/summary','/v1/ngn/wallet/holds','/v1/ngn/wallet/holds/:id'])app.get<{Params:{id?:string}}>(path,async(req,reply)=>{
  reply.header('Cache-Control','private, no-store');
  let a;try{a=await actor(req.headers.authorization);}catch{return reply.code(401).send({error:{code:'unauthorized'}});}
  try{
   if(path.endsWith('/summary')){const [b,policy]=await Promise.all([p.balance(a),p.pricing?.(a)??{billingEnabled:true,replyKobo:200,callKoboPerStartedSecond:100}]);return {balance:{...b,currency:'NGN',unit:'kobo',totalKobo:b.balanceKobo,reservedKobo:b.heldKobo},rates:{billingEnabled:policy.billingEnabled,replyKobo:policy.billingEnabled?policy.replyKobo:0,callKoboPerStartedSecond:policy.billingEnabled?policy.callKoboPerStartedSecond:0}};}
   const id=req.params.id;if(id&&!/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/.test(id))return reply.code(422).send({error:{code:'invalid_operation'}});
   const rows=await p.holds(a,id);return id?(rows[0]?{hold:rows[0]}:reply.code(404).send({error:{code:'not_found'}})):{holds:rows};
  }catch{return reply.code(503).send({error:{code:'wallet_unavailable'}});}
 });
}
