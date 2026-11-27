import type {FastifyInstance} from 'fastify';
import {withTransaction,type Pool} from '@masanawa/postgres';
import {CIVIC_AGENCY_CATALOG} from './civic_agency_bootstrap.js';
import {CIVIC_INSTITUTION_SEEDS} from './civic_institution_seeds.js';

type Actor={tenantId:string;userId:string};
export type CivicRatingPorts={pool:Pool;publicTenantId?:string;authorize:(authorization:string|undefined)=>Promise<Actor>;beforeWrite:(authorization:string|undefined)=>Promise<unknown>};
export const CIVIC_RATING_MINIMUM=20;
export const CIVIC_RATING_CONSENT=1;
const idPattern=/^character_[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
class RatingError extends Error{constructor(readonly statusCode:number,readonly code:string){super(code);}}
export function validCivicRatingBody(value:unknown):value is {score:number|null;consentVersion?:number}{
 if(!value||typeof value!=='object'||Array.isArray(value))return false;
 const p=value as Record<string,unknown>;
 if(Object.keys(p).some(k=>k!=='score'&&k!=='consentVersion'))return false;
 if(p.score===null)return p.consentVersion===undefined;
 return typeof p.score==='number'&&Number.isInteger(p.score)&&p.score>=1&&p.score<=5&&p.consentVersion===CIVIC_RATING_CONSENT;
}
/** The score represents voluntary platform participants, not a population poll.
 * Low counts are suppressed; coarse buckets reduce disclosure of small changes. */
export function publicRatingSummary(histogram:readonly number[]){
 const [one=0,two=0,three=0,four=0,five=0]=histogram;
 const count=one+two+three+four+five;
 if(count<CIVIC_RATING_MINIMUM)return {published:false,minimum:CIVIC_RATING_MINIMUM,count:null,average:null,approval:null};
 return {published:true,minimum:CIVIC_RATING_MINIMUM,count:Math.floor(count/10)*10,average:Math.round((one+2*two+3*three+4*four+5*five)/count*10)/10,approval:Math.round(((four+five)/count)*20)*5};
}
const eligibleSubjectsSql=`
 SELECT c.character_id, v.constitution->'disclosurePolicy'->>'civicPersonId' AS person_id, v.constitution->'disclosurePolicy'->>'civicAgencyId' AS agency_id, CASE WHEN v.constitution->'disclosurePolicy'->>'representation'='independent_civic_ai_guide'
 OR (r.approved_by='masanawa-civic-seed-v1' AND COALESCE(r.profile->>'civicAgencyId','')<>'') THEN 'agency' ELSE 'person' END AS kind
 FROM identity.characters c
 JOIN identity.character_versions v ON v.tenant_id=c.tenant_id AND v.character_version_id=c.active_character_version_id AND v.state='published'
 JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id AND o.character_id=c.character_id AND o.kind='platform'
 JOIN agents.agent_presentations p ON p.tenant_id=c.tenant_id AND p.character_id=c.character_id AND p.character_version_id=c.active_character_version_id AND p.visible_in_user_app
 JOIN masana.character_revisions r ON r.tenant_id=c.tenant_id AND r.character_id=c.character_id AND r.state='approved'
 WHERE c.tenant_id=$1 AND c.state='active'
 AND (v.constitution ? 'publicOfficial' OR v.constitution->'disclosurePolicy'->>'representation'='independent_civic_ai_guide'
 OR (r.approved_by='masanawa-civic-seed-v1' AND COALESCE(r.profile->>'civicAgencyId','')<>''))`;
const eligibleSql=`SELECT kind FROM (${eligibleSubjectsSql}) eligible WHERE character_id=$2 ORDER BY kind LIMIT 1`;
type Query=Pick<Pool,'query'>;
export function publicAssessmentSubject(value:string):boolean{
 return idPattern.test(value)||/^(?:person|org)-[a-z0-9-]{1,140}$/.test(value);
}
function agencyAlias(id:string):string{
 const name=CIVIC_INSTITUTION_SEEDS.find(seed=>seed.id===id)?.name;
 return (name&&CIVIC_AGENCY_CATALOG.find(seed=>seed.name===name)?.id)||id;
}
function publicDirectoryId(personId:string|null,agencyId:string|null):string|null{
 if(personId&&/^person-[a-z0-9-]{1,140}$/.test(personId))return personId;
 if(!agencyId)return null;
 if(/^org-[a-z0-9-]{1,140}$/.test(agencyId))return agencyId;
 const name=CIVIC_AGENCY_CATALOG.find(seed=>seed.id===agencyId)?.name;
 return CIVIC_INSTITUTION_SEEDS.find(seed=>seed.name===name)?.id??null;
}
async function readPublicSummary(db:Query,tenant:string,subject:string){
 const matches=await db.query<{character_id:string;kind:'person'|'agency'}>(`
 SELECT DISTINCT character_id,kind FROM (${eligibleSubjectsSql}) eligible
 WHERE character_id=$2 OR person_id=$2 OR agency_id=$2 OR agency_id=$3
 LIMIT 2`,[tenant,subject,agencyAlias(subject)]);
 if(matches.rows.length!==1)throw new RatingError(404,'civic_rating_subject_unavailable');
 const row=matches.rows[0]!;
 const result=await db.query<{score:number;count:number}>(`
 SELECT x.score,count(*)::integer AS count FROM agents.civic_ratings x
 JOIN identity.users u ON u.tenant_id=x.tenant_id AND u.user_id=x.user_id AND u.state='active'
 WHERE x.tenant_id=$1 AND x.character_id=$2 GROUP BY x.score`,[tenant,row.character_id]);
 const histogram=[0,0,0,0,0];for(const r of result.rows)histogram[r.score-1]=r.count;
 const {published,minimum,count,approval}=publicRatingSummary(histogram);
 // Never expose account identity, personal rating, precise score mean or raw histogram.
 return {kind:row.kind,published,minimum,count,approval};
}

async function readSummary(db:Query,actor:Actor,id:string){
 const eligible=await db.query<{kind:'person'|'agency'}>(eligibleSql,[actor.tenantId,id]);
 if(!eligible.rows[0])throw new RatingError(404,'civic_rating_subject_unavailable');
 const result=await db.query<{score:number;count:number}>(`SELECT x.score,count(*)::integer AS count FROM agents.civic_ratings x JOIN identity.users u ON u.tenant_id=x.tenant_id AND u.user_id=x.user_id AND u.state='active' WHERE x.tenant_id=$1 AND x.character_id=$2 GROUP BY x.score`,[actor.tenantId,id]);
 const own=await db.query<{score:number}>(`SELECT score FROM agents.civic_ratings WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3`,[actor.tenantId,actor.userId,id]);
 const histogram=[0,0,0,0,0];for(const r of result.rows){histogram[r.score-1]=r.count;}
 return {kind:eligible.rows[0].kind,myRating:own.rows[0]?.score??null,...publicRatingSummary(histogram)};
}
export function registerCivicRatingRoutes(app:FastifyInstance,ports:CivicRatingPorts){
 const execute=async(reply:{header:(k:string,v:string)=>unknown;code:(n:number)=>unknown},work:()=>Promise<unknown>)=>{
  reply.header('Cache-Control','private, no-store');
  try{return await work();}catch(error){const code=error instanceof RatingError?error.statusCode:(error as {statusCode?:number}).statusCode;
   reply.code(code&&code>=400&&code<500?code:503);
   return {error:error instanceof RatingError?error.code:'civic_ratings_unavailable'};
  }
 };
 // Public volume dashboard, not a political preference leaderboard.
 app.get<{Querystring:unknown}>('/v1/civic/public-assessments',async(q,r)=>execute(r,async()=>{
  const query=q.query as Record<string,unknown>;
  if(!ports.publicTenantId||Object.keys(query).length!==1||!['all','person','agency'].includes(String(query.kind)))throw new RatingError(400,'invalid_assessment_filter');
  return withTransaction(ports.pool,async client=>{
   await client.query("SET LOCAL statement_timeout = '2500ms'");
   const rows=await client.query<{character_id:string;person_id:string|null;agency_id:string|null;kind:'person'|'agency';count:number;positive:number}>(`
    WITH eligible AS (SELECT DISTINCT character_id,person_id,agency_id,kind FROM (${eligibleSubjectsSql}) candidates),
    counts AS (
     SELECT x.character_id,count(*)::integer AS count,count(*) FILTER (WHERE x.score>=4)::integer AS positive
     FROM agents.civic_ratings x JOIN identity.users u ON u.tenant_id=x.tenant_id AND u.user_id=x.user_id AND u.state='active'
     WHERE x.tenant_id=$1 GROUP BY x.character_id HAVING count(*) >= $3
    )
    SELECT e.character_id,e.person_id,e.agency_id,e.kind,c.count,c.positive
    FROM eligible e JOIN counts c ON c.character_id=e.character_id
    WHERE ($2='all' OR e.kind=$2) AND (e.person_id IS NOT NULL OR e.agency_id IS NOT NULL)
    ORDER BY (c.count/10) DESC,e.character_id ASC LIMIT 100`,[ports.publicTenantId,query.kind,CIVIC_RATING_MINIMUM]);
   const byId=new Map<string,{id:string;kind:'person'|'agency';count:number;approval:number}>();
   const ambiguous=new Set<string>();
   for(const row of rows.rows){
    const id=publicDirectoryId(row.person_id,row.agency_id);if(!id||ambiguous.has(id))continue;
    if(byId.has(id)){byId.delete(id);ambiguous.add(id);continue;}
    byId.set(id,{id,kind:row.kind,count:Math.floor(row.count/10)*10,approval:Math.round(row.positive/row.count*20)*5});
   }
   return {kind:query.kind,minimum:CIVIC_RATING_MINIMUM,items:[...byId.values()].sort((a,b)=>b.count-a.count||a.id.localeCompare(b.id)).slice(0,50)};
  });
 }));
 // Public, read-only results use the configured platform tenant, never caller-selected scope.
 app.get<{Params:{id:string}}>('/v1/civic/public-assessments/:id',async(q,r)=>execute(r,async()=>{
  if(!ports.publicTenantId||!publicAssessmentSubject(q.params.id))throw new RatingError(404,'civic_rating_subject_unavailable');
  return withTransaction(ports.pool,async client=>{
   await client.query("SET LOCAL statement_timeout = '1500ms'");
   return readPublicSummary(client,ports.publicTenantId!,q.params.id);
  });
 }));
 app.get<{Params:{id:string}}>('/v1/civic/ratings/:id',async(q,r)=>execute(r,async()=>{
  if(!idPattern.test(q.params.id))throw new RatingError(400,'invalid_rating_subject');
  const actor=await ports.authorize(q.headers.authorization);
  return readSummary(ports.pool,actor,q.params.id);
 }));
 app.post<{Params:{id:string};Body:unknown}>('/v1/civic/ratings/:id',{bodyLimit:1024},async(q,r)=>execute(r,async()=>{
  if(!idPattern.test(q.params.id)||!validCivicRatingBody(q.body))throw new RatingError(400,'invalid_rating');
  const actor=await ports.authorize(q.headers.authorization);
  await ports.beforeWrite(q.headers.authorization);
  const body=q.body,id=q.params.id;
  return withTransaction(ports.pool,async client=>{
   const user=await client.query("SELECT 1 FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state='active' FOR UPDATE",[actor.tenantId,actor.userId]);
   if(!user.rows.length)throw new RatingError(403,'inactive_account');
   if(body.score===null){
    await client.query('DELETE FROM agents.civic_ratings WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3',[actor.tenantId,actor.userId,id]);
    return {withdrawn:true};
   }
   if(!(await client.query(eligibleSql,[actor.tenantId,id])).rows.length)throw new RatingError(404,'civic_rating_subject_unavailable');
   await client.query(`INSERT INTO agents.civic_ratings(tenant_id,user_id,character_id,score,consent_version) VALUES($1,$2,$3,$4,$5)
    ON CONFLICT(tenant_id,user_id,character_id) DO UPDATE SET score=EXCLUDED.score,consent_version=EXCLUDED.consent_version,updated_at=clock_timestamp()`,[actor.tenantId,actor.userId,id,body.score,CIVIC_RATING_CONSENT]);
   return readSummary(client,actor,id);
  });
 }));
 // A signed-in user can retrieve their own ratings, including withdrawn or retired subjects' remaining rows.
 app.get('/v1/civic/my-ratings',async(q,r)=>execute(r,async()=>{
  const actor=await ports.authorize(q.headers.authorization);
  const data=await ports.pool.query('SELECT character_id AS "characterId",score,updated_at AS "updatedAt" FROM agents.civic_ratings WHERE tenant_id=$1 AND user_id=$2 ORDER BY character_id',[actor.tenantId,actor.userId]);
  return {ratings:data.rows};
 }));
 // Read-only common rankings, independent of rating values and wallet records.
 app.get<{Querystring:unknown}>('/v1/civic/engagement/rankings',async(q,r)=>execute(r,async()=>{
  const query=q.query;
  if(!validCivicRankingQuery(query))throw new RatingError(400,'invalid_civic_ranking_query');
  const actor=await ports.authorize(q.headers.authorization);
  return withTransaction(ports.pool,async client=>{
   await client.query("SET LOCAL statement_timeout = '2500ms'");
   const result=await client.query<{characterId:string;kind:'person'|'agency';count:number}>(`
    WITH eligible AS (
     SELECT character_id,CASE WHEN bool_or(kind='agency') THEN 'agency' ELSE 'person' END AS kind
     FROM (${eligibleSubjectsSql}) subjects GROUP BY character_id
    )
    SELECT e.character_id AS "characterId",e.kind,(count(DISTINCT t.user_id)/25*25)::integer AS count
    FROM eligible e
    JOIN agents.mobile_turn_commands t ON t.tenant_id=$1 AND t.character_id=e.character_id
    JOIN agents.civic_engagement_consents c ON c.tenant_id=t.tenant_id AND c.user_id=t.user_id AND t.created_at>=c.consented_at
    JOIN identity.users u ON u.tenant_id=t.tenant_id AND u.user_id=t.user_id AND u.state='active'
    WHERE t.state='completed' AND t.updated_at>=clock_timestamp()-make_interval(days => $2::integer)
    AND ($3='all' OR e.kind=$3)
    GROUP BY e.character_id,e.kind
    HAVING count(DISTINCT t.user_id)>=50
    ORDER BY count DESC,e.character_id ASC LIMIT 50`,[actor.tenantId,Number(query.days),query.kind]);
   return {days:Number(query.days),kind:query.kind,minimum:CIVIC_REACH_MINIMUM,rankings:rankCivicReach(result.rows)};
  });
 }));
 // Participation is a separate, account-wide opt-in. Never join to rating scores,
 // expose individual political interests, or use reach as payment eligibility.
 app.get<{Params:{id:string}}>('/v1/civic/engagement/:id',async(q,r)=>execute(r,async()=>{
  if(!idPattern.test(q.params.id))throw new RatingError(400,'invalid_engagement_subject');
  const actor=await ports.authorize(q.headers.authorization);
  if(!(await ports.pool.query(eligibleSql,[actor.tenantId,q.params.id])).rows.length)throw new RatingError(404,'civic_engagement_subject_unavailable');
  const consent=await ports.pool.query('SELECT 1 FROM agents.civic_engagement_consents WHERE tenant_id=$1 AND user_id=$2',[actor.tenantId,actor.userId]);
  // Count distinct consenting active accounts, not messages or client-submitted
  // events. Only chats initiated after consent qualify. No transcript fields read.
  const counts=await ports.pool.query<{accounts:number}>(`
   SELECT count(DISTINCT t.user_id)::integer AS accounts
   FROM agents.mobile_turn_commands t
   JOIN agents.civic_engagement_consents c ON c.tenant_id=t.tenant_id AND c.user_id=t.user_id AND t.created_at>=c.consented_at
   JOIN identity.users u ON u.tenant_id=t.tenant_id AND u.user_id=t.user_id AND u.state='active'
   WHERE t.tenant_id=$1 AND t.character_id=$2 AND t.state='completed'
   AND t.updated_at>=clock_timestamp()-interval '30 days'`,[actor.tenantId,q.params.id]);
  return {consented:consent.rows.length>0,days:30,...publicCivicReach(counts.rows[0]?.accounts??0)};
 }));
 app.get('/v1/civic/engagement/consent',async(q,r)=>execute(r,async()=>{
  const actor=await ports.authorize(q.headers.authorization);
  const result=await ports.pool.query('SELECT 1 FROM agents.civic_engagement_consents WHERE tenant_id=$1 AND user_id=$2',[actor.tenantId,actor.userId]);
  return {consented:result.rows.length>0};
 }));
 app.post<{Body:unknown}>('/v1/civic/engagement/consent',{bodyLimit:1024},async(q,r)=>execute(r,async()=>{
  if(!validEngagementConsent(q.body))throw new RatingError(400,'invalid_engagement_consent');
  const actor=await ports.authorize(q.headers.authorization);
  await ports.beforeWrite(q.headers.authorization);
  const body=q.body;
  return withTransaction(ports.pool,async client=>{
   const user=await client.query("SELECT 1 FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state='active' FOR UPDATE",[actor.tenantId,actor.userId]);
   if(!user.rows.length)throw new RatingError(403,'inactive_account');
   if(body.consented)await client.query('INSERT INTO agents.civic_engagement_consents(tenant_id,user_id,consent_version) VALUES($1,$2,1) ON CONFLICT(tenant_id,user_id) DO NOTHING',[actor.tenantId,actor.userId]);
   else await client.query('DELETE FROM agents.civic_engagement_consents WHERE tenant_id=$1 AND user_id=$2',[actor.tenantId,actor.userId]);
   return {consented:body.consented};
  });
 }));

}

// Coarse participation counts are not an approval score or a scientific poll.
export const CIVIC_REACH_MINIMUM=50;
export function publicCivicReach(accounts:number){
 const published=Number.isSafeInteger(accounts)&&accounts>=CIVIC_REACH_MINIMUM;
 return {published,minimum:CIVIC_REACH_MINIMUM,count:published?Math.floor(accounts/25)*25:null};
}
export function validEngagementConsent(value:unknown):value is {consented:boolean;consentVersion?:number}{
 if(!value||typeof value!=='object'||Array.isArray(value))return false;
 const p=value as Record<string,unknown>;
 if(Object.keys(p).some(k=>k!=='consented'&&k!=='consentVersion'))return false;
 return p.consented===true?p.consentVersion===1:p.consented===false&&p.consentVersion===undefined;
}

export function validCivicRankingQuery(value:unknown):value is {days:'7'|'30';kind:'all'|'person'|'agency'}{
 if(!value||typeof value!=='object'||Array.isArray(value))return false;
 const q=value as Record<string,unknown>;
 return Object.keys(q).length===2&&(q.days==='7'||q.days==='30')&&(q.kind==='all'||q.kind==='person'||q.kind==='agency');
}
type CivicReachRow={characterId:string;kind:'person'|'agency';count:number};
/** Equal public buckets share a rank; never reveal raw counts or use them as tie breakers. */
export function rankCivicReach(rows:readonly CivicReachRow[]){
 const valid=rows.filter(row=>idPattern.test(row.characterId)&&(row.kind==='person'||row.kind==='agency')&&Number.isSafeInteger(row.count)&&row.count>=CIVIC_REACH_MINIMUM&&row.count%25===0);
 const unique=new Map<string,CivicReachRow>();
 for(const row of valid)if(!unique.has(row.characterId))unique.set(row.characterId,row);
 const sorted=[...unique.values()].sort((a,b)=>b.count-a.count||a.characterId.localeCompare(b.characterId)).slice(0,50);
 let rank=0;
 return sorted.map((row,i)=>{
  if(i===0||row.count!==sorted[i-1]?.count)rank=i+1;
  return {characterId:row.characterId,kind:row.kind,count:row.count,rank};
 });
}
