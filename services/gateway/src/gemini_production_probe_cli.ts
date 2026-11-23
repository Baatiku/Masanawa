/**
 * Operator-only real-provider diagnostic. Execute inside the running Gateway
 * container; never pass a key as a CLI argument or print model response data.
 * This probe makes small, billable Google requests and changes no customer data.
 */
import WebSocket from "ws";

const env=process.env;
const key=(env.MASANAWA_GEMINI_API_KEY||env.MASANAWA_ALPHA_GEMINI_API_KEY||"").trim();
const models=[...new Set((env.MASANAWA_GEMINI_REPLY_MODELS||env.GEMINI_REPLY_MODELS||
  "gemini-3.6-flash,gemini-3.8-flash").split(",").map(s=>s.trim()).filter(s=>/^gemini-[0-9a-z.-]{3,90}$/u.test(s)))].slice(0,4);
const liveModel=(env.MASANAWA_GEMINI_LIVE_MODEL||"gemini-3.8-live").trim();
const voice=(env.MASANAWA_GEMINI_LIVE_VOICE||"Bodi").trim();

function sampleWav():string {
  const frames=16000,pcm=Buffer.alloc(frames*2),wav=Buffer.alloc(44+pcm.length);
  wav.write("RIFF",0);wav.writeUInt32LE(36+pcm.length,4);
  wav.write("WAVEfmt ",8);wav.writeUInt32LE(16,16);wav.writeUInt16LE(1,20);
  wav.writeUInt16LE(1,22);wav.writeUInt32LE(16000,24);wav.writeUInt32LE(32000,28);
  wav.writeUInt16LE(2,32);wav.writeUInt16LE(16,34);wav.write("data",36);
  wav.writeUInt32LE(pcm.length,40);pcm.copy(wav,44);return wav.toString("base64");
}

async function generate(model:string,kind:"text"|"audio") {
  try {
    const audio=kind==="audio";
    const body={
      contents:[{role:"user",parts:audio
        ? [{text:"Is this silent recording speech? Answer briefly."},
          {inline_data:{mime_type:"audio/wav",data:sampleWav()}}]
        :[{text:"Reply with the word READY."}]}],
      generationConfig:{maxOutputTokens:128},
    };
    const response=await fetch(
      "https://generativelanguage.googleapis.com/v1beta/models/"+encodeURIComponent(model)+":generateContent",{
      method:"POST",headers:{"x-goog-api-key":key,"content-type":"application/json"},
      signal:AbortSignal.timeout(18000),body:JSON.stringify(body),
    });
    if(!response.ok){await response.body?.cancel();return {kind,model,status:"http_"+response.status};}
    const result=await response.json() as {candidates?:{content?:{parts?:{text?:string}[]}}[]};
    const hasText=Boolean(result.candidates?.some(c=>c.content?.parts?.some(p=>p.text?.trim())));
    return {kind,model,status:hasText?"reply_received":"empty_response"};
  }catch(error){
    const name=error instanceof Error?error.name:"";
    return {kind,model,status:name==="TimeoutError"?"timeout":"transport_error"};
  }
}

async function live(){
  if(!/^gemini-[0-9a-z.-]{3,90}$/u.test(liveModel)||!/^[A-Za-z0-9_-]{2,80}$/u.test(voice))
    return {kind:"live",model:"configured",status:"invalid_configuration"};
  return await new Promise<{kind:string;model:string;status:string;setup:boolean;audio:boolean}>(resolve=>{
    const url=new URL("wss://generativelanguage.googleapis.com/ws/google.ai.generativelanguage.v1beta.GenerativeService.BidiGenerateContent");
    url.searchParams.set("key",key);
    const ws=new WebSocket(url.toString(),{handshakeTimeout:12000,maxPayload:2*1024*1024});
    let setup=false,audio=false,settled=false;
    const finish=(status:string)=>{
      if(settled)return;settled=true;clearTimeout(timer);ws.terminate();
      resolve({kind:"live",model:liveModel,status,setup,audio});
    };
    const timer=setTimeout(()=>finish("timeout"),25000);
    ws.on("open",()=>ws.send(JSON.stringify({setup:{
      model:"models/"+liveModel,
      generationConfig:{responseModalities:["AUDIO"],speechConfig:{
        voiceConfig:{prebuiltVoiceConfig:{voiceName:voice}}},
      },
    }})));
    ws.on("message",raw=>{
      try{
        const payload=JSON.parse(raw.toString()) as {setupComplete?:unknown;error?:unknown;serverContent?:{
          turnComplete?:boolean;modelTurn?:{parts?:{inlineData?:{data?:string;mimeType?:string}}[]}}};
        if(payload.error){finish("provider_rejected");return;}
        if(payload.setupComplete&&!setup){
          setup=true;
          ws.send(JSON.stringify({clientContent:{turns:[{role:"user",parts:[{
            text:"For the connection check, please say hello briefly."
          }]}],turnComplete:true}}));return;
        }
        for(const part of payload.serverContent?.modelTurn?.parts??[]){
          if(part.inlineData?.data&&/^audio\/(?:pcm|l16)/i.test(part.inlineData.mimeType||""))audio=true;
        }
        if(payload.serverContent?.turnComplete)finish(audio?"audio_received":"no_audio");
      }catch{finish("invalid_provider_frame");}
    });
    ws.on("error",()=>finish("transport_error"));
    ws.on("close",()=>finish(setup?"connection_closed":"connection_failed"));
  });
}

if(!key||key.length<24){
  console.log(JSON.stringify({event:"gemini.production_probe",status:"missing_key"}));
  process.exitCode=1;
}else{
  const results=[];
  for(const model of models){
    results.push(await generate(model,"text"));
    results.push(await generate(model,"audio"));
  }
  results.push(await live());
  console.log(JSON.stringify({event:"gemini.production_probe",results}));
  if(!results.some(r=>r.kind==="text"&&r.status==="reply_received")||
     !results.some(r=>r.kind==="audio"&&r.status==="reply_received")||
     !results.some(r=>r.kind==="live"&&r.status==="audio_received"))process.exitCode=1;
}
