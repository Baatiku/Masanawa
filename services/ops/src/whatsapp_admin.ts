import { createCipheriv, createDecipheriv, randomBytes } from 'node:crypto';
import QRCode from 'qrcode';
import type { Pool } from '@masanawa/postgres';
import type { OpsAdminDashboardService } from './admin_dashboard.js';
import { evaluateWhatsAppAction, validateWhatsAppPermissions, type WhatsAppPermission, type WhatsAppRoleLevel } from './whatsapp_policy.js';

export class WhatsAppAdminError extends Error {
  constructor(readonly statusCode:number,readonly code:string){ super(code); }
}

type Config = {
  name:string; personality:string; instructions:string; greeting:string; language:'auto'|'en'|'ha';
  numberPurpose?:'service'|'personal';ownerName?:string;ownerTitle?:string;
  roleLevel:WhatsAppRoleLevel; permissions:WhatsAppPermission[]; personaId:string|null; voiceId:string|null;
  textReplies:boolean; voiceReplies:boolean; transcribeVoice:boolean;
  replyMode:'always'|'away'|'manual';awayAfterSeconds:number;absenceMessage:string;rememberContext:boolean;
  workingHours:{timezone:string;days:number[];start:string;end:string}; escalationKeywords:string[];
};
type Input = {
  pool:Pick<Pool,'query'>;
  authorize:OpsAdminDashboardService['authorize'];
  env:Readonly<Record<string,string|undefined>>;
  fetch?:typeof fetch;
};
const isId = (s:string) => /^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(s);

export function encryptWhatsAppToken(token:string,keyBase64:string):Buffer {
  const key=Buffer.from(keyBase64,'base64');
  if(key.length!==32)throw new WhatsAppAdminError(503,'whatsapp_encryption_key_invalid');
  const iv=randomBytes(12),cipher=createCipheriv('aes-256-gcm',key,iv);
  return Buffer.concat([iv,cipher.update(token,'utf8'),cipher.final(),cipher.getAuthTag()]);
}
export function decryptWhatsAppToken(value:Buffer,keyBase64:string):string {
  const key=Buffer.from(keyBase64,'base64');
  if(key.length!==32||value.length<29)throw new Error('invalid_encrypted_token');
  const cipher=createDecipheriv('aes-256-gcm',key,value.subarray(0,12));
  cipher.setAuthTag(value.subarray(value.length-16));
  return Buffer.concat([cipher.update(value.subarray(12,value.length-16)),cipher.final()]).toString('utf8');
}

function validConfig(value:unknown): value is Config {
  if(!value||typeof value!=='object'||Array.isArray(value))return false;
  const c=value as Record<string,unknown>,hours=c.workingHours as Record<string,unknown>|undefined;
  return typeof c.name==='string'&&c.name.trim().length>0&&c.name.length<=100&&
    typeof c.personality==='string'&&c.personality.length<=1000&&
    typeof c.instructions==='string'&&c.instructions.length<=8000&&
    typeof c.greeting==='string'&&c.greeting.length<=1000&&
    (c.numberPurpose===undefined||['service','personal'].includes(String(c.numberPurpose)))&&
    (c.ownerName===undefined||(typeof c.ownerName==='string'&&c.ownerName.length<=100&&!/[\r\n\x00-\x1f]/.test(c.ownerName)))&&
    (c.ownerTitle===undefined||(typeof c.ownerTitle==='string'&&c.ownerTitle.length<=120&&!/[\r\n\x00-\x1f]/.test(c.ownerTitle)))&&
    ['auto','en','ha'].includes(String(c.language))&&
    validateWhatsAppPermissions(Number(c.roleLevel),c.permissions)&&
    (c.personaId===null||(typeof c.personaId==='string'&&/^[A-Za-z0-9_-]{1,128}$/.test(c.personaId)))&&
    (c.voiceId===null||(typeof c.voiceId==='string'&&/^voice_[A-Za-z0-9_-]{1,160}$/.test(c.voiceId)))&&
    ['textReplies','voiceReplies','transcribeVoice'].every(k=>typeof c[k]==='boolean')&&
    ['always','away','manual'].includes(String(c.replyMode))&&
    Number.isInteger(c.awayAfterSeconds)&&Number(c.awayAfterSeconds)>=30&&Number(c.awayAfterSeconds)<=3600&&
    typeof c.absenceMessage==='string'&&c.absenceMessage.length<=1000&&c.absenceMessage.trim().length>0&&
    typeof c.rememberContext==='boolean'&&
    !!hours&&hours.timezone==='Africa/Lagos'&&Array.isArray(hours.days)&&hours.days.length<=7&&
    new Set(hours.days).size===hours.days.length&&hours.days.every(d=>Number.isInteger(d)&&d>=0&&d<=6)&&
    typeof hours.start==='string'&&/^([01]\d|2[0-3]):[0-5]\d$/.test(hours.start)&&
    typeof hours.end==='string'&&/^([01]\d|2[0-3]):[0-5]\d$/.test(hours.end)&&
    Array.isArray(c.escalationKeywords)&&c.escalationKeywords.length<=20&&
    c.escalationKeywords.every(k=>typeof k==='string'&&k.length>=1&&k.length<=60);
}

