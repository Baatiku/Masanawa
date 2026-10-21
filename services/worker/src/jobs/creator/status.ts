import type {Pool} from '@masanawa/postgres';
type PoolClient=Pick<Pool,'query'>;
type Job={tenant_id:string;job_id:string;character_id:string;owner_user_id:string;expected_revision:string;profile:Record<string,unknown>;rights_note:string;fence:string;attempt:number};
const permitted=`a.state='published' AND a.status_enabled AND a.status_posts_weekly>0
 AND length(trim(COALESCE(a.status_rights_note,'')))>=8
 AND EXISTS(SELECT 1 FROM identity.users u WHERE u.tenant_id=a.tenant_id AND u.user_id=a.owner_user_id AND u.state='active')
 AND EXISTS(SELECT 1 FROM identity.characters c WHERE c.tenant_id=a.tenant_id AND c.character_id=a.character_id AND c.state='active')`;
const cap=`COALESCE((SELECT p.max_posts_weekly FROM creator.fee_policies p WHERE p.tenant_id=a.tenant_id AND p.effective_at<=now() ORDER BY p.effective_at DESC,p.revision DESC LIMIT 1),2)`;
export function createCreatorStatusRuntime(input:{pool:Pool;generate:(profile:Record<string,unknown>,rights:string)=>Promise<string>}){
 async function tx<T>(work:(q:PoolClient)=>Promise<T>){const q=await input.pool.connect();try{await q.query('BEGIN');const r=await work(q);await q.query('COMMIT');return r;}catch(e){await q.query('ROLLBACK');throw e;}finally{q.release();}}
 async function eligible(q:PoolClient,j:Job){const r=await q.query(`SELECT a.character_id FROM creator.agents a WHERE a.tenant_id=$1 AND a.character_id=$2 AND a.owner_user_id=$3 AND a.revision=$4 AND ${permitted} AND ${cap}>0 AND a.status_rights_note=$5 AND (SELECT count(*) FROM creator.status_jobs j WHERE j.tenant_id=a.tenant_id AND j.character_id=a.character_id AND j.state='completed' AND j.created_at>now()-interval '7 days')<LEAST(a.status_posts_weekly,${cap}) FOR UPDATE OF a`,[j.tenant_id,j.character_id,j.owner_user_id,j.expected_revision,j.rights_note]);return r.rows.length>0;}
 return {async runOnce(){
  const stats={completed:0,cancelled:0,retried:0};
  await tx(async q=>{
   const due=await q.query(`SELECT a.*,r.profile FROM creator.agents a JOIN LATERAL
    (SELECT profile FROM masana.character_revisions r WHERE r.tenant_id=a.tenant_id AND r.character_id=a.character_id AND r.state='approved' ORDER BY revision DESC LIMIT 1) r ON true
    WHERE ${permitted} AND ${cap}>0
    AND NOT EXISTS(SELECT 1 FROM creator.status_jobs j WHERE j.tenant_id=a.tenant_id AND j.character_id=a.character_id AND j.created_at>now()-interval '7 days'/LEAST(a.status_posts_weekly,${cap}))
    AND (SELECT count(*) FROM creator.status_jobs j WHERE j.tenant_id=a.tenant_id AND j.character_id=a.character_id AND j.created_at>now()-interval '7 days')<LEAST(a.status_posts_weekly,${cap})
    ORDER BY a.tenant_id,a.character_id LIMIT 5 FOR UPDATE OF a SKIP LOCKED`);
   for(const a of due.rows)await q.query('INSERT INTO creator.status_jobs(tenant_id,character_id,owner_user_id,expected_revision,profile,rights_note) VALUES($1,$2,$3,$4,$5::jsonb,$6)',[a.tenant_id,a.character_id,a.owner_user_id,a.revision,JSON.stringify(a.profile),a.status_rights_note]);
  });
  const job=await tx(async q=>{
   const r=await q.query<Job>(`SELECT * FROM creator.status_jobs WHERE (state='pending' AND available_at<=now()) OR (state='working' AND lease_until<now()) ORDER BY available_at,created_at LIMIT 1 FOR UPDATE SKIP LOCKED`);
   const j=r.rows[0];if(!j)return null;
   if(!await eligible(q,j)||j.attempt>=8){await q.query("UPDATE creator.status_jobs SET state='cancelled',lease_until=NULL WHERE tenant_id=$1 AND job_id=$2",[j.tenant_id,j.job_id]);stats.cancelled++;return null;}
   const claimed=await q.query<Job>("UPDATE creator.status_jobs SET state='working',fence=fence+1,attempt=attempt+1,lease_until=now()+interval '5 minutes' WHERE tenant_id=$1 AND job_id=$2 RETURNING *",[j.tenant_id,j.job_id]);return claimed.rows[0]!;
  });
  if(!job)return stats;
  let body:string;
  try{body=(await input.generate(job.profile,job.rights_note)).trim();if(!body||body.length>5000)throw Error('creator_status_invalid');}
  catch{await input.pool.query("UPDATE creator.status_jobs SET state='pending',available_at=now()+interval '5 minutes',lease_until=NULL WHERE tenant_id=$1 AND job_id=$2 AND fence=$3 AND state='working'",[job.tenant_id,job.job_id,job.fence]);stats.retried++;return stats;}
  await tx(async q=>{
   const lease=await q.query("SELECT 1 FROM creator.status_jobs WHERE tenant_id=$1 AND job_id=$2 AND fence=$3 AND state='working' AND lease_until>now() FOR UPDATE",[job.tenant_id,job.job_id,job.fence]);if(!lease.rows.length)return;
   if(!await eligible(q,job)){await q.query("UPDATE creator.status_jobs SET state='cancelled',lease_until=NULL WHERE tenant_id=$1 AND job_id=$2",[job.tenant_id,job.job_id]);stats.cancelled++;return;}
   const key='creator-status:'+job.job_id;
   const post=await q.query(`INSERT INTO feed.posts(tenant_id,author_masana_id,kind,body,media_ids,transcript,state,idempotency_key,published_by)
    VALUES($1,$2,'text',$3,'{}',NULL,'draft',$4,$5) ON CONFLICT(tenant_id,published_by,idempotency_key) DO NOTHING RETURNING id`,[job.tenant_id,job.character_id,body,key,job.owner_user_id]);
   const id=post.rows[0]?.id;if(!id)throw Error('creator_status_replay_conflict');
   await q.query("INSERT INTO feed.editorial_events(tenant_id,post_id,revision,previous_state,next_state,actor_id,action,idempotency_key) VALUES($1,$2,0,NULL,'draft',$3,'create',$4)",[job.tenant_id,id,job.owner_user_id,key+':create']);
   await q.query("UPDATE feed.posts SET state='in_review',review_revision=1,updated_at=now() WHERE tenant_id=$1 AND id=$2",[job.tenant_id,id]);
   await q.query("INSERT INTO feed.editorial_events(tenant_id,post_id,revision,previous_state,next_state,actor_id,action,idempotency_key) VALUES($1,$2,1,'draft','in_review',$3,'submit',$4)",[job.tenant_id,id,job.owner_user_id,key+':submit']);
   await q.query("UPDATE creator.status_jobs SET state='completed',post_id=$3,lease_until=NULL WHERE tenant_id=$1 AND job_id=$2",[job.tenant_id,job.job_id,id]);stats.completed++;
  });return stats;
 }};
}
