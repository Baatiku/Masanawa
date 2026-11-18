import {spawn} from 'node:child_process';

const MAX_AUDIO_BYTES=8*1024*1024;

/** Inline audio is bounded and sent only to the configured Gemini inference service. */
export async function transcribeWhatsAppAudio(input:{audio:Buffer;mimeType:string;apiKey:string;model:string;fetch?:typeof fetch}):Promise<string>{
  const {audio,apiKey,model}=input;
  if(!apiKey||!model||!audio.length||audio.length>MAX_AUDIO_BYTES)throw Error('audio_transcription_unavailable');
  const mimeType=input.mimeType.split(';')[0]?.trim().toLowerCase()??'';
  if(!['audio/ogg','audio/mp4','audio/mpeg','audio/webm','audio/wav','audio/aac'].includes(mimeType))throw Error('audio_mime_unsupported');
  const call=input.fetch??fetch;
  const result=await call(`https://generativelanguage.googleapis.com/v1beta/models/${encodeURIComponent(model)}:generateContent`,{
    method:'POST',redirect:'error',signal:AbortSignal.timeout(30000),
    headers:{'x-goog-api-key':apiKey,'content-type':'application/json'},
    body:JSON.stringify({contents:[{role:'user',parts:[
      {text:'Transcribe this WhatsApp voice note faithfully as plain text. Preserve its original language, including standard written Hausa where spoken. Do not answer the speaker or add commentary.'},
      {inlineData:{mimeType,data:audio.toString('base64')}},
    ]}],generationConfig:{temperature:0,maxOutputTokens:1000}}),
  });
  if(!result.ok)throw Error('audio_transcription_provider_failed');
  const data=await result.json() as {candidates?:{content?:{parts?:{text?:string}[]}}[]};
  const transcript=data.candidates?.[0]?.content?.parts?.map(x=>x.text??'').join('').trim()??'';
  if(!transcript||transcript.length>4000)throw Error('audio_transcription_invalid');
  return transcript;
}

/** Reuse Masanawa's reviewed Gemini voice IDs; never create a voice from a stranger's audio note. */
export async function synthesizeWhatsAppVoice(input:{text:string;voice:string;apiKey:string;model:string;fetch?:typeof fetch}):Promise<{data:Buffer;mimeType:string}>{
  if(!input.apiKey||!input.model||!input.voice||!input.text.trim()||input.text.length>2500)throw Error('voice_synthesis_unavailable');
  const call=input.fetch??fetch;
  // Match the canonical Masanawa recorded-voice renderer: Gemini 3 first uses
  // Interactions; a definite 400/404 may be retried via GenerateContent.
  // Such a rejection cannot have delivered a voice note to WhatsApp.
  const signal=AbortSignal.timeout(35000);
  const request=(interactions:boolean)=>call(interactions?
    'https://generativelanguage.googleapis.com/v1beta/interactions':
    `https://generativelanguage.googleapis.com/v1beta/models/${encodeURIComponent(input.model)}:generateContent`,{
    method:'POST',redirect:'error',signal,
    headers:{'x-goog-api-key':input.apiKey,'content-type':'application/json'},
    body:JSON.stringify(interactions?{
      model:input.model,store:false,input:[{type:'user_input',content:[{type:'text',text:input.text}]}],
      response_format:{type:'audio',mime_type:'audio/l16',sample_rate:24000},
      generation_config:{speech_config:[{voice:input.voice}]},
    }:{contents:[{role:'user',parts:[{text:input.text}]}],generationConfig:{
      responseModalities:['AUDIO'],speechConfig:{voiceConfig:{prebuiltVoiceConfig:{voiceName:input.voice}}},
    }}),
  });
  const firstInteractions=/^gemini-3\./.test(input.model);
  let response=await request(firstInteractions);
  if(firstInteractions&&(response.status===400||response.status===404)&&!signal.aborted){
    await response.body?.cancel();
    response=await request(false);
  }
  if(!response.ok)throw Error('voice_synthesis_provider_failed');
  const result=await response.json() as {steps?:{type?:string;content?:{type?:string;data?:string;mime_type?:string}[]}[];
    candidates?:{content?:{parts?:{inlineData?:{data?:string;mimeType?:string};inline_data?:{data?:string;mime_type?:string}}[]}}[]};
  const interactionAudio=result.steps?.filter(s=>s.type==='model_output').flatMap(s=>s.content??[]).filter(c=>c.type==='audio').at(-1);
  const generated=result.candidates?.flatMap(c=>c.content?.parts??[]).map(p=>p.inlineData??
    (p.inline_data?{data:p.inline_data.data,mimeType:p.inline_data.mime_type}:undefined)).find(p=>p?.data);
  const data64=interactionAudio?.data??generated?.data;
  if(!data64||data64.length>MAX_AUDIO_BYTES*2)throw Error('voice_synthesis_invalid');
  const mimeType=(interactionAudio?.mime_type??generated?.mimeType??'').toLowerCase();
  if(!['audio/l16','audio/l16;rate=24000','audio/pcm;rate=24000','audio/wav'].includes(mimeType))throw Error('voice_synthesis_mime_invalid');
  const data=Buffer.from(data64,'base64');
  if(!data.length||data.length>MAX_AUDIO_BYTES||data.toString('base64')!==data64||
    (/^audio\/(?:l16|pcm)/.test(mimeType)&&data.length%2!==0))throw Error('voice_synthesis_payload_invalid');
  return {data,mimeType};
}

/** Ogg/Opus is the WhatsApp voice-note format. Child process has no shell or paths. */
export async function toWhatsAppOpus(input:Buffer,mimeType:string,spawnProcess:typeof spawn=spawn):Promise<Buffer>{
  if(!input.length||input.length>MAX_AUDIO_BYTES)throw Error('voice_input_invalid');
  const pcm=/^audio\/(?:l16|pcm)/.test(mimeType);
  if(!pcm&&mimeType!=='audio/wav')throw Error('voice_container_unsupported');
  const args=[ '-hide_banner','-loglevel','error', ...(pcm?['-f','s16le','-ar','24000','-ac','1']:['-f','wav']),
    '-i','pipe:0','-c:a','libopus','-b:a','24k','-application','voip','-f','ogg','pipe:1' ];
  return await new Promise<Buffer>((resolve,reject)=>{
    const child=spawnProcess('ffmpeg',args,{stdio:['pipe','pipe','ignore']});
    const parts:Buffer[]=[];let length=0,settled=false;
    const end=(error?:Error,result?:Buffer)=>{
      if(settled)return;settled=true;clearTimeout(timer);
      if(error)reject(error);else resolve(result??Buffer.alloc(0));
    };
    const timer=setTimeout(()=>{child.kill('SIGKILL');end(Error('voice_encoding_timeout'));},15000);
    child.on('error',()=>end(Error('voice_encoder_unavailable')));
    child.stdout.on('data',(chunk:Buffer)=>{length+=chunk.length;if(length>4*1024*1024){child.kill('SIGKILL');end(Error('voice_encoding_too_large'));}else parts.push(chunk);});
    child.on('close',code=>{
      const data=Buffer.concat(parts);
      if(code!==0||data.subarray(0,4).toString('ascii')!=='OggS')end(Error('voice_encoding_failed'));
      else end(undefined,data);
    });
    child.stdin.on('error',()=>undefined);
    child.stdin.end(input);
  });
}
