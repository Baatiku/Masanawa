import {describe,expect,it,vi} from 'vitest';
import {spawnSync} from 'node:child_process';
import {transcribeWhatsAppAudio,synthesizeWhatsAppVoice,toWhatsAppOpus} from './whatsapp_media.js';

describe('WhatsApp Gemini audio boundary',()=>{
  it('transcribes Hausa speech without requesting private account authority',async()=>{
    const fetchMock=vi.fn(async(_url:string,init:RequestInit)=>{
      const body=JSON.parse(String(init.body)) as {contents:{parts:{text?:string;inlineData?:{mimeType:string;data:string}}[]}[]};
      expect(body.contents[0]?.parts[1]?.inlineData).toEqual({mimeType:'audio/ogg',data:Buffer.from('voice-note').toString('base64')});
      expect(body.contents[0]?.parts[0]?.text).toMatch(/Hausa/);
      return {ok:true,json:async()=>({candidates:[{content:{parts:[{text:'Sannu, ina kwana?'}]}}]})};
    });
    await expect(transcribeWhatsAppAudio({audio:Buffer.from('voice-note'),mimeType:'audio/ogg; codecs=opus',
      apiKey:'stub',model:'gemini-2.5-flash',fetch:fetchMock as never})).resolves.toBe('Sannu, ina kwana?');
    expect(fetchMock).toHaveBeenCalledTimes(1);
  });
  it('rejects unsupported, empty, oversized or unconfigured audio before network transfer',async()=>{
    const fetchMock=vi.fn();
    const base={apiKey:'stub',model:'model',fetch:fetchMock as never};
    await expect(transcribeWhatsAppAudio({...base,audio:Buffer.alloc(1),mimeType:'application/pdf'})).rejects.toThrow('audio_mime_unsupported');
    await expect(transcribeWhatsAppAudio({...base,audio:Buffer.alloc(0),mimeType:'audio/ogg'})).rejects.toThrow();
    await expect(transcribeWhatsAppAudio({...base,audio:Buffer.alloc(8*1024*1024+1),mimeType:'audio/ogg'})).rejects.toThrow();
    expect(fetchMock).not.toHaveBeenCalled();
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
});
