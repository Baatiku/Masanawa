import {createCipheriv,createDecipheriv,createHash,randomBytes,randomUUID} from 'node:crypto';
import makeWASocket,{
  Browsers,BufferJSON,DisconnectReason,initAuthCreds,jidNormalizedUser,proto,
  downloadMediaMessage,
  type AuthenticationState,type SignalDataTypeMap,type SignalDataSet,type WASocket,type WAMessage,
} from '@whiskeysockets/baileys';
import type {Pool} from '@masanawa/postgres';
import {pino} from 'pino';
import {toWhatsAppOpus,transcribeWhatsAppAudio} from './whatsapp_media.js';
import {withGeminiKeyPool} from './whatsapp_live.js';
import {createWhatsAppCallingSocket,createWhatsAppCallHandler} from './whatsapp_calls.js';

type Db=Pick<Pool,'query'>;
type Channel={tenant_id:string;channel_id:string;state:string;enabled:boolean;lease_owner:string|null;call_target_channel_id:string|null};
type Slot={socket:WASocket;tenantId:string;owner:string;channelId:string;connected:boolean;botMessageIds:Set<string>;
  flushAuth:()=>Promise<void>;calls?:ReturnType<typeof createWhatsAppCallHandler>};
const linkedJid=(jid:string)=>/^[0-9]{5,32}@(s\.whatsapp\.net|lid)$/.test(jid);

/** Linked-device Baileys exposes call signaling, but NOT a supported audio
 * answer/dial media stream. Record genuine events for the owner's inbox without
 * faking answered calls or promising a callable AI line. */
export async function recordLinkedCallEvent(pool:Db,identity:{tenantId:string;channelId:string},
  call:{id:string;status:string;isVideo?:boolean;isGroup?:boolean}):Promise<void>{
  if(call.isGroup||!call.id||!['offer','ringing','accept','reject','terminate','timeout'].includes(call.status))return;
  const reference=createHash('sha256').update(identity.channelId+'|'+call.id).digest('hex').slice(0,16);
  await pool.query(`INSERT INTO security.whatsapp_audit
    (tenant_id,channel_id,actor_id,action,metadata) VALUES($1,$2,'linked-device', $3,$4::jsonb)`,
    [identity.tenantId,identity.channelId,call.status==='offer'?'call.incoming':'call.signaling',
      JSON.stringify({reference,status:call.status,video:call.isVideo===true})]);
}

export function encryptLinkedSecret(text:string,base64Key:string):Buffer {
  const key=Buffer.from(base64Key,'base64');if(key.length!==32)throw Error('invalid_whatsapp_session_key');
  const iv=randomBytes(12),cipher=createCipheriv('aes-256-gcm',key,iv);
  return Buffer.concat([iv,cipher.update(text,'utf8'),cipher.final(),cipher.getAuthTag()]);
}
export function decryptLinkedSecret(value:Buffer,base64Key:string):string {
  const key=Buffer.from(base64Key,'base64');if(key.length!==32||value.length<29)throw Error('invalid_whatsapp_session_key');
  const cipher=createDecipheriv('aes-256-gcm',key,value.subarray(0,12));
  cipher.setAuthTag(value.subarray(-16));
  return Buffer.concat([cipher.update(value.subarray(12,-16)),cipher.final()]).toString('utf8');
}

