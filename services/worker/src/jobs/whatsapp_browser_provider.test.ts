import {runInNewContext} from 'node:vm';
import {describe,expect,it,vi} from 'vitest';
import {browserAction} from './whatsapp_browser_provider.js';
import {BrowserIncomingSession} from './whatsapp_browser_media.js';

describe('WhatsApp browser call gateway',()=>{
  it('captures a provider event before its call model arrives and only accepts the matching native call',async()=>{
    const enableCallInterface=vi.fn(async()=>undefined);
    const nativeAccept=vi.fn(async()=>true);
    const call={id:'provider-id',peerJid:{_serialized:'2348012345678@c.us'},getState:()=> 'INCOMING_RING'};
    const store={activeCall:undefined as typeof call|undefined,getModelsArray:()=>[]};
    let incoming:(event:typeof call)=>void=()=>undefined;
    const context=runInNewContext(`(${browserAction.toString()})`,{
      WPP:{
        conn:{isAuthenticated:()=>true,getMyUserId:()=>({_serialized:'2348010000000@c.us'})},
        on:(name:string,callback:typeof incoming)=>{if(name==='call.incoming_call')incoming=callback;},
        call:{enableCallInterface},
        whatsapp:{CallStore:store,getVoipStackInterface:async()=>({acceptCall:nativeAccept})},
      },
    });
    expect(await context('poll')).toMatchObject({connected:true,ready:true,calls:[]});
    expect(enableCallInterface).toHaveBeenCalledOnce();
    incoming(call);
    expect(await context('poll')).toMatchObject({calls:[{id:call.id,peer:'2348012345678@c.us',state:'INCOMING_RING'}]});
    expect(await context('accept',call.id)).toBe(false);
    store.activeCall=call;
    expect(await context('accept','different-call')).toBe(false);
    expect(await context('accept',call.id)).toBe(true);
    expect(nativeAccept).toHaveBeenCalledExactlyOnceWith(true,false);
  });

  it('cannot attach audio to a declined or already ended browser call',async()=>{
    const accepted=vi.fn(async()=>false);
    const state=vi.fn(async()=>null);
    const session=new BrowserIncomingSession({id:'provider-id',peer:'2348012345678@c.us',
      state:'INCOMING_RING',video:false,group:false},{accept:accepted,state,end:async()=>undefined});
    const connected=vi.fn();
    session.on('connected',connected);
    session.masanawaAudioBridge=true;
    await expect(session.accept()).rejects.toThrow('browser_call_accept_failed');
    expect(state).not.toHaveBeenCalled();
    expect(connected).not.toHaveBeenCalled();
    session.observe('ENDED');
    expect(session.ended).toBe(true);
  });
});
