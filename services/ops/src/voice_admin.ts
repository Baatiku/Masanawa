import {createHash} from 'node:crypto';
import type {Pool} from '@masanawa/postgres';
import type {OpsAdminDashboardService} from './admin_dashboard.js';
import {buildGoogleVoiceEnrollment} from './voice_enrollment.js';

type Enrollment={characterId:string;requestId:string;displayName:string;sample:string;consent:string;adultSpeakerConfirmed:boolean};
export class VoiceAdminError extends Error {constructor(readonly statusCode:number,readonly code:string){super(code);}}
export function createVoiceAdmin(input:{pool:Pick<Pool,'query'>;authorize:OpsAdminDashboardService['authorize'];apiKey?:string|undefined;fetch?:typeof fetch}){
 const call=input.fetch??fetch;
 const authorize=(authorizationHeader:string|undefined)=>input.authorize({authorizationHeader,capability:'agents.presentation.write'});
 const valid=(s:string)=>/^[a-zA-Z0-9_-]{1,128}$/.test(s);
 /** A new, consent-verified voice becomes this persona's default only when no
  * active voice has already been chosen. A deliberate manual assignment is
  * never silently replaced by another enrollment or a recovery poll. */
 async function autoAssignReadyVoice(tenant:string,character:string,requestId:string,actorId:string):Promise<boolean>{
  const assigned=await input.pool.query(`INSERT INTO agents.admin_voice_assignments(tenant_id,character_id,request_id,actor_id)
   SELECT $1,$2,$3,$4 FROM agents.admin_voice_enrollments WHERE tenant_id=$1 AND character_id=$2 AND request_id=$3 AND state='ready'
   ON CONFLICT(tenant_id,character_id) DO UPDATE SET request_id=EXCLUDED.request_id,actor_id=EXCLUDED.actor_id,
    active=true,revision=agents.admin_voice_assignments.revision+1,updated_at=clock_timestamp()
    WHERE agents.admin_voice_assignments.active=false
   RETURNING revision`,[tenant,character,requestId,actorId]);
  return assigned.rows.length>0;
 }
 async function read(tenant:string,character:string){return (await input.pool.query(`SELECT request_id AS "requestId",display_name AS "displayName",state,voice_id AS "voiceId",created_at AS "createdAt" FROM agents.admin_voice_enrollments WHERE tenant_id=$1 AND character_id=$2 ORDER BY created_at DESC LIMIT 20`,[tenant,character])).rows;}
 async function reconcile(tenant:string,character:string,actorId:string){
  if(!input.apiKey)return;
  const unresolved=(await input.pool.query(`SELECT request_id,provider_display_name FROM agents.admin_voice_enrollments WHERE tenant_id=$1 AND character_id=$2 AND state IN('pending','unknown') AND provider_display_name IS NOT NULL ORDER BY created_at DESC LIMIT 20`,[tenant,character])).rows;
  if(!unresolved.length)return;
  try{const response=await call('https://generativelanguage.googleapis.com/v1beta/voices?type=replicated',{headers:{'x-goog-api-key':input.apiKey},signal:AbortSignal.timeout(8000),redirect:'error'});if(!response.ok)return;const result=await response.json() as {voices?:{id?:string;type?:string;display_name?:string;displayName?:string}[]};if(!Array.isArray(result.voices)||result.voices.length>200)return;
   for(const pending of unresolved){const matches=result.voices.filter(v=>v.type==='replicated'&&(v.display_name??v.displayName)===pending.provider_display_name&&typeof v.id==='string'&&/^voice_[a-zA-Z0-9_-]{1,160}$/.test(v.id));if(matches.length!==1)continue;
    await input.pool.query(`WITH changed AS(UPDATE agents.admin_voice_enrollments SET state='ready',voice_id=$4,updated_at=clock_timestamp() WHERE tenant_id=$1 AND character_id=$2 AND request_id=$3 AND state IN('pending','unknown') AND provider_display_name=$5 RETURNING request_id) INSERT INTO agents.admin_voice_lifecycle_events(tenant_id,character_id,request_id,actor_id,action) SELECT $1,$2,request_id,$6,'provider_enrollment_recovered' FROM changed`,[tenant,character,pending.request_id,matches[0]!.id,pending.provider_display_name,actorId]);
    await autoAssignReadyVoice(tenant,character,pending.request_id,actorId);
   }
  }catch{/* Keep the original unresolved request, without creating another voice. */}
 }
 return {
  async unassign(auth:string|undefined,p:{characterId:string;expectedRevision:number}){const actor=await authorize(auth);if(!valid(p.characterId)||!Number.isSafeInteger(p.expectedRevision)||p.expectedRevision<1)throw new VoiceAdminError(422,'invalid_voice_assignment');const row=(await input.pool.query(`UPDATE agents.admin_voice_assignments SET active=false,revision=revision+1,actor_id=$3,updated_at=clock_timestamp() WHERE tenant_id=$1 AND character_id=$2 AND revision=$4 AND active=true RETURNING revision`,[actor.tenantId,p.characterId,actor.actorId,p.expectedRevision])).rows[0];if(!row)throw new VoiceAdminError(409,'voice_assignment_conflict');return row;},
  async revoke(auth:string|undefined,p:{characterId:string;requestId:string;confirmed:boolean}){
   const actor=await authorize(auth);if(!input.apiKey)throw new VoiceAdminError(503,'google_voice_not_configured');if(!valid(p.characterId)||!/^[a-zA-Z0-9_-]{16,80}$/.test(p.requestId)||p.confirmed!==true)throw new VoiceAdminError(422,'confirm_voice_deletion');
   const old=(await input.pool.query(`SELECT state,voice_id FROM agents.admin_voice_enrollments WHERE tenant_id=$1 AND character_id=$2 AND request_id=$3`,[actor.tenantId,p.characterId,p.requestId])).rows[0];if(old?.state==='revoked')return {state:'revoked'};
   if(!old?.voice_id||!['ready','revoking'].includes(String(old.state)))throw new VoiceAdminError(409,'verified_voice_not_found');
   await input.pool.query(`WITH changed AS(UPDATE agents.admin_voice_enrollments SET state='revoking',updated_at=clock_timestamp() WHERE tenant_id=$1 AND character_id=$2 AND request_id=$3 AND state IN('ready','revoking') RETURNING request_id) INSERT INTO agents.admin_voice_lifecycle_events(tenant_id,character_id,request_id,actor_id,action) SELECT $1,$2,request_id,$4,'revoke_requested' FROM changed`,[actor.tenantId,p.characterId,p.requestId,actor.actorId]);
   let removed=false;try{const response=await call('https://generativelanguage.googleapis.com/v1beta/voices/'+encodeURIComponent(String(old.voice_id)),{method:'DELETE',headers:{'x-goog-api-key':input.apiKey},redirect:'error',signal:AbortSignal.timeout(20000)});removed=response.ok||response.status===404;}catch{/* DELETE is idempotent: the original voice ID remains available for retry. */}
   if(removed)await input.pool.query(`WITH changed AS(UPDATE agents.admin_voice_enrollments SET state='revoked',updated_at=clock_timestamp() WHERE tenant_id=$1 AND character_id=$2 AND request_id=$3 AND state='revoking' RETURNING request_id) INSERT INTO agents.admin_voice_lifecycle_events(tenant_id,character_id,request_id,actor_id,action) SELECT $1,$2,request_id,$4,'provider_voice_deleted' FROM changed`,[actor.tenantId,p.characterId,p.requestId,actor.actorId]);
   return {state:removed?'revoked':'revoking'};
  },
  async list(auth:string|undefined,character:string){const actor=await authorize(auth);if(!valid(character))throw new VoiceAdminError(400,'invalid_character');await reconcile(actor.tenantId,character,actor.actorId);const assignment=await input.pool.query(`SELECT request_id AS "requestId",revision,active AND EXISTS(SELECT 1 FROM agents.admin_voice_enrollments e WHERE e.tenant_id=agents.admin_voice_assignments.tenant_id AND e.request_id=agents.admin_voice_assignments.request_id AND e.state='ready') AS active FROM agents.admin_voice_assignments WHERE tenant_id=$1 AND character_id=$2`,[actor.tenantId,character]);return {items:await read(actor.tenantId,character),assignment:assignment.rows[0]??null,customTts:!!input.apiKey,customLiveCalls:false};},
  async audition(auth:string|undefined,p:{characterId:string;requestId:string}){
   const actor=await authorize(auth);if(!input.apiKey)throw new VoiceAdminError(503,'google_voice_not_configured');
   if(!valid(p.characterId)||!/^[a-zA-Z0-9_-]{16,80}$/.test(p.requestId))throw new VoiceAdminError(400,'invalid_voice_request');
   const row=(await input.pool.query(`SELECT voice_id FROM agents.admin_voice_enrollments WHERE tenant_id=$1 AND character_id=$2 AND request_id=$3 AND state='ready'`,[actor.tenantId,p.characterId,p.requestId])).rows[0];
   if(!row)throw new VoiceAdminError(404,'verified_voice_not_found');
   const r=await call('https://generativelanguage.googleapis.com/v1beta/interactions',{method:'POST',headers:{'x-goog-api-key':input.apiKey,'Content-Type':'application/json'},signal:AbortSignal.timeout(25000),redirect:'error',body:JSON.stringify({model:'gemini-3.8-flash-tts',store:false,input:[{type:'user_input',content:[{type:'text',text:'Hello. This is a preview of the authorized custom voice.'}]}],response_format:{type:'audio'},generation_config:{speech_config:[{voice:row.voice_id}]}})});
   if(!r.ok)throw new VoiceAdminError(502,'voice_preview_failed');
   const result=await r.json() as {output_audio?:{data?:string;mime_type?:string};steps?:{type?:string;content?:{type?:string;data?:string;mime_type?:string}[]}[]};
   const audio=result.output_audio?.data?result.output_audio:result.steps?.filter(s=>s.type==='model_output').flatMap(s=>s.content??[]).filter(c=>c.type==='audio').at(-1);
   if(!audio?.data||audio.data.length>8_000_000||!['audio/wav','audio/l16','audio/l16;rate=24000','audio/pcm;rate=24000'].includes(audio.mime_type??'')||
    !/^[A-Za-z0-9+/]*={0,2}$/.test(audio.data)||Buffer.from(audio.data,'base64').toString('base64')!==audio.data)throw new VoiceAdminError(502,'invalid_voice_preview');
   return {data:audio.data,mimeType:audio.mime_type};
  },
  async enroll(auth:string|undefined,p:Enrollment){
   const actor=await authorize(auth);
   if(!valid(p.characterId)||!/^[a-zA-Z0-9_-]{16,80}$/.test(p.requestId))throw new VoiceAdminError(400,'invalid_voice_request');
   if(!input.apiKey)throw new VoiceAdminError(503,'google_voice_not_configured');
   let body;try{body=buildGoogleVoiceEnrollment(p);}catch{throw new VoiceAdminError(422,'invalid_voice_recordings');}
   body.voice.display_name='Masanawa-'+createHash('sha256').update(JSON.stringify([actor.tenantId,p.characterId,p.requestId])).digest('hex').slice(0,32);
   const exists=await input.pool.query(`SELECT 1 FROM agents.agent_presentations WHERE tenant_id=$1 AND character_id=$2`,[actor.tenantId,p.characterId]);
   if(!exists.rows.length)throw new VoiceAdminError(404,'persona_not_found');
   const hash=createHash('sha256').update(JSON.stringify({characterId:p.characterId,body})).digest('hex');
   const claim=await input.pool.query(`INSERT INTO agents.admin_voice_enrollments(tenant_id,character_id,request_id,actor_id,display_name,state,input_hash,provider_display_name) VALUES($1,$2,$3,$4,$5,'pending',$6,$7) ON CONFLICT DO NOTHING RETURNING request_id`,[actor.tenantId,p.characterId,p.requestId,actor.actorId,p.displayName.trim(),hash,body.voice.display_name]);
   if(!claim.rows.length){
    const old=await input.pool.query(`SELECT character_id,input_hash,state,voice_id AS "voiceId" FROM agents.admin_voice_enrollments WHERE tenant_id=$1 AND request_id=$2`,[actor.tenantId,p.requestId]);
    const row=old.rows[0];if(!row||row.input_hash!==hash||row.character_id!==p.characterId)throw new VoiceAdminError(409,'voice_request_conflict');
    const autoAssigned=row.state==='ready'?await autoAssignReadyVoice(actor.tenantId,p.characterId,p.requestId,actor.actorId):false;
    return {requestId:p.requestId,state:row.state,voiceId:row.voiceId??null,autoAssigned};
   }
   let state='unknown',voiceId:string|null=null;
   try{
    const response=await call('https://generativelanguage.googleapis.com/v1beta/voices',{method:'POST',headers:{'x-goog-api-key':input.apiKey,'Content-Type':'application/json'},body:JSON.stringify(body),signal:AbortSignal.timeout(25000),redirect:'error'});
    if(response.ok){const result=await response.json() as {id?:unknown};if(typeof result.id==='string'&&/^voice_[a-zA-Z0-9_-]{1,160}$/.test(result.id)){voiceId=result.id;state='ready';}}
    else if([400,401,403,404,413,422,429].includes(response.status))state='rejected';
   }catch{/* Preserve uncertainty: never automatically repeat provider enrollment. */}
   await input.pool.query(`UPDATE agents.admin_voice_enrollments SET state=$3,voice_id=$4,updated_at=clock_timestamp() WHERE tenant_id=$1 AND request_id=$2 AND state='pending'`,[actor.tenantId,p.requestId,state,voiceId]);
   const committed=(await input.pool.query(`SELECT state,voice_id AS "voiceId" FROM agents.admin_voice_enrollments WHERE tenant_id=$1 AND request_id=$2`,[actor.tenantId,p.requestId])).rows[0];
   const settled=committed?.state??state;
   const autoAssigned=settled==='ready'?await autoAssignReadyVoice(actor.tenantId,p.characterId,p.requestId,actor.actorId):false;
   return {requestId:p.requestId,state:settled,voiceId:committed?.voiceId??voiceId,autoAssigned};
  },
  async assign(auth:string|undefined,p:{characterId:string;requestId:string;expectedRevision:number}){
   const actor=await authorize(auth);
   if(!valid(p.characterId)||!/^[a-zA-Z0-9_-]{16,80}$/.test(p.requestId)||!Number.isSafeInteger(p.expectedRevision)||p.expectedRevision<0)throw new VoiceAdminError(400,'invalid_voice_assignment');
   const result=await input.pool.query(`INSERT INTO agents.admin_voice_assignments(tenant_id,character_id,request_id,actor_id)
    SELECT $1,$2,$3,$4 FROM agents.admin_voice_enrollments WHERE tenant_id=$1 AND character_id=$2 AND request_id=$3 AND state='ready' AND $5=0
    ON CONFLICT(tenant_id,character_id) DO NOTHING RETURNING revision`,[actor.tenantId,p.characterId,p.requestId,actor.actorId,p.expectedRevision]);
   if(result.rows.length)return result.rows[0];
   const updated=await input.pool.query(`UPDATE agents.admin_voice_assignments a SET request_id=$3,actor_id=$4,active=true,revision=a.revision+1,updated_at=clock_timestamp() WHERE a.tenant_id=$1 AND a.character_id=$2 AND a.revision=$5 AND EXISTS(SELECT 1 FROM agents.admin_voice_enrollments e WHERE e.tenant_id=$1 AND e.character_id=$2 AND e.request_id=$3 AND e.state='ready') RETURNING revision`,[actor.tenantId,p.characterId,p.requestId,actor.actorId,p.expectedRevision]);
   if(!updated.rows.length)throw new VoiceAdminError(409,'voice_assignment_conflict');return updated.rows[0];
  },
 };
}