/** Signal key writes are serialized; every stored row is individually encrypted. */
export async function createLinkedAuthState(pool:Db,tenantId:string,channelId:string,key:string,leaseOwner:string){
  let pending:Promise<void>=Promise.resolve();
  const serial=(work:()=>Promise<void>)=>{
    const result=pending.catch(()=>undefined).then(work);pending=result;return result;
  };
  async function read(type:string,ids:string[]){
    await pending;
    if(!ids.length)return [] as {key_id:string;ciphertext:Buffer}[];
    const r=await pool.query(`SELECT key_id,ciphertext FROM security.whatsapp_auth_keys
      WHERE tenant_id=$1 AND channel_id=$2 AND key_type=$3 AND key_id=ANY($4::text[])`,[tenantId,channelId,type,ids]);
    return r.rows as {key_id:string;ciphertext:Buffer}[];
  }
  const row=(await read('creds',['main']))[0];
  const creds=row?JSON.parse(decryptLinkedSecret(row.ciphertext,key),BufferJSON.reviver) as AuthenticationState['creds']:initAuthCreds();
  const state:AuthenticationState={creds,keys:{
    async get<T extends keyof SignalDataTypeMap>(type:T,ids:string[]){
      const values={} as {[id:string]:SignalDataTypeMap[T]};
      for(const row of await read(type,ids)){
        let value=JSON.parse(decryptLinkedSecret(row.ciphertext,key),BufferJSON.reviver) as SignalDataTypeMap[T];
        if(type==='app-state-sync-key')value=proto.Message.AppStateSyncKeyData.fromObject(value as object) as unknown as SignalDataTypeMap[T];
        values[row.key_id]=value;
      }
      return values;
    },
    async set(data:SignalDataSet){
      await serial(async()=>{
        for(const [type,values] of Object.entries(data))for(const [id,value] of Object.entries(values??{})){
          if(value===null||value===undefined)await pool.query(`DELETE FROM security.whatsapp_auth_keys
            WHERE tenant_id=$1 AND channel_id=$2 AND key_type=$3 AND key_id=$4
            AND EXISTS(SELECT 1 FROM security.whatsapp_channels WHERE tenant_id=$1 AND channel_id=$2
              AND lease_owner=$5 AND state<>'disconnected')`,[tenantId,channelId,type,id,leaseOwner]);
          else await pool.query(`INSERT INTO security.whatsapp_auth_keys(tenant_id,channel_id,key_type,key_id,ciphertext)
            SELECT $1,$2,$3,$4,$5 FROM security.whatsapp_channels WHERE tenant_id=$1 AND channel_id=$2
              AND lease_owner=$6 AND state<>'disconnected' ON CONFLICT(tenant_id,channel_id,key_type,key_id)
            DO UPDATE SET ciphertext=EXCLUDED.ciphertext,updated_at=clock_timestamp()`,
            [tenantId,channelId,type,id,encryptLinkedSecret(JSON.stringify(value,BufferJSON.replacer),key),leaseOwner]);
        }
      });
    },
  }};
  const saveCreds=()=>serial(async()=>{
    await pool.query(`INSERT INTO security.whatsapp_auth_keys(tenant_id,channel_id,key_type,key_id,ciphertext)
      SELECT $1,$2,'creds','main',$3 FROM security.whatsapp_channels WHERE tenant_id=$1 AND channel_id=$2
        AND lease_owner=$4 AND state<>'disconnected' ON CONFLICT(tenant_id,channel_id,key_type,key_id)
      DO UPDATE SET ciphertext=EXCLUDED.ciphertext,updated_at=clock_timestamp()`,
      [tenantId,channelId,encryptLinkedSecret(JSON.stringify(creds,BufferJSON.replacer),key),leaseOwner]);
  });
  return {state,saveCreds,flush:()=>pending};
}

function contentOf(msg:WAMessage):{kind:'text'|'audio'|'image'|'document'|'unsupported';body:string|null;mediaId:string|null}{
  const content=msg.message;
  if(content?.ephemeralMessage||content?.viewOnceMessage||content?.viewOnceMessageV2||content?.viewOnceMessageV2Extension)
    return {kind:'unsupported',body:null,mediaId:null};
  if(!content)return {kind:'unsupported',body:null,mediaId:null};
  const text=content.conversation??content.extendedTextMessage?.text;
  if(typeof text==='string')return {kind:'text',body:text.slice(0,4000),mediaId:null};
  if(content.audioMessage)return {kind:'audio',body:null,mediaId:msg.key.id??null};
  if(content.imageMessage)return {kind:'image',body:content.imageMessage.caption?.slice(0,4000)??null,mediaId:msg.key.id??null};
  if(content.documentMessage)return {kind:'document',body:content.documentMessage.fileName?.slice(0,255)??null,mediaId:msg.key.id??null};
  return {kind:'unsupported',body:null,mediaId:null};
}

/** Offline catch-up can use `append`; limit it to recent messages and dedupe in PostgreSQL. */
export function eligibleWhatsAppUpsert(type:'notify'|'append',messageTimestamp:number,nowMs=Date.now()):boolean{
  if(type==='notify')return true;
  const now=Math.floor(nowMs/1000);
  return Number.isFinite(messageTimestamp)&&messageTimestamp>=now-120&&messageTimestamp<=now+30;
}

/** Import WhatsApp-supplied history as context ONLY. Historical messages never
 * enqueue AI replies, change unread counts or grant wallet/account authority.
 * A linked device receives only the subset of history WhatsApp chooses to sync.
 */
