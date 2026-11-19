import {spawn, type ChildProcessWithoutNullStreams} from 'node:child_process';
import {EventEmitter} from 'node:events';
import type {IncomingSession} from './whatsapp_calls.js';

const rate=16000, samples=320;

export type BrowserOffer={id:string;peer:string;phone?:string;video:boolean;group:boolean;state:string};
export type BrowserCallControl={
  accept(id:string):Promise<boolean>;
  end(id:string):Promise<void>;
  state(id:string):Promise<string|null>;
};

export const activeBrowserCall=(state:string)=>['5','6','ACTIVE','ACCEPTRECEIVED','ACCEPT_RECEIVED','CALLACTIVE','CALL_ACTIVE'].includes(state);
const terminalBrowserCall=(state:string)=>['13','REJECTED','NOT_ANSWERED','ENDED','CALLSTATEENDING','CALL_STATE_ENDING','FAILED','CONNECTION_LOST'].includes(state);

export class BrowserIncomingSession extends EventEmitter<{ended:[];error:[];connected:[];audio:[Float32Array]}> implements IncomingSession {
  readonly callId:string;
  readonly isIncoming=true;
  readonly isWaiting=false;
  readonly isVideo:boolean;
  ended=false;
  canAccept=true;
  masanawaAudioBridge?:boolean;
  private capture:ChildProcessWithoutNullStreams|undefined;
  private playback:ChildProcessWithoutNullStreams|undefined;
  private carry:Buffer=Buffer.alloc(0);
  private hadProviderState=false;
  private lastStateAt=Date.now();
  private connected=false;

  constructor(offer:BrowserOffer,private readonly control:BrowserCallControl){
    super();
    this.callId=offer.id;
    this.isVideo=offer.video;
  }

  startAudio(_rate:number,_channels:number,_samples:number,_send:(chunk:Float32Array)=>void):void{}
  stopAudio():void{}

  private finish(){
    if(this.ended)return;
    this.ended=true;
    this.canAccept=false;
    this.capture?.kill();
    this.playback?.kill();
    this.stopAudio();
    this.emit('ended');
  }

  async end(){
    if(this.ended)return;
    this.finish();
    await this.control.end(this.callId);
  }

  observe(state:string|null){
    if(this.ended)return;
    if(state){
      this.hadProviderState=true;
      this.lastStateAt=Date.now();
      if(terminalBrowserCall(state)){this.finish();return;}
    }
    if(state===null&&this.hadProviderState&&Date.now()-this.lastStateAt>1500)this.finish();
  }

  async accept(){
    if(!this.canAccept||this.ended||!this.masanawaAudioBridge)throw Error('browser_call_unavailable');
    this.canAccept=false;
    if(!await this.control.accept(this.callId))throw Error('browser_call_accept_failed');
    // An accept command acknowledgement is not a connected phone call.
    const deadline=Date.now()+14000;
    while(!this.ended&&this.masanawaAudioBridge&&Date.now()<deadline){
      const state=await this.control.state(this.callId);
      this.observe(state);
      if(state&&activeBrowserCall(state)&&!this.ended){
        this.connectAudio();
        return;
      }
      await new Promise<void>(resolve=>setTimeout(resolve,250));
    }
    if(!this.ended)throw Error('browser_call_connection_timeout');
  }

  private connectAudio(){
    if(this.connected)return;
    this.connected=true;
    const audioError=()=>{if(!this.ended&&this.listenerCount('error'))this.emit('error');};
    const args=['--format=s16le',`--rate=${rate}`,'--channels=1','--latency-msec=80'];
    this.capture=spawn('parec',['--device=masanawa_call_output.monitor',...args]);
    this.playback=spawn('pacat',['--playback','--device=masanawa_call_input',...args]);
    for(const child of [this.capture,this.playback]){
      child.on('error',audioError);
      child.on('exit',audioError);
      child.stderr.resume();
    }
    this.playback.stdin.on('error',audioError);
    this.capture.stdout.on('data',(chunk:Buffer)=>{
      const pcm=this.carry.length?Buffer.concat([this.carry,chunk]):chunk;
      const even=pcm.length&~1;
      this.carry=Buffer.from(pcm.subarray(even));
      for(let offset=0;offset<even;offset+=samples*2){
        const segment=pcm.subarray(offset,offset+samples*2);
        const frame=new Float32Array(segment.length/2);
        for(let i=0;i<frame.length;i++)frame[i]=segment.readInt16LE(i*2)/32768;
        this.emit('audio',frame);
      }
    });
    this.emit('connected');
    this.startAudio(rate,1,samples,frame=>{
      const stream=this.playback?.stdin;
      if(!stream||!stream.writable||stream.writableLength>rate/2||this.ended)return;
      const pcm=Buffer.allocUnsafe(frame.length*2);
      for(let i=0;i<frame.length;i++)pcm.writeInt16LE(Math.max(-32768,Math.min(32767,Math.round(frame[i]!*32768))),i*2);
      stream.write(pcm);
    });
  }
}
