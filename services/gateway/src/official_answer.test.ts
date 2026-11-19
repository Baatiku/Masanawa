import {expect,it,vi} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import type {AgentStrategyRequest,PublicOfficialPersona} from '@masanawa/agents';
import {renderOfficialAnswer,prepareOfficialGrounding} from './official_answer.js';
import {createProductionAgentStrategy} from './production_strategy.js';
const official:PublicOfficialPersona={officialName:'Example Official',office:'Governor',countryCode:'NG',identitySourceUrl:'https://example.gov.ng/bio',reviewedAt:'2026-10-01',reviewExpiresAt:'2099-01-01',evidence:[
 {id:'bio',kind:'grokipedia',title:'Biography',sourceUrl:'https://grokipedia.com/page/Example',sourceDate:'2026-10-01',content:'Served from 1999 to 2007.'},
 {id:'record',kind:'official_record',title:'Public record',sourceUrl:'https://example.gov.ng/record',sourceDate:'2026-10-01',content:'The exact recorded words.'}]};
const request=(input:AgentStrategyRequest['input']):AgentStrategyRequest=>({agentRunId:createCanonicalId('agent-run'),characterSessionId:createCanonicalId('character-session'),characterVersionId:createCanonicalId('character-version'),skillVersionIds:[],presentation:{displayName:'Example Official',roleLabel:'Governor',about:'AI simulation',narrative:{biography:'',personality:[],languages:[],publicOfficial:official}},input,readPublicEvidence:async()=>official});
it('renders only real supplied citations and verbatim quotations, failing closed on invented evidence',()=>{
 const good={status:'answered',answer:'They said “The exact recorded words.”',evidenceIds:['record'],quotations:[{evidenceId:'record',text:'The exact recorded words.'}]};
 expect(renderOfficialAnswer(JSON.stringify(good),official)).toContain('https://example.gov.ng/record');
 for(const bad of [{...good,evidenceIds:['invented']},{...good,quotations:[{evidenceId:'record',text:'I promise free money'}]},
  {...good,answer:'“Invented quote”'}, {...good,answer:"They said 'An invented quotation'."},{...good,answer:'See https://evil.test/private'}, {...good,evidenceIds:[]},
  {status:'conversation',answer:'I have just enacted a new law.',evidenceIds:[]}, 'not-json']){
  expect(renderOfficialAnswer(typeof bad==='string'?bad:JSON.stringify(bad),official)).toContain('not have enough reviewed evidence');
 }
 expect(renderOfficialAnswer(JSON.stringify({status:'insufficient'}),official,'ha')).toContain('Ba ni da isassun');
});
it('transcribes captionless speech and translates queries ephemerally before scoped retrieval',async()=>{
 const read=vi.fn(async()=>official),inference={generate:vi.fn(async()=>({text:JSON.stringify({transcript:'Me ya ce game da man fetur?',query:'fuel subsidy policy man fetur',language:'ha'})}))};
 const original=request({kind:'media',mimeType:'audio/mp4',dataBase64:'YWJj',caption:''});
 const grounded=await prepareOfficialGrounding({...original,readPublicEvidence:read},inference);
 expect(read).toHaveBeenCalledWith(expect.stringContaining('fuel subsidy'));expect(grounded.language).toBe('ha');
 expect(grounded.input).toMatchObject({caption:expect.stringContaining('Me ya ce')});expect(original.input).toMatchObject({caption:''});
 await expect(prepareOfficialGrounding({...original,readPublicEvidence:undefined} as unknown as AgentStrategyRequest,inference)).rejects.toThrow('retrieval_unavailable');
});
it.each([['ha','man fetur'],['yo','epo rọbì'],['ig','mmanụ ụgbọala']])('ranks translated public topics for %s without treating them as facts',async(language,topic)=>{
 const read=vi.fn(async()=>official);await prepareOfficialGrounding({...request({kind:'text',text:topic}),readPublicEvidence:read},
  {generate:async()=>({text:JSON.stringify({query:'fuel subsidy public policy',language})})});
 expect(read).toHaveBeenCalledWith(expect.stringContaining('fuel subsidy'));
});
it('keeps complete structured replies compatible with checked paragraph streaming',async()=>{
 const deltas:string[]=[];let step=0;
 const inference={generate:vi.fn(async(_r:unknown,controls:unknown)=>{step++;if(step===1)return {text:JSON.stringify({query:'term office',language:'en'})};
  expect((controls as {onTextDelta?:unknown}).onTextDelta).toBeTypeOf('function');return {text:JSON.stringify({status:'answered',answer:'The recorded term was 1999–2007.',evidenceIds:['bio']})};})};
 const strategy=createProductionAgentStrategy({inference,skills:{} as never,guides:{} as never});
 const result=await strategy.execute({...request({kind:'text',text:'When did the official serve?'}),onTextDelta:text=>{deltas.push(text);}});
 expect(deltas).toEqual([result.reply]);expect(result.reply).toContain('1999–2007');expect(result.reply).not.toContain('evidenceIds');
});
it('rechecks cited evidence after model generation so withdrawal cannot leak a stale answer',async()=>{
 let reads=0;const strategy=createProductionAgentStrategy({inference:{generate:async()=>({text:++reads===1?JSON.stringify({query:'record',language:'en'}):JSON.stringify({status:'answered',answer:'A factual answer.',evidenceIds:['record']})})},skills:{} as never,guides:{} as never});
 let queries=0;const req={...request({kind:'text',text:'What did they say?'}),readPublicEvidence:async()=>++queries===1?official:{...official,evidence:[official.evidence[0]!]}};
 expect((await strategy.execute(req)).reply).toContain('not have enough reviewed evidence');
});
it('streams complete source-checked paragraphs without exposing partial JSON or unchecked evidence',async()=>{
 const {createOfficialParagraphStream}=await import('./official_answer.js');const deltas:string[]=[];const base={...request({kind:'text',text:'Tell me the record'}),onTextDelta:async(text:string)=>{deltas.push(text);}};const grounded={presentation:base.presentation,input:base.input,language:'en',conversation:false,query:'record'};const stream=createOfficialParagraphStream(grounded,base);const first=JSON.stringify({status:'answered',answer:'Served from 1999 to 2007.',evidenceIds:['bio'],quotations:[]});await stream.onTextDelta(first.slice(0,20));expect(deltas).toEqual([]);await stream.onTextDelta(first.slice(20)+'\n');expect(deltas[0]).toContain('grokipedia.com/page/Example');await stream.onTextDelta(JSON.stringify({status:'answered',answer:'Invented promise',evidenceIds:['missing'],quotations:[]})+'\n');const result=await stream.finish('');expect(result).not.toContain('Invented promise');expect(result).not.toContain('"evidenceIds"');expect(deltas.join('')).toBe(result);
});

