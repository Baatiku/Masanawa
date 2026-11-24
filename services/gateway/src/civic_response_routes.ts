import type { FastifyInstance } from 'fastify';
import {createIncidentAudioService} from './incident_audio.js';
import type {NativeAudioRenderer} from './native_audio.js';
import Type from 'typebox';
import { CivicResponseError, RESPONSE_CATEGORIES, type NewIncident, type ResponseActor, createCivicResponseRepository } from '@masanawa/postgres';

type Repository=ReturnType<typeof createCivicResponseRepository>;
type Options={repository:Repository;authorize:(authorization:string|undefined)=>Promise<ResponseActor>;geminiKey?:string;audioRenderer?:NativeAudioRenderer};
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

const SYSTEM_INSTRUCTION=`You are Masanawa's professional Nigerian civic incident intake assistant, not a dispatcher, police officer or official government operator.
PURPOSE: Conduct a focused, compassionate, evidence-grounded interview to prepare a citizen's factual incident report for the citizen's approval. You do not file reports, contact authorities, make medical/legal diagnoses or promise intervention.
SPEECH UNDERSTANDING: If supplied with audio, reason directly from its *meaning*, context and clearly supported statements. Accent, hesitation, poor grammar, code-switching, paraphrasing and automatic-transcription errors must not be copied as gibberish into the report. Never make up or silently repair an uncertain fact. Ask for clarification when a specific place, number, incident, time or injury status is unclear. Never return a transcript.
INTERVIEW: First assess immediate danger and tell the person to contact Nigeria's 112 emergency services if they are in danger. Then establish what happened, which state/FCT and LGA, nearest landmark or address, when it happened, whether danger is ongoing, injuries and people at risk. Ask ONE concise, relevant question at a time. In Hausa or English, use the citizen's language naturally. Prioritise missing essential facts, avoid repeating answered questions. Acknowledge emotional distress briefly, then gently bring unrelated stories or political discussion back to the actual incident; do not scold or let digressions become report facts. Avoid leading questions and unsupported assumptions.
EVIDENCE: Distinguish what the reporter observed from hearsay, allegations or estimates. Do not fabricate names, suspects, agency responses, dates, coordinates, witness testimony, numbers, photographs or certainty. Explicitly qualify uncertainty in the description. Do not request BVN, NIN, account numbers, passwords, ID scans or unnecessary personal/medical details. Use neutral wording. Treat imminent threats, injured persons and vulnerable people with appropriate urgency, but never overstate risk.
READY: Only set readyToReview true once a real incident, readable title and summary, a confirmed Nigerian state/FCT, category and urgency are clear. If any is missing, ask a targeted question. The report is a reviewable draft; the citizen must correct and explicitly submit it.
OUTPUT: Strict JSON only, with keys {"question":"one next question or a short review invitation","readyToReview":boolean,"facts":{"category":"allowed category id or empty","urgency":"routine|priority|urgent|immediate","title":"short factual heading","description":"clear coherent account in the citizen's own language","locationState":"known state or FCT","locationLga":"known LGA or empty","locationDetails":"known landmark or empty","incidentAt":"ISO datetime only when certain, else empty","peopleAtRisk":null,"injuriesReported":null,"dangerOngoing":null,"reporterSafe":null}}. Preserve known context supported by earlier turns. Unknown optional values must be empty strings or null. Allowed categories: ${RESPONSE_CATEGORIES.map(item=>item.id).join(', ')}.`;
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
  const model=process.env.MASANAWA_RESPONSE_TEXT_MODEL?.trim()||'gemini-3.6-flash';
   if(!/^[a-zA-Z0-9._-]{1,100}$/.test(model))throw new Error('invalid_response_model');
   const response=await fetch(`https://generativelanguage.googleapis.com/v1beta/models/${encodeURIComponent(model)}:generateContent`,{
    method:'POST',headers:{'content-type':'application/json','x-goog-api-key':key},signal:AbortSignal.timeout(parts.some(part=>'inlineData' in part)?45_000:15_000),
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
  const admitInterview=providerBudget(20,120),admitTranscription=providerBudget(4,20),admitLive=providerBudget(2,12);
  const incidentAudio=createIncidentAudioService({
    ...(options.geminiKey?{apiKey:options.geminiKey}:{}),
    ...(options.audioRenderer?{renderer:options.audioRenderer}:{}),
  });
  app.get('/v1/response/categories',async()=>({categories:repo.categories()}));
  app.get('/v1/response/contacts',{schema:{querystring:Type.Object({state:Type.Optional(small),serviceType:Type.Optional(small)},{additionalProperties:false})}},async(req,reply)=>{
    try{return {contacts:await repo.contacts(req.query as {state?:string;serviceType?:string})}}catch(error){return failure(error,reply)}
  });
  app.get('/v1/response/public-incidents',{schema:{querystring:Type.Object({category:Type.Optional(Type.String({maxLength:60,pattern:'^[a-z_]+$'})),state:Type.Optional(Type.String({maxLength:80})),limit:Type.Optional(Type.Integer({minimum:1,maximum:50})),offset:Type.Optional(Type.Integer({minimum:0,maximum:10000}))},{additionalProperties:false})}},async(req,reply)=>{
    try{return {incidents:await repo.publicIncidents(req.query as {category?:string;state?:string;limit?:number;offset?:number})}}catch(error){return failure(error,reply)}
  });
  app.get('/v1/response/public-incidents/:reference/audio',{
    schema:{params:Type.Object({reference:Type.String({pattern:'^MR-[0-9]{8}-[0-9A-F]{8}$'})},{additionalProperties:false})}
  },async(req,reply)=>{
    try{
      const source=await repo.publicAudioSource((req.params as {reference:string}).reference);
      const wav=await incidentAudio.render(source,req.ip||'unavailable');
      reply.header('Cache-Control','no-store');
      reply.header('X-Content-Type-Options','nosniff');
      reply.header('Content-Disposition','inline; filename="masanawa-incident-bulletin.wav"');
      reply.type('audio/wav');
      return reply.send(wav);
    }catch(error){
      const code=error instanceof CivicResponseError?error.statusCode:
        error instanceof Error&&error.message==='incident_audio_rate_limited'?429:503;
      reply.code(code);
      return {error:error instanceof CivicResponseError?error.code:
        code===429?'audio_request_limit_reached':'incident_audio_unavailable'};
    }
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
  // One-use, short-lived credential: the permanent key and raw audio stay off the client/gateway respectively.
  app.post('/v1/response/live-token',{schema:{body:Type.Object({},{additionalProperties:false})}},async(req,reply)=>{
    try{
      const actor=await options.authorize(req.headers.authorization);
      if(!options.geminiKey){reply.code(503);return {error:'live_reporting_not_configured'};}
      admitLive(actor);
      const now=Date.now(),expiresAt=new Date(now+15*60_000).toISOString();
      const model='gemini-3.1-flash-live-preview';
      const provider=await fetch('https://generativelanguage.googleapis.com/v1beta/auth_tokens',{
        method:'POST',signal:AbortSignal.timeout(20_000),
        headers:{'content-type':'application/json','x-goog-api-key':options.geminiKey},
        body:JSON.stringify({uses:1,expireTime:expiresAt,newSessionExpireTime:new Date(now+60_000).toISOString(),
          liveConnectConstraints:{model:'models/'+model,config:{responseModalities:['AUDIO']}}}),
      });
      if(!provider.ok){reply.code(503);return {error:'live_reporting_unavailable'};}
      const payload=await provider.json() as {name?:unknown};
      if(typeof payload.name!=='string'||payload.name.length<16){reply.code(503);return {error:'live_reporting_unavailable'};}
      reply.header('Cache-Control','no-store');
      return {websocketUrl:'wss://generativelanguage.googleapis.com/ws/google.ai.generativelanguage.v1beta.GenerativeService.BidiGenerateContentConstrained?access_token='+encodeURIComponent(payload.name),
        model,expiresAt};
    }catch(error){return failure(error,reply)}
  });
  app.post('/v1/response/interview',{schema:{body:Type.Object({history:Type.Array(Type.Object({role:Type.Union([Type.Literal('citizen'),Type.Literal('assistant')]),text:Type.String({minLength:1,maxLength:2000})},{additionalProperties:false}),{minItems:1,maxItems:18}),language:Type.Optional(Type.String({maxLength:15}))},{additionalProperties:false})}},async(req,reply)=>{
    try{
      admitInterview(await options.authorize(req.headers.authorization));
      const body=req.body as {history:{role:'citizen'|'assistant';text:string}[];language?:string};
      const history=body.history;
      const text=history.filter(row=>row.role==='citizen').map(row=>row.text).join(' ').toLowerCase();
      const danger=/\b(?:fire|dying|kidnap|shoot|bleed|knife|gun|emergency|danger|unconscious|collapse|robbery)\b/u.test(text);
      if(!options.geminiKey)return {mode:'guided',question:fallbackQuestions[Math.min(history.length,fallbackQuestions.length-1)],readyToReview:false,facts:{},emergencyHint:danger};
      try{
        const result=await geminiJson(options.geminiKey,[{text:JSON.stringify({language:body.language||'English',history})}],SYSTEM_INSTRUCTION);
        if(typeof result.question!=='string'||!result.question.trim())throw new Error('invalid_ai_question');
        const facts=result.facts&&typeof result.facts==='object'&&!Array.isArray(result.facts)?result.facts:{};
        return {mode:'ai',question:result.question.slice(0,500),readyToReview:result.readyToReview===true,facts,emergencyHint:danger};
      }catch{return {mode:'guided',question:fallbackQuestions[Math.min(history.length,fallbackQuestions.length-1)],readyToReview:false,facts:{},emergencyHint:danger,providerUnavailable:true};}
    }catch(error){return failure(error,reply)}
  });
  // Multimodal voice intake operates on semantic meaning, not a separate transcript.
  // Raw audio is sent directly to the configured provider for this one request and is not stored here.
  app.post('/v1/response/understand-audio',{bodyLimit:2_000_000,schema:{body:Type.Object({
    mimeType:Type.Union([Type.Literal('audio/webm'),Type.Literal('audio/ogg'),Type.Literal('audio/mp4')]),
    dataBase64:Type.String({minLength:64,maxLength:1750000}),
    prompt:Type.Optional(Type.String({maxLength:500})),
    context:Type.Optional(Type.Record(Type.String({maxLength:35}),Type.String({maxLength:3000}))),
    language:Type.Optional(Type.String({maxLength:15})),
  },{additionalProperties:false})}},async(req,reply)=>{
    try{
      admitTranscription(await options.authorize(req.headers.authorization));
      if(!options.geminiKey){reply.code(503);return {error:'voice_understanding_not_configured'};}
      const body=req.body as {mimeType:string;dataBase64:string;prompt?:string;context?:Record<string,string>;language?:string};
      const bytes=Buffer.from(body.dataBase64,'base64');
      if(bytes.length<100||bytes.length>1_250_000||bytes.toString('base64')!==body.dataBase64){
        reply.code(413);return {error:'audio_format_or_size_invalid'};
      }
      const result=await geminiJson(options.geminiKey,[
        {text:JSON.stringify({language:body.language||'the spoken language',previousReportFacts:body.context??{},
          mostRecentQuestion:body.prompt||'What happened? Please explain what you know.'})},
        {inlineData:{mimeType:body.mimeType,data:body.dataBase64}},
        {text:'Listen to the entire recording and infer only the facts the speaker conveys. Do not generate a transcript. Update the structured report and ask the single most useful missing-information question.'},
      ],SYSTEM_INSTRUCTION,1700);
      const record=result.facts&&typeof result.facts==='object'&&!Array.isArray(result.facts)
        ?result.facts as Record<string,unknown>:{};
      const allowed=['title','description','category','subcategory','urgency','locationState','locationLga',
        'locationDetails','incidentAt','peopleAtRisk','injuriesReported','dangerOngoing','reporterSafe'];
      const facts=Object.fromEntries(Object.entries(record).filter(([key,value])=>
        allowed.includes(key)&&(typeof value==='string'||typeof value==='boolean'||typeof value==='number'||value===null)));
      if(typeof facts.category==='string'&&!RESPONSE_CATEGORIES.some(item=>item.id===facts.category))delete facts.category;
      if(typeof facts.urgency==='string'&&!['routine','priority','urgent','immediate'].includes(facts.urgency))delete facts.urgency;
      const readyToReview=result.readyToReview===true&&typeof facts.title==='string'&&facts.title.trim().length>=6&&
        typeof facts.description==='string'&&facts.description.trim().length>=15&&typeof facts.category==='string'&&
        typeof facts.locationState==='string'&&facts.locationState.trim().length>=2;
      const question=typeof result.question==='string'&&result.question.trim()?result.question.trim().slice(0,500):
        readyToReview?'Please review the drafted report and correct any details.':'Which state and LGA did this happen in?';
      return {mode:'ai_audio',question,readyToReview,facts,
        emergencyHint:facts.dangerOngoing===true||facts.urgency==='immediate',recordingStored:false};
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
