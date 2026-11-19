import {describe,expect,it,vi} from 'vitest';
import {spawnSync} from 'node:child_process';
import {toGeminiAudio,transcribeWhatsAppAudio,synthesizeWhatsAppVoice,toWhatsAppOpus} from './whatsapp_media.js';

describe('WhatsApp Gemini audio boundary',()=>{
  it('transcribes Hausa speech without requesting private account authority',async()=>{
    const decoded=Buffer.from('fLaCvoice-note');
    const fetchMock=vi.fn(async(_url:string,init:RequestInit)=>{
      const body=JSON.parse(String(init.body)) as {contents:{parts:{text?:string;inlineData?:{mimeType:string;data:string}}[]}[]};
      expect(body.contents[0]?.parts[1]?.inlineData).toEqual({mimeType:'audio/flac',data:decoded.toString('base64')});
      expect(body.contents[0]?.parts[0]?.text).toMatch(/Hausa/);
      return {ok:true,json:async()=>({candidates:[{content:{parts:[{text:'Sannu, ina kwana?'}]}}]})};
    });
    await expect(transcribeWhatsAppAudio({audio:Buffer.from('voice-note'),mimeType:'audio/ogg; codecs=opus',
      apiKey:'stub',model:'gemini-2.5-flash',fetch:fetchMock as never,
      convert:async()=>({audio:decoded,mimeType:'audio/flac'})})).resolves.toBe('Sannu, ina kwana?');
    expect(fetchMock).toHaveBeenCalledTimes(1);
  });
  it('decodes actual Ogg/Opus into Gemini-compatible FLAC, without writing media to disk',async()=>{
    if(spawnSync('ffmpeg',['-version'],{stdio:'ignore'}).status!==0){
      await expect(toGeminiAudio(Buffer.from('OggS'),'audio/ogg')).rejects.toThrow('audio_decoder_unavailable');
      return;
    }
    const encoded=spawnSync('ffmpeg',['-hide_banner','-loglevel','error','-f','lavfi','-i',
      'sine=frequency=440:duration=0.3','-c:a','libopus','-f','ogg','pipe:1'],{maxBuffer:1024*1024});
    expect(encoded.status).toBe(0);
    const result=await toGeminiAudio(encoded.stdout,'audio/ogg; codecs=opus');
    expect(result.mimeType).toBe('audio/flac');
    expect(result.audio.subarray(0,4).toString('ascii')).toBe('fLaC');
    expect(result.audio.length).toBeGreaterThan(100);
  });
  it('preserves supported non-Ogg audio formats',async()=>{
    const audio=Buffer.from('audio-data');
    expect(await toGeminiAudio(audio,'audio/mp4')).toEqual({audio,mimeType:'audio/mp4'});
    expect(await toGeminiAudio(audio,'audio/opus')).toEqual({audio,mimeType:'audio/opus'});
  });
  it('rejects unsupported, empty, oversized or unconfigured audio before network transfer',async()=>{
    const fetchMock=vi.fn();
    const base={apiKey:'stub',model:'model',fetch:fetchMock as never};
    await expect(transcribeWhatsAppAudio({...base,audio:Buffer.alloc(1),mimeType:'application/pdf'})).rejects.toThrow('audio_mime_unsupported');
    await expect(transcribeWhatsAppAudio({...base,audio:Buffer.alloc(0),mimeType:'audio/ogg'})).rejects.toThrow();
    await expect(transcribeWhatsAppAudio({...base,audio:Buffer.alloc(8*1024*1024+1),mimeType:'audio/ogg'})).rejects.toThrow();
    expect(fetchMock).not.toHaveBeenCalled();
  });
  it('classifies transcription quota errors so inbound voice can retry safely',async()=>{
    const fetchMock=vi.fn(async()=>new Response('',{status:429}));
    await expect(transcribeWhatsAppAudio({audio:Buffer.from('voice-note'),mimeType:'audio/opus',
      apiKey:'stub',model:'gemini-3.8-flash',fetch:fetchMock as never}))
      .rejects.toThrow('audio_transcription_quota_exceeded');
  });
  it('converts provider-generated signed 16-bit PCM into WhatsApp Ogg/Opus',async()=>{
    const audio=Buffer.alloc(24000*2/10);
    const mock=vi.fn(async()=>({ok:true,json:async()=>({steps:[{type:'model_output',content:[{
      type:'audio',mime_type:'audio/l16',data:audio.toString('base64')}]}]})}));
    const result=await synthesizeWhatsAppVoice({text:'Sannu!',voice:'Kore',apiKey:'stub',model:'gemini-3.8-flash-tts',fetch:mock as never});
    expect(result.data).toEqual(audio);
    // Foundation CI has no system FFmpeg; the production Worker Docker image
    // explicitly installs it. Both environments verify their real behavior.
    if(spawnSync('ffmpeg',['-version'],{stdio:'ignore'}).status!==0){
      await expect(toWhatsAppOpus(result.data,result.mimeType)).rejects.toThrow('voice_encoder_unavailable');return;
    }
    const opus=await toWhatsAppOpus(result.data,result.mimeType);
    expect(opus.subarray(0,4).toString('ascii')).toBe('OggS');
    expect(opus.length).toBeGreaterThan(50);
  });
  it('uses the canonical Gemini GenerateContent TTS fallback after a definite Interactions rejection',async()=>{
    const pcm=Buffer.alloc(4800);
    const call=vi.fn(async(url:string,init:RequestInit)=>{
      if(url.endsWith('/interactions'))return {status:404,ok:false,body:null};
      const body=JSON.parse(String(init.body)) as {generationConfig:{responseModalities:string[];speechConfig:{voiceConfig:{prebuiltVoiceConfig:{voiceName:string}}}}};
      expect(body.generationConfig.responseModalities).toEqual(['AUDIO']);
      expect(body.generationConfig.speechConfig.voiceConfig.prebuiltVoiceConfig.voiceName).toBe('Kore');
      return {status:200,ok:true,json:async()=>({candidates:[{content:{parts:[{
        inlineData:{mimeType:'audio/l16;rate=24000',data:pcm.toString('base64')},
      }]}}]})};
    });
    await expect(synthesizeWhatsAppVoice({text:'Good morning',voice:'Kore',apiKey:'stub',model:'gemini-3.8-flash-tts',fetch:call as never}))
      .resolves.toEqual({data:pcm,mimeType:'audio/l16;rate=24000'});
    expect(call).toHaveBeenCalledTimes(2);
  });
  it('never retries an ambiguous provider failure as a second TTS request',async()=>{
    const call=vi.fn(async()=>({status:503,ok:false}));
    await expect(synthesizeWhatsAppVoice({text:'Hello',voice:'Kore',apiKey:'stub',model:'gemini-3.8-flash-tts',fetch:call as never}))
      .rejects.toThrow('voice_synthesis_provider_unavailable');
    expect(call).toHaveBeenCalledTimes(1);
  });
  it('classifies exhausted Gemini TTS quota for delayed retry before any WhatsApp send',async()=>{
    const call=vi.fn(async()=>({status:429,ok:false}));
    await expect(synthesizeWhatsAppVoice({text:'Wa alaikum assalam',voice:'Kore',apiKey:'stub',
      model:'gemini-3.8-flash-lite-tts',fetch:call as never}))
      .rejects.toThrow('voice_synthesis_quota_exceeded');
    expect(call).toHaveBeenCalledTimes(1);
  });
});