export function createWhatsAppAdmin(input:Input){
  const read=(auth:string|undefined)=>input.authorize({authorizationHeader:auth,capability:'whatsapp.read'});
  const write=(auth:string|undefined)=>input.authorize({authorizationHeader:auth,capability:'whatsapp.write'});
  const configured=()=>Boolean(input.env.MASANAWA_WHATSAPP_SESSION_KEY&&Buffer.from(input.env.MASANAWA_WHATSAPP_SESSION_KEY,'base64').length===32&&input.env.MASANAWA_WHATSAPP_ENABLED==='true'&&input.env.MASANAWA_WHATSAPP_MODE==='linked-device');
  const audit=async(tenant:string,id:string|null,actor:string,action:string,metadata:Record<string,unknown>={})=>{
    await input.pool.query('INSERT INTO security.whatsapp_audit(tenant_id,channel_id,actor_id,action,metadata) VALUES($1,$2,$3,$4,$5::jsonb)',[tenant,id,actor,action,JSON.stringify(metadata)]);
  };
  return {
    async geminiKeys(auth:string|undefined){
      const actor=await read(auth);
      const result=await input.pool.query(`SELECT key_id AS "keyId",label,project_id AS "projectId",
        key_suffix AS "keySuffix",enabled,cooldown_until AS "cooldownUntil",
        last_error_code AS "lastErrorCode",last_used_at AS "lastUsedAt",created_at AS "createdAt"
        FROM security.whatsapp_gemini_keys WHERE tenant_id=$1 ORDER BY created_at DESC`,[actor.tenantId]);
      return {keys:result.rows,quotaPolicy:'Gemini rate limits apply per Google Cloud project, not per API key.'};
    },
    async addGeminiKey(auth:string|undefined,label:string,projectId:string,secret:string){
      const actor=await write(auth);
      if(!/^[a-z][a-z0-9-]{4,62}$/.test(projectId)||!label.trim()||label.length>80||
        !/^[A-Za-z0-9_-]{20,256}$/.test(secret))throw new WhatsAppAdminError(422,'invalid_gemini_key_details');
      const encrypted=encryptWhatsAppToken(secret,input.env.MASANAWA_WHATSAPP_SESSION_KEY??'');
      const inserted=await input.pool.query(`INSERT INTO security.whatsapp_gemini_keys
        (tenant_id,label,project_id,key_ciphertext,key_suffix)
        VALUES($1,$2,$3,$4,$5) RETURNING key_id`,
        [actor.tenantId,label.trim(),projectId,encrypted,secret.slice(-4)]);
      await audit(actor.tenantId,null,actor.actorId,'gemini_key_added',
        {keyId:inserted.rows[0]?.key_id,projectId});
      return {added:true};
    },
    async removeGeminiKey(auth:string|undefined,keyId:string){
      const actor=await write(auth);
      if(!isId(keyId))throw new WhatsAppAdminError(422,'invalid_gemini_key_id');
      const updated=await input.pool.query(`DELETE FROM security.whatsapp_gemini_keys
        WHERE tenant_id=$1 AND key_id=$2 RETURNING key_id,project_id`,[actor.tenantId,keyId]);
      if(!updated.rows.length)throw new WhatsAppAdminError(404,'gemini_key_not_found');
      await audit(actor.tenantId,null,actor.actorId,'gemini_key_removed',
        {keyId,projectId:updated.rows[0]?.project_id});
      return {removed:true};
    },
    async list(auth:string|undefined){
      const actor=await read(auth);
      const rows=await input.pool.query(`SELECT c.channel_id AS "channelId",c.linked_jid AS "linkedJid",
        c.display_phone AS "displayPhone",c.verified_name AS "verifiedName",c.state,c.enabled,c.last_message_at AS "lastMessageAt",
        c.last_error_code AS "lastErrorCode",c.revision::int AS "revision",a.name AS "assistantName",a.role_level AS "roleLevel",
        a.number_purpose AS "numberPurpose"
        FROM security.whatsapp_channels c JOIN security.whatsapp_assistants a USING(tenant_id,channel_id)
        WHERE c.tenant_id=$1 ORDER BY c.created_at DESC LIMIT 100`,[actor.tenantId]);
      return {channels:rows.rows,linkedDeviceConfigured:configured(),qrPairingSupported:true,
        onboarding:'Scan the QR using WhatsApp → Linked Devices → Link a device. Private session credentials persist encrypted in PostgreSQL; account restrictions and unlinking remain controlled by WhatsApp.'};
    },
    async start(auth:string|undefined){
      const actor=await write(auth);
      if(!configured())throw new WhatsAppAdminError(503,'linked_device_connector_not_configured');
      const inserted=await input.pool.query(`WITH channel AS (
          INSERT INTO security.whatsapp_channels(tenant_id,enabled) VALUES($1,true)
          RETURNING channel_id,tenant_id,state,revision
        ), assistant AS (
          INSERT INTO security.whatsapp_assistants(tenant_id,channel_id)
          SELECT tenant_id,channel_id FROM channel RETURNING channel_id
        ) SELECT channel_id AS "channelId",state,revision::int FROM channel`,[actor.tenantId]);
      const channel=inserted.rows[0];
      if(!channel)throw new WhatsAppAdminError(503,'channel_creation_failed');
      await audit(actor.tenantId,channel.channelId,actor.actorId,'channel.created',{mode:'linked_device_qr'});
      return channel;
    },
    async qr(auth:string|undefined,id:string){
      const actor=await read(auth);if(!isId(id))throw new WhatsAppAdminError(422,'invalid_channel');
      const result=await input.pool.query(`SELECT state,display_phone,qr_ciphertext,qr_expires_at
        FROM security.whatsapp_channels WHERE tenant_id=$1 AND channel_id=$2`,[actor.tenantId,id]);
      const row=result.rows[0] as {state:string;display_phone:string;qr_ciphertext:Buffer|null;qr_expires_at:Date|null}|undefined;
      if(!row)throw new WhatsAppAdminError(404,'channel_not_found');
      if(!row.qr_ciphertext||!row.qr_expires_at||new Date(row.qr_expires_at).getTime()<Date.now())
        return {state:row.state,displayPhone:row.display_phone,qrDataUrl:null,expiresAt:null};
      let qr:string;try{qr=decryptWhatsAppToken(row.qr_ciphertext,input.env.MASANAWA_WHATSAPP_SESSION_KEY??'');}
      catch{throw new WhatsAppAdminError(503,'qr_decryption_unavailable');}
      return {state:row.state,displayPhone:row.display_phone,
        qrDataUrl:await QRCode.toDataURL(qr,{errorCorrectionLevel:'M',margin:2,width:300}),expiresAt:row.qr_expires_at};
    },
    async config(auth:string|undefined,id:string){
      const actor=await read(auth);if(!isId(id))throw new WhatsAppAdminError(422,'invalid_channel');
      const rows=await input.pool.query(`SELECT a.name,a.personality,a.instructions,a.greeting,a.language,a.role_level AS "roleLevel",
        a.number_purpose AS "numberPurpose",a.owner_name AS "ownerName",a.owner_title AS "ownerTitle",
        a.permissions,a.persona_id AS "personaId",a.voice_id AS "voiceId",a.text_replies AS "textReplies",
        a.voice_replies AS "voiceReplies",a.transcribe_voice AS "transcribeVoice",
        a.reply_mode AS "replyMode",a.away_after_seconds AS "awayAfterSeconds",
        a.absence_message AS "absenceMessage",a.remember_context AS "rememberContext",a.working_hours AS "workingHours",
        a.escalation_keywords AS "escalationKeywords",a.revision::int AS revision
        FROM security.whatsapp_assistants a WHERE a.tenant_id=$1 AND a.channel_id=$2`,[actor.tenantId,id]);
      if(!rows.rows[0])throw new WhatsAppAdminError(404,'channel_not_found');return rows.rows[0];
    },
    async save(auth:string|undefined,id:string,expectedRevision:number,config:unknown){
      const actor=await write(auth);
      if(!isId(id)||!Number.isInteger(expectedRevision)||expectedRevision<1||!validConfig(config))throw new WhatsAppAdminError(422,'invalid_assistant_settings');
      if(config.voiceId){
        // Reuse a consented, provider-confirmed enrollment from Masanawa's voice infrastructure.
        const voice=await input.pool.query(`SELECT 1 FROM agents.admin_voice_enrollments
          WHERE tenant_id=$1 AND character_id=$2 AND voice_id=$3 AND state='ready'`,[actor.tenantId,config.personaId,config.voiceId]);
        if(!voice.rows.length)throw new WhatsAppAdminError(403,'voice_not_authorized_for_persona');
      }
      const rows=await input.pool.query(`UPDATE security.whatsapp_assistants SET name=$3,personality=$4,instructions=$5,greeting=$6,
        language=$7,role_level=$8,permissions=$9::jsonb,persona_id=$10,voice_id=$11,text_replies=$12,voice_replies=$13,
        transcribe_voice=$14,working_hours=$15::jsonb,escalation_keywords=$16::jsonb,
        reply_mode=$17,away_after_seconds=$18,absence_message=$19,remember_context=$20,
        number_purpose=COALESCE($22,number_purpose),owner_name=COALESCE($23,owner_name),
        owner_title=COALESCE($24,owner_title),
        revision=revision+1,updated_at=clock_timestamp()
        WHERE tenant_id=$1 AND channel_id=$2 AND revision=$21 RETURNING revision::int`,[
          actor.tenantId,id,config.name.trim(),config.personality,config.instructions,config.greeting,config.language,
          config.roleLevel,JSON.stringify(config.permissions),config.personaId,config.voiceId,config.textReplies,
          config.voiceReplies,config.transcribeVoice,JSON.stringify(config.workingHours),JSON.stringify(config.escalationKeywords),
          config.replyMode,config.awayAfterSeconds,config.absenceMessage,config.rememberContext,expectedRevision,
          config.numberPurpose??null,config.ownerName?.trim()??null,config.ownerTitle?.trim()??null,
        ]);
      if(!rows.rows.length)throw new WhatsAppAdminError(409,'assistant_revision_changed');
      await audit(actor.tenantId,id,actor.actorId,'assistant.updated',{revision:rows.rows[0]!.revision,roleLevel:config.roleLevel,permissions:config.permissions});
      return rows.rows[0];
    },
    async change(auth:string|undefined,id:string,action:'enable'|'disable'|'disconnect'|'reconnect',expectedRevision:number){
      const actor=await write(auth);
      if(!isId(id)||!['enable','disable','disconnect','reconnect'].includes(action)||!Number.isInteger(expectedRevision)||expectedRevision<1)throw new WhatsAppAdminError(422,'invalid_channel_action');
      const rows=await input.pool.query(`UPDATE security.whatsapp_channels SET
        enabled=CASE WHEN $3 IN ('enable','reconnect') THEN true ELSE false END,
        state=CASE WHEN $3='disconnect' THEN 'disconnected' WHEN $3='reconnect' THEN 'pending' ELSE state END,
        linked_jid=CASE WHEN $3='disconnect' THEN NULL ELSE linked_jid END,
        qr_ciphertext=CASE WHEN $3 IN ('disconnect','reconnect') THEN NULL ELSE qr_ciphertext END,
        qr_expires_at=CASE WHEN $3 IN ('disconnect','reconnect') THEN NULL ELSE qr_expires_at END,
        lease_owner=CASE WHEN $3 IN ('disconnect','reconnect') THEN NULL ELSE lease_owner END,
        lease_expires_at=CASE WHEN $3 IN ('disconnect','reconnect') THEN NULL ELSE lease_expires_at END,
        revision=revision+1,updated_at=clock_timestamp()
        WHERE tenant_id=$1 AND channel_id=$2 AND revision=$4 AND ($3<>'enable' OR state='connected')
        RETURNING state,enabled,revision::int`,[actor.tenantId,id,action,expectedRevision]);
      if(!rows.rows.length)throw new WhatsAppAdminError(409,'channel_revision_changed_or_unhealthy');
      if(action==='disconnect')await input.pool.query(`DELETE FROM security.whatsapp_auth_keys WHERE tenant_id=$1 AND channel_id=$2`,[actor.tenantId,id]);
      await audit(actor.tenantId,id,actor.actorId,`channel.${action}`);
      return rows.rows[0];
    },
    async threads(auth:string|undefined,id:string){
      const actor=await read(auth);if(!isId(id))throw new WhatsAppAdminError(422,'invalid_channel');
      const result=await input.pool.query(`SELECT t.thread_id AS "threadId",t.customer_wa_id AS "customerWaId",
        t.customer_name AS "customerName",t.verified_contact_name AS "verifiedContactName",
        t.mode,t.assigned_operator AS "assignedOperator",
        t.unread_count AS "unreadCount",t.last_message_at AS "lastMessageAt"
        FROM security.whatsapp_threads t JOIN security.whatsapp_channels c USING(tenant_id,channel_id)
        WHERE t.tenant_id=$1 AND t.channel_id=$2 ORDER BY t.last_message_at DESC LIMIT 100`,[actor.tenantId,id]);return result.rows;
    },
    async verifyContactName(auth:string|undefined,threadId:string,name:string){
      const actor=await write(auth);
      if(!isId(threadId)||typeof name!=='string'||name.length>80||
        (name.trim()!==''&&!/^[\p{L}][\p{L}\p{M}'’.\-]*(?: [\p{L}][\p{L}\p{M}'’.\-]*){0,4}$/u.test(name.trim())))
        throw new WhatsAppAdminError(422,'invalid_contact_name');
      const result=await input.pool.query(`UPDATE security.whatsapp_threads
        SET verified_contact_name=$3 WHERE tenant_id=$1 AND thread_id=$2
        RETURNING thread_id AS "threadId",verified_contact_name AS "verifiedContactName"`,
      [actor.tenantId,threadId,name.trim()]);
      if(!result.rows[0])throw new WhatsAppAdminError(404,'thread_not_found');
      await audit(actor.tenantId,null,actor.actorId,
        name.trim()?'contact_name.verified':'contact_name.cleared',{threadId});
      return result.rows[0];
    },
    async messages(auth:string|undefined,threadId:string){
      const actor=await read(auth);if(!isId(threadId))throw new WhatsAppAdminError(422,'invalid_thread');
      const result=await input.pool.query(`SELECT message_id AS "messageId",direction,kind,body,delivery_state AS "deliveryState",
        created_at AS "createdAt" FROM security.whatsapp_messages WHERE tenant_id=$1 AND thread_id=$2
        ORDER BY created_at DESC LIMIT 100`,[actor.tenantId,threadId]);return result.rows.reverse();
    },
    async handoff(auth:string|undefined,threadId:string,mode:'ai'|'human'|'closed'){
      const actor=await write(auth);if(!isId(threadId)||!['ai','human','closed'].includes(mode))throw new WhatsAppAdminError(422,'invalid_handoff');
      const result=await input.pool.query(`UPDATE security.whatsapp_threads SET mode=$3,assigned_operator=CASE WHEN $3='human' THEN $4 ELSE NULL END,
        unread_count=0 WHERE tenant_id=$1 AND thread_id=$2 RETURNING thread_id AS "threadId",mode`,[actor.tenantId,threadId,mode,actor.actorId]);
      if(!result.rows[0])throw new WhatsAppAdminError(404,'thread_not_found');
      if(mode!=='ai')await input.pool.query(`UPDATE security.whatsapp_jobs SET state='completed',last_error_code='human_takeover'
        WHERE tenant_id=$1 AND state='pending' AND kind='reply'
          AND message_id IN (SELECT message_id FROM security.whatsapp_messages
            WHERE tenant_id=$1 AND thread_id=$2 AND direction='inbound')`,[actor.tenantId,threadId]);
      await audit(actor.tenantId,null,actor.actorId,'thread.handoff',{threadId,mode});return result.rows[0];
    },
    async send(auth:string|undefined,threadId:string,message:string,requestId:string){
      const actor=await write(auth);
      if(!isId(threadId)||!isId(requestId)||typeof message!=='string'||!message.trim()||message.length>4000)throw new WhatsAppAdminError(422,'invalid_message');
      const result=await input.pool.query(`WITH thread AS(
        SELECT tenant_id,thread_id,channel_id FROM security.whatsapp_threads
        WHERE tenant_id=$1 AND thread_id=$2 AND mode='human'
      ), inserted AS (
        INSERT INTO security.whatsapp_messages(tenant_id,thread_id,channel_id,direction,kind,body,delivery_state,operator_request_id)
        SELECT tenant_id,thread_id,channel_id,'outbound','text',$3,'queued',$4 FROM thread
        ON CONFLICT(operator_request_id) DO NOTHING
        RETURNING message_id,tenant_id,channel_id
      ), job AS (
        INSERT INTO security.whatsapp_jobs(tenant_id,channel_id,message_id,kind)
        SELECT tenant_id,channel_id,message_id,'send' FROM inserted RETURNING message_id
      ) SELECT message_id AS "messageId" FROM job`,[actor.tenantId,threadId,message.trim(),requestId]);
      if(!result.rows.length){
        const replay=await input.pool.query(`SELECT message_id AS "messageId" FROM security.whatsapp_messages
          WHERE tenant_id=$1 AND thread_id=$2 AND operator_request_id=$3 AND body=$4`,[actor.tenantId,threadId,requestId,message.trim()]);
        if(replay.rows[0])return replay.rows[0];
        throw new WhatsAppAdminError(409,'human_takeover_or_request_conflict');
      }
      await input.pool.query(`UPDATE security.whatsapp_threads SET last_human_reply_at=clock_timestamp()
        WHERE tenant_id=$1 AND thread_id=$2`,[actor.tenantId,threadId]);
      await audit(actor.tenantId,null,actor.actorId,'human.reply.queued',{threadId});return result.rows[0];
    },
    async analytics(auth:string|undefined,id:string){
      const actor=await read(auth);if(!isId(id))throw new WhatsAppAdminError(422,'invalid_channel');
      const result=await input.pool.query(`SELECT count(*) FILTER(WHERE direction='inbound')::int AS "inboundMessages",
        count(*) FILTER(WHERE direction='outbound')::int AS "outboundMessages",
        count(*) FILTER(WHERE delivery_state='failed')::int AS "failedMessages",
        count(*) FILTER(WHERE delivery_state='delivered' OR delivery_state='read')::int AS "deliveredMessages"
        FROM security.whatsapp_messages WHERE tenant_id=$1 AND channel_id=$2`,[actor.tenantId,id]);
      const data=await input.pool.query(`SELECT p.state,count(*)::int AS orders,
        coalesce(sum(p.reviewed_cost_kobo),0)::bigint AS "totalKobo" FROM security.whatsapp_purchase_approvals p
        JOIN security.whatsapp_threads t ON t.tenant_id=p.tenant_id AND t.thread_id=p.thread_id
        WHERE p.tenant_id=$1 AND t.channel_id=$2 GROUP BY p.state ORDER BY p.state`,[actor.tenantId,id]);
      const sales=await input.pool.query(`SELECT count(*)::int AS "deliveredOrders",
        coalesce(sum(p.reviewed_cost_kobo),0)::bigint AS "deliveredSalesKobo"
        FROM security.whatsapp_purchase_approvals p JOIN security.whatsapp_threads t
        ON t.tenant_id=p.tenant_id AND t.thread_id=p.thread_id
        JOIN gb_wallet.ngn_data_orders o ON o.tenant_id=p.tenant_id AND o.user_id=p.user_id AND o.operation_id=p.operation_id
        WHERE p.tenant_id=$1 AND t.channel_id=$2 AND o.state='delivered'`,[actor.tenantId,id]);
      const jobs=await input.pool.query(`SELECT
        count(*) FILTER(WHERE state='pending')::int AS "pendingJobs",
        count(*) FILTER(WHERE state='pending' AND available_at<=clock_timestamp())::int AS "overdueJobs",
        count(*) FILTER(WHERE state='failed')::int AS "failedJobs",
        count(*) FILTER(WHERE state='uncertain')::int AS "uncertainJobs",
        (SELECT last_error_code FROM security.whatsapp_jobs latest
          WHERE latest.tenant_id=$1 AND latest.channel_id=$2 AND latest.last_error_code IS NOT NULL
          ORDER BY latest.created_at DESC LIMIT 1) AS "lastJobError"
        FROM security.whatsapp_jobs WHERE tenant_id=$1 AND channel_id=$2`,[actor.tenantId,id]);
      return {...result.rows[0],...jobs.rows[0],costsVerified:false,salesVerified:true,
        providerBilling:'Linked-device transport has no Meta Cloud API billing feed',
        dataSales:data.rows,deliveredOrders:sales.rows[0]?.deliveredOrders??0,
        deliveredSalesKobo:Number(sales.rows[0]?.deliveredSalesKobo??0)};
    },
    async templates(auth:string|undefined,id:string){
      const actor=await read(auth);if(!isId(id))throw new WhatsAppAdminError(422,'invalid_channel');
      const result=await input.pool.query(`SELECT template_id AS "templateId",name,body,language,enabled,
        updated_at AS "updatedAt" FROM security.whatsapp_templates
        WHERE tenant_id=$1 AND channel_id=$2 ORDER BY name LIMIT 100`,[actor.tenantId,id]);
      return {source:'Masanawa linked-device templates',templates:result.rows};
    },
    async saveTemplate(auth:string|undefined,id:string,name:string,body:string,language:'auto'|'en'|'ha',enabled:boolean){
      const actor=await write(auth);
      if(!isId(id)||typeof name!=='string'||!name.trim()||name.length>100||typeof body!=='string'||!body.trim()||body.length>4000||
        !['auto','en','ha'].includes(language)||typeof enabled!=='boolean')throw new WhatsAppAdminError(422,'invalid_template');
      const result=await input.pool.query(`INSERT INTO security.whatsapp_templates(tenant_id,channel_id,name,body,language,enabled)
        SELECT $1,channel_id,$3,$4,$5,$6 FROM security.whatsapp_channels WHERE tenant_id=$1 AND channel_id=$2
        ON CONFLICT(tenant_id,channel_id,name) DO UPDATE SET body=EXCLUDED.body,language=EXCLUDED.language,
          enabled=EXCLUDED.enabled,updated_at=clock_timestamp() RETURNING template_id AS "templateId"`,
        [actor.tenantId,id,name.trim(),body.trim(),language,enabled]);
      if(!result.rows[0])throw new WhatsAppAdminError(404,'channel_not_found');
      await audit(actor.tenantId,id,actor.actorId,'template.saved',{name:name.trim()});return result.rows[0];
    },
    async auditEvents(auth:string|undefined,id:string){
      const actor=await read(auth);if(!isId(id))throw new WhatsAppAdminError(422,'invalid_channel');
      const result=await input.pool.query(`SELECT action,actor_id AS "actorId",metadata,created_at AS "createdAt"
        FROM security.whatsapp_audit WHERE tenant_id=$1 AND (channel_id=$2 OR metadata->>'threadId' IN
          (SELECT thread_id::text FROM security.whatsapp_threads WHERE tenant_id=$1 AND channel_id=$2))
        ORDER BY created_at DESC LIMIT 100`,[actor.tenantId,id]);
      return result.rows;
    },
    async test(auth:string|undefined,id:string,action:WhatsAppPermission){
      const actor=await read(auth);const config=await this.config(auth,id);
      const channel=await input.pool.query(`SELECT enabled,state FROM security.whatsapp_channels
        WHERE tenant_id=$1 AND channel_id=$2`,[actor.tenantId,id]);
      const verdict=evaluateWhatsAppAction(action,{enabled:channel.rows[0]?.enabled===true,connected:channel.rows[0]?.state==='connected',humanTakeover:false,level:config.roleLevel,
        permissions:config.permissions,accountLinked:false,accountSessionVerified:false,purchaseConfirmed:false});
      await audit(actor.tenantId,id,actor.actorId,'assistant.test',{action,result:verdict.reason});
      return {mode:'simulation',providerDispatch:false,walletMutation:false,action,...verdict};
    },
  };
}
