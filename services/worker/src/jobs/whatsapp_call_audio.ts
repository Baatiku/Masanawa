import {execFile} from 'node:child_process';
import {promisify} from 'node:util';
import {geminiLiveUrl,liveProviderError,LiveProviderError,readGeminiLiveFrame} from './whatsapp_live.js';

const RATE=16000;
const GEMINI_RATE=24000;
const MAX_PENDING_SAMPLES=RATE*12;
const DISCLOSURE='This is the Masanawa A I assistant. Your voice is sent to Google Gemini to answer this call. How can I help?';

const UNAVAILABLE='The A I assistant is temporarily unavailable. Please send a WhatsApp message or try again later.';

export function renderCallDisclosure(){return renderCallSpeech(DISCLOSURE);}
export function renderCallUnavailable(){return renderCallSpeech(UNAVAILABLE);}

async function renderCallSpeech(text:string):Promise<Buffer>{
  const {stdout}=await promisify(execFile)('ffmpeg',['-nostdin','-hide_banner','-loglevel','error','-f','lavfi',
    '-i',`flite=text=${text}:voice=slt`,'-ac','1','-ar',String(RATE),'-f','s16le','pipe:1'],
  {encoding:'buffer',timeout:3500,maxBuffer:RATE*2*12});
  if(!stdout.length||stdout.length%2)throw Error('whatsapp_call_speech_unavailable');
  return stdout;
}

/** Buffer just enough model audio to decouple network bursts from the VoIP clock. */
export function createCallPlayback(disclosure:Buffer){
  let disclosureOffset=0,offset=0,carry=Buffer.alloc(0);
  let queued=0;
  const chunks:Float32Array[]=[];
  return {
    get disclosed(){return disclosureOffset>=disclosure.length;},
    append(modelPcm:Buffer){
      const source=carry.length?Buffer.concat([carry,modelPcm]):modelPcm;
      const groups=Math.floor(source.length/6);
      if(queued+groups*2>MAX_PENDING_SAMPLES)throw Error('whatsapp_call_audio_overflow');
      // Convert 24 kHz little-endian PCM to 16 kHz mono with a weighted average.
      const chunk=new Float32Array(groups*2);
      for(let i=0;i<groups;i++){
        const a=source.readInt16LE(i*6),b=source.readInt16LE(i*6+2),c=source.readInt16LE(i*6+4);
        chunk[i*2]=(2*a+b)/98304;
        chunk[i*2+1]=(b+2*c)/98304;
      }
      carry=Buffer.from(source.subarray(groups*6));
      if(chunk.length){chunks.push(chunk);queued+=chunk.length;}
    },
    interrupt(){chunks.length=0;queued=0;offset=0;carry=Buffer.alloc(0);},
    next(samples:number){
      const output=new Float32Array(samples);
      let i=0;
      while(i<samples&&disclosureOffset<disclosure.length){
        output[i++]=disclosure.readInt16LE(disclosureOffset)/32768;
        disclosureOffset+=2;
      }
      while(i<samples&&chunks.length){
        const chunk=chunks[0]!;
        const count=Math.min(samples-i,chunk.length-offset);
        output.set(chunk.subarray(offset,offset+count),i);
        offset+=count;i+=count;queued-=count;
        if(offset===chunk.length){chunks.shift();offset=0;}
      }
      return output;
    },
  };
}

export function encodeCallerAudio(samples:Float32Array):Buffer{
  const pcm=Buffer.allocUnsafe(samples.length*2);
  for(let i=0;i<samples.length;i++){
    const s=Math.max(-1,Math.min(1,samples[i]!));
    pcm.writeInt16LE(Math.round(s*(s<0?32768:32767)),i*2);
  }
  return pcm;
}

type CallLiveFrame={setupComplete?:unknown;goAway?:unknown;error?:{code?:number;status?:string};
  serverContent?:{interrupted?:boolean;modelTurn?:{parts?:{inlineData?:{data?:string;mimeType?:string}}[]}}};

