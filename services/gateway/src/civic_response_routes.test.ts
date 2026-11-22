import {describe,expect,it,vi} from 'vitest';
import Fastify from 'fastify';
import {registerCivicResponseRoutes} from './civic_response_routes.js';

const reporter={tenantId:'tenant_verified',userId:'user_verified'};
const report={requestKey:'request_response_test_001',title:'Unsafe electrical cable',description:'An exposed live power cable has fallen near the local market.',
  category:'infrastructure',subcategory:'Exposed electrical wires',urgency:'urgent',locationState:'Oyo',sourceMode:'typed'};

function app(geminiKey?:string,audioRenderer?:{render:()=>Promise<{dataBase64:string;mimeType:string;durationMs:number}>}){
  const service={
    categories:vi.fn(()=>[{id:'infrastructure',label:'Infrastructure'}]),contacts:vi.fn(async()=>[{id:'ng-emergency-112',phone:'112',verificationStatus:'verified'}]),
    create:vi.fn(async()=>({created:true,incident:{id:'ea46a4b0-4349-4106-bb32-ddb331ed901f',reference:'MR-20261120-EA46A4B0'}})),
    myIncidents:vi.fn(async()=>[]),myIncident:vi.fn(async()=>({title:'Private report'})),events:vi.fn(async()=>[]),
    appendReporterUpdate:vi.fn(async()=>({revision:2})),setPublicConsent:vi.fn(async()=>({publicConsent:false})),
    publicAudioSource:vi.fn(async()=>({reference:'MR-20261120-EA46A4B0',title:'Reviewed water outage',summary:'Some residents report interrupted water supplies.',category:'water_sanitation',locationState:'Oyo',locationLga:'Ibadan North',status:'triage',publicationStatus:'published'})),publicIncidents:vi.fn(async()=>[{reference:'MR-PUBLIC-1',title:'Reviewed water outage',summary:'A public water supply outage is under review.',locationState:'Oyo',category:'water_sanitation',status:'triage'}]),adminList:vi.fn(),adminIncident:vi.fn(),adminUpdate:vi.fn(),saveContact:vi.fn(),
  };
  const server=Fastify();registerCivicResponseRoutes(server,{repository:service as never,
    authorize:async(header)=>{if(header!=='Bearer valid')throw new Error('UNAUTHORIZED');return reporter;},...(geminiKey?{geminiKey}:{}),...(audioRenderer?{audioRenderer:audioRenderer as never}:{})});
  return {server,service};
}

