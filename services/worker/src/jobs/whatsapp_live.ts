import type {Pool} from '@masanawa/postgres';
import {decryptLinkedSecret} from './whatsapp_linked.js';

/** Live API emits the actual spoken words alongside audio, not TTS of a separate response. */
export type LiveReply={transcript:string;pcm:Buffer};
export type LiveRequest={apiKey:string;model:string;voice:string;system:string;message:string;
  createSocket?:(url:string)=>WebSocket;deadlineMs?:number};

const MAX_PCM=8*1024*1024;
/** Render native spoken transcript with WhatsApp-supported Markdown delimiters.
 * This never asks another model to rewrite what was said. */
export function formatWhatsAppTranscript(speech:string):string{
  return speech.replace(/\r\n?/g,'\n')
    .replace(/^\s{0,3}#{1,4}\s+(.+)$/gm,'*$1*')
    .replace(/\*\*([^*\n]+)\*\*/g,'*$1*')
    .replace(/\n{3,}/g,'\n\n').trim();
}
export class LiveProviderError extends Error {
  constructor(readonly code:'live_quota'|'live_unavailable'|'live_auth'|'live_invalid') {super(code);}
}

export function generateLiveReply(input:LiveRequest):Promise<LiveReply>{
  if(!input.apiKey||!/^gemini-[a-z0-9.-]+$/.test(input.model)||!input.message.trim())
    return Promise.reject(new LiveProviderError('live_invalid'));
  // Only the Google's official bidirectional Live API provides outputTranscription.
  const url='wss://generativelanguage.googleapis.com/ws/google.ai.generativelanguage.v1beta.GenerativeService.BidiGenerateContent?key='+encodeURIComponent(input.apiKey);
  const socket=(input.createSocket??(address=>new WebSocket(address)))(url);
  return new Promise<LiveReply>((resolve,reject)=>{
    let settled=false,opened=false,configured=false,bytes=0;
    const pcm:Buffer[]=[],transcript:string[]=[];
    const timer=setTimeout(()=>finish(new LiveProviderError('live_unavailable')),input.deadlineMs??65000);
    function finish(error?:Error,value?:LiveReply){
      if(settled)return;settled=true;clearTimeout(timer);
      try{socket.close();}catch{/* already closed */}
      if(error)reject(error);else resolve(value!);
    }
    socket.addEventListener('open',()=>{
      opened=true;
      socket.send(JSON.stringify({setup:{model:'models/'+input.model,
        generationConfig:{responseModalities:['AUDIO'],speechConfig:{voiceConfig:{prebuiltVoiceConfig:{voiceName:input.voice}}}},
        systemInstruction:{parts:[{text:input.system}]},outputAudioTranscription:{}}}));
    });
    socket.addEventListener('message',event=>{
      if(settled)return;
      try{
        const result=JSON.parse(typeof event.data==='string'?event.data:String(event.data)) as {
          setupComplete?:unknown;
          error?:{code?:number;status?:string};
          serverContent?:{outputTranscription?:{text?:string};turnComplete?:boolean;
            modelTurn?:{parts?:{inlineData?:{data?:string;mimeType?:string}}[]}};
        };
        if(result.error){
          const code=result.error.code,status=result.error.status;
          finish(new LiveProviderError(code===8||status==='RESOURCE_EXHAUSTED'?'live_quota':
            code===7||code===16?'live_auth':'live_unavailable'));return;
        }
        if(result.setupComplete&&!configured){
          configured=true;
          socket.send(JSON.stringify({clientContent:{turns:[{role:'user',parts:[{text:input.message.slice(0,11000)}]}],turnComplete:true}}));
        }
        const s=result.serverContent;
        if(s?.outputTranscription?.text)transcript.push(s.outputTranscription.text);
        for(const part of s?.modelTurn?.parts??[]){
          const b64=part.inlineData?.data;
          if(!b64)continue;
          const mime=part.inlineData?.mimeType??'';
          if(!/^audio\/(?:pcm|l16)(?:;|$)/i.test(mime)){
            finish(new LiveProviderError('live_invalid'));return;
          }
          const chunk=Buffer.from(b64,'base64');bytes+=chunk.length;
          if(!chunk.length||bytes>MAX_PCM){finish(new LiveProviderError('live_invalid'));return;}
          pcm.push(chunk);
        }
        if(s?.turnComplete){
          const speech=transcript.join('').trim().slice(0,3000);
          if(!speech||!pcm.length||bytes%2!==0){finish(new LiveProviderError('live_invalid'));return;}
          finish(undefined,{transcript:speech,pcm:Buffer.concat(pcm,bytes)});
        }
      }catch{finish(new LiveProviderError('live_invalid'));}
    });
    socket.addEventListener('error',()=>finish(new LiveProviderError('live_unavailable')));
    socket.addEventListener('close',(event:CloseEvent)=>{
      if(settled)return;
      // Some providers indicate quota/unauthorized before emitting a JSON error.
      const code=event.code===1008?'live_quota':'live_unavailable';
      finish(new LiveProviderError(code));
    });
  });
}

type Db=Pick<Pool,'query'>;
export async function withGeminiKeyPool<T>(input:{pool:Db;tenantId:string;sessionKey:string;
  env:Readonly<Record<string,string|undefined>>;invoke:(apiKey:string)=>Promise<T>}):Promise<T>{
  const available=await input.pool.query(`SELECT key_id,key_ciphertext
    FROM security.whatsapp_gemini_keys WHERE tenant_id=$1 AND enabled
      AND (cooldown_until IS NULL OR cooldown_until<=clock_timestamp())
    ORDER BY last_used_at ASC NULLS FIRST,created_at ASC`,[input.tenantId]);
  let lastError:unknown;
  // Each credential is independently eligible; the administrator needs only
  // paste the key, and the provider decides which project's quota applies.
  for(const row of available.rows as {key_id:string;key_ciphertext:Buffer}[]){
    try{
      const secret=decryptLinkedSecret(row.key_ciphertext,input.sessionKey);
      const result=await input.invoke(secret);
      await input.pool.query(`UPDATE security.whatsapp_gemini_keys
        SET last_used_at=clock_timestamp(),last_error_code=NULL,cooldown_until=NULL
        WHERE tenant_id=$1 AND key_id=$2`,[input.tenantId,row.key_id]);
      return result;
    }catch(error){
      lastError=error;
      const reason=error instanceof Error?error.message:'';
      const code=error instanceof LiveProviderError?error.code:
        reason==='voice_synthesis_quota_exceeded'?'live_quota':
        reason==='voice_synthesis_provider_unavailable'?'live_unavailable':'live_unavailable';
      await input.pool.query(`UPDATE security.whatsapp_gemini_keys
        SET cooldown_until=clock_timestamp()+($3::int*interval '1 second'),
          last_error_code=$4,last_used_at=clock_timestamp()
        WHERE tenant_id=$1 AND key_id=$2`,
        [input.tenantId,row.key_id,code==='live_quota'?300:code==='live_auth'?3600:30,code]);
    }
  }
  // Keep the original private runtime key as a final fallback if configured.
  const legacy=input.env.MASANAWA_GEMINI_API_KEY??input.env.GEMINI_API_KEY;
  if(legacy){
    try{return await input.invoke(legacy);}catch(error){lastError=error;}
  }
  throw lastError instanceof Error?lastError:new LiveProviderError('live_unavailable');
}
