import type { Pool,PoolClient } from 'pg';
import {createHash} from 'node:crypto';
import { normalizeUsername,usernameCandidates } from '@masanawa/security';
import { withTransaction } from '../transaction.js';

const legacy=(handle:string,tenantId:string,userId:string)=>/^[a-z0-9]{1,12}_[a-f0-9]{16}$/u.test(handle)&&
 Array.from({length:8},(_,attempt)=>createHash('sha256').update(`${tenantId}:${userId}:${attempt}`).digest('hex').slice(0,16))
 .some(suffix=>handle.endsWith('_'+suffix));
export async function allocateReadableUsername(client:Pick<PoolClient,'query'>,input:{
 tenantId:string;userId:string;name:string;username?:string;
}):Promise<string>{
 const scope=[input.tenantId,input.userId];
 const existing=await client.query<{handle:string;username_generated:boolean}>(
  'SELECT handle,username_generated FROM talks.public_profiles WHERE tenant_id=$1 AND user_id=$2',scope);
 const current=existing.rows[0];
 if(current&&(!current.username_generated||!legacy(current.handle,input.tenantId,input.userId))){
  if(current.username_generated)await client.query('UPDATE talks.public_profiles SET username_generated=false WHERE tenant_id=$1 AND user_id=$2 AND handle=$3',[...scope,current.handle]);
  return current.handle;
 }
 const contact=await client.query<{first_name:string|null;last_name:string|null;contact_phone:string|null;phone:string|null}>(
  'SELECT first_name,last_name,contact_phone,phone FROM security.platform_user_profiles WHERE tenant_id=$1 AND user_id=$2',scope);
 const row=contact.rows[0];
 const candidates=input.username?[normalizeUsername(input.username)]:usernameCandidates({name:input.name,
  firstName:row?.first_name??null,lastName:row?.last_name??null,contactPhone:row?.contact_phone??row?.phone??null});
 for(const candidate of candidates){
  await client.query('SAVEPOINT username_candidate');
  try{
   const result=current?await client.query<{handle:string}>(`UPDATE talks.public_profiles
    SET handle=$3,username_generated=true,updated_at=clock_timestamp()
    WHERE tenant_id=$1 AND user_id=$2 AND handle=$4 AND username_generated=true RETURNING handle`,
    [...scope,candidate,current.handle]):await client.query<{handle:string}>(`INSERT INTO talks.public_profiles
     (tenant_id,user_id,handle,display_name,bio,talks_json,username_generated,updated_at)
     VALUES($1,$2,$3,$4,'','[]'::jsonb,$5,clock_timestamp()) ON CONFLICT DO NOTHING RETURNING handle`,
     [...scope,candidate,input.name,!input.username]);
   await client.query('RELEASE SAVEPOINT username_candidate');
   if(result.rows[0])return result.rows[0].handle;
   const raced=await client.query<{handle:string;username_generated:boolean}>(
    'SELECT handle,username_generated FROM talks.public_profiles WHERE tenant_id=$1 AND user_id=$2',scope);
   if(raced.rows[0]&&raced.rows[0].handle!==current?.handle)return raced.rows[0].handle;
  }catch(error){
   await client.query('ROLLBACK TO SAVEPOINT username_candidate');
   await client.query('RELEASE SAVEPOINT username_candidate');
   if(!(error instanceof Error&&'code' in error&&error.code==='23505'))throw error;
  }
 }
 throw new TypeError(input.username?'username.taken':'username.choice_required');
}

/** Forward-only startup repair in small pages and separately committed users.
 * A collision needing a deliberate choice cannot prevent later users' repair. */
export async function backfillReadableUsernames(pool:Pool,pageSize=500){
 if(!Number.isSafeInteger(pageSize)||pageSize<1||pageSize>5000)throw new RangeError('username.backfill_page_size');
 let assigned=0,choiceRequired=0,scanned=0,cursor:readonly [string,string]|null=null;
 for(;;){
  const result:{rows:Array<{tenant_id:string;user_id:string;display_name:string}>}=await pool.query(`
   SELECT s.tenant_id,s.user_id,s.display_name FROM security.platform_user_profiles s
   JOIN identity.users u ON u.tenant_id=s.tenant_id AND u.user_id=s.user_id AND u.state='active'
   LEFT JOIN talks.public_profiles p ON p.tenant_id=s.tenant_id AND p.user_id=s.user_id
   WHERE (p.user_id IS NULL OR (p.username_generated AND p.handle ~ '^[a-z0-9]{1,12}_[a-f0-9]{16}$'))
    AND ($2::text IS NULL OR (s.tenant_id,s.user_id)>($2::text,$3::text))
   ORDER BY s.tenant_id,s.user_id LIMIT $1`,[pageSize,cursor?.[0]??null,cursor?.[1]??null]);
  if(result.rows.length===0)break;
  for(const row of result.rows){
   scanned++;
   try{await withTransaction(pool,client=>allocateReadableUsername(client,{
    tenantId:row.tenant_id,userId:row.user_id,name:row.display_name}));assigned++;}
   catch(error){if(error instanceof TypeError&&error.message==='username.choice_required')choiceRequired++;else throw error;}
   cursor=[row.tenant_id,row.user_id];
  }
  if(result.rows.length<pageSize)break;
 }
 return {assigned,choiceRequired,scanned};
}
