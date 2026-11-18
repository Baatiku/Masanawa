import { createCipheriv, createDecipheriv, createHash, randomBytes } from 'node:crypto';
import type { Pool } from '@masanawa/postgres';
import type { OpsAdminDashboardService } from './admin_dashboard.js';
import { defaultWhatsAppPermissions, evaluateWhatsAppAction, validateWhatsAppPermissions, type WhatsAppPermission, type WhatsAppRoleLevel } from './whatsapp_policy.js';

export class WhatsAppAdminError extends Error {
  constructor(readonly statusCode:number,readonly code:string){ super(code); }
}

type Config = {
  name:string; personality:string; instructions:string; greeting:string; language:'auto'|'en'|'ha';
  roleLevel:WhatsAppRoleLevel; permissions:WhatsAppPermission[]; personaId:string|null; voiceId:string|null;
  textReplies:boolean; voiceReplies:boolean; transcribeVoice:boolean;
  workingHours:{timezone:string;days:number[];start:string;end:string}; escalationKeywords:string[];
};
type Input = {
  pool:Pick<Pool,'query'>;
  authorize:OpsAdminDashboardService['authorize'];
  env:Readonly<Record<string,string|undefined>>;
  fetch?:typeof fetch;
};
const isId = (s:string) => /^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(s);
const digest = (s:string) => createHash('sha256').update(s).digest('hex');
const graphVersion='v27.0';

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
    ['auto','en','ha'].includes(String(c.language))&&
    validateWhatsAppPermissions(Number(c.roleLevel),c.permissions)&&
    (c.personaId===null||(typeof c.personaId==='string'&&/^[A-Za-z0-9_-]{1,128}$/.test(c.personaId)))&&
    (c.voiceId===null||(typeof c.voiceId==='string'&&/^voice_[A-Za-z0-9_-]{1,160}$/.test(c.voiceId)))&&
    ['textReplies','voiceReplies','transcribeVoice'].every(k=>typeof c[k]==='boolean')&&
    !!hours&&hours.timezone==='Africa/Lagos'&&Array.isArray(hours.days)&&hours.days.length<=7&&
    new Set(hours.days).size===hours.days.length&&hours.days.every(d=>Number.isInteger(d)&&d>=0&&d<=6)&&
    typeof hours.start==='string'&&/^([01]\d|2[0-3]):[0-5]\d$/.test(hours.start)&&
    typeof hours.end==='string'&&/^([01]\d|2[0-3]):[0-5]\d$/.test(hours.end)&&
    Array.isArray(c.escalationKeywords)&&c.escalationKeywords.length<=20&&
    c.escalationKeywords.every(k=>typeof k==='string'&&k.length>=1&&k.length<=60);
}

