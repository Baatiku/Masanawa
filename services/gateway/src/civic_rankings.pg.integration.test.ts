import Fastify from 'fastify';
import {afterAll,beforeAll,it,expect,describe} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {createPostgresPool,runMigrations,platformProductMigrationRoots,type Pool} from '@masanawa/postgres';
import {registerCivicRatingRoutes,captureCivicAssessmentHistory} from './civic_rating_routes.js';
const url=process.env.MASANAWA_TEST_DATABASE_URL;
describe.skipIf(!url)('civic engagement rankings in real PostgreSQL',()=>{
 let pool:Pool;
 const tenantId=createCanonicalId('tenant'),otherTenant=createCanonicalId('tenant');
 const viewer=createCanonicalId('user'),person=createCanonicalId('character'),agency=createCanonicalId('character'),hidden=createCanonicalId('character');
 beforeAll(async()=>{
  pool=createPostgresPool({connectionString:url!,applicationName:'civic-rankings-test'});
  await runMigrations(pool,platformProductMigrationRoots());
  for(const t of [tenantId,otherTenant])await pool.query('INSERT INTO identity.tenants(tenant_id,created_at,updated_at) VALUES($1,now(),now())',[t]);
  await pool.query('INSERT INTO identity.users(tenant_id,user_id,created_at,updated_at) VALUES($1,$2,now(),now())',[tenantId,viewer]);
  for(const [id,kind,visible] of [[person,'person',true],[agency,'agency',true],[hidden,'person',false]] as const){
   const v=createCanonicalId('character-version');
   const constitution=kind==='agency'?{disclosurePolicy:{representation:'independent_civic_ai_guide',civicAgencyId:'inec'}}:{publicOfficial:{countryCode:'NG',officialName:'Synthetic official'}};
   const profile={handle:kind==='agency'?'civic.inec':('test.'+id.slice(-12)),displayName:'Synthetic fixture',profession:'Public information',...(kind==='agency'?{civicAgencyId:'inec'}:{})};
   await pool.query('INSERT INTO identity.characters(tenant_id,character_id,created_at,updated_at) VALUES($1,$2,now(),now())',[tenantId,id]);
   await pool.query("INSERT INTO identity.character_versions(tenant_id,character_version_id,character_id,version_number,state,constitution,created_at,published_at) VALUES($1,$2,$3,1,'published',$4::jsonb,now(),now())",[tenantId,v,id,JSON.stringify(constitution)]);
   await pool.query('UPDATE identity.characters SET active_character_version_id=$3 WHERE tenant_id=$1 AND character_id=$2',[tenantId,id,v]);
   await pool.query("INSERT INTO identity.character_ownership(tenant_id,character_id,kind,created_at) VALUES($1,$2,'platform',now())",[tenantId,id]);
   await pool.query("INSERT INTO agents.agent_presentations(tenant_id,character_id,character_version_id,display_name,role_label,visible_in_user_app) VALUES($1,$2,$3,'Fixture','Fixture',$4)",[tenantId,id,v,visible]);
   await pool.query("INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at) VALUES($1,$2,1,'approved',$3::jsonb,'test',now())",[tenantId,id,JSON.stringify(profile)]);
  }
  const users=Array.from({length:76},()=>createCanonicalId('user'));
  for(const [i,user] of users.entries()){
   await pool.query('INSERT INTO identity.users(tenant_id,user_id,created_at,updated_at) VALUES($1,$2,now(),now())',[tenantId,user]);
   if(i!==75)await pool.query("INSERT INTO agents.civic_engagement_consents(tenant_id,user_id,consent_version,consented_at) VALUES($1,$2,1,now()-interval '40 days')",[tenantId,user]);
   for(const [id,days,eligible] of [[person,2,true],[agency,10,i<52],[hidden,2,true]] as const){
    if(!eligible)continue;
    const write=()=>pool.query("INSERT INTO agents.mobile_turn_commands(tenant_id,user_id,character_id,relationship_id,character_session_id,request_id,kind,user_text,payload_hash,state,created_at,updated_at) VALUES($1,$2,$3,$4,$5,$6,'text','fixture',repeat('a',64),'completed',now()-make_interval(days=>$7::integer),now()-make_interval(days=>$7::integer))",[tenantId,user,id,'fixture','fixture',createCanonicalId('operation'),days]);
    await write();if(i===0)await write();
   }
  }
 },120000);
 afterAll(async()=>{await pool?.end();});
 it('returns distinct consenting accounts only, filters hidden guides and respects fixed windows and tenant scope',async()=>{
  const app=Fastify({logger:false});
  registerCivicRatingRoutes(app,{pool,publicTenantId:tenantId,authorize:async header=>({tenantId:header==='Bearer other'?otherTenant:tenantId,userId:viewer}),beforeWrite:async()=>{}});
  try{
   const get=async(days:string,kind:string,authorization='Bearer viewer')=>app.inject({url:'/v1/civic/engagement/rankings?days='+days+'&kind='+kind,headers:{authorization}});
   const publicResult=await app.inject({url:'/v1/civic/public-assessments/'+person});
   expect(publicResult.statusCode).toBe(200);
   expect(publicResult.json()).toEqual({kind:'person',published:false,minimum:20,count:null,approval:null});
   expect((await app.inject({url:'/v1/civic/public-assessments/'+hidden})).statusCode).toBe(404);
   expect((await app.inject({url:'/v1/civic/public-assessments/not-a-subject'})).statusCode).toBe(404);
   const publicWithAuth=await app.inject({url:'/v1/civic/public-assessments/'+person,headers:{authorization:'Bearer other'}});
   expect(publicWithAuth.json()).toEqual(publicResult.json());
   const post=async(id:string,score:number|null)=>app.inject({method:'POST',url:'/v1/civic/confidence/'+id,headers:{authorization:'Bearer viewer'},payload:score===null?{score:null}:{score,consentVersion:1}});
   expect((await post(agency,5)).statusCode).toBe(404);
   expect((await post(hidden,5)).statusCode).toBe(404);
   const confidence=await post(person,4);expect(confidence.statusCode).toBe(200);expect(confidence.json().myRating).toBe(4);
   const original=await app.inject({url:'/v1/civic/ratings/'+person,headers:{authorization:'Bearer viewer'}});
   expect(original.json().myRating).toBeNull();
   const guestConfidence=await app.inject({url:'/v1/civic/public-confidence/'+person});
   expect(guestConfidence.statusCode).toBe(200);expect(guestConfidence.json().published).toBe(false);
   expect(guestConfidence.json()).not.toHaveProperty('myRating');
   const mine=await app.inject({url:'/v1/civic/my-assessments',headers:{authorization:'Bearer viewer'}});
   expect(mine.statusCode).toBe(200);expect(mine.json().assessments).toHaveLength(1);
   expect(mine.json().assessments[0]).toMatchObject({characterId:person,measure:'confidence',score:4});
   expect((await app.inject({url:'/v1/civic/my-assessments',headers:{authorization:'Bearer other'}})).json().assessments).toEqual([]);
   await pool.query('UPDATE agents.civic_assessment_write_budget SET attempts=120 WHERE tenant_id=$1 AND user_id=$2',[tenantId,viewer]);
   expect((await post(person,5)).statusCode).toBe(429);
   expect((await post(person,null)).json()).toEqual({withdrawn:true});
   await captureCivicAssessmentHistory(pool,tenantId);
   expect((await app.inject({url:'/v1/civic/assessment-history/'+person})).json()).toEqual({measure:'record',points:[]});
   const cohort=(await pool.query("SELECT user_id FROM identity.users WHERE tenant_id=$1 LIMIT 20",[tenantId])).rows;
   for(const voter of cohort)await pool.query('INSERT INTO agents.civic_ratings(tenant_id,user_id,character_id,score,consent_version) VALUES($1,$2,$3,4,1)',[tenantId,voter.user_id,person]);
   await captureCivicAssessmentHistory(pool,tenantId);await captureCivicAssessmentHistory(pool,tenantId);
   const snapshots=await pool.query("SELECT count(*)::integer AS n FROM agents.civic_assessment_history WHERE tenant_id=$1 AND character_id=$2",[tenantId,person]);
   expect(snapshots.rows[0]!.n).toBe(1);
   await pool.query("UPDATE agents.civic_assessment_history SET day=day-1 WHERE tenant_id=$1 AND character_id=$2",[tenantId,person]);
   const history=await app.inject({url:'/v1/civic/assessment-history/'+person});expect(history.statusCode).toBe(200);
   expect(history.json().points).toEqual([{date:expect.stringMatching(/^\d{4}-\d{2}-\d{2}$/),count:20,approval:100}]);
   const month=await get('30','all');expect(month.statusCode).toBe(200);expect(month.json().rankings).toEqual([{characterId:person,kind:'person',count:75,rank:1},{characterId:agency,kind:'agency',count:50,rank:2}]);
   const week=await get('7','all');expect(week.statusCode).toBe(200);expect(week.json().rankings).toEqual([{characterId:person,kind:'person',count:75,rank:1}]);
   expect((await get('30','agency')).json().rankings).toEqual([{characterId:agency,kind:'agency',count:50,rank:1}]);
   expect((await get('30','all','Bearer other')).json().rankings).toEqual([]);
   expect((await get('1','all')).statusCode).toBe(400);
   const target=(await pool.query("SELECT user_id FROM agents.civic_engagement_consents WHERE tenant_id=$1 ORDER BY user_id LIMIT 1",[tenantId])).rows[0]!.user_id;
   await pool.query('DELETE FROM agents.civic_engagement_consents WHERE tenant_id=$1 AND user_id=$2',[tenantId,target]);
   expect((await get('7','all')).json().rankings).toEqual([{characterId:person,kind:'person',count:50,rank:1}]);
  }finally{await app.close();}
 },30000);
});