export async function persistLinkedHistory(pool:Db,identity:{tenantId:string;channelId:string;owner:string},
  messages:readonly WAMessage[]):Promise<{imported:number;ignored:number}>{
  let imported=0,ignored=0;
  for(const msg of messages){
    const jid=msg.key.remoteJid;
    const key=msg.key.id;
    const timestamp=Number(msg.messageTimestamp?.toString()??0);
    // Exclude group/status messages, ephemeral and view-once content from durable AI memory.
    if(!jid||!linkedJid(jid)||!key||key.length>255||!msg.message||
      msg.message.ephemeralMessage||msg.message.viewOnceMessage||msg.message.viewOnceMessageV2||
      !Number.isSafeInteger(timestamp)||timestamp<1262304000||timestamp>Date.now()/1000+300){
      ignored++;continue;
    }
    const {kind,body}=contentOf(msg);
    if(kind==='unsupported'){ignored++;continue;}
    const active=await pool.query(`SELECT 1 FROM security.whatsapp_channels
      WHERE tenant_id=$1 AND channel_id=$2 AND lease_owner=$3 AND state<>'disconnected'`,
      [identity.tenantId,identity.channelId,identity.owner]);
    if(!active.rows.length)break;
    const at=new Date(timestamp*1000);
    const thread=await pool.query(`INSERT INTO security.whatsapp_threads
      (tenant_id,channel_id,customer_wa_id,last_message_at)
      VALUES($1,$2,$3,$4) ON CONFLICT(tenant_id,channel_id,customer_wa_id)
      DO UPDATE SET last_message_at=GREATEST(security.whatsapp_threads.last_message_at,$4)
      RETURNING thread_id AS "threadId"`,[identity.tenantId,identity.channelId,jid,at]);
    const row=await pool.query(`INSERT INTO security.whatsapp_messages
      (tenant_id,thread_id,channel_id,provider_message_id,direction,kind,body,delivery_state,created_at)
      VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9) ON CONFLICT DO NOTHING RETURNING message_id`,
      [identity.tenantId,thread.rows[0]!.threadId,identity.channelId,key,
        msg.key.fromMe?'outbound':'inbound',kind,body,msg.key.fromMe?'sent':'read',at]);
    if(row.rows.length)imported++;else ignored++;
  }
  return {imported,ignored};
}

