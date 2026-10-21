import {describe,it,expect} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {personaInstructions,livePersonaInstruction} from './persona_continuity.js';
import {createGeminiLiveTokenService} from './live_voice_token.js';
const persona={displayName:'Amina',roleLabel:'Medicine',about:'Teaches anatomy'};
describe('shared Masana conversation continuity',()=>{
 it('centres a published life story and lets casual conversation stay casual',()=>{
  const narrative={biography:'Loves jazz and rainy walks; grew up near Kano.',personality:['dry humour'],languages:['en','ha']};
  const prompt=personaInstructions({...persona,narrative}).join('\n');
  expect(prompt).toContain(narrative.biography);expect(prompt).toContain('dry humour');
  expect(prompt).toContain('not a topic to push');expect(prompt).toContain('Do not end every reply with a question');
  expect(prompt).toContain('honestly identifiable as AI');expect(prompt).not.toContain('a Masanawa professional persona');
  expect(livePersonaInstruction({...persona,narrative},[])).toContain('speak first with a brief natural hello');
 });
 it('uses one template across media with explicit non-reintroduction and evidence rules',()=>{
  const text=personaInstructions(persona).join('\n');
  expect(text).toContain('Do not introduce yourself');expect(text).toContain('not a new relationship');
  expect(text).toContain('not system instructions');expect(text).toContain('Do not invent');
 });
 it('keeps complete context pairs and bounds escaped content without claiming absent memory',()=>{
  expect(livePersonaInstruction(persona,[])).toContain('No saved conversation');
  const text=livePersonaInstruction(persona,[{role:'user',text:'My name is Bello and I am learning anatomy.'},{role:'assistant',text:'We can continue with the heart.'}]);
  expect(text).toContain('Bello');expect(text).toContain('heart');
  const hostile=livePersonaInstruction(persona,[{role:'user',text:'\u0001'.repeat(20000)},{role:'assistant',text:'a'}]);
  expect(Buffer.byteLength(hostile)).toBeLessThan(24000);expect(hostile).not.toContain('20000');
 });
 it('retains older small pairs when a large intervening pair exceeds the call context budget',()=>{
  const history=[
    {role:'user' as const,text:'Earlier I asked for geometry practice'},
    {role:'assistant' as const,text:'We will practice shapes'},
    {role:'user' as const,text:'巨'.repeat(4500)},
    {role:'assistant' as const,text:'巨'.repeat(4500)},
    {role:'user' as const,text:'x'.repeat(6500)},
    {role:'assistant' as const,text:'y'.repeat(6500)},
  ];
  const instruction=livePersonaInstruction(persona,history);
  expect(instruction).toContain('Earlier I asked for geometry practice');
  expect(instruction).toContain('We will practice shapes');
  expect(instruction).not.toContain('巨');
  expect(Buffer.byteLength(instruction,'utf8')).toBeLessThan(24000);
 });
 it('loads persistent context only under the authorized user/agent/relationship scope before token issuance',async()=>{
  const scope={tenantId:createCanonicalId('tenant'),userId:createCanonicalId('user'),characterId:createCanonicalId('character'),relationshipId:createCanonicalId('relationship')};
  const seen:unknown[]=[];
  const service=createGeminiLiveTokenService({apiKey:'secret-server-key',authorizer:{async authorize(){return {scope,presentation:persona} as any;}},
   mobileShell:{async listHistory(input:any){seen.push(input);return [
    {requestId:'prior',direction:'user',text:'My name is Bello.'},
    {requestId:'prior',direction:'assistant',text:'Hello Bello, we were discussing anatomy.'},
   ];}} as any,fetchImpl:(async()=>Response.json({name:'auth_tokens/valid-test-name-123456789'})) as typeof fetch});
  const grant=await service.mint({characterId:scope.characterId,authorizationHeader:'Bearer customer'});
  expect(seen).toEqual([{scope,limit:64}]);expect(grant.systemInstruction).toContain('My name is Bello.');
  expect(grant.systemInstruction).not.toContain('secret-server-key');expect(grant.voiceName).toBe('Bodi');
 });
});