export function createWhatsAppAdmin(input:Input){
  const call=input.fetch??fetch;
  const read=(auth:string|undefined)=>input.authorize({authorizationHeader:auth,capability:'whatsapp.read'});
  const write=(auth:string|undefined)=>input.authorize({authorizationHeader:auth,capability:'whatsapp.write'});
  const configured=()=>Boolean(input.env.MASANAWA_META_APP_ID&&input.env.MASANAWA_META_APP_SECRET&&input.env.MASANAWA_META_EMBEDDED_CONFIG_ID&&input.env.MASANAWA_WHATSAPP_TOKEN_KEY);
  const audit=async(tenant:string,id:string|null,actor:string,action:string,metadata:Record<string,unknown>={})=>{
    await input.pool.query('INSERT INTO security.whatsapp_audit(tenant_id,channel_id,actor_id,action,metadata) VALUES($1,$2,$3,$4,$5::jsonb)',[tenant,id,actor,action,JSON.stringify(metadata)]);
  };
  async function graph(path:string,token:string,method:'GET'|'POST'='GET'){
    if(!/^\/[A-Za-z0-9_/?=&.,-]+$/.test(path))throw new WhatsAppAdminError(422,'invalid_graph_path');
    let response:Response;
    try{response=await call(`https://graph.facebook.com/${graphVersion}${path}`,{
      method,headers:{Authorization:`Bearer ${token}`},redirect:'manual',signal:AbortSignal.timeout(12000),
    });}catch{throw new WhatsAppAdminError(503,'meta_unreachable');}
    if(!response.ok)throw new WhatsAppAdminError(502,'meta_verification_failed');
    return await response.json() as Record<string,unknown>;
  }
  return {
    async list(auth:string|undefined){
      const actor=await read(auth);
      const rows=await input.pool.query(`SELECT c.channel_id AS "channelId",c.waba_id AS "wabaId",c.phone_number_id AS "phoneNumberId",
        c.display_phone AS "displayPhone",c.verified_name AS "verifiedName",c.state,c.enabled,c.last_webhook_at AS "lastWebhookAt",
        c.last_error_code AS "lastErrorCode",c.revision::int AS "revision",a.name AS "assistantName",a.role_level AS "roleLevel"
        FROM security.whatsapp_channels c JOIN security.whatsapp_assistants a USING(tenant_id,channel_id)
        WHERE c.tenant_id=$1 ORDER BY c.created_at DESC LIMIT 100`,[actor.tenantId]);
      return {channels:rows.rows,metaConfigured:configured(),graphVersion,qrPairingSupported:false,
        onboarding:'Meta Embedded Signup with official phone verification. Ordinary WhatsApp Web QR linking is not a Cloud API connection method.'};
    },
    async start(auth:string|undefined){
      const actor=await write(auth);
      if(!configured())throw new WhatsAppAdminError(503,'meta_embedded_signup_not_configured');
      const state=randomBytes(24).toString('base64url');
      await input.pool.query(`INSERT INTO security.whatsapp_onboarding(state_hash,tenant_id,actor_id,expires_at)
        VALUES($1,$2,$3,clock_timestamp()+interval '10 minutes')`,[digest(state),actor.tenantId,actor.actorId]);
      return {state,appId:input.env.MASANAWA_META_APP_ID,configId:input.env.MASANAWA_META_EMBEDDED_CONFIG_ID,graphVersion};
    },
    async finish(auth:string|undefined,p:{state:string;code:string;wabaId:string;phoneNumberId:string}){
      const actor=await write(auth);
      if(!configured())throw new WhatsAppAdminError(503,'meta_embedded_signup_not_configured');
      if(!/^[A-Za-z0-9_-]{25,150}$/.test(p.state)||typeof p.code!=='string'||p.code.length>2048||p.code.length<10||
         !/^[0-9]{5,32}$/.test(p.wabaId)||!/^[0-9]{5,32}$/.test(p.phoneNumberId))throw new WhatsAppAdminError(422,'invalid_onboarding_details');
      // Consume a one-time state before any remote call. No replay with a different WABA.
      const claim=await input.pool.query(`UPDATE security.whatsapp_onboarding SET consumed_at=clock_timestamp()
        WHERE state_hash=$1 AND tenant_id=$2 AND actor_id=$3 AND consumed_at IS NULL AND expires_at>clock_timestamp()
        RETURNING state_hash`,[digest(p.state),actor.tenantId,actor.actorId]);
      if(!claim.rows.length)throw new WhatsAppAdminError(409,'onboarding_state_expired');
      const exchange=new URLSearchParams({client_id:input.env.MASANAWA_META_APP_ID!,client_secret:input.env.MASANAWA_META_APP_SECRET!,code:p.code});
      let response:Response;
      try{response=await call(`https://graph.facebook.com/${graphVersion}/oauth/access_token?${exchange}`,{redirect:'manual',signal:AbortSignal.timeout(12000)});}
      catch{throw new WhatsAppAdminError(503,'meta_oauth_unreachable');}
      if(!response.ok)throw new WhatsAppAdminError(502,'meta_oauth_exchange_failed');
      const grant=await response.json() as {access_token?:unknown};
      if(typeof grant.access_token!=='string'||!grant.access_token)throw new WhatsAppAdminError(502,'meta_token_missing');
      const token=grant.access_token;
      const catalogue=await graph(`/${p.wabaId}/phone_numbers?fields=id,display_phone_number,verified_name`,token);
      const phone=Array.isArray(catalogue.data)?catalogue.data.find(v=>v&&typeof v==='object'&&(v as {id?:unknown}).id===p.phoneNumberId) as {display_phone_number?:string;verified_name?:string}|undefined:undefined;
      if(!phone||!phone.display_phone_number)throw new WhatsAppAdminError(403,'phone_not_in_authorized_waba');
      // Subscription is required for inbound messages and delivery receipts.
      let subscribed=true;
      try{await graph(`/${p.wabaId}/subscribed_apps`,token,'POST');}catch{subscribed=false;}
      const encrypted=encryptWhatsAppToken(token,input.env.MASANAWA_WHATSAPP_TOKEN_KEY!);
      const created=await input.pool.query(`INSERT INTO security.whatsapp_channels
        (tenant_id,waba_id,phone_number_id,display_phone,verified_name,token_ciphertext,state,enabled,last_error_code)
        VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9)
        ON CONFLICT(phone_number_id) DO UPDATE SET waba_id=EXCLUDED.waba_id,display_phone=EXCLUDED.display_phone,
          verified_name=EXCLUDED.verified_name,token_ciphertext=EXCLUDED.token_ciphertext,state=EXCLUDED.state,
          enabled=EXCLUDED.enabled,last_error_code=EXCLUDED.last_error_code,revision=security.whatsapp_channels.revision+1,
          updated_at=clock_timestamp() WHERE security.whatsapp_channels.tenant_id=EXCLUDED.tenant_id
        RETURNING channel_id AS "channelId",state,revision::int`,[
          actor.tenantId,p.wabaId,p.phoneNumberId,phone.display_phone_number,phone.verified_name??'',encrypted,
          subscribed?'connected':'degraded',false,subscribed?null:'meta_subscription_unverified',
        ]);
      const channel=created.rows[0];
      if(!channel)throw new WhatsAppAdminError(409,'phone_owned_by_another_tenant');
      await input.pool.query(`INSERT INTO security.whatsapp_assistants(tenant_id,channel_id)
        VALUES($1,$2) ON CONFLICT DO NOTHING`,[actor.tenantId,channel.channelId]);
      await audit(actor.tenantId,channel.channelId,actor.actorId,'channel.onboarded',{subscribed,phoneNumberId:p.phoneNumberId});
      return channel;
    },
    async config(auth:string|undefined,id:string){
      const actor=await read(auth);if(!isId(id))throw new WhatsAppAdminError(422,'invalid_channel');
      const rows=await input.pool.query(`SELECT a.name,a.personality,a.instructions,a.greeting,a.language,a.role_level AS "roleLevel",
        a.permissions,a.persona_id AS "personaId",a.voice_id AS "voiceId",a.text_replies AS "textReplies",
        a.voice_replies AS "voiceReplies",a.transcribe_voice AS "transcribeVoice",a.working_hours AS "workingHours",
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
        transcribe_voice=$14,working_hours=$15::jsonb,escalation_keywords=$16::jsonb,revision=revision+1,updated_at=clock_timestamp()
        WHERE tenant_id=$1 AND channel_id=$2 AND revision=$17 RETURNING revision::int`,[
          actor.tenantId,id,config.name.trim(),config.personality,config.instructions,config.greeting,config.language,
          config.roleLevel,JSON.stringify(config.permissions),config.personaId,config.voiceId,config.textReplies,
          config.voiceReplies,config.transcribeVoice,JSON.stringify(config.workingHours),JSON.stringify(config.escalationKeywords),expectedRevision,
        ]);
      if(!rows.rows.length)throw new WhatsAppAdminError(409,'assistant_revision_changed');
      await audit(actor.tenantId,id,actor.actorId,'assistant.updated',{revision:rows.rows[0]!.revision,roleLevel:config.roleLevel,permissions:config.permissions});
      return rows.rows[0];
    },
    async change(auth:string|undefined,id:string,action:'enable'|'disable'|'disconnect',expectedRevision:number){
      const actor=await write(auth);
      if(!isId(id)||!['enable','disable','disconnect'].includes(action)||!Number.isInteger(expectedRevision)||expectedRevision<1)throw new WhatsAppAdminError(422,'invalid_channel_action');
      const rows=await input.pool.query(`UPDATE security.whatsapp_channels SET
        enabled=CASE WHEN $3='enable' THEN true ELSE false END,
        state=CASE WHEN $3='disconnect' THEN 'disconnected' ELSE state END,
        token_ciphertext=CASE WHEN $3='disconnect' THEN '\\x'::bytea ELSE token_ciphertext END,
        revision=revision+1,updated_at=clock_timestamp()
        WHERE tenant_id=$1 AND channel_id=$2 AND revision=$4 AND ($3<>'enable' OR state='connected')
        RETURNING state,enabled,revision::int`,[actor.tenantId,id,action,expectedRevision]);
      if(!rows.rows.length)throw new WhatsAppAdminError(409,'channel_revision_changed_or_unhealthy');
      await audit(actor.tenantId,id,actor.actorId,`channel.${action}`);
      return rows.rows[0];
    },
    async threads(auth:string|undefined,id:string){
      const actor=await read(auth);if(!isId(id))throw new WhatsAppAdminError(422,'invalid_channel');
      const result=await input.pool.query(`SELECT t.thread_id AS "threadId",t.customer_wa_id AS "customerWaId",
        t.customer_name AS "customerName",t.mode,t.assigned_operator AS "assignedOperator",
        t.unread_count AS "unreadCount",t.last_message_at AS "lastMessageAt"
        FROM security.whatsapp_threads t JOIN security.whatsapp_channels c USING(tenant_id,channel_id)
        WHERE t.tenant_id=$1 AND t.channel_id=$2 ORDER BY t.last_message_at DESC LIMIT 100`,[actor.tenantId,id]);return result.rows;
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
      await audit(actor.tenantId,null,actor.actorId,'human.reply.queued',{threadId});return result.rows[0];
    },
    async analytics(auth:string|undefined,id:string){
      const actor=await read(auth);if(!isId(id))throw new WhatsAppAdminError(422,'invalid_channel');
      const result=await input.pool.query(`SELECT count(*) FILTER(WHERE direction='inbound')::int AS "inboundMessages",
        count(*) FILTER(WHERE direction='outbound')::int AS "outboundMessages",
        count(*) FILTER(WHERE delivery_state='failed')::int AS "failedMessages",
        count(*) FILTER(WHERE delivery_state='delivered' OR delivery_state='read')::int AS "deliveredMessages"
        FROM security.whatsapp_messages WHERE tenant_id=$1 AND channel_id=$2`,[actor.tenantId,id]);
      return { ...result.rows[0],costsVerified:false,salesVerified:false,providerBilling:'Not calculated without official Meta cost records',dataSales:[] };
    },
    async templates(auth:string|undefined,id:string){
      const actor=await read(auth);if(!isId(id))throw new WhatsAppAdminError(422,'invalid_channel');
      const result=await input.pool.query(`SELECT waba_id,token_ciphertext FROM security.whatsapp_channels
        WHERE tenant_id=$1 AND channel_id=$2 AND state<>'disconnected'`,[actor.tenantId,id]);
      const channel=result.rows[0] as {waba_id:string;token_ciphertext:Buffer}|undefined;
      if(!channel)throw new WhatsAppAdminError(404,'channel_not_connected');
      let token:string;try{token=decryptWhatsAppToken(channel.token_ciphertext,input.env.MASANAWA_WHATSAPP_TOKEN_KEY??'');}
      catch{throw new WhatsAppAdminError(503,'channel_token_unavailable');}
      const provider=await graph(`/${channel.waba_id}/message_templates?fields=name,status,category,language&limit=100`,token);
      const templates=Array.isArray(provider.data)?provider.data.filter(item=>item&&typeof item==='object').slice(0,100).map(item=>{
        const t=item as Record<string,unknown>;
        return {name:String(t.name??''),status:String(t.status??''),category:String(t.category??''),language:String(t.language??'')};
      }):[];
      return {source:'Meta Graph API',templates,sendOutsideWindowRequiresApprovedTemplate:true};
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
