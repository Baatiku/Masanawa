import {createHash} from 'node:crypto';
import type {EventEmitter} from 'node:events';
import {createRequire} from 'node:module';
import type {Pool} from '@masanawa/postgres';
import type {WASocket} from '@whiskeysockets/baileys';
import {pino} from 'pino';
import {createCallPlayback,openWhatsAppCallLive,renderCallDisclosure} from './whatsapp_call_audio.js';
import {withGeminiKeyPool} from './whatsapp_live.js';
import {resolveWhatsAppLiveVoice} from './whatsapp_voices.js';

type Db=Pick<Pool,'query'>;
type Identity={tenantId:string;channelId:string;owner:string};
type Env=Readonly<Record<string,string|undefined>>;
type EndReason='remote'|'paused'|'timeout'|'provider_failed'|'media_failed'|'disconnected';
type CallPolicy={name:string;owner_name:string;number_purpose:string;personality:string;instructions:string;
  language:string;live_voice_name:string};
export type IncomingSession=EventEmitter<{ended:[];error:[];connected:[];audio:[Float32Array]}>&{
  readonly callId:string;readonly canAccept:boolean;readonly ended:boolean;readonly isVideo:boolean;readonly isIncoming:boolean;
  readonly isWaiting:boolean;
  accept(options:{audioSource:'silence';isMicEnabled:boolean;isCameraEnabled:boolean}):Promise<void>;
  end():Promise<void>;
  startAudio(rate:number,channels:number,samples:number,send:(chunk:Float32Array)=>void):void;
  stopAudio():void;
};
export type CallOffer={id:string;status:string;from:string;date:Date;offline?:boolean;isGroup?:boolean;
  isVideo?:boolean;groupJid?:string;linkToken?:string};
type CallSocket=WASocket&{ev:{on(event:'call.incoming',listener:(session:IncomingSession)=>void):void}};
type SocketSettings=Parameters<typeof import('@whiskeysockets/baileys').default>[0];
type Diagnostics={voipDiagnostics:{log:(...args:unknown[])=>void}};
type CallingProvider=Diagnostics&{makeWASocket:(config:SocketSettings&
  {voip:{maxConcurrentCalls:number;onLimit:'queue';pthreadPoolSize:number}})=>CallSocket};
const require=createRequire(import.meta.url);

export async function createWhatsAppCallingSocket(config:SocketSettings){
  const warn=console.warn,error=console.error;
  const provider=require('@innovatorssoft/baileys') as CallingProvider;
  const voipPath='@innovatorssoft/baileys/lib/Voip/index.mjs';
  const voip=await import(voipPath).finally(()=>{
    // The fork changes global console methods when its WASM module loads.
    console.warn=warn;
    console.error=error;
  }) as Diagnostics;
  // Both copies of the fork's diagnostics otherwise write raw data to disk.
  provider.voipDiagnostics.log=()=>undefined;
  voip.voipDiagnostics.log=()=>undefined;
  return provider.makeWASocket({...config,logger:pino({level:'silent'}),
    voip:{maxConcurrentCalls:1,onLimit:'queue',pthreadPoolSize:1}});
}

export async function readCallPolicy(pool:Db,identity:Identity,peer:string):Promise<CallPolicy|undefined>{
  const result=await pool.query(`SELECT a.name,a.owner_name,a.number_purpose,a.personality,a.instructions,a.language,a.live_voice_name
    FROM security.whatsapp_channels c JOIN security.whatsapp_channels target
      ON (target.tenant_id,target.channel_id)=(c.tenant_id,c.call_target_channel_id)
    JOIN security.whatsapp_assistants a ON (a.tenant_id,a.channel_id)=(target.tenant_id,target.channel_id)
    WHERE c.tenant_id=$1 AND c.channel_id=$2 AND c.lease_owner=$3 AND c.lease_expires_at>clock_timestamp()
      AND c.enabled AND c.state='connected' AND c.linked_jid=target.linked_jid
      AND target.enabled AND target.state='connected' AND a.reply_mode<>'manual'
      AND NOT EXISTS(SELECT 1 FROM security.whatsapp_threads t WHERE (t.tenant_id,t.channel_id)=(target.tenant_id,target.channel_id)
        AND ((t.customer_wa_id=$4 AND t.mode<>'ai') OR (a.reply_mode='away'
          AND t.last_human_reply_at>clock_timestamp()-(a.away_after_seconds*interval '1 second'))))`,
  [identity.tenantId,identity.channelId,identity.owner,peer]);
  return result.rows[0] as CallPolicy|undefined;
}

