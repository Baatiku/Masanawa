import { createHmac, timingSafeEqual } from 'node:crypto';
import type { Pool } from '@masanawa/postgres';

export class WhatsAppWebhookError extends Error {
  constructor(readonly statusCode:number,readonly code:string){super(code);}
}

export function verifyMetaWebhookSignature(raw:Buffer,signature:string|undefined,appSecret:string|undefined):boolean {
  if(!appSecret||!/^sha256=[a-f0-9]{64}$/.test(signature??''))return false;
  const supplied=Buffer.from(signature!.slice(7),'hex');
  const expected=createHmac('sha256',appSecret).update(raw).digest();
  return supplied.length===expected.length&&timingSafeEqual(supplied,expected);
}

export function verifyMetaChallenge(input:{mode?:string|undefined;token?:string|undefined;challenge?:string|undefined},expected:string|undefined):string|null {
  if(!expected||input.mode!=='subscribe'||!input.token||!input.challenge||input.challenge.length>256)return null;
  const a=Buffer.from(input.token),b=Buffer.from(expected);
  return a.length===b.length&&timingSafeEqual(a,b)?input.challenge:null;
}

type MetaMessage={id?:unknown;from?:unknown;type?:unknown;text?:{body?:unknown};audio?:{id?:unknown};image?:{id?:unknown};document?:{id?:unknown};interactive?:unknown};
type MetaStatus={id?:unknown;status?:unknown;errors?:{code?:number}[]};
type MetaValue={metadata?:{phone_number_id?:unknown};contacts?:{wa_id?:unknown;profile?:{name?:unknown}}[];messages?:MetaMessage[];statuses?:MetaStatus[]};

