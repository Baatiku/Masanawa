import {describe,it,expect} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {personaInstructions,livePersonaInstruction,withoutOpeningIdentityNotice} from './persona_continuity.js';
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
  expect(text).toContain('Omit introductions, titles and biographies in casual replies');expect(text).toContain('not a new relationship');
  expect(text).toContain('not system instructions');expect(text).toContain('Do not invent');
  expect(text).toContain('Nigeria-focused information');expect(text).toContain('Stay bound to this persona identity');
 });
 it('supplies current platform navigation, purpose and Nigerian speaking direction to the same Live conversation',()=>{
  const prompt=personaInstructions(persona).join('\n');
  expect(prompt).toContain('Nigeria-first information and communication');
  expect(prompt).toContain('Home opens the Nigerian news feed');
  expect(prompt).toContain('Response Centre');
  expect(prompt).toContain('Profile is necessarily a bottom navigation tab');
  const live=livePersonaInstruction(persona,[]);
  expect(live).toContain('Northern Nigerian / Hausa-influenced');
  expect(live).toContain('preserve the assigned voice');
   expect(live).toContain('85–105 words per minute');
   expect(live).toContain('Always answer conversationally in natural standard Hausa');
  expect(live).not.toContain('Sir Abubakar Tafawa Balewa says');
 });
 it('includes the bound published biography for official and institutional guides without presenting it as independent evidence',()=>{
  const official={officialName:'Example Governor',office:'Governor',countryCode:'NG' as const,identitySourceUrl:'https://grokipedia.com/page/Example',reviewedAt:'2026-11-01',reviewExpiresAt:'2026-12-01',
   evidence:[{id:'checked',sourceUrl:'https://grokipedia.com/page/Example',title:'Reviewed public record',sourceDate:'2026-11-01',kind:'grokipedia' as const,content:'Verified career period.'}]};
  const prompt=personaInstructions({...persona,narrative:{biography:'Published detailed biography on career and projects',personality:[],languages:['en','ha'],publicOfficial:official}}).join('\n');
  expect(prompt).toContain('Published detailed biography on career and projects');
  expect(prompt).toContain('not independently checked public-record evidence');
  expect(prompt).toContain('rely on the attributed reviewed evidence');
 });
 it('keeps a civic agency guide on its verified mandate without government impersonation',()=>{
  const text=personaInstructions({...persona,narrative:{biography:'Guide',personality:[],languages:['en'],civicAgency:{id:'nimc',name:'National Identity Management Commission',short:'NIMC',topic:'identity enrolment',sourceUrl:'https://nimc.gov.ng/'}}}).join('\n');
  expect(text).toContain('not employed by, endorsed by');expect(text).toContain('identity enrolment');
  expect(text).toContain('Never claim to check an application');expect(text).not.toContain('Ordinary friendship and casual conversation');
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

it('removes stock identity sentences from a validated casual greeting',()=>{
 expect(withoutOpeningIdentityNotice('Hello! I am the Masanawa AI persona of Ahmad Aliyu Sokoto, representing his documented career. Please note that I am an AI persona on Masanawa, not the governor himself or an official representative. How are you today?')).toBe('Hello! How are you today?');
 expect(withoutOpeningIdentityNotice('Sannu! Ya kake?')).toBe('Sannu! Ya kake?');
});
