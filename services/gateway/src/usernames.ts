import type {Pool} from '@masanawa/postgres';
import {normalizeUsername} from '@masanawa/security';
import type {FastifyInstance} from 'fastify';
import type {GbSendActor} from './gb_wallet/send_review.js';
export class UsernameError extends Error {
 constructor(readonly status:number,readonly code:string){super(code);}
}
export interface UsernamePorts {
 authorize(header:string|undefined):Promise<GbSendActor>;
 read(owner:GbSendActor):Promise<string|null>;
 available(owner:GbSendActor,username:string):Promise<boolean>;
 update(owner:GbSendActor,username:string,expected:string|null):Promise<string>;
}
export function createUsernameStore(pool:Pick<Pool,'query'>){
 const read=async(owner:GbSendActor)=>{
  const result=await pool.query<{handle:string}>(`SELECT p.handle FROM talks.public_profiles p
   JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.user_id
   WHERE p.tenant_id=$1 AND p.user_id=$2 AND u.state='active'`,[owner.tenantId,owner.userId]);
  return result.rows[0]?.handle??null;
 };
 return {read,
  async available(owner:GbSendActor,username:string){
   const result=await pool.query(`SELECT 1 FROM talks.username_claims
    WHERE tenant_id=$1 AND handle=$3 AND user_id<>$2`,[owner.tenantId,owner.userId,username]);
   return result.rows.length===0;
  },
  async update(owner:GbSendActor,username:string,expected:string|null){
   const current=await read(owner);
   if(current===username)return current;
   if(current!==expected)throw new UsernameError(409,'username_changed');
   try{
    const result=current===null?await pool.query<{handle:string}>(`INSERT INTO talks.public_profiles
      (tenant_id,user_id,handle,display_name,bio,talks_json,updated_at)
      SELECT s.tenant_id,s.user_id,$3,s.display_name,'','[]'::jsonb,clock_timestamp()
      FROM security.platform_user_profiles s JOIN identity.users u
       ON u.tenant_id=s.tenant_id AND u.user_id=s.user_id AND u.state='active'
      WHERE s.tenant_id=$1 AND s.user_id=$2 ON CONFLICT DO NOTHING RETURNING handle`,
      [owner.tenantId,owner.userId,username]):await pool.query<{handle:string}>(`UPDATE talks.public_profiles p
      SET handle=$3,username_generated=false,updated_at=clock_timestamp()
      WHERE tenant_id=$1 AND user_id=$2 AND handle=$4
       AND EXISTS(SELECT 1 FROM identity.users u WHERE u.tenant_id=$1 AND u.user_id=$2 AND u.state='active')
      RETURNING handle`,[owner.tenantId,owner.userId,username,expected]);
    if(!result.rows[0])throw new UsernameError(409,'username_taken_or_changed');
    return result.rows[0].handle;
   }catch(error){
    if(error instanceof Error&&'code' in error&&error.code==='23505')throw new UsernameError(409,'username_taken');
    throw error;
   }
  },
 };
}
export function registerUsernameRoutes(app:FastifyInstance,ports:UsernamePorts){
 const rate=new Map<string,{at:number;count:number}>();
 async function owner(header:string|undefined){
  const actor=await ports.authorize(header);
  if(!actor?.tenantId||!actor.userId)throw new UsernameError(401,'unauthorized');
  return actor;
 }
 const throttle=(actor:GbSendActor)=>{
   const key=JSON.stringify([actor.tenantId,actor.userId]),now=Date.now();
   const previous=rate.get(key),window=previous&&now-previous.at<60000?previous:{at:now,count:0};
   if(window.count>=60)throw new UsernameError(429,'username_rate_limited');
   if(rate.size>=10000&&!rate.has(key))rate.delete(rate.keys().next().value!);
   window.count++;rate.set(key,window);
 };
 const fail=(error:unknown,reply:{code(n:number):unknown})=>{
  const status=error instanceof UsernameError?error.status:
   error instanceof TypeError?422:typeof error==='object'&&error!==null&&'statusCode' in error&&
    [401,403].includes(Number(error.statusCode))?Number(error.statusCode):503;
  reply.code(status);return {error:{code:error instanceof UsernameError?error.code:status===422?'username_invalid':status===401||status===403?'unauthorized':'username_unavailable'}};
 };
 app.get('/v1/account/username',async(request,reply)=>{
  reply.header('cache-control','no-store');
  try{return {username:await ports.read(await owner(request.headers.authorization))};}catch(error){return fail(error,reply);}
 });
 app.get('/v1/account/username/availability',async(request,reply)=>{
  reply.header('cache-control','no-store');
  try{
   const actor=await owner(request.headers.authorization);
   const raw=(request.query as {username?:unknown}).username;
   if(typeof raw!=='string')throw new TypeError('username.invalid');
   const username=normalizeUsername(raw);throttle(actor);
   return {username,available:await ports.available(actor,username)};
  }catch(error){return fail(error,reply);}
 });
 app.patch('/v1/account/username',async(request,reply)=>{
  reply.header('cache-control','no-store');
  try{
   const actor=await owner(request.headers.authorization),body=request.body as Record<string,unknown>|null;
   if(!body||typeof body!=='object'||Array.isArray(body)||Object.keys(body).some(k=>!['username','expectedUsername'].includes(k))||
     typeof body.username!=='string'||!(body.expectedUsername===null||(typeof body.expectedUsername==='string'&&body.expectedUsername.length<=64)))throw new TypeError('username.invalid');
   const username=normalizeUsername(body.username);throttle(actor);
   return {username:await ports.update(actor,username,body.expectedUsername as string|null)};
  }catch(error){return fail(error,reply);}
 });
}