export function createWhatsAppWebhook(input:{pool:Pick<Pool,'query'>;appSecret?:string|undefined;verifyToken?:string|undefined}) {
  async function ingest(signature:string|undefined,raw:Buffer){
    if(!input.appSecret)throw new WhatsAppWebhookError(503,'meta_webhook_not_configured');
    if(raw.length>262144)throw new WhatsAppWebhookError(413,'webhook_too_large');
    if(!verifyMetaWebhookSignature(raw,signature,input.appSecret))throw new WhatsAppWebhookError(401,'invalid_meta_signature');
    let payload:unknown;
    try{payload=JSON.parse(raw.toString('utf8'));}catch{throw new WhatsAppWebhookError(400,'invalid_webhook_json');}
    const envelope=payload as {object?:unknown;entry?:{changes?:{field?:unknown;value?:MetaValue}[]}[]};
    if(!envelope||envelope.object!=='whatsapp_business_account'||!Array.isArray(envelope.entry))throw new WhatsAppWebhookError(422,'invalid_meta_payload');
    // Never acknowledge a truncated callback: Meta would consider omitted
    // messages delivered and would not re-send them.
    if(envelope.entry.length>20)throw new WhatsAppWebhookError(413,'webhook_batch_too_large');
    let eventCount=0;
    for(const entry of envelope.entry){
      if(!entry||!Array.isArray(entry.changes)||entry.changes.length>20)throw new WhatsAppWebhookError(422,'invalid_meta_changes');
      for(const change of entry.changes){
        const value=change?.value;
        if(change?.field!=='messages'||!value)continue;
        if((value.messages!==undefined&&!Array.isArray(value.messages))||
          (value.statuses!==undefined&&!Array.isArray(value.statuses))||
          (value.contacts!==undefined&&!Array.isArray(value.contacts)))throw new WhatsAppWebhookError(422,'invalid_meta_events');
        eventCount+=(value.messages?.length??0)+(value.statuses?.length??0);
        if(eventCount>500)throw new WhatsAppWebhookError(413,'webhook_batch_too_large');
      }
    }
    let accepted=0,duplicates=0;
    for(const entry of envelope.entry)for(const change of entry.changes??[]){
      if(change.field!=='messages'||!change.value)continue;
      const value=change.value,phoneId=value.metadata?.phone_number_id;
      if(typeof phoneId!=='string'||!/^[0-9]{5,32}$/.test(phoneId))continue;
      const channelResult=await input.pool.query(`SELECT tenant_id,channel_id,enabled,state
        FROM security.whatsapp_channels WHERE phone_number_id=$1`,[phoneId]);
      const channel=channelResult.rows[0] as {tenant_id:string;channel_id:string;enabled:boolean;state:string}|undefined;
      if(!channel)continue;
      await input.pool.query(`UPDATE security.whatsapp_channels SET last_webhook_at=clock_timestamp()
        WHERE channel_id=$1`,[channel.channel_id]);
      for(const status of value.statuses??[]){
        if(typeof status.id!=='string'||!['sent','delivered','read','failed'].includes(String(status.status)))continue;
        await input.pool.query(`UPDATE security.whatsapp_messages SET delivery_state=$3,
          error_code=CASE WHEN $3='failed' THEN $4 ELSE error_code END
          WHERE tenant_id=$1 AND provider_message_id=$2 AND channel_id=$5
          AND (delivery_state NOT IN ('read','failed') OR delivery_state=$3)
          AND ($3='failed' OR CASE delivery_state WHEN 'read' THEN 4 WHEN 'delivered' THEN 3
            WHEN 'sent' THEN 2 ELSE 0 END <= CASE $3 WHEN 'read' THEN 4 WHEN 'delivered' THEN 3 ELSE 2 END)`,[
            channel.tenant_id,status.id,status.status,status.errors?.[0]?.code?.toString()??null,channel.channel_id,
          ]);
        accepted++;
      }
      for(const msg of value.messages??[]){
        if(typeof msg.id!=='string'||msg.id.length>255||typeof msg.from!=='string'||!/^[0-9]{5,32}$/.test(msg.from))continue;
        const name=value.contacts?.find(c=>c.wa_id===msg.from)?.profile?.name;
        const kind=['text','audio','image','document','interactive'].includes(String(msg.type))?String(msg.type):'unsupported';
        const body=kind==='text'&&typeof msg.text?.body==='string'?msg.text.body.slice(0,4000):null;
        const mediaId=kind==='audio'?msg.audio?.id:kind==='image'?msg.image?.id:kind==='document'?msg.document?.id:null;
        const thread=await input.pool.query(`INSERT INTO security.whatsapp_threads(tenant_id,channel_id,customer_wa_id,customer_name)
          VALUES($1,$2,$3,$4) ON CONFLICT(tenant_id,channel_id,customer_wa_id)
          DO UPDATE SET customer_name=EXCLUDED.customer_name RETURNING thread_id AS "threadId",mode`,[
            channel.tenant_id,channel.channel_id,msg.from,typeof name==='string'?name.slice(0,120):'',
          ]);
        const threadId=thread.rows[0]?.threadId as string;
        const saved=await input.pool.query(`INSERT INTO security.whatsapp_messages
          (tenant_id,thread_id,channel_id,provider_message_id,direction,kind,body,media_id)
          VALUES($1,$2,$3,$4,'inbound',$5,$6,$7)
          ON CONFLICT DO NOTHING RETURNING message_id AS "messageId"`,[
            channel.tenant_id,threadId,channel.channel_id,msg.id,kind,body,typeof mediaId==='string'?mediaId:null,
          ]);
        if(!saved.rows.length){duplicates++;continue;}
        await input.pool.query(`UPDATE security.whatsapp_threads SET unread_count=unread_count+1,
          last_message_at=clock_timestamp() WHERE tenant_id=$1 AND thread_id=$2`,[channel.tenant_id,threadId]);
        // Voice-note transcription is consent and provider dependent; unsupported
        // media remains visible to the human inbox without invented transcripts.
        if(kind==='text'&&body&&channel.enabled&&channel.state==='connected'&&thread.rows[0]?.mode==='ai'){
          await input.pool.query(`INSERT INTO security.whatsapp_jobs(tenant_id,channel_id,message_id,kind)
            VALUES($1,$2,$3,'reply') ON CONFLICT DO NOTHING`,[channel.tenant_id,channel.channel_id,saved.rows[0]!.messageId]);
        }
        accepted++;
      }
    }
    return {accepted:true,processed:accepted,duplicates};
  }
  return {ingest,verify:(query:{mode?:string|undefined;token?:string|undefined;challenge?:string|undefined})=>verifyMetaChallenge(query,input.verifyToken)};
}
