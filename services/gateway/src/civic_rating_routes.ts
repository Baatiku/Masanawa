import type {FastifyInstance} from 'fastify';
import {withTransaction,type Pool} from '@masanawa/postgres';

type Actor={tenantId:string;userId:string};
export type CivicRatingPorts={pool:Pool;authorize:(authorization:string|undefined)=>Promise<Actor>;beforeWrite:(authorization:string|undefined)=>Promise<unknown>};
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
const eligibleSql=`
 SELECT CASE WHEN v.constitution->'disclosurePolicy'->>'representation'='independent_civic_ai_guide'
 OR (r.approved_by='masanawa-civic-seed-v1' AND COALESCE(r.profile->>'civicAgencyId','')<>'') THEN 'agency' ELSE 'person' END AS kind
 FROM identity.characters c
 JOIN identity.character_versions v ON v.tenant_id=c.tenant_id AND v.character_version_id=c.active_character_version_id AND v.state='published'
 JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id AND o.character_id=c.character_id AND o.kind='platform'
 JOIN agents.agent_presentations p ON p.tenant_id=c.tenant_id AND p.character_id=c.character_id AND p.character_version_id=c.active_character_version_id AND p.visible_in_user_app
 JOIN masana.character_revisions r ON r.tenant_id=c.tenant_id AND r.character_id=c.character_id AND r.state='approved'
 WHERE c.tenant_id=$1 AND c.character_id=$2 AND c.state='active'
 AND (v.constitution ? 'publicOfficial' OR v.constitution->'disclosurePolicy'->>'representation'='independent_civic_ai_guide'
 OR (r.approved_by='masanawa-civic-seed-v1' AND COALESCE(r.profile->>'civicAgencyId','')<>''))`;
type Query=Pick<Pool,'query'>;
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
}
