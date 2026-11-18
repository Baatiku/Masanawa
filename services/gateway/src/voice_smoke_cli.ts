import {mkdir,writeFile} from 'node:fs/promises';
import {resolve,join} from 'node:path';
import {createHash,randomUUID} from 'node:crypto';
import {createGeminiRecordedLiveAudioRenderer} from './recorded_live_audio.js';
import {APPROVED_MASANA_VOICES} from './masana_voice_catalog.js';
// Trusted operator probe: no customer token, wallet mutation or conversation data.
// Preview is offline; --run explicitly makes bounded billable provider requests.
try{
 const args=process.argv.slice(2),run=args.includes('--run');
 const voicesArg=args.indexOf('--voices'),outArg=args.indexOf('--out');
 const known=new Set(['--run','--voices','--out']);
 for(let i=0;i<args.length;i++){
  if(!known.has(args[i]!))throw Error('arguments');
  if(args[i]!=='--run'){if(!args[i+1]||args[i+1]!.startsWith('--'))throw Error('arguments');i++;}
 }
 if(new Set(args.filter(x=>known.has(x))).size!==args.filter(x=>known.has(x)).length)throw Error('arguments');
 const voices=(voicesArg<0?'Bodi,Fola':args[voicesArg+1]!).split(',');
 if(!voices.length||voices.length>26||new Set(voices).size!==voices.length||voices.some(v=>!APPROVED_MASANA_VOICES.includes(v as never)))throw Error('voices');
 const model=process.env.MASANAWA_GEMINI_LIVE_MODEL??'gemini-3.8-live';
 if(!run){process.stdout.write(JSON.stringify({mode:'preview',voices,model,providerCalls:0})+'\n');}
 else{
  const apiKey=process.env.MASANAWA_GEMINI_API_KEY??process.env.MASANAWA_ALPHA_GEMINI_API_KEY;
  if(!apiKey)throw Error('provider_configuration');
  const directory=resolve(outArg<0?'voice-smoke-evidence':args[outArg+1]!);await mkdir(directory,{recursive:true,mode:0o700});
  const runId=randomUUID(),results=[];
  for(const voiceName of voices){
   try{
    const renderer=createGeminiRecordedLiveAudioRenderer({apiKey,model,voiceName});
    const audio=await renderer.render('This is a Masanawa audio connection test.',AbortSignal.timeout(45000));
    const pcm=Buffer.from(audio.dataBase64,'base64');if(pcm.length<480||pcm.length%2||audio.mimeType!=='audio/l16;rate=24000')throw Error('audio');
    const header=Buffer.alloc(44);header.write('RIFF');header.writeUInt32LE(36+pcm.length,4);header.write('WAVEfmt ',8);
    header.writeUInt32LE(16,16);header.writeUInt16LE(1,20);header.writeUInt16LE(1,22);header.writeUInt32LE(24000,24);
    header.writeUInt32LE(48000,28);header.writeUInt16LE(2,32);header.writeUInt16LE(16,34);header.write('data',36);header.writeUInt32LE(pcm.length,40);
    const file=join(directory,runId+'-'+voiceName+'.wav');await writeFile(file,Buffer.concat([header,pcm]),{flag:'wx',mode:0o600});
    results.push({voiceName,status:'PASS_REAL_PROVIDER_AUDIO',bytes:pcm.length,durationMs:audio.durationMs,
      sha256:createHash('sha256').update(pcm).digest('hex'),file});
   }catch{results.push({voiceName,status:'FAILED_PROVIDER_AUDIO'});process.exitCode=1;}
  }
  const report={runId,model,checkedAt:new Date().toISOString(),scope:'Gemini Live setup and returned audio; not handset microphone, playback or wallet settlement',results};
  await writeFile(join(directory,runId+'.json'),JSON.stringify(report,null,2)+'\n',{flag:'wx',mode:0o600});
  process.stdout.write(JSON.stringify(report)+'\n');
 }
}catch{process.stderr.write('Voice probe unavailable: check arguments and configured provider access. No keys or provider payloads are logged.\n');process.exitCode=1;}
