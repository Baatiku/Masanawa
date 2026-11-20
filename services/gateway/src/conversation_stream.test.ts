import { request as httpRequest } from 'node:http';
import Fastify from 'fastify';import{it,expect}from'vitest';import{streamConversationReply}from'./conversation_stream.js';
it('streams text, PCM and Live output transcript before the final response',async()=>{
 const app=Fastify();app.post('/media',(_req,reply)=>streamConversationReply(reply,async callbacks=>{await callbacks.onTextDelta('Hello');await callbacks.onAudioPcmChunk('AQACAA==');await callbacks.onAudioTranscriptDelta('Hello');return{reply:'Hello',agentRunId:'run',parts:[],audioTranscript:'Hello'};}));
 try{const r=await app.inject({method:'POST',url:'/media'});expect(r.statusCode).toBe(200);const events=r.body.trim().split('\n').map(x=>JSON.parse(x));expect(events.map(x=>x.type)).toEqual(['delta','audio','audio-transcript','done']);expect(events[3].audioTranscript).toBe('Hello');expect(r.headers['content-type']).toContain('application/x-ndjson');}finally{await app.close();}
});
it('sends a safe terminal error without exposing provider payloads',async()=>{const app=Fastify();app.post('/media',(_req,reply)=>streamConversationReply(reply,async()=>{throw new Error('private-key');}));try{const r=await app.inject({method:'POST',url:'/media'});expect(JSON.parse(r.body)).toEqual({type:'error',code:'turn_failed'});}finally{await app.close();}});

it('reports insufficient MB as an actionable safe stream error without provider inference',async()=>{
 const app=Fastify();app.post('/turn',(_req,reply)=>streamConversationReply(reply,async()=>{
  throw new RangeError('gb.wallet.insufficient_mb');
 }));
 try{
  const response=await app.inject({method:'POST',url:'/turn'});
  expect(JSON.parse(response.body)).toEqual({type:'error',code:'gb.wallet.insufficient_mb',
   message:'Not enough data MB for a reply. Add data and try again.'});
 }finally{await app.close()}
});


it('finishes an admitted turn when the client disconnects after acknowledgement',async()=>{
 const app=Fastify();
 let release!:()=>void;
 let complete!:(aborted:boolean)=>void;
 const gate=new Promise<void>(resolve=>{release=resolve;});
 const outcome=new Promise<boolean>(resolve=>{complete=resolve;});
 app.post('/turn',(_req,reply)=>streamConversationReply(reply,async(callbacks,signal)=>{
  await callbacks.onAccepted();
  await gate;
  complete(signal.aborted);
  return {reply:'Saved reply',agentRunId:'run',parts:[]};
 }));
 const origin=await app.listen({port:0,host:'127.0.0.1'});
 try{
  await new Promise<void>((resolve,reject)=>{
   const req=httpRequest(origin+'/turn',{method:'POST'},res=>{
    res.once('data',chunk=>{
     try{expect(JSON.parse(chunk.toString())).toEqual({type:'accepted'});}catch(error){reject(error);return;}
     res.destroy();
    });
    res.once('close',resolve);
   });
   req.once('error',reject);
   req.end();
  });
  release();
  await expect(outcome).resolves.toBe(false);
 }finally{release();await app.close();}
});
