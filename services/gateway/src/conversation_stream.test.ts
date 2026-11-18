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
