import {describe,it,expect,vi} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {createGatewayApp} from '../app.js';
import {createGeminiLiveTokenService} from '../live_voice_token.js';
import type {AgentConversationAuthorizer} from '../agent_conversation_contract.js';
import {reviewedMbCallRequired} from './public_token_policy.js';

const characterId=createCanonicalId('character');
function fixture(support:boolean){
 const provider=vi.fn(async()=>Response.json({name:'auth_tokens/fixture-token-0123456789'}));
 const profile=vi.fn(async()=>({tenantId:'tenant',characterId,supportAgent:support,
  voiceProvider:'gemini',voiceName:'Fola'}));
 const authorize=vi.fn(async({authorizationHeader}:{authorizationHeader:string|undefined})=>{
  if(authorizationHeader!=='Bearer owner')throw Object.assign(new Error('private auth'),{statusCode:401});
  return {scope:{tenantId:'tenant',userId:'user',characterId,relationshipId:'relationship'},
   presentation:{displayName:'Masana',roleLabel:'Assistant',about:'Help'}};
 });
 const config={apiKey:'fixture-private-key',authorizer:{authorize} as unknown as AgentConversationAuthorizer,
  fetchImpl:provider as typeof fetch,platformProfiles:{readForCharacter:profile} as never};
 return {provider,profile,authorize,config};
}
describe('public direct-token compatibility cannot bypass reviewed MB calls',()=>{
 it.each([true,false])('returns a typed admission response before provider work for support=%s',async(support)=>{
  const f=fixture(support),logs=vi.spyOn(console,'error').mockImplementation(()=>{});
  const app=createGatewayApp({liveVoiceTokens:createGeminiLiveTokenService({
   ...f.config,paidVoiceAdmission:reviewedMbCallRequired})});
  try{
   for(const extra of [{},{admissionId:'retired-credits-admission'},{purpose:'twin-setup'}]){
    const result=await app.inject({method:'POST',url:'/agent/live/token',
     headers:{authorization:'Bearer owner'},payload:{characterId,...extra}});
    expect(result.statusCode).toBe(409);
    expect(result.json()).toEqual({error:{code:'calls.mb_admission_required',
     message:'Start a reviewed MB call to continue.'}});
    expect(result.body).not.toContain('fixture-private-key');
   }
   expect(f.provider).not.toHaveBeenCalled();expect(f.profile).not.toHaveBeenCalled();
   expect(logs.mock.calls.map(([entry])=>JSON.parse(String(entry)))).toEqual(
    Array.from({length:3},()=>({event:'agent.live_token_failed',stage:'paid-voice-admission',code:'calls.mb_admission_required'})));
   expect((await app.inject({method:'POST',url:'/agent/live/token',payload:{characterId}})).statusCode).toBe(401);
   expect((await app.inject({method:'POST',url:'/agent/live/token',payload:{characterId:'invalid'}})).statusCode).toBe(400);
  }finally{await app.close();logs.mockRestore()}
 });
 it('leaves the separate private MB provider service able to mint an approved voice',async()=>{
  const f=fixture(false);
  const grant=await createGeminiLiveTokenService(f.config).mint({characterId,authorizationHeader:'Bearer owner'});
  expect(grant.voiceName).toBe('Fola');expect(f.provider).toHaveBeenCalledOnce();
 });
});