it('accepts pretty-printed complete objects while withholding incomplete official paragraphs',async()=>{
 const {createOfficialParagraphStream}=await import('./official_answer.js');const deltas:string[]=[];const base={...request({kind:'text',text:'Term record'}),onTextDelta:async(text:string)=>{deltas.push(text);}};const grounded={presentation:base.presentation,input:base.input,language:'en',conversation:false,query:'term'};const raw=JSON.stringify({status:'answered',answer:'The term is recorded in the biography.',evidenceIds:['bio'],quotations:[]},null,2);const stream=createOfficialParagraphStream(grounded,base);await stream.onTextDelta(raw.slice(0,-1));expect(deltas).toEqual([]);await stream.onTextDelta(raw.slice(-1));expect(deltas).toHaveLength(1);expect(await stream.finish(raw)).toBe(deltas[0]);
});

it('answers a greeting without keyword expansion and falls back to the original factual query when expansion fails',async()=>{
  const inference={generate:vi.fn(async()=>{throw Error('provider query expansion timed out');})};
  const greeting=await prepareOfficialGrounding(request({kind:'text',text:'Hello!'}),inference);
  expect(greeting.conversation).toBe(true);
  expect(inference.generate).not.toHaveBeenCalled();
  const readPublicEvidence=vi.fn(async()=>official);
  const input={...request({kind:'text',text:'When did you serve?'}),readPublicEvidence};
  const grounded=await prepareOfficialGrounding(input,inference);
  expect(grounded.conversation).toBe(false);
  expect(readPublicEvidence).toHaveBeenCalledWith('When did you serve?');
  expect(grounded.presentation.narrative?.publicOfficial).toBe(official);
});
