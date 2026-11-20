import type { FastifyInstance } from 'fastify';
import Type from 'typebox';
import { CivicResponseError, RESPONSE_CATEGORIES, type NewIncident, type ResponseActor, createCivicResponseRepository } from '@masanawa/postgres';

type Repository=ReturnType<typeof createCivicResponseRepository>;
type Options={repository:Repository;authorize:(authorization:string|undefined)=>Promise<ResponseActor>;geminiKey?:string};
const uuid='^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$';
const small=Type.String({maxLength:100});
const boolOrNull=Type.Optional(Type.Union([Type.Boolean(),Type.Null()]));
const optionalNumber=Type.Optional(Type.Union([Type.Number(),Type.Null()]));
const IncidentBody=Type.Object({
  requestKey:Type.String({minLength:16,maxLength:90,pattern:'^[a-zA-Z0-9_-]+$'}),
  title:Type.String({minLength:6,maxLength:180}),description:Type.String({minLength:15,maxLength:10000}),
  category:small,subcategory:small,urgency:small,locationState:Type.String({minLength:2,maxLength:80}),
  locationLga:Type.Optional(small),locationDetails:Type.Optional(Type.String({maxLength:600})),
  incidentAt:Type.Optional(Type.Union([Type.String({maxLength:36}),Type.Null()])),
  latitude:optionalNumber,longitude:optionalNumber,peopleAtRisk:Type.Optional(Type.Union([Type.Integer({minimum:0,maximum:1000000}),Type.Null()])),
  injuriesReported:boolOrNull,dangerOngoing:boolOrNull,reporterSafe:boolOrNull,consentToContact:Type.Optional(Type.Boolean()),publicConsent:Type.Optional(Type.Boolean()),
  contactPreference:Type.Optional(small),sourceMode:small,languageCode:Type.Optional(Type.String({maxLength:12})),
  structuredFacts:Type.Optional(Type.Record(Type.String({maxLength:60}),Type.Unknown())),
},{additionalProperties:false});

const SYSTEM_INSTRUCTION=`You are the Masanawa Civic Response interview guide. You are NOT a government operator, dispatcher, emergency number or police officer. Your job is to gather facts from a Nigerian citizen's incident report. No legal or medical diagnoses. Never promise emergency dispatch, agency delivery, or rescue. If there is immediate danger, first advise calling Nigeria 112 now and moving to safety if possible. Ask ONE concise, empathetic next question per turn, following up on safety, exact place (state/LGA/landmark), what happened, when, witnesses, injuries, affected people, and available evidence. Do not request passwords, BVN, NIN, full ID documents, sensitive medical histories or unnecessary identity details. Never invent report facts. Respond as JSON with exactly: {"question":"...","readyToReview":boolean,"facts":{"category":"...","urgency":"routine|priority|urgent|immediate","title":"...","description":"...","locationState":"...","locationLga":"...","locationDetails":"...","incidentAt":"...","peopleAtRisk":null,"injuriesReported":null,"dangerOngoing":null,"reporterSafe":null}}. Allowed category identifiers: ${RESPONSE_CATEGORIES.map(item=>item.id).join(', ')}. Only fill supported factual fields and use empty strings / null for unknowns. `;
const fallbackQuestions=[
  'Are you or anyone else in immediate danger right now? If so, call 112 first.',
  'Please describe what happened, in your own words.',
  'Where did it happen? Which state, LGA and nearest landmark?',
  'When did it happen? Is the situation still ongoing?',
  'Was anyone injured or at risk? How many people were affected?',
  'Are there any further details, witnesses or evidence you would like included?',
  'Thank you. Please review your report, correct any details and submit it when ready.'
];

/** Bounded single-instance provider admission. The reverse proxy must also enforce distributed quotas. */
function providerBudget(perMinute:number,perHour:number){
  const usage=new Map<string,{minuteStart:number;minuteCount:number;hourStart:number;hourCount:number}>();
  return (actor:ResponseActor)=>{
    const now=Date.now(),key=`${actor.tenantId}:${actor.userId}`;
    if(usage.size>10000)for(const [id,value] of usage){if(now-value.hourStart>3600000)usage.delete(id)}
    if(usage.size>15000)usage.clear();
    const row=usage.get(key)??{minuteStart:now,minuteCount:0,hourStart:now,hourCount:0};
    if(now-row.minuteStart>=60000){row.minuteStart=now;row.minuteCount=0}
    if(now-row.hourStart>=3600000){row.hourStart=now;row.hourCount=0}
    if(row.minuteCount>=perMinute||row.hourCount>=perHour)throw new CivicResponseError(429,'response_ai_rate_limited');
    row.minuteCount++;row.hourCount++;usage.set(key,row);
  };
}

