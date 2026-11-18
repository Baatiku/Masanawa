import {createCipheriv,createDecipheriv,randomBytes,randomUUID} from 'node:crypto';
import makeWASocket,{
  Browsers,BufferJSON,DisconnectReason,initAuthCreds,jidNormalizedUser,proto,
  downloadMediaMessage,
  type AuthenticationState,type SignalDataTypeMap,type SignalDataSet,type WASocket,type WAMessage,
} from '@whiskeysockets/baileys';
import type {Pool} from '@masanawa/postgres';
import {pino} from 'pino';
import {synthesizeWhatsAppVoice,toWhatsAppOpus,transcribeWhatsAppAudio} from './whatsapp_media.js';

type Db=Pick<Pool,'query'>;
type Channel={tenant_id:string;channel_id:string;state:string;enabled:boolean;lease_owner:string|null};
type Slot={socket:WASocket;tenantId:string;owner:string;channelId:string;connected:boolean};
const linkedJid=(jid:string)=>/^[0-9]{5,32}@(s\.whatsapp\.net|lid)$/.test(jid);

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
  return {state,saveCreds};
}

function contentOf(msg:WAMessage):{kind:'text'|'audio'|'image'|'document'|'unsupported';body:string|null;mediaId:string|null}{
  const content=msg.message?.ephemeralMessage?.message??msg.message?.viewOnceMessage?.message??msg.message;
  if(!content)return {kind:'unsupported',body:null,mediaId:null};
  const text=content.conversation??content.extendedTextMessage?.text;
  if(typeof text==='string')return {kind:'text',body:text.slice(0,4000),mediaId:null};
  if(content.audioMessage)return {kind:'audio',body:null,mediaId:msg.key.id??null};
  if(content.imageMessage)return {kind:'image',body:content.imageMessage.caption?.slice(0,4000)??null,mediaId:msg.key.id??null};
  if(content.documentMessage)return {kind:'document',body:content.documentMessage.fileName?.slice(0,255)??null,mediaId:msg.key.id??null};
  return {kind:'unsupported',body:null,mediaId:null};
}