type Dependencies={pool:Db;identity:Identity;env:Env;sessionKey:string;acquire:()=>boolean;release:()=>void;
  disclosure?:typeof renderCallDisclosure;openLive?:typeof openWhatsAppCallLive};

export function createWhatsAppCallHandler(input:Dependencies){
  const {pool,identity}=input;
  const sessions=new Map<string,IncomingSession>();
  const offers=new Map<string,CallOffer>();
  let active:{id:string;stop:(reason:EndReason)=>Promise<void>}|undefined;
  let stopped=false;
  let disclosure:Promise<Buffer>|undefined;
  const validId=(id:string)=>typeof id==='string'&&id.length>0&&id.length<=128;

  function correlate(id:string){
    const offer=offers.get(id),session=sessions.get(id);
    if(stopped||!offer||!session)return;
    offers.delete(id);
    sessions.delete(id);
    if(active||session.isVideo||!session.isIncoming||session.isWaiting||!session.canAccept||
      Math.abs(Date.now()-offer.date.getTime())>15000||!input.acquire())return;
    const peer=offer.from.replace(/:\d+(?=@)/,'');
    start(session,peer);
  }

  function start(session:IncomingSession,peer:string){
    const id=session.callId;
    const ref=createHash('sha256').update(`${identity.channelId}|${id}`).digest('hex');
    const key=[identity.tenantId,identity.channelId,ref];
    const abort=new AbortController();
    let live:Awaited<ReturnType<typeof openWhatsAppCallLive>>|undefined;
    let interval:ReturnType<typeof setInterval>|undefined;
    let playback:ReturnType<typeof createCallPlayback>|undefined;
    let accepted=false,connected=false,authorized=false,answerRecorded=false,checking=false,finished=false;
    let claim:Promise<boolean>|undefined;
    let answer:Promise<unknown>|undefined;
    const setupTimer=setTimeout(()=>void stop('timeout'),15000);
    const maxTimer=setTimeout(()=>void stop('timeout'),5*60_000);
    const oldStart=session.startAudio,oldStop=session.stopAudio;
    const onEnd=()=>void stop('remote');
    const onError=()=>void stop('media_failed');
    const onConnected=()=>{connected=true;};
    const onAudio=(pcm:Float32Array)=>{
      if(!finished&&authorized&&connected&&playback?.disclosed)live?.sendAudio(pcm);
    };
    const stopPlayback=()=>{clearInterval(interval);interval=undefined;};
    active={id,stop};
    session.on('ended',onEnd).on('error',onError).on('connected',onConnected).on('audio',onAudio);

    async function stop(reason:EndReason){
      if(finished)return;
      finished=true;
      abort.abort();
      live?.close();
      clearInterval(authorization);
      clearTimeout(setupTimer);
      clearTimeout(maxTimer);
      stopPlayback();
      session.off('ended',onEnd).off('connected',onConnected).off('audio',onAudio);
      try{
        if(accepted&&!session.ended)await Promise.race([session.end(),new Promise<void>(resolve=>setTimeout(resolve,1500))]);
      }catch{/* link may already be gone */}
      finally{
        session.off('error',onError);
        if(active?.id===id)active=undefined;
        input.release();
      }
      try{
        if(await claim){
          await answer?.catch(()=>undefined);
          await pool.query(`UPDATE security.whatsapp_incoming_calls SET ended_at=clock_timestamp(),end_reason=$4
            WHERE tenant_id=$1 AND channel_id=$2 AND reference=$3 AND ended_at IS NULL`,[...key,reason]);
        }
      }catch{/* a replacement worker closes abandoned rows */}
    }

    const authorization=setInterval(()=>{
      if(checking||finished)return;
      checking=true;
      void readCallPolicy(pool,identity,peer).then(policy=>{
        if(!policy)void stop('paused');
      }).catch(()=>stop('paused')).finally(()=>{checking=false;});
    },1000);

    void (async()=>{
      const policy=await readCallPolicy(pool,identity,peer);
      if(!policy||finished||!session.canAccept){await stop('paused');return;}
      claim=pool.query(`INSERT INTO security.whatsapp_incoming_calls(tenant_id,channel_id,reference) VALUES($1,$2,$3)
        ON CONFLICT DO NOTHING RETURNING reference`,key).then(result=>result.rows.length>0);
      if(!await claim||finished){await stop('remote');return;}

      disclosure??=(input.disclosure??renderCallDisclosure)().catch(error=>{disclosure=undefined;throw error;});
      playback=createCallPlayback(await disclosure);
      if(finished)return;
      const system=`You are ${policy.name}, the AI assistant ${policy.number_purpose==='personal'?
        `for ${policy.owner_name||'the owner of this number'}`:'for Masanawa'}. Keep answers brief and conversational. `+
        `${policy.language==='ha'?'Speak standard Hausa.':policy.language==='en'?'Speak English.':'Use the caller’s language.'}`+
        `\nAssistant preferences: ${policy.personality}\n${policy.instructions}\n`+
        'Always identify as AI when asked. Never impersonate the owner. You have no account or wallet access. '+
        'Never request passwords, PINs, OTPs, BVN or NIN. If the caller wants a person, ask them to message the number directly.';
      live=await withGeminiKeyPool({pool,tenantId:identity.tenantId,sessionKey:input.sessionKey,env:input.env,signal:abort.signal,
        invoke:apiKey=>(input.openLive??openWhatsAppCallLive)({apiKey,
          model:input.env.MASANAWA_WHATSAPP_LIVE_MODEL??'gemini-3.8-live',voice:resolveWhatsAppLiveVoice(policy.live_voice_name),
          system,signal:abort.signal,onAudio:pcm=>playback!.append(pcm),onInterrupt:()=>playback!.interrupt(),
          onFailure:()=>void stop('provider_failed')})});
      if(finished){live.close();return;}
      if(!await readCallPolicy(pool,identity,peer)||finished||!session.canAccept){await stop('paused');return;}
      authorized=true;
      session.startAudio=(rate,channels,samples,send)=>{
        if(finished||interval)return;
        // This fork's VoIP capture contract is 16 kHz mono PCM.
        if(rate!==16000||channels!==1||samples<80||samples>1600){void stop('media_failed');return;}
        interval=setInterval(()=>{
          try{
            if(finished||session.ended)return;
            send(connected?playback!.next(samples):new Float32Array(samples));
            if(connected&&!answerRecorded){
              answerRecorded=true;
              clearTimeout(setupTimer);
              answer=pool.query(`UPDATE security.whatsapp_incoming_calls SET answered_at=clock_timestamp()
                WHERE tenant_id=$1 AND channel_id=$2 AND reference=$3 AND ended_at IS NULL`,key);
              void answer.catch(()=>stop('media_failed'));
            }
          }catch{void stop('media_failed');}
        },samples/16);
      };
      session.stopAudio=()=>{
        stopPlayback();
        session.startAudio=oldStart;
        session.stopAudio=oldStop;
        oldStop();
      };
      accepted=true;
      await session.accept({audioSource:'silence',isMicEnabled:true,isCameraEnabled:false});
    })().catch(()=>stop('provider_failed'));
  }

  return {
    session(session:IncomingSession){
      if(stopped||!validId(session.callId)||session.ended||sessions.size>=24)return;
      sessions.set(session.callId,session);
      setTimeout(()=>{if(sessions.get(session.callId)===session)sessions.delete(session.callId);},15000).unref();
      correlate(session.callId);
    },
    signal(offer:CallOffer){
      if(stopped||!validId(offer.id))return;
      if(['reject','terminate','timeout'].includes(offer.status)){
        offers.delete(offer.id);sessions.delete(offer.id);
        return;
      }
      if(offer.status!=='offer'||offer.offline!==false||offer.isGroup!==false||offer.isVideo!==false||
        offer.groupJid||offer.linkToken||!(offer.date instanceof Date)||!Number.isFinite(offer.date.getTime())||
        !/^[0-9]{5,32}(?::\d+)?@(s\.whatsapp\.net|lid)$/.test(offer.from)||offers.size>=24)return;
      offers.set(offer.id,offer);
      setTimeout(()=>{if(offers.get(offer.id)===offer)offers.delete(offer.id);},15000).unref();
      correlate(offer.id);
    },
    async stop(){stopped=true;offers.clear();sessions.clear();await active?.stop('disconnected');},
  };
}