async function geminiJson(key:string,parts:object[],instruction:string,maxTokens=900):Promise<Record<string,unknown>> {
  const response=await fetch('https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent',{
    method:'POST',headers:{'content-type':'application/json','x-goog-api-key':key},signal:AbortSignal.timeout(15000),
    body:JSON.stringify({systemInstruction:{parts:[{text:instruction}]},contents:[{role:'user',parts}],generationConfig:{responseMimeType:'application/json',temperature:0.2,maxOutputTokens:maxTokens}}),
  });
  if(!response.ok)throw new Error('provider_unavailable');
  const data=await response.json() as {candidates?:{content?:{parts?:{text?:string}[]}}[]};
  const answer=data.candidates?.[0]?.content?.parts?.map(p=>p.text||'').join('')||'';
  if(answer.length>16000)throw new Error('provider_response_too_large');
  const parsed=JSON.parse(answer) as unknown;
  if(!parsed||typeof parsed!=='object'||Array.isArray(parsed))throw new Error('invalid_ai_response');
  return parsed as Record<string,unknown>;
}

function failure(error:unknown,reply:{code:(code:number)=>unknown}) {
  const status=error instanceof CivicResponseError?error.statusCode:
    error instanceof Error&&/unauthorized|missing|expired|token|session/i.test(error.message)?401:503;
  reply.code(status);return {error:error instanceof CivicResponseError?error.code:status===401?'sign_in_required':'response_service_unavailable'};
}