/** One managed socket per number; leases prevent two Workers owning one session. */
export function createLinkedDeviceManager(input:{pool:Db;sessionKey:string;env?:Readonly<Record<string,string|undefined>>;maxSockets?:number}){
  const sockets=new Map<string,Slot>(),retryAfter=new Map<string,number>();
  const limit=Math.max(1,Math.min(10,input.maxSockets??4));
  function close(channelId:string){
    const slot=sockets.get(channelId);if(!slot)return;
    sockets.delete(channelId);
    try{slot.socket.end(new Error('whatsapp_socket_replaced'));}catch{/* already closed */}
  }
  async function ingest(slot:Slot,msg:WAMessage){
    if(msg.key.fromMe||!msg.key.id||msg.key.id.length>255)return;
    const jid=msg.key.remoteJid;
    if(!jid||!linkedJid(jid))return; // No groups, status broadcasts or unverified arbitrary JIDs.
    const active=await input.pool.query(`SELECT c.enabled,a.transcribe_voice FROM security.whatsapp_channels c
      JOIN security.whatsapp_assistants a USING(tenant_id,channel_id)
      WHERE c.tenant_id=$1 AND c.channel_id=$2 AND c.lease_owner=$3 AND c.state='connected'`,
      [slot.tenantId,slot.channelId,slot.owner]);
    if(!active.rows.length)return;
    const {kind,body,mediaId}=contentOf(msg);
    const name=typeof msg.pushName==='string'?msg.pushName.slice(0,120):'';
    const thread=await input.pool.query(`INSERT INTO security.whatsapp_threads(tenant_id,channel_id,customer_wa_id,customer_name)
      VALUES($1,$2,$3,$4) ON CONFLICT(tenant_id,channel_id,customer_wa_id)
      DO UPDATE SET customer_name=CASE WHEN EXCLUDED.customer_name<>'' THEN EXCLUDED.customer_name
        ELSE security.whatsapp_threads.customer_name END RETURNING thread_id AS "threadId",mode`,
      [slot.tenantId,slot.channelId,jid,name]);
    const media=kind==='audio'&&active.rows[0]?.transcribe_voice===true&&thread.rows[0]?.mode==='ai'?
      encryptLinkedSecret(JSON.stringify(msg,BufferJSON.replacer),input.sessionKey):null;
    const saved=await input.pool.query(`INSERT INTO security.whatsapp_messages
      (tenant_id,thread_id,channel_id,provider_message_id,direction,kind,body,media_id,media_payload_ciphertext)
      VALUES($1,$2,$3,$4,'inbound',$5,$6,$7,$8) ON CONFLICT DO NOTHING RETURNING message_id AS "messageId"`,
      [slot.tenantId,thread.rows[0]!.threadId,slot.channelId,msg.key.id,kind,body,mediaId,media]);
    if(!saved.rows.length)return;
    await input.pool.query(`UPDATE security.whatsapp_threads SET unread_count=unread_count+1,last_message_at=clock_timestamp()
      WHERE tenant_id=$1 AND thread_id=$2`,[slot.tenantId,thread.rows[0]!.threadId]);
    await input.pool.query(`UPDATE security.whatsapp_channels SET last_message_at=clock_timestamp()
      WHERE tenant_id=$1 AND channel_id=$2`,[slot.tenantId,slot.channelId]);
    if(((kind==='text'&&body)||(kind==='audio'&&media))&&active.rows[0]?.enabled===true&&thread.rows[0]?.mode==='ai')await input.pool.query(`INSERT INTO security.whatsapp_jobs
      (tenant_id,channel_id,message_id,kind) VALUES($1,$2,$3,'reply') ON CONFLICT DO NOTHING`,
      [slot.tenantId,slot.channelId,saved.rows[0]!.messageId]);
  }
  async function launch(channel:Channel,leaseOwner:string){
    const auth=await createLinkedAuthState(input.pool,channel.tenant_id,channel.channel_id,input.sessionKey,leaseOwner);
    const socket=makeWASocket({auth:auth.state,browser:Browsers.ubuntu('Masanawa'),
      syncFullHistory:false,markOnlineOnConnect:false,
      getMessage:async()=>undefined});
    const slot:Slot={socket,tenantId:channel.tenant_id,owner:leaseOwner,channelId:channel.channel_id,connected:false};
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
        slot.connected=true;
        const result=await input.pool.query(`UPDATE security.whatsapp_channels SET state='connected',linked_jid=$3,
          display_phone=$4,verified_name=$5,qr_ciphertext=NULL,qr_expires_at=NULL,
          last_connected_at=clock_timestamp(),last_error_code=NULL,updated_at=clock_timestamp()
          WHERE tenant_id=$1 AND channel_id=$2 AND lease_owner=$6 RETURNING channel_id`,
          [slot.tenantId,slot.channelId,jid,jid.split('@')[0],socket.user?.name??'',slot.owner]);
        if(!result.rows.length)close(slot.channelId);
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
    socket.ev.on('messages.upsert',event=>{
      if(event.type!=='notify')return;
      for(const msg of event.messages)void ingest(slot,msg).catch(()=>markError(slot,'inbound_persistence_failed'));
    });
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
  }
  async function markError(slot:Slot,code:string,state:'degraded'|'needs_pairing'='degraded'){
    await input.pool.query(`UPDATE security.whatsapp_channels SET state=$3,last_error_code=$4,updated_at=clock_timestamp()
      WHERE tenant_id=$1 AND channel_id=$2 AND lease_owner=$5 AND state<>'disconnected'`,
      [slot.tenantId,slot.channelId,state,code,slot.owner]);
  }
  return {
    async runOnce(){
      const result=await input.pool.query(`SELECT tenant_id,channel_id,state,enabled,lease_owner
        FROM security.whatsapp_channels WHERE state<>'disconnected' ORDER BY created_at LIMIT 100`);
      const rows=result.rows as Channel[],ids=new Set(rows.map(r=>r.channel_id));
      for(const [id,slot] of sockets){
        const channel=rows.find(r=>r.channel_id===id);
        if(!channel||channel.lease_owner!==slot.owner||channel.state==='pending'&&slot.connected)close(id);
      }
      for(const channel of rows){
        if(channel.state==='needs_pairing'||retryAfter.get(channel.channel_id)!>Date.now())continue;
        const leaseOwner=sockets.get(channel.channel_id)?.owner??randomUUID();
        const lease=await input.pool.query(`UPDATE security.whatsapp_channels
          SET lease_owner=$2,lease_expires_at=clock_timestamp()+interval '20 seconds'
          WHERE channel_id=$1 AND state NOT IN ('disconnected','needs_pairing')
          AND (lease_owner=$2 OR lease_expires_at IS NULL OR lease_expires_at<clock_timestamp()) RETURNING channel_id`,
          [channel.channel_id,leaseOwner]);
        if(!lease.rows.length){close(channel.channel_id);continue;}
        if(!sockets.has(channel.channel_id)&&sockets.size<limit){
          try{await launch(channel,leaseOwner);}catch{retryAfter.set(channel.channel_id,Date.now()+15000);}
        }
      }
      return {managed:sockets.size,total:ids.size};
    },
    async send(channelId:string,jid:string,body:string){
      const slot=sockets.get(channelId);
      if(!slot?.connected||!linkedJid(jid))throw Error('whatsapp_linked_socket_unavailable');
      const permission=await input.pool.query(`SELECT 1 FROM security.whatsapp_channels
        WHERE tenant_id=$1 AND channel_id=$2 AND enabled=true AND state='connected' AND lease_owner=$3`,
        [slot.tenantId,channelId,slot.owner]);
      if(!permission.rows.length)throw Error('whatsapp_channel_disabled');
      const sent=await slot.socket.sendMessage(jid,{text:body});
      const id=sent?.key.id;if(!id)throw Error('whatsapp_send_receipt_unknown');return id;
    },
    async transcribe(channelId:string,ciphertext:Buffer){
      const slot=sockets.get(channelId);
      if(!slot?.connected)throw Error('whatsapp_media_socket_unavailable');
      const payload=JSON.parse(decryptLinkedSecret(ciphertext,input.sessionKey),BufferJSON.reviver) as WAMessage;
      const content=payload.message?.ephemeralMessage?.message??payload.message;
      const media=content?.audioMessage;
      if(!media||!media.mimetype||Number(media.fileLength?.toString()??0)>8*1024*1024)throw Error('whatsapp_audio_invalid');
      const audio=await downloadMediaMessage(payload,'buffer',{},
        {logger:pino({level:'silent'}),reuploadRequest:slot.socket.updateMediaMessage}) as Buffer;
      const env=input.env??{};
      return transcribeWhatsAppAudio({audio,mimeType:media.mimetype,
        apiKey:env.MASANAWA_GEMINI_API_KEY??env.GEMINI_API_KEY??'',model:env.MASANAWA_WHATSAPP_GEMINI_MODEL??'gemini-2.5-flash'});
    },
    async sendVoice(channelId:string,jid:string,body:string,voiceId:string|null){
      const slot=sockets.get(channelId);
      if(!slot?.connected||!linkedJid(jid))throw Error('whatsapp_linked_socket_unavailable');
      const permission=await input.pool.query(`SELECT 1 FROM security.whatsapp_channels WHERE tenant_id=$1
        AND channel_id=$2 AND enabled=true AND state='connected' AND lease_owner=$3`,[slot.tenantId,channelId,slot.owner]);
      if(!permission.rows.length)throw Error('whatsapp_channel_disabled');
      const env=input.env??{};
      const result=await synthesizeWhatsAppVoice({text:body,voice:voiceId??env.MASANAWA_GEMINI_LIVE_VOICE??'Kore',
        apiKey:env.MASANAWA_GEMINI_API_KEY??env.GEMINI_API_KEY??'',model:env.MASANAWA_WHATSAPP_TTS_MODEL??'gemini-3.8-flash-tts'});
      const encoded=await toWhatsAppOpus(result.data,result.mimeType);
      const sent=await slot.socket.sendMessage(jid,{audio:encoded,mimetype:'audio/ogg; codecs=opus',ptt:true});
      const id=sent?.key.id;if(!id)throw Error('whatsapp_voice_receipt_unknown');return id;
    },
    async stop(){for(const id of [...sockets.keys()])close(id);},
  };
}
