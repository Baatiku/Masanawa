import {createHash,randomUUID} from 'node:crypto';
import sharp from 'sharp';
import {createCreatorRevisionService} from './revisions.js';
import type {FastifyInstance} from 'fastify';
import {CreatorAgentError,type CreatorPool,type CreatorQuery} from './store.js';

type Owner={tenantId:string;userId:string};
function payload(raw:unknown):Record<string,unknown>{
 if(!raw||typeof raw!=='object'||Array.isArray(raw))throw new CreatorAgentError('creator.invalid_payload',400);
 return raw as Record<string,unknown>;
}
function revision(v:unknown):number{
 if(typeof v!=='number'||!Number.isSafeInteger(v)||v<1)throw new CreatorAgentError('creator.invalid_revision',400);return v;
}
function identifier(v:unknown):string{
 if(typeof v!=='string'||!/^[-_a-zA-Z0-9]{8,160}$/u.test(v))throw new CreatorAgentError('creator.id_invalid',400);return v;
}
export interface CreatorImageObjects {
 putObject(key:string,body:Buffer,contentType:string):Promise<{sha256:string;bytes:number}>;
 statObject(key:string):Promise<{contentType:string;bytes:number}|null>;
 deleteObject(key:string):Promise<void>;
 presignGet(key:string,ttl:number):Promise<{url:string;expiresAt:string}>;
}
export function createCreatorCompletionService({pool,images,approvedDownloadOrigins=[]}:{pool:CreatorPool;images?:CreatorImageObjects;approvedDownloadOrigins?:readonly string[]}){
 async function transaction<T>(owner:Owner,character:string,expected:number,work:(db:CreatorQuery,row:Record<string,unknown>)=>Promise<T>):Promise<T>{
  const db=await pool.connect();let begun=false;
  try{
   await db.query('BEGIN');begun=true;
   const user=await db.query('SELECT state FROM identity.users WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE',[owner.tenantId,owner.userId]);
   if(user.rows[0]?.state!=='active')throw new CreatorAgentError('creator.owner_not_active',403);
   const r=await db.query('SELECT * FROM creator.agents WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3 FOR UPDATE',[owner.tenantId,owner.userId,identifier(character)]);
   const row=r.rows[0];if(!row)throw new CreatorAgentError('creator.agent_not_found',404);
   if(Number(row.revision)!==revision(expected))throw new CreatorAgentError('creator.stale_revision');
   const result=await work(db,row);await db.query('COMMIT');begun=false;return result;
  }catch(e){if(begun)await db.query('ROLLBACK').catch(()=>{});throw e;}finally{db.release();}
 }
 return Object.freeze({
  revisions:createCreatorRevisionService(pool),
  async deleteImage(owner:Owner,character:string,raw:unknown){
   const b=payload(raw);
   if(Object.keys(b).sort().join(',')!=='expectedRevision,mediaId')throw new CreatorAgentError('creator.invalid_payload',400);
   const mediaId=identifier(b.mediaId);
   return transaction(owner,character,revision(b.expectedRevision),async(db,row)=>{
    const r=await db.query('SELECT object_key FROM masana.character_media WHERE tenant_id=$1 AND character_id=$2 AND media_id=$3 AND approved_by=$4 FOR UPDATE',[owner.tenantId,character,mediaId,owner.userId]);
    if(!r.rows[0])throw new CreatorAgentError('creator.media_not_found',404);
    const bound=await db.query("SELECT revision FROM masana.character_revisions WHERE tenant_id=$1 AND character_id=$2 AND state='approved' AND (profile->>'portraitMediaId'=$3 OR profile->>'bannerMediaId'=$3)",[owner.tenantId,character,mediaId]);
    if(bound.rows[0])throw new CreatorAgentError('creator.replace_published_image_first');
    await db.query('INSERT INTO creator.media_deletions(tenant_id,media_id,owner_user_id,object_key) VALUES($1,$2,$3,$4) ON CONFLICT DO NOTHING',[owner.tenantId,mediaId,owner.userId,r.rows[0].object_key]);
    await db.query('DELETE FROM masana.character_media WHERE tenant_id=$1 AND character_id=$2 AND media_id=$3',[owner.tenantId,character,mediaId]);
    await db.query("UPDATE creator.agents SET seed=CASE WHEN seed->>'portraitMediaId'=$4 THEN jsonb_set(seed,'{portraitMediaId}','null'::jsonb) ELSE seed END,revision=revision+1,updated_at=clock_timestamp() WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3",[owner.tenantId,owner.userId,character,mediaId]);
    return {mediaId,revision:Number(row.revision)+1,state:'deletion_queued'};
   });
  },
  async listImages(owner:Owner,character:string){
   const authorized=await pool.query('SELECT character_id FROM creator.agents WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3',[owner.tenantId,owner.userId,identifier(character)]);
   if(!authorized.rows[0])throw new CreatorAgentError('creator.agent_not_found',404);
   const result=await pool.query("SELECT media_id,kind FROM masana.character_media WHERE tenant_id=$1 AND character_id=$2 AND approved_by=$3 ORDER BY created_at DESC LIMIT 40",[owner.tenantId,character,owner.userId]);
   return {items:result.rows.map(r=>({mediaId:r.media_id,kind:r.kind}))};
  },
  async uploadImage(owner:Owner,character:string,raw:unknown){
   const b=payload(raw);
   if(Object.keys(b).sort().join(',')!=='dataBase64,expectedRevision,kind,rightsNote'||(b.kind!=='portrait'&&b.kind!=='banner')||typeof b.rightsNote!=='string'||b.rightsNote.trim().length<8||b.rightsNote.length>500||typeof b.dataBase64!=='string'||b.dataBase64.length>8_000_000)throw new CreatorAgentError('creator.invalid_image',400);
   const expected=revision(b.expectedRevision);
   // Authorize before image processing or storage work.
   await transaction(owner,character,expected,async(_db,row)=>{if(!['draft','published','paused'].includes(String(row.state)))throw new CreatorAgentError('creator.media_ineligible');});
   if(!images||approvedDownloadOrigins.length===0)throw new CreatorAgentError('creator.media_store_unavailable',503);
   const source=Buffer.from(b.dataBase64,'base64');
   if(source.length===0||source.length>6_000_000||source.toString('base64')!==b.dataBase64)throw new CreatorAgentError('creator.invalid_image',400);
   let data:Buffer;
   try{data=await sharp(source,{limitInputPixels:25_000_000,animated:false}).rotate().resize({width:b.kind==='portrait'?1024:1920,height:b.kind==='portrait'?1024:1080,fit:'inside',withoutEnlargement:true}).webp({quality:85}).toBuffer();}
   catch{throw new CreatorAgentError('creator.image_processing_failed',400);}
   const mediaId='media_'+randomUUID().replaceAll('-','');
   const key='creator/'+encodeURIComponent(owner.tenantId)+'/'+encodeURIComponent(character)+'/'+mediaId+'.webp';
   let stored=false;
   try{
    const receipt=await images.putObject(key,data,'image/webp');stored=true;
    const meta=await images.statObject(key);
    if(receipt.sha256!==createHash('sha256').update(data).digest('hex')||receipt.bytes!==data.length||meta?.bytes!==data.length||meta.contentType!=='image/webp')throw new CreatorAgentError('creator.media_readback_failed',503);
    const grant=await images.presignGet(key,120),url=new URL(grant.url),ttl=Date.parse(grant.expiresAt)-Date.now();
    if(url.protocol!=='https:'||url.username||url.password||!approvedDownloadOrigins.includes(url.origin)||!Number.isFinite(ttl)||ttl<=0||ttl>121000)throw new CreatorAgentError('creator.media_grant_invalid',503);
    const result=await transaction(owner,character,expected,async(db,row)=>{
     if(!['draft','published','paused'].includes(String(row.state)))throw new CreatorAgentError('creator.media_ineligible');
     await db.query('INSERT INTO masana.character_media(tenant_id,media_id,character_id,kind,object_key,rights_note,approved_by) VALUES($1,$2,$3,$4,$5,$6,$7)',[owner.tenantId,mediaId,character,b.kind,key,String(b.rightsNote).trim(),owner.userId]);
     if(row.state==='draft'&&b.kind==='portrait')await db.query("UPDATE creator.agents SET seed=jsonb_set(seed,'{portraitMediaId}',to_jsonb($4::text)),revision=revision+1,updated_at=clock_timestamp() WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3",[owner.tenantId,owner.userId,character,mediaId]);
     else await db.query('UPDATE creator.agents SET revision=revision+1,updated_at=clock_timestamp() WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3',[owner.tenantId,owner.userId,character]);
     // Keep published media replacement pending editorial review. Rights admission
     // does not impersonate staff moderation or bypass substantive-edit fees.
     return {characterId:character,mediaId,kind:b.kind,revision:Number(row.revision)+1,previewUrl:grant.url,expiresAt:grant.expiresAt,state:row.state==='draft'?'draft':'awaiting_revision_review'};
    });
    return result;
   }catch(e){if(stored)await images.deleteObject(key).catch(()=>{});throw e;}
  },
  async schedule(owner:Owner,character:string,raw:unknown){
   const b=payload(raw);
   if(Object.keys(b).sort().join(',')!=='enabled,expectedRevision,postsWeekly,rightsNote'||typeof b.enabled!=='boolean'||typeof b.postsWeekly!=='number'||!Number.isSafeInteger(b.postsWeekly)||b.postsWeekly<0||b.postsWeekly>21||typeof b.rightsNote!=='string'||b.rightsNote.trim().length<8||b.rightsNote.length>500)throw new CreatorAgentError('creator.invalid_schedule',400);
   return transaction(owner,character,revision(b.expectedRevision),async(db,row)=>{
    if(row.state!=='published'&&row.state!=='paused')throw new CreatorAgentError('creator.schedule_ineligible');
    const p=await db.query('SELECT max_posts_weekly FROM creator.fee_policies WHERE tenant_id=$1 AND effective_at<=now() ORDER BY effective_at DESC,revision DESC LIMIT 1',[owner.tenantId]);
    const cap=Number(p.rows[0]?.max_posts_weekly??2);
    if(b.enabled&&(Number(b.postsWeekly)>cap||Number(b.postsWeekly)===0))throw new CreatorAgentError('creator.schedule_cap',400);
    await db.query('UPDATE creator.agents SET status_enabled=$4,status_posts_weekly=$5,status_rights_note=$6,revision=revision+1,updated_at=statement_timestamp() WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3',[owner.tenantId,owner.userId,character,b.enabled,b.postsWeekly,String(b.rightsNote).trim()]);
    return {characterId:character,revision:Number(row.revision)+1,enabled:b.enabled,postsWeekly:b.postsWeekly,delivery:'requires_review' as const};
   });
  },
  async retire(owner:Owner,character:string,raw:unknown){
   const b=payload(raw);if(Object.keys(b).join(',')!=='expectedRevision')throw new CreatorAgentError('creator.invalid_payload',400);
   return transaction(owner,character,revision(b.expectedRevision),async(db,row)=>{
    if(row.state==='retired')return {characterId:character,state:'retired',revision:Number(row.revision)};
    // Restricted personas cannot use a retirement write to bypass moderation.
    if(row.state!=='published'&&row.state!=='paused'&&row.state!=='draft')throw new CreatorAgentError('creator.retire_ineligible');
    await db.query("UPDATE creator.agents SET state='retired',status_enabled=false,revision=revision+1,updated_at=statement_timestamp() WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3",[owner.tenantId,owner.userId,character]);
    await db.query("UPDATE identity.characters SET state='disabled',revision=revision+1,updated_at=statement_timestamp() WHERE tenant_id=$1 AND character_id=$2",[owner.tenantId,character]);
    await db.query('UPDATE agents.agent_presentations SET visible_in_user_app=false,revision=revision+1 WHERE tenant_id=$1 AND character_id=$2',[owner.tenantId,character]);
    return {characterId:character,state:'retired',revision:Number(row.revision)+1};
   });
  },
  async voiceAvailability(owner:Owner,character:string){
   const r=await pool.query('SELECT character_id FROM creator.agents WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3',[owner.tenantId,owner.userId,identifier(character)]);
   if(!r.rows[0])throw new CreatorAgentError('creator.agent_not_found',404);
   return {available:false,code:'creator.qualified_reference_provider_unavailable',fallback:'supported_voice',uploadAllowed:false};
  },
 });
}
export function registerCreatorCompletionRoutes(app:FastifyInstance,deps:{auth:{fan(header:string|undefined):Promise<Owner>};service:ReturnType<typeof createCreatorCompletionService>}):void{
 for(const [path,action] of [['edit-quote','quote'],['edit-confirm','confirm']] as const)app.post('/v1/creator/masana/:id/'+path,{bodyLimit:16384},async(request,reply)=>{
  reply.header('Cache-Control','private, no-store');try{return await deps.service.revisions[action](await deps.auth.fan(request.headers.authorization),identifier(payload(request.params).id),payload(request.body));}
  catch(e){if(e instanceof CreatorAgentError){reply.code(e.statusCode);return {code:e.code};}if(e instanceof TypeError||e instanceof RangeError){reply.code(400);return {code:'creator.invalid_revision_content'};}throw e;}
 });
 app.post('/v1/creator/masana/:id/images/delete',{bodyLimit:512},async(request,reply)=>{
  reply.header('Cache-Control','private, no-store');try{
   const result=await deps.service.deleteImage(await deps.auth.fan(request.headers.authorization),identifier(payload(request.params).id),request.body);
   return result;
  }catch(e){if(e instanceof CreatorAgentError){reply.code(e.statusCode);return {code:e.code};}throw e;}
 });
 app.get('/v1/creator/masana/:id/images',async(request,reply)=>{
  reply.header('Cache-Control','private, no-store');try{return await deps.service.listImages(await deps.auth.fan(request.headers.authorization),identifier(payload(request.params).id));}
  catch(e){if(e instanceof CreatorAgentError){reply.code(e.statusCode);return {code:e.code};}throw e;}
 });
 app.post('/v1/creator/masana/:id/images',{bodyLimit:8_002_048},async(request,reply)=>{
  reply.header('Cache-Control','private, no-store');try{return await deps.service.uploadImage(await deps.auth.fan(request.headers.authorization),identifier(payload(request.params).id),request.body);}
  catch(e){if(e instanceof CreatorAgentError){reply.code(e.statusCode);return {code:e.code};}throw e;}
 });
 for(const action of ['schedule','retire'] as const)app.post('/v1/creator/masana/:id/'+action,{bodyLimit:2048},async(request,reply)=>{
  reply.header('Cache-Control','private, no-store');try{
   const owner=await deps.auth.fan(request.headers.authorization);return await deps.service[action](owner,identifier(payload(request.params).id),request.body);
  }catch(e){if(e instanceof CreatorAgentError){reply.code(e.statusCode);return {code:e.code};}throw e;}
 });
 app.get('/v1/creator/masana/:id/voice-reference',async(request,reply)=>{
  reply.header('Cache-Control','private, no-store');try{return await deps.service.voiceAvailability(await deps.auth.fan(request.headers.authorization),identifier(payload(request.params).id));}
  catch(e){if(e instanceof CreatorAgentError){reply.code(e.statusCode);return {code:e.code};}throw e;}
 });
}
