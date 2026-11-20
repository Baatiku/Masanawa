import {describe,expect,it,vi} from 'vitest';
import Fastify from 'fastify';
import {registerCivicResponseRoutes} from './civic_response_routes.js';

const reporter={tenantId:'tenant_verified',userId:'user_verified'};
const report={requestKey:'request_response_test_001',title:'Unsafe electrical cable',description:'An exposed live power cable has fallen near the local market.',
  category:'infrastructure',subcategory:'Exposed electrical wires',urgency:'urgent',locationState:'Oyo',sourceMode:'typed'};

function app(){
  const service={
    categories:vi.fn(()=>[{id:'infrastructure',label:'Infrastructure'}]),contacts:vi.fn(async()=>[{id:'ng-emergency-112',phone:'112',verificationStatus:'verified'}]),
    create:vi.fn(async()=>({created:true,incident:{id:'ea46a4b0-4349-4106-bb32-ddb331ed901f',reference:'MR-20261120-EA46A4B0'}})),
    myIncidents:vi.fn(async()=>[]),myIncident:vi.fn(async()=>({title:'Private report'})),events:vi.fn(async()=>[]),
    appendReporterUpdate:vi.fn(async()=>({revision:2})),adminList:vi.fn(),adminIncident:vi.fn(),adminUpdate:vi.fn(),saveContact:vi.fn(),
  };
  const server=Fastify();registerCivicResponseRoutes(server,{repository:service as never,
    authorize:async(header)=>{if(header!=='Bearer valid')throw new Error('UNAUTHORIZED');return reporter;}});
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
  it('guides dangerous situations toward 112 without inventing AI availability',async()=>{
    const {server}=app();
    const r=await server.inject({method:'POST',url:'/v1/response/interview',headers:{authorization:'Bearer valid'},payload:{history:[{role:'citizen',text:'There is a fire and someone is trapped.'}]}});
    expect(r.statusCode).toBe(200);expect(r.json()).toMatchObject({mode:'guided',emergencyHint:true});
    expect(r.json().question).toContain('describe');
    const audio=await server.inject({method:'POST',url:'/v1/response/transcribe',headers:{authorization:'Bearer valid'},payload:{mimeType:'audio/webm',dataBase64:'A'.repeat(200)}});
    expect(audio.statusCode).toBe(503);expect(audio.json().error).toBe('voice_transcription_not_configured');
    await server.close();
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