/** One managed socket per number; leases prevent two Workers owning one session. */
export function createLinkedDeviceManager(input:{pool:Db;sessionKey:string;env?:Readonly<Record<string,string|undefined>>;maxSockets?:number}){
  const sockets=new Map<string,Slot>(),retryAfter=new Map<string,number>();
  const limit=Math.max(1,Math.min(10,input.maxSockets??4));
  const callEnabled=input.env?.MASANAWA_WHATSAPP_CALLS_ENABLED==='true';
  let callInProgress=false;
  function close(channelId:string){
    const slot=sockets.get(channelId);if(!slot)return;
    sockets.delete(channelId);
    void slot.calls?.stop();
    try{slot.socket.end(new Error('whatsapp_socket_replaced'));}catch{/* already closed */}
  }
  async function ingest(slot:Slot,msg:WAMessage){
    if(msg.key.fromMe||!msg.key.id||msg.key.id.length>255)return;
    const jid=msg.key.remoteJid;
    if(!jid||!linkedJid(jid))return; // No groups, status broadcasts or unverified arbitrary JIDs.
    const active=await input.pool.query(`SELECT c.enabled,a.transcribe_voice,a.reply_mode,a.away_after_seconds
      FROM security.whatsapp_channels c
      JOIN security.whatsapp_assistants a USING(tenant_id,channel_id)
      WHERE c.tenant_id=$1 AND c.channel_id=$2 AND c.lease_owner=$3 AND c.state='connected'`,
      [slot.tenantId,slot.channelId,slot.owner]);
    if(!active.rows.length)return;
    const {kind,body,mediaId}=contentOf(msg);
    const name=typeof msg.pushName==='string'?msg.pushName.slice(0,120):'';
    const thread=await input.pool.query(`INSERT INTO security.whatsapp_threads(tenant_id,channel_id,customer_wa_id,customer_name)
      VALUES($1,$2,$3,$4) ON CONFLICT(tenant_id,channel_id,customer_wa_id)
      DO UPDATE SET customer_name=CASE WHEN EXCLUDED.customer_name<>'' THEN EXCLUDED.customer_name
        ELSE security.whatsapp_threads.customer_name END RETURNING thread_id AS "threadId",mode,
          account_match,account_match_checked_at`,
      [slot.tenantId,slot.channelId,jid,name]);
    // A WhatsApp JID can identify a possibly registered contact but is not a
    // wallet principal. Never auto-link, expose identity or authorize spending.
    const lastMatch=thread.rows[0]?.account_match_checked_at?new Date(thread.rows[0].account_match_checked_at).getTime():0;
    if((thread.rows[0]?.account_match==='unknown'||Date.now()-lastMatch>60_000)&&jid.endsWith('@s.whatsapp.net')){
      const phone='+'+jid.split('@')[0];
      const registered=await input.pool.query(`SELECT 1 FROM security.platform_user_profiles p
        JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.user_id AND u.state='active'
        WHERE p.tenant_id=$1 AND p.phone=$2 LIMIT 1`,[slot.tenantId,phone]);
      await input.pool.query(`UPDATE security.whatsapp_threads SET account_match=$3,
        account_match_checked_at=clock_timestamp() WHERE tenant_id=$1 AND thread_id=$2`,
        [slot.tenantId,thread.rows[0]!.threadId,registered.rows.length?'registered':'unregistered']);
    }
    const media=kind==='audio'&&active.rows[0]?.enabled===true&&active.rows[0]?.reply_mode!=='manual'&&
      active.rows[0]?.transcribe_voice===true&&thread.rows[0]?.mode==='ai'?
      encryptLinkedSecret(JSON.stringify(msg,BufferJSON.replacer),input.sessionKey):null;
    const saved=await input.pool.query(`INSERT INTO security.whatsapp_messages
      (tenant_id,thread_id,channel_id,provider_message_id,direction,kind,body,media_id,media_payload_ciphertext)
      VALUES($1,$2,$3,$4,'inbound',$5,$6,$7,$8) ON CONFLICT DO NOTHING RETURNING message_id AS "messageId"`,
      [slot.tenantId,thread.rows[0]!.threadId,slot.channelId,msg.key.id,kind,body,mediaId,media]);
    if(!saved.rows.length)return;
    await input.pool.query(`UPDATE security.whatsapp_threads SET unread_count=unread_count+1,
      last_message_at=clock_timestamp(),last_inbound_at=clock_timestamp()
      WHERE tenant_id=$1 AND thread_id=$2`,[slot.tenantId,thread.rows[0]!.threadId]);
    await input.pool.query(`UPDATE security.whatsapp_channels SET last_message_at=clock_timestamp()
      WHERE tenant_id=$1 AND channel_id=$2`,[slot.tenantId,slot.channelId]);
    if(((kind==='text'&&body)||(kind==='audio'&&media))&&active.rows[0]?.enabled===true&&
      active.rows[0]?.reply_mode!=='manual'&&thread.rows[0]?.mode==='ai')await input.pool.query(`INSERT INTO security.whatsapp_jobs
      (tenant_id,channel_id,message_id,kind,available_at)
      VALUES($1,$2,$3,'reply',clock_timestamp()+($4::int * interval '1 second')) ON CONFLICT DO NOTHING`,
      [slot.tenantId,slot.channelId,saved.rows[0]!.messageId,
        active.rows[0]?.reply_mode==='away'?Number(active.rows[0]?.away_after_seconds??120):0]);
  }
  async function ingestOwnerReply(slot:Slot,msg:WAMessage){
    const jid=msg.key.remoteJid;
    if(!msg.key.fromMe||!msg.key.id||!jid||!linkedJid(jid)||slot.botMessageIds.has(msg.key.id))return;
    // Let the bot's own outbox commit its provider receipt first. A bot echo is
    // not evidence that the human owner is online or answering personally.
    await new Promise(resolve=>setTimeout(resolve,1200));
    if(slot.botMessageIds.has(msg.key.id))return;
    const active=await input.pool.query(`SELECT 1 FROM security.whatsapp_channels
      WHERE tenant_id=$1 AND channel_id=$2 AND lease_owner=$3 AND state='connected'`,
      [slot.tenantId,slot.channelId,slot.owner]);
    if(!active.rows.length)return;
    const known=await input.pool.query(`SELECT 1 FROM security.whatsapp_messages
      WHERE tenant_id=$1 AND channel_id=$2 AND provider_message_id=$3`,[slot.tenantId,slot.channelId,msg.key.id]);
    if(known.rows.length)return;
    const {kind,body,mediaId}=contentOf(msg);
    const thread=await input.pool.query(`INSERT INTO security.whatsapp_threads
      (tenant_id,channel_id,customer_wa_id) VALUES($1,$2,$3)
      ON CONFLICT(tenant_id,channel_id,customer_wa_id) DO UPDATE SET last_message_at=clock_timestamp()
      RETURNING thread_id AS "threadId"`,[slot.tenantId,slot.channelId,jid]);
    const sent=await input.pool.query(`INSERT INTO security.whatsapp_messages
      (tenant_id,thread_id,channel_id,provider_message_id,direction,kind,body,media_id,delivery_state)
      VALUES($1,$2,$3,$4,'outbound',$5,$6,$7,'sent') ON CONFLICT DO NOTHING
      RETURNING created_at AS "createdAt"`,
      [slot.tenantId,thread.rows[0]!.threadId,slot.channelId,msg.key.id,kind,body,mediaId]);
    if(!sent.rows.length)return;
    await input.pool.query(`UPDATE security.whatsapp_threads
      SET last_human_reply_at=$3,last_message_at=$3 WHERE tenant_id=$1 AND thread_id=$2`,
      [slot.tenantId,thread.rows[0]!.threadId,sent.rows[0]!.createdAt]);
    await input.pool.query(`UPDATE security.whatsapp_jobs SET state='completed',last_error_code='owner_replied'
      WHERE tenant_id=$1 AND channel_id=$2 AND state='pending' AND kind='reply'
        AND message_id IN (SELECT m.message_id FROM security.whatsapp_messages m
          WHERE m.tenant_id=$1 AND m.thread_id=$3 AND m.direction='inbound' AND m.created_at<$4)`,
      [slot.tenantId,slot.channelId,thread.rows[0]!.threadId,sent.rows[0]!.createdAt]);
  }
  async function launch(channel:Channel,leaseOwner:string){
    const auth=await createLinkedAuthState(input.pool,channel.tenant_id,channel.channel_id,input.sessionKey,leaseOwner);
    const settings={auth:auth.state,browser:Browsers.ubuntu(channel.call_target_channel_id?'Masanawa Calls':'Masanawa'),
      syncFullHistory:false,markOnlineOnConnect:false,getMessage:async()=>undefined};
    const callSocket=channel.call_target_channel_id?await createWhatsAppCallingSocket(settings):undefined;
    const socket=callSocket??makeWASocket(settings);
    const slot:Slot={socket,tenantId:channel.tenant_id,owner:leaseOwner,channelId:channel.channel_id,connected:false,botMessageIds:new Set(),flushAuth:auth.flush};
    sockets.set(channel.channel_id,slot);
    socket.ev.on('creds.update',update=>{
      Object.assign(auth.state.creds,update);
      void auth.saveCreds().catch(()=>markError(slot,'credentials_persist_failed'));
    });
    socket.ev.on('connection.update',update=>{void (async()=>{
      if(sockets.get(channel.channel_id)!==slot)return;
      if(update.qr){
        await input.pool.query(`UPDATE security.whatsapp_channels SET state='qr_ready',
          qr_ciphertext=$3,qr_expires_at=clock_timestamp()+interval '55 seconds',updated_at=clock_timestamp()
          WHERE tenant_id=$1 AND channel_id=$2 AND lease_owner=$4`,
          [slot.tenantId,slot.channelId,encryptLinkedSecret(update.qr,input.sessionKey),slot.owner]);
      }
      if(update.connection==='open'){
        const jid=jidNormalizedUser(socket.user?.id??'');
        if(!linkedJid(jid)){await markError(slot,'linked_identity_unavailable');return;}
        const result=await input.pool.query(`UPDATE security.whatsapp_channels SET state='connected',linked_jid=$3,
          display_phone=$4,verified_name=$5,qr_ciphertext=NULL,qr_expires_at=NULL,
          last_connected_at=clock_timestamp(),last_error_code=NULL,updated_at=clock_timestamp()
          WHERE tenant_id=$1 AND channel_id=$2 AND lease_owner=$6
            AND ($7::uuid IS NULL OR EXISTS(SELECT 1 FROM security.whatsapp_channels target
              WHERE target.tenant_id=$1 AND target.channel_id=$7 AND target.linked_jid=$3))
          RETURNING channel_id`,
          [slot.tenantId,slot.channelId,jid,jid.split('@')[0],socket.user?.name??'',slot.owner,channel.call_target_channel_id]);
        if(!result.rows.length){
          if(callSocket&&sockets.get(slot.channelId)===slot){
            // A scan from a different number cannot send audio or reuse an existing messaging identity.
            await input.pool.query(`UPDATE security.whatsapp_channels SET state='needs_pairing',enabled=false,
              last_error_code='call_pairing_number_mismatch',qr_ciphertext=NULL,qr_expires_at=NULL
              WHERE tenant_id=$1 AND channel_id=$2 AND lease_owner=$3`,[slot.tenantId,slot.channelId,slot.owner]);
            try{await callSocket.logout();}catch{/* the wrong session is still fenced locally */}
          }
          close(slot.channelId);
          return;
        }
        slot.connected=true;
      }
      if(update.connection==='close'){
        slot.connected=false;
        const status=(update.lastDisconnect?.error as {output?:{statusCode?:number}}|undefined)?.output?.statusCode;
        close(slot.channelId);
        if(status===DisconnectReason.loggedOut){
          await input.pool.query(`DELETE FROM security.whatsapp_auth_keys WHERE tenant_id=$1 AND channel_id=$2`,[slot.tenantId,slot.channelId]);
          await markError(slot,'linked_device_logged_out','needs_pairing');
        }else{
          await markError(slot,`linked_device_disconnected_${status??'unknown'}`,'degraded');
          retryAfter.set(slot.channelId,Date.now()+10000);
        }
      }
    })().catch(()=>markError(slot,'connection_update_failed'));});
    if(callSocket){
      const calls=createWhatsAppCallHandler({pool:input.pool,identity:slot,env:input.env??{},sessionKey:input.sessionKey,
        lookupSession:id=>callSocket.getCall(id),
        acquire:()=>{
          if(callInProgress)return false;
          callInProgress=true;
          return true;
        },release:()=>{callInProgress=false;}});
      slot.calls=calls;
      callSocket.ev.on('call.incoming',session=>{if(slot.connected)calls.session(session);});
      socket.ev.on('call',events=>{if(slot.connected)for(const call of events.slice(0,20))calls.signal(call);});
      return;
    }
    socket.ev.on('messages.upsert',event=>{
      const history:WAMessage[]=[];
      for(const msg of event.messages){
        const messageTime=Number(msg.messageTimestamp?.toString()??0);
        if(!eligibleWhatsAppUpsert(event.type,messageTime)){
          history.push(msg);
          continue;
        }
        if(msg.key.fromMe)void ingestOwnerReply(slot,msg).catch(()=>markError(slot,'owner_reply_persistence_failed'));
        else void ingest(slot,msg).catch(()=>markError(slot,'inbound_persistence_failed'));
      }
      if(history.length)storeHistory(history);
    });
    socket.ev.on('messaging-history.set',event=>storeHistory(event.messages));
    function storeHistory(messages:readonly WAMessage[]){
      if(sockets.get(slot.channelId)!==slot)return;
      // Process sequentially in small asynchronous slices on a 2-GiB pilot;
      // never turn imported old messages into outbound replies.
      void (async()=>{
        let imported=0,ignored=0;
        for(let i=0;i<messages.length;i+=40){
          if(sockets.get(slot.channelId)!==slot)break;
          const result=await persistLinkedHistory(input.pool,
            {tenantId:slot.tenantId,channelId:slot.channelId,owner:slot.owner},
            messages.slice(i,i+40));
          imported+=result.imported;ignored+=result.ignored;
        }
        await input.pool.query(`INSERT INTO security.whatsapp_audit
          (tenant_id,channel_id,actor_id,action,metadata)
          VALUES($1,$2,'linked-device','history.imported',$3::jsonb)`,
          [slot.tenantId,slot.channelId,JSON.stringify({imported,ignored})]);
      })().catch(()=>{
        void input.pool.query(`INSERT INTO security.whatsapp_audit
          (tenant_id,channel_id,actor_id,action,metadata)
          VALUES($1,$2,'linked-device','history.import_failed','{}'::jsonb)`,
          [slot.tenantId,slot.channelId]).catch(()=>undefined);
      });
    }
    socket.ev.on('messages.update',events=>{
      for(const event of events){
        const id=event.key.id;if(!id)return;
        const status=event.update.status;
        const state=status===4?'read':status===3?'delivered':status===2?'sent':null;
        if(!state)continue;
        void input.pool.query(`UPDATE security.whatsapp_messages SET delivery_state=$3
          WHERE tenant_id=$1 AND channel_id=$2 AND provider_message_id=$4 AND delivery_state NOT IN ('read','failed')`,
          [slot.tenantId,slot.channelId,state,id]).catch(()=>undefined);
      }
    });
    socket.ev.on('call',events=>{
      if(sockets.get(slot.channelId)!==slot||!slot.connected)return;
      for(const call of events.slice(0,20)){
        void recordLinkedCallEvent(input.pool,{tenantId:slot.tenantId,channelId:slot.channelId},call)
          .catch(()=>undefined); // A call log failure must not break the paired session.
      }
    });
  }
  async function dispatchHistoryRequest(slot:Slot){
    if(!slot.connected||slot.calls)return;
    const result=await input.pool.query(`WITH next AS (
      SELECT thread_id FROM security.whatsapp_threads
      WHERE tenant_id=$1 AND channel_id=$2 AND history_dispatch_state='queued'
        AND NOT EXISTS(SELECT 1 FROM security.whatsapp_threads recent WHERE recent.tenant_id=$1
          AND recent.channel_id=$2 AND recent.history_dispatched_at>clock_timestamp()-interval '2 minutes')
        AND EXISTS(SELECT 1 FROM security.whatsapp_channels WHERE tenant_id=$1 AND channel_id=$2
          AND state='connected' AND lease_owner=$3 AND lease_expires_at>clock_timestamp())
      ORDER BY history_requested_at LIMIT 1 FOR UPDATE SKIP LOCKED
    ), sent AS (
      UPDATE security.whatsapp_threads t SET history_dispatch_state='requested',history_dispatched_at=clock_timestamp()
      FROM next WHERE t.thread_id=next.thread_id AND t.tenant_id=$1 AND t.channel_id=$2
      RETURNING t.thread_id,t.customer_wa_id
    ) SELECT s.thread_id,s.customer_wa_id,m.provider_message_id,m.direction,m.created_at FROM sent s
      LEFT JOIN LATERAL (SELECT provider_message_id,direction,created_at FROM security.whatsapp_messages
        WHERE tenant_id=$1 AND thread_id=s.thread_id AND provider_message_id IS NOT NULL
        ORDER BY created_at,message_id LIMIT 1) m ON true`,[slot.tenantId,slot.channelId,slot.owner]);
    const anchor=result.rows[0];
    if(!anchor)return;
    try{
      if(sockets.get(slot.channelId)!==slot||!slot.connected||!anchor.provider_message_id)throw Error('history_anchor_unavailable');
      await slot.socket.fetchMessageHistory(50,{id:anchor.provider_message_id,remoteJid:anchor.customer_wa_id,
        fromMe:anchor.direction==='outbound'},new Date(anchor.created_at).getTime());
    }catch{
      await input.pool.query(`UPDATE security.whatsapp_threads SET history_dispatch_state='failed'
        WHERE tenant_id=$1 AND channel_id=$2 AND thread_id=$3 AND history_dispatch_state='requested'`,
      [slot.tenantId,slot.channelId,anchor.thread_id]);
    }
  }
  async function markError(slot:Slot,code:string,state:'degraded'|'needs_pairing'='degraded'){
    await input.pool.query(`UPDATE security.whatsapp_channels SET state=$3,last_error_code=$4,updated_at=clock_timestamp()
      WHERE tenant_id=$1 AND channel_id=$2 AND lease_owner=$5 AND state<>'disconnected'`,
      [slot.tenantId,slot.channelId,state,code,slot.owner]);
  }
  return {
    async runOnce(){
      const result=await input.pool.query(`SELECT c.tenant_id,c.channel_id,c.state,c.enabled,c.lease_owner,c.call_target_channel_id
        FROM security.whatsapp_channels c WHERE c.state<>'disconnected' AND (c.call_target_channel_id IS NULL OR
          ($1 AND EXISTS(SELECT 1 FROM security.whatsapp_channels target
            WHERE target.tenant_id=c.tenant_id AND target.channel_id=c.call_target_channel_id AND target.state='connected')))
        ORDER BY c.call_target_channel_id IS NOT NULL,c.created_at LIMIT 100`,[callEnabled]);
      const rows=result.rows as Channel[],ids=new Set(rows.map(r=>r.channel_id));
      for(const [id,slot] of sockets){
        const channel=rows.find(r=>r.channel_id===id);
        if(!channel||channel.lease_owner!==slot.owner||channel.state==='pending'&&slot.connected)close(id);
      }
      for(const channel of rows){
        if(channel.state==='needs_pairing'||retryAfter.get(channel.channel_id)!>Date.now())continue;
        const slot=sockets.get(channel.channel_id);
        // Keep the established messaging socket capacity when call answering is enabled.
        if(!slot&&[...sockets.values()].filter(s=>Boolean(s.calls)===Boolean(channel.call_target_channel_id)).length>=limit)continue;
        const leaseOwner=slot?.owner??randomUUID();
        const lease=await input.pool.query(`UPDATE security.whatsapp_channels
          SET lease_owner=$2,lease_expires_at=clock_timestamp()+interval '20 seconds'
          WHERE channel_id=$1 AND state NOT IN ('disconnected','needs_pairing')
          AND (lease_owner=$2 OR lease_expires_at IS NULL OR lease_expires_at<clock_timestamp()) RETURNING channel_id`,
          [channel.channel_id,leaseOwner]);
        if(!lease.rows.length){close(channel.channel_id);continue;}
        if(slot)void dispatchHistoryRequest(slot).catch(()=>undefined);
        else {
          try{
            if(channel.call_target_channel_id)await input.pool.query(`UPDATE security.whatsapp_incoming_calls
              SET ended_at=clock_timestamp(),end_reason='disconnected'
              WHERE tenant_id=$1 AND channel_id=$2 AND ended_at IS NULL`,[channel.tenant_id,channel.channel_id]);
            await launch(channel,leaseOwner);
          }catch{retryAfter.set(channel.channel_id,Date.now()+15000);}
        }
      }
      return {managed:sockets.size,total:ids.size};
    },
    async send(channelId:string,jid:string,body:string){
      const slot=sockets.get(channelId);
      if(!slot?.connected||!linkedJid(jid))throw Error('whatsapp_linked_socket_unavailable');
      // The Worker checks whether this is an authorized human-takeover send
      // before calling us. Pausing the AI must not drop the linked socket or
      // prevent that human reply from being delivered.
      const permission=await input.pool.query(`SELECT 1 FROM security.whatsapp_channels
        WHERE tenant_id=$1 AND channel_id=$2 AND state='connected' AND lease_owner=$3`,
        [slot.tenantId,channelId,slot.owner]);
      if(!permission.rows.length)throw Error('whatsapp_channel_disabled');
      const sent=await slot.socket.sendMessage(jid,{text:body});
      const id=sent?.key.id;if(!id)throw Error('whatsapp_send_receipt_unknown');
      slot.botMessageIds.add(id);if(slot.botMessageIds.size>2000)slot.botMessageIds.delete(slot.botMessageIds.values().next().value??'');
      return id;
    },
    async transcribe(channelId:string,ciphertext:Buffer){
      const slot=sockets.get(channelId);
      if(!slot?.connected)throw Error('whatsapp_media_socket_unavailable');
      const payload=JSON.parse(decryptLinkedSecret(ciphertext,input.sessionKey),BufferJSON.reviver) as WAMessage;
      const content=payload.message?.ephemeralMessage?.message??payload.message?.viewOnceMessage?.message??
        payload.message?.viewOnceMessageV2?.message??payload.message;
      const media=content?.audioMessage;
      if(!media||!media.mimetype||Number(media.fileLength?.toString()??0)>8*1024*1024)throw Error('whatsapp_audio_invalid');
      const audio=await downloadMediaMessage(payload,'buffer',{},
        {logger:pino({level:'silent'}),reuploadRequest:slot.socket.updateMediaMessage}) as Buffer;
      const env=input.env??{};
      const mimeType=media.mimetype;
      return withGeminiKeyPool({pool:input.pool,tenantId:slot.tenantId,sessionKey:input.sessionKey,env,
        invoke:apiKey=>transcribeWhatsAppAudio({audio,mimeType,
          apiKey,model:env.MASANAWA_WHATSAPP_GEMINI_MODEL??'gemini-3.8-flash'})});
    },
    async sendVoice(channelId:string,jid:string,body:string,voiceId:string|null,preparedAudio?:Buffer){
      const slot=sockets.get(channelId);
      if(!slot?.connected||!linkedJid(jid))throw Error('whatsapp_linked_socket_unavailable');
      let encoded:Buffer;
      try {
        if(!preparedAudio)throw Error('live_audio_payload_required');
        const pcm=Buffer.from(decryptLinkedSecret(preparedAudio,input.sessionKey),'base64');
        if(!pcm.length||pcm.length>8*1024*1024)throw Error('voice_input_invalid');
        encoded=await toWhatsAppOpus(pcm,'audio/pcm;rate=24000');
      }catch(error){
        // No WhatsApp send was attempted; caller can safely classify the failure.
        throw Error('whatsapp_audio_preparation_failed');
      }
      // Encoding can take time. Recheck the pause and takeover after it completes.
      const permission=await input.pool.query(`SELECT 1 FROM security.whatsapp_channels c
        JOIN security.whatsapp_assistants a USING(tenant_id,channel_id)
        JOIN security.whatsapp_threads t USING(tenant_id,channel_id)
        WHERE c.tenant_id=$1 AND c.channel_id=$2 AND c.lease_owner=$3 AND t.customer_wa_id=$4
          AND c.enabled AND c.state='connected' AND a.reply_mode<>'manual' AND t.mode='ai'`,
      [slot.tenantId,channelId,slot.owner,jid]);
      if(!permission.rows.length)throw Error('assistant_paused_before_send');
      const sent=await slot.socket.sendMessage(jid,{audio:encoded,mimetype:'audio/ogg; codecs=opus',ptt:true});
      const id=sent?.key.id;if(!id)throw Error('whatsapp_voice_receipt_unknown');
      slot.botMessageIds.add(id);if(slot.botMessageIds.size>2000)slot.botMessageIds.delete(slot.botMessageIds.values().next().value??'');
      return id;
    },
    async stop(){
      const active=[...sockets.values()];
      await Promise.allSettled(active.map(slot=>slot.calls?.stop()));
      for(const id of [...sockets.keys()])close(id);
      // Compose restarts must drain every encrypted Signal key write before
      // the Worker closes its PostgreSQL pool, otherwise a scan may be lost.
      await Promise.allSettled(active.map(slot=>slot.flushAuth()));
    },
  };
}
