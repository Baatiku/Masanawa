import type {Pool} from '@masanawa/postgres';
import {parsePhoneNumberFromString} from 'libphonenumber-js/max';
import type {GbSendActor,GbSendRecipient} from './send_review.js';
const access=`p.tenant_id=$1 AND p.user_id<>$2 AND u.state='active'
 AND NOT EXISTS(SELECT 1 FROM talks.safety_preferences b WHERE b.tenant_id=p.tenant_id AND b.blocked
  AND ((b.viewer_user_id=$2 AND b.subject_user_id=p.user_id) OR (b.subject_user_id=$2 AND b.viewer_user_id=p.user_id)))
 AND NOT EXISTS(SELECT 1 FROM talks.safety_enforcement e WHERE e.tenant_id=p.tenant_id
  AND e.target_kind='profile' AND e.target_id=p.handle AND e.visibility IN ('restricted','blocked'))
 AND NOT EXISTS(SELECT 1 FROM security.platform_account_controls c WHERE c.tenant_id=p.tenant_id AND c.user_id=p.user_id
  AND c.state IN ('restricted','suspended','recovery') AND (c.until_at IS NULL OR c.until_at>clock_timestamp()))`;
type Row={user_id:string;handle:string;display_name:string;avatar_url:string|null};
const identity=(row:Row):GbSendRecipient=>({userId:row.user_id,username:row.handle,
 displayName:row.display_name,avatarUrl:row.avatar_url,active:true});
const selection=`SELECT p.user_id,p.handle,p.display_name,p.avatar_url FROM talks.public_profiles p
 JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.user_id`;
export function recipientSearchTerm(raw:string):{kind:'name'|'username'|'email'|'phone';value:string;localPhone?:string}|null{
 const value=raw.trim();if(value.length<2||value.length>320)return null;
 if(value.includes('@')&&!value.startsWith('@'))return /^[^@\s]+@[^@\s]+\.[^@\s.]{2,}$/u.test(value)
  ?{kind:'email',value:value.toLowerCase()}:null;
 if(/^[+\d\s()-]+$/u.test(value)){
  const compact=value.replace(/[\s()-]/gu,'');
  const phone=parsePhoneNumberFromString(compact.startsWith('00')?'+'+compact.slice(2):compact,'NG');
  if(!phone?.isValid())return null;
  return {kind:'phone',value:phone.number,...(phone.country==='NG'?{localPhone:'0'+phone.nationalNumber}:{})};
 }
 const term=value.replace(/^@/u,'').toLowerCase();
 if(term.length<2||term.length>80||!/[\p{L}\p{N}]/u.test(term))return null;
 if(value.startsWith('@')&&!/^[a-z0-9_][a-z0-9_.-]{1,39}$/u.test(term))return null;
 return {kind:value.startsWith('@')?'username':'name',value:term};
}
export function createGbRecipientDirectory(pool:Pick<Pool,'query'>){
 return {
  async resolve(actor:GbSendActor,username:string){
   const result=await pool.query<Row>(`${selection} WHERE ${access} AND p.handle=$3 LIMIT 1`,
    [actor.tenantId,actor.userId,username]);
   return result.rows[0]?identity(result.rows[0]):null;
  },
  async search(actor:GbSendActor,query:string){
   const term=recipientSearchTerm(query);if(!term)return [];
   let predicate:string;const values:unknown[]=[actor.tenantId,actor.userId,term.value];
   if(term.kind==='email')predicate=`EXISTS(SELECT 1 FROM security.platform_user_profiles s
    WHERE s.tenant_id=p.tenant_id AND s.user_id=p.user_id AND lower(s.email)=$3)`;
   else if(term.kind==='phone'){
    values.push(term.localPhone??term.value);
    predicate=`EXISTS(SELECT 1 FROM security.platform_user_profiles s WHERE s.tenant_id=p.tenant_id
     AND s.user_id=p.user_id AND (s.contact_phone IN ($3,$4) OR s.phone IN ($3,$4)))`;
   }else{
    values[2]=term.value.replace(/[\\%_]/gu,'\\$&')+'%';
    predicate=term.kind==='username'?`lower(p.handle) LIKE $3 ESCAPE '\\'`:
      `(lower(p.handle) LIKE $3 ESCAPE '\\' OR lower(p.display_name) LIKE $3 ESCAPE '\\')`;
   }
   const result=await pool.query<Row>(`${selection} WHERE ${access} AND (${predicate})
    ORDER BY lower(p.handle),p.user_id LIMIT 8`,values);
   return result.rows.map(identity);
  },
 };
}
