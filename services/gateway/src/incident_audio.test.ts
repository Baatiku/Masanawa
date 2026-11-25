import {describe,expect,it,vi} from 'vitest';
import {audioToWav,createIncidentAudioService,incidentBulletin,type PublicIncidentAudioSource} from './incident_audio.js';

const source:PublicIncidentAudioSource={
  reference:'MR-20261122-AABBCCDD',title:'Reviewed public water outage',
  summary:'Residents have reported interrupted supply in the local area.',
  category:'water_sanitation',locationState:'Oyo',locationLga:'Ibadan North',
  status:'triage',publicationStatus:'published',
};

describe('public incident voice bulletin privacy and media',()=>{
  it('separates professional public reporting from independent fact verification',()=>{
    const bulletin=incidentBulletin(source);
    expect(bulletin).toContain('According to a report submitted through Masanawa');
    expect(bulletin).toContain('Ibadan North, Oyo');
    expect(bulletin).toContain('not proof that the event was independently verified');
    expect(bulletin).not.toContain('agency has responded');
  });
  it('never narrates the contents of an unreviewed report',()=>{
    const pending=incidentBulletin({...source,publicationStatus:'pending_review',
      title:'Name of private person',summary:'A sensitive private accusation'});
    expect(pending).toContain('remain unverified');
    expect(pending).not.toContain('Name of private person');
    expect(pending).not.toContain('sensitive private accusation');
    expect(pending).toContain('Oyo');
  });
  it('wraps 24 kHz mono PCM as a valid RIFF/WAV without changing sample bytes',()=>{
    const pcm=Buffer.from([0,0,255,127,0,128]);
    const wav=audioToWav(pcm.toString('base64'),'audio/l16;rate=24000');
    expect(wav.toString('ascii',0,4)).toBe('RIFF');
    expect(wav.toString('ascii',8,12)).toBe('WAVE');
    expect(wav.readUInt32LE(24)).toBe(24_000);
    expect(wav.readUInt16LE(22)).toBe(1);
    expect(wav.subarray(44)).toEqual(pcm);
    expect(()=>audioToWav(pcm.toString('base64'),'application/octet-stream')).toThrow();
  });
  it('caches repeated approved public narrations but re-renders on status change',async()=>{
    const render=vi.fn(async(_text:string)=>({mimeType:'audio/l16;rate=24000',
      dataBase64:Buffer.from([0,0]).toString('base64'),durationMs:1}));
    const voice=createIncidentAudioService({renderer:{render} as never,now:()=>100_000});
    const first=await voice.render(source,'127.0.0.1');
    const second=await voice.render(source,'127.0.0.1');
    expect(first.equals(second)).toBe(true);
    expect(render).toHaveBeenCalledOnce();
    await voice.render({...source,status:'resolved'},'127.0.0.1');
    expect(render).toHaveBeenCalledTimes(2);
    expect(render.mock.calls[1]?.[0]).toContain('marked resolved');
  });
  it('limits repeated expensive public voice generation by caller',async()=>{
    const render=vi.fn(async(_text:string)=>({mimeType:'audio/l16;rate=24000',
      dataBase64:Buffer.from([0,0]).toString('base64'),durationMs:1}));
    const voice=createIncidentAudioService({renderer:{render} as never,now:()=>100_000});
    for(const status of ['submitted','triage','resolved'])await voice.render({...source,status},'127.0.0.2');
    await expect(voice.render({...source,status:'closed'},'127.0.0.2')).rejects.toThrow('incident_audio_rate_limited');
  });
});


describe('durable bulletin reuse and bounded concurrency',()=>{
  it('reuses a stored revision across service restart and deduplicates concurrent requests',async()=>{
    const render=vi.fn(async()=>({mimeType:'audio/l16;rate=24000',dataBase64:'AAA=',durationMs:1}));
    const objects=new Map<string,Buffer>();
    const store={read:async(key:string)=>objects.get(key)??null,write:async(key:string,wav:Buffer)=>{objects.set(key,wav);}};
    const first=createIncidentAudioService({renderer:{render} as never,store});
    await Promise.all([first.render(source,'a'),first.render(source,'b')]);
    expect(render).toHaveBeenCalledOnce();
    const restarted=createIncidentAudioService({renderer:{render} as never,store});
    await restarted.render(source,'c');expect(render).toHaveBeenCalledOnce();
    await restarted.render({...source,status:'resolved'},'c');expect(render).toHaveBeenCalledTimes(2);
  });
  it('backs off a failed generation and retries after the cooldown',async()=>{
    let now=100_000;
    const render=vi.fn(async()=>({mimeType:'audio/l16;rate=24000',dataBase64:'AAA=',durationMs:1}));
    render.mockRejectedValueOnce(Error('provider unavailable'));
    const service=createIncidentAudioService({renderer:{render} as never,now:()=>now});
    await expect(service.render(source,'a')).rejects.toThrow('provider unavailable');
    await expect(service.render(source,'b')).rejects.toThrow('incident_audio_retry_later');
    now+=61_000;await service.render(source,'b');expect(render).toHaveBeenCalledTimes(2);
  });
});