describe('Masanawa Response route boundary',()=>{
  it('shows verified national contacts without login but protects every citizen case',async()=>{
    const {server,service}=app();
    expect((await server.inject({url:'/v1/response/categories'})).json().categories[0].id).toBe('infrastructure');
    expect((await server.inject({url:'/v1/response/contacts?state=Oyo'})).json().contacts[0].phone).toBe('112');
    expect(service.contacts).toHaveBeenCalledWith({state:'Oyo'});
    expect((await server.inject({url:'/v1/response/incidents'})).statusCode).toBe(401);
    expect((await server.inject({url:'/v1/response/incidents/ea46a4b0-4349-4106-bb32-ddb331ed901f'})).statusCode).toBe(401);
    await server.close();
  });
  it('returns only a canonical receipt and explicitly denies claims of dispatch',async()=>{
    const {server,service}=app();
    const r=await server.inject({method:'POST',url:'/v1/response/incidents',headers:{authorization:'Bearer valid'},payload:report});
    expect(r.statusCode).toBe(201);expect(r.json()).toMatchObject({created:true,agencyForwarded:false,emergencyDispatch:false});
    expect(service.create).toHaveBeenCalledWith(reporter,expect.objectContaining({category:'infrastructure'}));
    expect((await server.inject({method:'POST',url:'/v1/response/incidents',headers:{authorization:'Bearer valid'},payload:{...report,title:'x'}})).statusCode).toBe(400);
    await server.close();
  });
  it('supports a no-login public feed, while requiring the reporter identity to change publication consent',async()=>{
    const {server,service}=app();
    const publicResult=await server.inject({url:'/v1/response/public-incidents?state=Oyo&limit=10'});
    expect(publicResult.statusCode).toBe(200);
    expect(publicResult.json().incidents[0]).toMatchObject({title:'Reviewed water outage'});
    expect(service.publicIncidents).toHaveBeenCalledWith({state:'Oyo',limit:10});
    const path='/v1/response/incidents/ea46a4b0-4349-4106-bb32-ddb331ed901f/public-consent';
    expect((await server.inject({method:'POST',url:path,payload:{consent:true,expectedRevision:1}})).statusCode).toBe(401);
    expect((await server.inject({method:'POST',url:path,headers:{authorization:'Bearer valid'},payload:{consent:false,expectedRevision:2}})).statusCode).toBe(200);
    expect(service.setPublicConsent).toHaveBeenCalledWith(reporter,expect.any(String),{consent:false,expectedRevision:2});
    await server.close();
  });
  it('returns no synthesized audio without a configured provider or a public case',async()=>{
    const {server,service}=app();
    const url='/v1/response/public-incidents/MR-20261120-EA46A4B0/audio';
    expect((await server.inject({url})).statusCode).toBe(503);
    expect((await server.inject({url:'/v1/response/public-incidents/private-case/audio'})).statusCode).toBe(400);
    service.publicAudioSource.mockRejectedValueOnce(new Error('private'));
    expect((await server.inject({url})).statusCode).toBe(503);
    await server.close();
  });
  it('renders a public WAV bulletin from reviewed fields, never the reporter recording',async()=>{
    const render=vi.fn(async()=>({mimeType:'audio/l16;rate=24000',
      dataBase64:Buffer.from([0,0,255,127]).toString('base64'),durationMs:1}));
    const {server,service}=app(undefined,{render});
    const url='/v1/response/public-incidents/MR-20261120-EA46A4B0/audio';
    const first=await server.inject({url});
    expect(first.statusCode).toBe(200);
    expect(first.headers['content-type']).toContain('audio/wav');
    expect(first.headers['cache-control']).toBe('no-store');
    expect(first.rawPayload.toString('ascii',0,4)).toBe('RIFF');
    expect(first.rawPayload.toString('ascii',8,12)).toBe('WAVE');
    expect(render).toHaveBeenCalledOnce();
    const script=render.mock.calls[0]?.[0];
    expect(script).toContain('reviewed for public safety');
    expect(script).not.toContain('Private report');
    expect((await server.inject({url})).statusCode).toBe(200);
    expect(render).toHaveBeenCalledOnce();
    expect(service.publicAudioSource).toHaveBeenCalledTimes(2); // revocation is re-checked even on a cache hit
    await server.close();
  });
  it('does not narrate unreviewed citizen allegations as verified facts',async()=>{
    const render=vi.fn(async()=>({mimeType:'audio/l16;rate=24000',
      dataBase64:Buffer.from([0,0,0,0]).toString('base64'),durationMs:1}));
    const {server,service}=app(undefined,{render});
    service.publicAudioSource.mockResolvedValueOnce({
      reference:'MR-20261120-EA46A4B0',title:'A private identifying allegation',
      summary:'Private identifying allegation not yet reviewed',category:'infrastructure',
      locationState:'Oyo',locationLga:'Ibadan North',status:'submitted',publicationStatus:'pending_review'});
    const r=await server.inject({url:'/v1/response/public-incidents/MR-20261120-EA46A4B0/audio'});
    expect(r.statusCode).toBe(200);
    const script=render.mock.calls[0]?.[0];
    expect(script).toContain('remain unverified');
    expect(script).not.toContain('private identifying allegation');
    await server.close();
  });
  it('guides dangerous situations toward 112 without inventing AI availability',async()=>{
    const {server}=app();
    const r=await server.inject({method:'POST',url:'/v1/response/interview',headers:{authorization:'Bearer valid'},payload:{history:[{role:'citizen',text:'There is a fire and someone is trapped.'}]}});
    expect(r.statusCode).toBe(200);expect(r.json()).toMatchObject({mode:'guided',emergencyHint:true});
    expect(r.json().question).toContain('describe');
    const audio=await server.inject({method:'POST',url:'/v1/response/transcribe',headers:{authorization:'Bearer valid'},payload:{mimeType:'audio/webm',dataBase64:'A'.repeat(200)}});
    expect(audio.statusCode).toBe(503);expect(audio.json().error).toBe('voice_transcription_not_configured');
    await server.close();
  });
  it('understands a voice report semantically without exposing a verbatim transcript',async()=>{
    const {server}=app('test-only-secret');
    const fetchBefore=globalThis.fetch;
    const calls:{url:string;init:RequestInit}[]=[];
    globalThis.fetch=vi.fn(async(url:string,init:RequestInit)=>{
      calls.push({url,init});
      return Response.json({candidates:[{content:{parts:[{text:JSON.stringify({
        question:'Which LGA or nearest landmark in Oyo?',
        readyToReview:false,
        facts:{title:'Damaged bridge near the market',description:'The citizen reports a damaged bridge close to the market.',
          category:'infrastructure',urgency:'priority',locationState:'Oyo',locationLga:'',dangerOngoing:null},
      })}]}}]});
    }) as typeof fetch;
    try{
      const payload={mimeType:'audio/webm',dataBase64:Buffer.alloc(250,1).toString('base64'),
        prompt:'What happened?',context:{locationState:'Oyo'}};
      const r=await server.inject({method:'POST',url:'/v1/response/understand-audio',
        headers:{authorization:'Bearer valid'},payload});
      expect(r.statusCode).toBe(200);
      expect(r.json()).toMatchObject({mode:'ai_audio',readyToReview:false,
        question:'Which LGA or nearest landmark in Oyo?',
        facts:{locationState:'Oyo',category:'infrastructure'},recordingStored:false});
      expect(r.json()).not.toHaveProperty('transcript');
      const content=JSON.parse(String(calls[0]?.init.body));
      expect(calls[0]?.url).toContain('gemini-3.6-flash:generateContent');
      expect(content.contents[0].parts[1].inlineData.data).toBe(payload.dataBase64);
      expect(content.systemInstruction.parts[0].text).toContain('Never return a transcript');
      expect((await server.inject({method:'POST',url:'/v1/response/understand-audio',payload})).statusCode).toBe(401);
    }finally{globalThis.fetch=fetchBefore;await server.close();}
  });
  it('issues one-use native live credentials only to authenticated reporters, with bounded usage',async()=>{
    const {server}=app('test-only-secret');
    const fetchBefore=globalThis.fetch;
    const calls:{url:string;init:RequestInit}[]=[];
    globalThis.fetch=vi.fn(async(url:string,init:RequestInit)=>{
      calls.push({url,init});
      return Response.json({name:'temporary_credential_1234567890'});
    }) as typeof fetch;
    try{
      const input={method:'POST' as const,url:'/v1/response/live-token',headers:{authorization:'Bearer valid'},payload:{}};
      expect((await server.inject({...input,headers:{}})).statusCode).toBe(401);
      const first=await server.inject(input);
      expect(first.statusCode).toBe(200);
      expect(first.json().websocketUrl).toContain('access_token=temporary_credential_');
      expect(JSON.stringify(first.json())).not.toContain('test-only-secret');
      expect(calls[0]?.url).toContain('/v1beta/auth_tokens');
      const options=JSON.parse(String(calls[0]?.init.body));
      expect(options).toMatchObject({uses:1,fieldMask:'model,generationConfig'});
      expect(options.bidiGenerateContentSetup.generationConfig.responseModalities).toEqual(['AUDIO']);
      expect((await server.inject(input)).statusCode).toBe(200);
      expect((await server.inject(input)).statusCode).toBe(429);
      expect(calls).toHaveLength(2);
    }finally{globalThis.fetch=fetchBefore;await server.close();}
  });
  it('bounds conversational AI traffic per signed-in reporter before invoking the provider',async()=>{
    const {server}=app();
    const request={method:'POST' as const,url:'/v1/response/interview',headers:{authorization:'Bearer valid'},payload:{history:[{role:'citizen',text:'There is a water outage in my street.'}]}};
    for(let i=0;i<20;i++)expect((await server.inject(request)).statusCode).toBe(200);
    const blocked=await server.inject(request);
    expect(blocked.statusCode).toBe(429);expect(blocked.json().error).toBe('response_ai_rate_limited');
    await server.close();
  });
});
