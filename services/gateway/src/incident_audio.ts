import { MASANAWA_EMERGENCY_VOICE } from '@masanawa/contracts';
import {createHash} from 'node:crypto';
import {createGeminiLiveAudioRenderer, type NativeAudioRenderer} from './native_audio.js';

export type PublicIncidentAudioSource={
  reference:string;title:string;summary:string;category:string;
  locationState:string;locationLga?:string|null;status:string;
  publicationStatus:'pending_review'|'published';
};

const categories:Record<string,string>={
  fire_rescue:'fire and rescue',road_transport:'roads and transport',disaster:'disasters',
  infrastructure:'public infrastructure',water_sanitation:'water and sanitation',
  environment:'environmental conditions',public_services:'public services',
};
const statuses:Record<string,string>={
  submitted:'submitted',triage:'under initial assessment',needs_info:'awaiting more information',
  routed:'under internal routing review',acknowledged:'agency receipt recorded',
  in_progress:'being tracked',resolved:'marked resolved',closed:'closed',dismissed:'dismissed',
};
const squash=(value:string,max:number)=>value.replace(/[\r\n\t]+/g,' ').replace(/\\s+/g,' ').trim().slice(0,max);

/** Narration is sourced ONLY from fields authorized for public display.
 * Never pass the private description, original voice note, reporter identity,
 * coordinates, reporter contact or private staff notes to the TTS provider.
 * Editorial review is not a claim of independent verification.
 */
export function incidentBulletin(source:PublicIncidentAudioSource):string {
  const state=squash(source.locationState,80);
  const region=[source.locationLga?squash(source.locationLga,100):'',state].filter(Boolean).join(', ');
  if(source.publicationStatus==='pending_review'){
    return `Masanawa community incident update. A citizen report concerning ${categories[source.category]??'a public service issue'} has been submitted in ${state}, Nigeria. The details are pending editorial review and remain unverified. This is not an official emergency-service announcement. In immediate danger, call Nigeria's emergency number, one one two.`;
  }
  const title=squash(source.title,140);
  const summary=squash(source.summary,600);
  const status=statuses[source.status]??'under review';
  return `Masanawa civic incident bulletin. ${title}. According to a report submitted through Masanawa, ${summary} The reported area is ${region}, Nigeria. The case is currently ${status}. This summary was reviewed for public safety; publication is not proof that the event was independently verified or that responders were dispatched.`;
}

export function audioToWav(dataBase64:string,mimeType:string):Buffer{
  const audio=Buffer.from(dataBase64,'base64');
  if(audio.length===0||audio.length>4_000_000||audio.toString('base64')!==dataBase64)
    throw new Error('Invalid synthesized audio');
  if(/^audio\/(?:wav|x-wav)$/i.test(mimeType)){
    if(audio.length<44||audio.toString('ascii',0,4)!=='RIFF'||audio.toString('ascii',8,12)!=='WAVE')
      throw new Error('Invalid synthesized WAV');
    return audio;
  }
  if(!/^audio\/(?:l16|pcm)(?:;\s*rate=24000)?$/i.test(mimeType)||audio.length%2)
    throw new Error('Unsupported synthesized audio');
  const header=Buffer.alloc(44);
  header.write('RIFF',0);header.writeUInt32LE(audio.length+36,4);header.write('WAVEfmt ',8);
  header.writeUInt32LE(16,16);header.writeUInt16LE(1,20);header.writeUInt16LE(1,22);
  header.writeUInt32LE(24000,24);header.writeUInt32LE(48000,28);header.writeUInt16LE(2,32);
  header.writeUInt16LE(16,34);header.write('data',36);header.writeUInt32LE(audio.length,40);
  return Buffer.concat([header,audio]);
}

/** Bounded memory-only cache, intentionally not persistent: withdrawal is
 * checked in PostgreSQL on EVERY request, even if a bulletin was rendered.
 */
export function createIncidentAudioService(options:{
  apiKey?:string;model?:string;voice?:string;
  renderer?:NativeAudioRenderer;now?:()=>number;
}={}){
  const now=options.now??Date.now;
  const cached=new Map<string,{audio:Buffer;at:number}>();
  const limits=new Map<string,{start:number,count:number}>();
  let globalStart=0,globalCount=0;
  const model=options.model??'gemini-3.8-flash-lite-tts';
  const voice=options.voice??MASANAWA_EMERGENCY_VOICE;
  const renderer=options.renderer??(options.apiKey?createGeminiLiveAudioRenderer({apiKey:options.apiKey,model,voiceName:voice}):undefined);
  return {
    async render(source:PublicIncidentAudioSource,requestIp:string):Promise<Buffer>{
      const script=incidentBulletin(source);
      const key=createHash('sha256').update(source.reference+'\n'+script+'\n'+model+'\n'+voice).digest('hex');
      const hit=cached.get(key);
      if(hit&&now()-hit.at<20*60_000){cached.delete(key);cached.set(key,hit);return hit.audio;}
      if(!renderer)throw new Error('incident_audio_not_configured');
      const current=now();
      const ip=requestIp.slice(0,100);
      if(current-globalStart>=60_000){globalStart=current;globalCount=0;limits.clear();}
      const quota=limits.get(ip)??{start:current,count:0};
      if(current-quota.start>=60_000){quota.start=current;quota.count=0;}
      if(quota.count>=3||globalCount>=20)throw new Error('incident_audio_rate_limited');
      quota.count++;globalCount++;limits.set(ip,quota);
      const result=await renderer.render(
        'Narrate this approved public incident bulletin once in standard Nigerian Hausa, faithfully translating its meaning and retaining all uncertainty, names, numbers and location details. Use a calm and clear radio-news style. Do not invent details, embellish, dramatize or claim official verification.\n'+JSON.stringify(script),
        AbortSignal.timeout(40_000),
      );
      const audio=audioToWav(result.dataBase64,result.mimeType);
      cached.set(key,{audio,at:current});
      while(cached.size>10)cached.delete(cached.keys().next().value!);
      return audio;
    },
  };
}