/** Only hand-reviewed and explicitly consented incident summaries may be public. */
export function registerCivicResponseRoutes(app:FastifyInstance,options:Options) {
  const repo=options.repository;
  const admitInterview=providerBudget(20,120),admitTranscription=providerBudget(4,20);
  app.get('/v1/response/categories',async()=>({categories:repo.categories()}));
  app.get('/v1/response/contacts',{schema:{querystring:Type.Object({state:Type.Optional(small),serviceType:Type.Optional(small)},{additionalProperties:false})}},async(req,reply)=>{
    try{return {contacts:await repo.contacts(req.query as {state?:string;serviceType?:string})}}catch(error){return failure(error,reply)}
  });
  app.get('/v1/response/public-incidents',{schema:{querystring:Type.Object({category:Type.Optional(Type.String({maxLength:60,pattern:'^[a-z_]+$'})),state:Type.Optional(Type.String({maxLength:80})),limit:Type.Optional(Type.Integer({minimum:1,maximum:50})),offset:Type.Optional(Type.Integer({minimum:0,maximum:10000}))},{additionalProperties:false})}},async(req,reply)=>{
    try{return {incidents:await repo.publicIncidents(req.query as {category?:string;state?:string;limit?:number;offset?:number})}}catch(error){return failure(error,reply)}
  });
  app.get('/v1/response/incidents',{schema:{querystring:Type.Object({limit:Type.Optional(Type.Integer({minimum:1,maximum:50})),offset:Type.Optional(Type.Integer({minimum:0,maximum:10000}))},{additionalProperties:false})}},async(req,reply)=>{
    try{const actor=await options.authorize(req.headers.authorization);const q=req.query as {limit?:number;offset?:number};return {incidents:await repo.myIncidents(actor,q.limit??30,q.offset??0)}}catch(error){return failure(error,reply)}
  });
  app.post('/v1/response/incidents',{schema:{body:IncidentBody}},async(req,reply)=>{
    try{const actor=await options.authorize(req.headers.authorization);const result=await repo.create(actor,req.body as NewIncident);reply.code(result.created?201:200);return {...result,agencyForwarded:false,emergencyDispatch:false}}catch(error){return failure(error,reply)}
  });
  const ID=Type.Object({id:Type.String({pattern:uuid})},{additionalProperties:false});
  app.get('/v1/response/incidents/:id',{schema:{params:ID}},async(req,reply)=>{
    try{const actor=await options.authorize(req.headers.authorization);return {incident:await repo.myIncident(actor,(req.params as {id:string}).id)}}catch(error){return failure(error,reply)}
  });
  app.get('/v1/response/incidents/:id/events',{schema:{params:ID}},async(req,reply)=>{
    try{const actor=await options.authorize(req.headers.authorization);return {events:await repo.events(actor,(req.params as {id:string}).id)}}catch(error){return failure(error,reply)}
  });
  app.post('/v1/response/incidents/:id/update',{schema:{params:ID,body:Type.Object({message:Type.String({minLength:3,maxLength:4000}),expectedRevision:Type.Integer({minimum:1})},{additionalProperties:false})}},async(req,reply)=>{
    try{const actor=await options.authorize(req.headers.authorization);return {incident:await repo.appendReporterUpdate(actor,(req.params as {id:string}).id,req.body as {message:string;expectedRevision:number})}}catch(error){return failure(error,reply)}
  });
  app.post('/v1/response/incidents/:id/public-consent',{schema:{params:ID,body:Type.Object({consent:Type.Boolean(),expectedRevision:Type.Integer({minimum:1})},{additionalProperties:false})}},async(req,reply)=>{
    try{const actor=await options.authorize(req.headers.authorization);return {incident:await repo.setPublicConsent(actor,(req.params as {id:string}).id,req.body as {consent:boolean;expectedRevision:number})}}catch(error){return failure(error,reply)}
  });
  app.post('/v1/response/interview',{schema:{body:Type.Object({history:Type.Array(Type.Object({role:Type.Union([Type.Literal('citizen'),Type.Literal('assistant')]),text:Type.String({minLength:1,maxLength:2000})},{additionalProperties:false}),{minItems:1,maxItems:18}),language:Type.Optional(Type.String({maxLength:15}))},{additionalProperties:false})}},async(req,reply)=>{
    try{
      admitInterview(await options.authorize(req.headers.authorization));
      const body=req.body as {history:{role:'citizen'|'assistant';text:string}[];language?:string};
      const history=body.history;
      const text=history.filter(row=>row.role==='citizen').map(row=>row.text).join(' ').toLowerCase();
      const danger=/\b(?:fire|dying|kidnap|shoot|bleed|knife|gun|emergency|danger|unconscious|collapse|robbery)\b/u.test(text);
      if(!options.geminiKey)return {mode:'guided',question:fallbackQuestions[Math.min(history.length,fallbackQuestions.length-1)],readyToReview:history.length>=6,facts:{},emergencyHint:danger};
      try{
        const result=await geminiJson(options.geminiKey,[{text:JSON.stringify({language:body.language||'English',history})}],SYSTEM_INSTRUCTION);
        if(typeof result.question!=='string'||!result.question.trim())throw new Error('invalid_ai_question');
        const facts=result.facts&&typeof result.facts==='object'&&!Array.isArray(result.facts)?result.facts:{};
        return {mode:'ai',question:result.question.slice(0,500),readyToReview:result.readyToReview===true,facts,emergencyHint:danger};
      }catch{return {mode:'guided',question:fallbackQuestions[Math.min(history.length,fallbackQuestions.length-1)],readyToReview:history.length>=6,facts:{},emergencyHint:danger,providerUnavailable:true};}
    }catch(error){return failure(error,reply)}
  });
  app.post('/v1/response/transcribe',{bodyLimit:2_000_000,schema:{body:Type.Object({mimeType:Type.Union([Type.Literal('audio/webm'),Type.Literal('audio/ogg'),Type.Literal('audio/mp4')]),dataBase64:Type.String({minLength:64,maxLength:1750000}),language:Type.Optional(Type.String({maxLength:15}))},{additionalProperties:false})}},async(req,reply)=>{
    try{
      admitTranscription(await options.authorize(req.headers.authorization));
      if(!options.geminiKey){reply.code(503);return {error:'voice_transcription_not_configured'};}
      const body=req.body as {mimeType:string;dataBase64:string;language?:string};
      const bytes=Buffer.from(body.dataBase64,'base64');
      if(bytes.length<100||bytes.length>1_250_000||bytes.toString('base64')!==body.dataBase64){reply.code(413);return {error:'audio_format_or_size_invalid'};}
      const result=await geminiJson(options.geminiKey,[{inlineData:{mimeType:body.mimeType,data:body.dataBase64}},{text:`Transcribe the spoken audio faithfully in ${body.language||'the spoken language'}. Return JSON {"transcript":"..."}. Never add content.`}],
        'You are a transcription-only engine. Never fill gaps, interpret, or append unsupported details. Return only the transcript JSON.',3000);
      const transcript=typeof result.transcript==='string'?result.transcript.slice(0,10000).trim():'';
      if(!transcript){reply.code(422);return {error:'no_clear_speech_detected'};}
      return {transcript,recordingStored:false};
    }catch(error){return failure(error,reply)}
  });
}
