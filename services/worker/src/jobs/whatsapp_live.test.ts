import {describe,expect,it,vi} from 'vitest';
import {encryptLinkedSecret} from './whatsapp_linked.js';
import {formatWhatsAppTranscript,generateLiveReply,LiveProviderError,withGeminiKeyPool} from './whatsapp_live.js';

class FakeSocket extends EventTarget {
  sent:unknown[]=[];
  close(){/* test socket */}
  send(value:string){this.sent.push(JSON.parse(value));}
  dispatchRaw(data:unknown){const event=new Event('message') as Event & {data:unknown};
    Object.defineProperty(event,'data',{value:data});this.dispatchEvent(event);}
  dispatch(payload:unknown){this.dispatchRaw(JSON.stringify(payload));}
}

describe('WhatsApp Gemini Live audio-first replies',()=>{
  it('converts headings and emphasis to WhatsApp Markdown without rewriting the spoken words',()=>{
    expect(formatWhatsAppTranscript('## Help\n\n**Contact us**')).toBe('*Help*\n\n*Contact us*');
  });
  it('sends one audio-modal Live request and returns its native output transcription',async()=>{
    const socket=new FakeSocket();
    const reply=generateLiveReply({apiKey:'key',model:'gemini-3.8-live',voice:'Kore',system:'Safe assistant',
      message:'Salam',createSocket:()=>socket as unknown as WebSocket});
    socket.dispatchEvent(new Event('open'));
    expect(socket.sent[0]).toMatchObject({setup:{model:'models/gemini-3.8-live',
      generationConfig:{responseModalities:['AUDIO']},outputAudioTranscription:{}}});
    socket.dispatch({setupComplete:{}});
    await vi.waitFor(()=>expect(socket.sent[1]).toMatchObject({clientContent:{turnComplete:true}}));
    socket.dispatch({serverContent:{modelTurn:{parts:[{inlineData:{mimeType:'audio/pcm;rate=24000',
      data:Buffer.from([0,0,3,0]).toString('base64')}}]},outputTranscription:{text:'Wa alaikum assalam.'}}});
    socket.dispatch({serverContent:{turnComplete:true}});
    expect(await reply).toEqual({transcript:'Wa alaikum assalam.',pcm:Buffer.from([0,0,3,0])});
  });
  it('decodes binary Live JSON frames without losing spoken audio or its transcription',async()=>{
    const socket=new FakeSocket();
    const reply=generateLiveReply({apiKey:'key',model:'gemini-3.8-live',voice:'Kore',system:'Safe',
      message:'Salam',createSocket:()=>socket as unknown as WebSocket});
    socket.dispatchEvent(new Event('open'));
    socket.dispatchRaw(new Blob([JSON.stringify({setupComplete:{}})]));
    const audio=Buffer.from([1,0,2,0]);
    socket.dispatchRaw(new Blob([JSON.stringify({serverContent:{modelTurn:{parts:[
      {inlineData:{mimeType:'audio/pcm;rate=24000',data:audio.toString('base64')}}
    ]},outputTranscription:{text:'Sannu.'}}})]));
    socket.dispatchRaw(new TextEncoder().encode(JSON.stringify({serverContent:{turnComplete:true}})).buffer);
    expect(await reply).toEqual({transcript:'Sannu.',pcm:audio});
    expect(socket.sent[1]).toMatchObject({clientContent:{turnComplete:true}});
  });
  it('preserves frame ordering when Blob decoding finishes after turnComplete arrives',async()=>{
    const socket=new FakeSocket();
    const reply=generateLiveReply({apiKey:'key',model:'gemini-3.8-live',voice:'Kore',system:'Safe',
      message:'Hello',createSocket:()=>socket as unknown as WebSocket});
    socket.dispatchEvent(new Event('open'));socket.dispatch({setupComplete:{}});
    class DelayedBlob extends Blob {
      override async text(){await new Promise(resolve=>setTimeout(resolve,5));return super.text();}
    }
    const audio=Buffer.from([1,0,3,0]);
    socket.dispatchRaw(new DelayedBlob([JSON.stringify({serverContent:{modelTurn:{parts:[
      {inlineData:{mimeType:'audio/l16;rate=24000',data:audio.toString('base64')}}
    ]},outputTranscription:{text:'Hello.'}}})]));
    socket.dispatchRaw(new Blob([JSON.stringify({serverContent:{turnComplete:true}})]));
    socket.dispatchEvent(new Event('close'));
    expect(await reply).toEqual({transcript:'Hello.',pcm:audio});
  });
  it('refuses a text-only response so a transcript can never impersonate delivered audio',async()=>{
    const socket=new FakeSocket();
    const promise=generateLiveReply({apiKey:'key',model:'gemini-3.8-live',voice:'Kore',system:'',message:'Hi',
      createSocket:()=>socket as unknown as WebSocket});
    socket.dispatchEvent(new Event('open'));socket.dispatch({setupComplete:{}});
    socket.dispatch({serverContent:{outputTranscription:{text:'Hi'},turnComplete:true}});
    await expect(promise).rejects.toThrow('live_invalid');
  });
  it('tries every eligible API key in order and cools down only the failed key',async()=>{
    const key=Buffer.alloc(32,2).toString('base64');
    const queries:{sql:string;params:unknown[]}[]=[];
    const pool={query:vi.fn(async(sql:string,params:unknown[]=[])=>{
      queries.push({sql,params});
      if(sql.includes('FROM security.whatsapp_gemini_keys'))return {rows:[
        {key_id:'a',key_ciphertext:encryptLinkedSecret('key-one',key)},
        {key_id:'a2',key_ciphertext:encryptLinkedSecret('key-two',key)},
        {key_id:'b',key_ciphertext:encryptLinkedSecret('key-three',key)},
      ]};
      return {rows:[]};
    })};
    const invoke=vi.fn(async(apiKey:string)=>{
      if(apiKey!=='key-three')throw new LiveProviderError('live_quota');
      return 'voice-ready';
    });
    expect(await withGeminiKeyPool({pool:pool as never,tenantId:'tenant',sessionKey:key,env:{},invoke}))
      .toBe('voice-ready');
    expect(invoke.mock.calls.map(c=>c[0])).toEqual(['key-one','key-two','key-three']);
    expect(queries.filter(q=>q.sql.includes('SET cooldown_until=clock_timestamp()'))
      .map(q=>[q.params[1],q.params[2]])).toEqual([['a',300],['a2',300]]);
  });
});
