import {describe,expect,it,vi} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import type {AgentStrategyRequest} from '@masanawa/agents';
import {renderCivicAgencyAnswer,prepareCivicAgencyGrounding,createCivicAgencyParagraphStream} from './civic_agency_answer.js';
import {createProductionAgentStrategy} from './production_strategy.js';
const agency={id:'nimc',name:'National Identity Management Commission',short:'NIMC',topic:'identity enrolment',sourceUrl:'https://nimc.gov.ng/',evidence:[
  {id:'mandate_nimc',title:'NIMC mandate',sourceUrl:'https://nimc.gov.ng/',sourceDate:'2026-11-08',sourceDateKind:'review' as const,content:'The guide covers identity enrolment and NIN guidance.'},
  {id:'agency_web_a',title:'Official enrolment guidance',sourceUrl:'https://nimc.gov.ng/services',sourceDate:'2026-11-19',sourceDateKind:'retrieval' as const,content:'The official public service explains identity enrolment procedures.'},
]};
const input=(text:string):AgentStrategyRequest=>({agentRunId:createCanonicalId('agent-run'),characterSessionId:createCanonicalId('character-session'),characterVersionId:createCanonicalId('character-version'),skillVersionIds:[],presentation:{displayName:'NIMC AI Guide',roleLabel:'Agency civic guide',about:'NIMC information',narrative:{biography:'Independent guide',personality:[],languages:['en','ha'],civicAgency:agency}},input:{kind:'text',text},readCivicEvidence:async()=>agency});

describe('civic answers grounded in an exact published agency',()=>{
  it('appends only supplied sources and rejects invented citations, quotes and URLs',()=>{
    const good={status:'answered',answer:'The agency publishes identity enrolment guidance.',evidenceIds:['agency_web_a'],quotations:[]};
    expect(renderCivicAgencyAnswer(JSON.stringify(good),agency)).toContain('https://nimc.gov.ng/services');
    for(const bad of [{...good,evidenceIds:['invented']},{...good,answer:'See https://untrusted.invalid/'},{...good,answer:'An officer said “Approved instantly”'},
      {...good,quotations:[{text:'Fabricated source line',evidenceId:'agency_web_a'}]},'invalid-json'])
      expect(renderCivicAgencyAnswer(typeof bad==='string'?bad:JSON.stringify(bad),agency)).toContain('enough verified information');
    expect(renderCivicAgencyAnswer(JSON.stringify({status:'conversation',answer:'Good to meet you.',evidenceIds:[]}),agency,'en',true)).toBe('Good to meet you.');
    expect(renderCivicAgencyAnswer(JSON.stringify({status:'insufficient'}),agency,'ha')).toContain('Ba ni da');
  });
  it('retrieves per-question evidence, uses the teaching prompt and revalidates before reply',async()=>{
    let calls=0;
    const inference={generate:vi.fn(async()=>({text:++calls===1?JSON.stringify({query:'NIN enrolment history',language:'en'}):
      JSON.stringify({status:'answered',answer:'The source introduces NIN enrolment guidance.',evidenceIds:['mandate_nimc'],quotations:[]})}))};
    const strategy=createProductionAgentStrategy({inference,skills:{} as never,guides:{} as never});
    const read=vi.fn(async()=>agency);
    const result=await strategy.execute({...input('Teach me the history of NIMC'),readCivicEvidence:read});
    expect(result.reply).toContain('NIMC mandate');
    expect(inference.generate).toHaveBeenCalledTimes(2);
    expect(read).toHaveBeenCalledTimes(2);
    const system=inference.generate.mock.calls[1];
    expect(JSON.stringify(system)).toContain('self-paced tours');
    expect(JSON.stringify(system)).toContain('NIMC');
  });
  it('transcribes a voice note once, preserving its spoken language',async()=>{
    const request={...input(''),input:{kind:'media' as const,mimeType:'audio/ogg',caption:'',dataBase64:'YWJj'}};
    const inference={generate:async()=>({text:JSON.stringify({query:'identity registration',language:'ha',transcript:'Yaya ake yin rajistar NIN?'})})};
    const grounded=await prepareCivicAgencyGrounding(request,inference);
    expect(grounded.language).toBe('ha');
    expect(grounded.input).toMatchObject({caption:expect.stringContaining('Yaya ake yin rajistar NIN?')});
  });
  it('streams only complete checked paragraphs, including safe fallbacks',async()=>{
    const deltas:string[]=[];
    const request={...input('Explain the agency'),onTextDelta:(v:string)=>{deltas.push(v);}};
    const grounded={presentation:request.presentation,input:request.input,language:'en',conversation:false,query:'agency'};
    const stream=createCivicAgencyParagraphStream(grounded,request);
    const good=JSON.stringify({status:'answered',answer:'NIMC covers enrolment.',evidenceIds:['mandate_nimc']});
    await stream.onTextDelta(good.slice(0,10));expect(deltas).toEqual([]);
    await stream.onTextDelta(good.slice(10)+'\n');expect(deltas[0]).toContain('nimc.gov.ng');
    await stream.onTextDelta(JSON.stringify({status:'answered',answer:'An invented guarantee.',evidenceIds:['fake']})+'\n');
    const reply=await stream.finish('');expect(reply).not.toContain('An invented guarantee');
    expect(deltas.join('')).toBe(reply);
  });
});