export function openWhatsAppCallLive(input:{apiKey:string;model:string;voice:string;system:string;
  signal:AbortSignal;onAudio:(pcm:Buffer)=>void;onInterrupt:()=>void;onFailure:()=>void;
  createSocket?:(url:string)=>WebSocket}):Promise<{sendAudio:(audio:Float32Array)=>void;close:()=>void}>{
  if(!input.apiKey||!/^gemini-[a-z0-9.-]+$/.test(input.model)||input.signal.aborted)
    return Promise.reject(new LiveProviderError('live_invalid'));
  const socket=(input.createSocket??(url=>new WebSocket(url)))(geminiLiveUrl(input.apiKey));
  return new Promise((resolve,reject)=>{
    let ready=false,closed=false,pending=0;
    let received=Promise.resolve();
    const timeout=setTimeout(()=>fail(new LiveProviderError('live_unavailable')),5000);
    const abort=()=>{
      close();
      if(!ready)reject(new LiveProviderError('live_unavailable'));
    };
    function close(){
      if(closed)return;
      closed=true;
      clearTimeout(timeout);
      input.signal.removeEventListener('abort',abort);
      try{socket.close();}catch{/* already closed */}
    }
    function fail(error:LiveProviderError){
      if(closed)return;
      close();
      if(ready)input.onFailure();else reject(error);
    }
    function sendAudio(audio:Float32Array){
      if(closed||!audio.length||audio.length>RATE/2)return;
      try{
        if(socket.bufferedAmount>RATE*2)throw new LiveProviderError('live_unavailable');
        socket.send(JSON.stringify({realtimeInput:{audio:{mimeType:`audio/pcm;rate=${RATE}`,
          data:encodeCallerAudio(audio).toString('base64')}}}));
      }catch{fail(new LiveProviderError('live_unavailable'));}
    }
    input.signal.addEventListener('abort',abort,{once:true});
    socket.addEventListener('open',()=>{
      if(closed)return;
      try{
        socket.send(JSON.stringify({setup:{model:'models/'+input.model,
          generationConfig:{responseModalities:['AUDIO'],speechConfig:{voiceConfig:{prebuiltVoiceConfig:{voiceName:input.voice}}}},
          systemInstruction:{parts:[{text:input.system}]}}}));
      }catch{fail(new LiveProviderError('live_unavailable'));}
    });
    socket.addEventListener('message',event=>{
      if(closed)return;
      if(++pending>64){fail(new LiveProviderError('live_invalid'));return;}
      received=received.then(async()=>{
        if(closed)return;
        const frame=await readGeminiLiveFrame<CallLiveFrame>(event.data,256*1024);
        if(closed)return;
        if(frame.error){fail(liveProviderError(frame.error));return;}
        if(frame.goAway){fail(new LiveProviderError('live_unavailable'));return;}
        if(frame.setupComplete&&!ready){ready=true;clearTimeout(timeout);resolve({sendAudio,close});}
        if(!ready)return;
        if(frame.serverContent?.interrupted){input.onInterrupt();return;}
        for(const {inlineData} of frame.serverContent?.modelTurn?.parts??[]){
          if(!inlineData?.data)continue;
          if(!new RegExp(`^audio/(?:pcm|l16)(?:;rate=${GEMINI_RATE})?$`,'i').test(inlineData.mimeType??''))
            throw new LiveProviderError('live_invalid');
          const pcm=Buffer.from(inlineData.data,'base64');
          if(!pcm.length||pcm.length%2)throw new LiveProviderError('live_invalid');
          input.onAudio(pcm);
        }
      }).catch(()=>fail(new LiveProviderError('live_invalid'))).finally(()=>{pending--;});
    });
    socket.addEventListener('error',()=>fail(new LiveProviderError('live_unavailable')));
    socket.addEventListener('close',event=>fail(new LiveProviderError(event.code===1008?'live_quota':'live_unavailable')));
  });
}
