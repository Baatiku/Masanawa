import { withTransaction,createNgnSpending,readForumFeePolicy,createCivicResponseRepository, type ResponseActor } from '@masanawa/postgres';
import type { Pool } from '@masanawa/postgres';
import type { AdminActor, OpsAdminDashboardService } from './admin_dashboard.js';

type Repository=ReturnType<typeof createCivicResponseRepository>;
type Authorize=OpsAdminDashboardService['authorize'];
export type CivicResponseAdmin=ReturnType<typeof createCivicResponseAdmin>;

/** Read/update authority is enforced again in Ops; the browser cannot supply a tenant or an operator. */
export function createCivicResponseAdmin(input:{pool:Pool;authorize:Authorize}) {
  const repository:Repository=createCivicResponseRepository(input.pool);
  const actor=async(header:string|undefined,capability:'incidents.read'|'incidents.write'|'contacts.read'|'contacts.write'|'billing.read'|'billing.write') =>
    input.authorize({authorizationHeader:header,capability});
  const principal=(operator:AdminActor):ResponseActor=>({tenantId:operator.tenantId,userId:operator.actorId});
  return {
    async forumFeePolicy(header:string|undefined) {
      const operator=await actor(header,'billing.read');
      return {policy:await readForumFeePolicy(input.pool,operator.tenantId)};
    },
    async forumSetFeePolicy(header:string|undefined,v:{enabled:boolean;feeKobo:number;freeRooms:string[];freeKinds:string[];expectedRevision:number;reason:string}) {
      const operator=await actor(header,'billing.write');
      const rooms=['rights','tenants','police','employment','banking','electricity','education','health','digital','business','states','national','cac','nimc','inec','efcc','icpc','nafdac','frsc','nhrc','fccpc','cbn','ndpc'];
      const kinds=['question','complaint','concern','awareness','suggestion','feedback','general'];
      if(!Number.isSafeInteger(v.feeKobo)||v.feeKobo<100||v.feeKobo>10000000||!v.freeRooms.every(x=>rooms.includes(x))||!v.freeKinds.every(x=>kinds.includes(x))||v.reason.trim().length<8)throw new Error('invalid_fee_policy');
      return withTransaction(input.pool,async c=>{
        await c.query("SELECT pg_advisory_xact_lock(hashtextextended($1,0))",['forum-fee-policy:'+operator.tenantId]);
        const old=await readForumFeePolicy(c,operator.tenantId);if(old.revision!==v.expectedRevision)throw new Error('fee_policy_conflict');
        const policy={enabled:v.enabled,feeKobo:v.feeKobo,freeRooms:[...new Set(v.freeRooms)],freeKinds:[...new Set(v.freeKinds)],revision:old.revision+1};
        await c.query(`INSERT INTO agents.forum_fee_policy(tenant_id,enabled,fee_kobo,free_rooms,free_kinds,revision,updated_by) VALUES($1,$2,$3,$4,$5,$6,$7) ON CONFLICT(tenant_id) DO UPDATE SET enabled=excluded.enabled,fee_kobo=excluded.fee_kobo,free_rooms=excluded.free_rooms,free_kinds=excluded.free_kinds,revision=excluded.revision,updated_by=excluded.updated_by,updated_at=clock_timestamp()`,[operator.tenantId,policy.enabled,policy.feeKobo,policy.freeRooms,policy.freeKinds,policy.revision,operator.actorId]);
        await c.query('INSERT INTO agents.forum_fee_policy_audit(tenant_id,revision,policy,updated_by,reason) VALUES($1,$2,$3,$4,$5)',[operator.tenantId,policy.revision,JSON.stringify(policy),operator.actorId,v.reason.trim()]);
        return {policy};
      });
    },
    async forumRepresentatives(header:string|undefined) {
      const operator=await actor(header,'contacts.read');
      return {representatives:(await input.pool.query("SELECT user_id,room,active,verified_at FROM agents.forum_representatives WHERE tenant_id=$1 ORDER BY verified_at DESC LIMIT 100",[operator.tenantId])).rows};
    },
    async forumRepresentative(header:string|undefined,inputValue:{userId:string;room:string;active:boolean;evidenceUrl:string;reason:string}) {
      const operator=await actor(header,'contacts.write');
      const rooms=new Set(['cac','nimc','inec','efcc','icpc','nafdac','frsc','nhrc','fccpc','cbn','ndpc']);
      if(!rooms.has(inputValue.room)||!/^[A-Za-z0-9][A-Za-z0-9_.:-]{0,159}$/.test(inputValue.userId)||inputValue.reason.trim().length<8)throw new Error('invalid_representative');
      let evidence:URL;try{evidence=new URL(inputValue.evidenceUrl)}catch{throw new Error('invalid_evidence')};
      if(evidence.protocol!=='https:'||evidence.username||evidence.password||evidence.hash||evidence.search)throw new Error('invalid_evidence');
      return withTransaction(input.pool,async c=>{
        if(!(await c.query("SELECT user_id FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state='active' FOR SHARE",[operator.tenantId,inputValue.userId])).rows.length)throw new Error('representative_account_unavailable');
        if(!inputValue.active&&!(await c.query("SELECT user_id FROM agents.forum_representatives WHERE tenant_id=$1 AND user_id=$2 AND room=$3 FOR UPDATE",[operator.tenantId,inputValue.userId,inputValue.room])).rows.length)throw new Error('representative_not_found');
        const values=[operator.tenantId,inputValue.userId,inputValue.room,inputValue.active,evidence.href,operator.actorId];
        const row=(await c.query(`INSERT INTO agents.forum_representatives(tenant_id,user_id,room,active,evidence_url,verified_by) VALUES($1,$2,$3,$4,$5,$6) ON CONFLICT(tenant_id,user_id,room) DO UPDATE SET active=excluded.active,evidence_url=excluded.evidence_url,verified_by=excluded.verified_by,verified_at=clock_timestamp() RETURNING user_id,room,active,verified_at`,values)).rows[0];
        await c.query("INSERT INTO agents.forum_representative_audit(tenant_id,user_id,room,active,evidence_url,operator_id,reason) VALUES($1,$2,$3,$4,$5,$6,$7)",[...values,inputValue.reason.trim()]);
        return {representative:row};
      });
    },
    async forumMedia(header:string|undefined,id:string) {
      const operator=await actor(header,'incidents.read');
      if(!/^[0-9a-f-]{36}$/i.test(id))throw new Error('invalid_media');
      const row=(await input.pool.query("SELECT kind,mime_type,payload FROM agents.forum_message_media WHERE tenant_id=$1 AND message_id=$2 AND expires_at>clock_timestamp()",[operator.tenantId,id])).rows[0];
      if(!row)throw new Error('media_unavailable');
      return {kind:row.kind,mimeType:row.mime_type,dataBase64:Buffer.from(row.payload).toString('base64')};
    },
    async forumCommunity(header:string|undefined) {
      const operator=await actor(header,'incidents.read');
      const topics=(await input.pool.query(`SELECT t.id,t.room,t.title,t.kind,t.created_at,(p.topic_id IS NOT NULL) AS pinned,o.id AS poll_id,o.closed AS poll_closed,o.closes_at,COALESCE(c.status,'open') AS complaint_status FROM agents.forum_topics t JOIN identity.users u ON u.tenant_id=t.tenant_id AND u.user_id=t.user_id AND u.state='active' LEFT JOIN agents.forum_topic_pins p ON p.tenant_id=t.tenant_id AND p.topic_id=t.id LEFT JOIN agents.forum_polls o ON o.tenant_id=t.tenant_id AND o.topic_id=t.id LEFT JOIN agents.forum_complaint_progress c ON c.tenant_id=t.tenant_id AND c.topic_id=t.id WHERE t.tenant_id=$1 AND t.state='published' AND NOT t.system_channel ORDER BY (p.topic_id IS NOT NULL) DESC,t.created_at DESC LIMIT 200`,[operator.tenantId])).rows;
      return {topics};
    },
    async forumCommunityAction(header:string|undefined,v:{topicId:string;action:string;reason:string;question?:string;options?:string[];durationDays?:number;status?:string}) {
      const operator=await actor(header,'incidents.write'),tenant=operator.tenantId;
      if(!/^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(v.topicId)||v.reason.trim().length<8||!['pin','unpin','poll_create','poll_close','complaint_progress'].includes(v.action))throw new Error('invalid_community_action');
      return withTransaction(input.pool,async c=>{
        const topic=(await c.query(`SELECT t.id,t.room,t.kind FROM agents.forum_topics t JOIN identity.users u ON u.tenant_id=t.tenant_id AND u.user_id=t.user_id AND u.state='active' WHERE t.tenant_id=$1 AND t.id=$2 AND t.state='published' AND NOT t.system_channel FOR UPDATE OF t`,[tenant,v.topicId])).rows[0];
        if(!topic)throw new Error('forum_target_conflict');
        let details:Record<string,unknown>={};
        if(v.action==='pin'){
          await c.query("SELECT pg_advisory_xact_lock(hashtextextended($1,0))",['forum-pins:'+tenant+':'+topic.room]);
          const count=(await c.query('SELECT count(*)::int AS n FROM agents.forum_topic_pins WHERE tenant_id=$1 AND room=$2',[tenant,topic.room])).rows[0];
          if(Number(count?.n)>=5&&!(await c.query('SELECT topic_id FROM agents.forum_topic_pins WHERE tenant_id=$1 AND topic_id=$2',[tenant,v.topicId])).rows.length)throw new Error('pin_limit');
          await c.query('INSERT INTO agents.forum_topic_pins(tenant_id,topic_id,room,pinned_by) VALUES($1,$2,$3,$4) ON CONFLICT DO NOTHING',[tenant,v.topicId,topic.room,operator.actorId]);
        }else if(v.action==='unpin'){
          await c.query('DELETE FROM agents.forum_topic_pins WHERE tenant_id=$1 AND topic_id=$2',[tenant,v.topicId]);
        }else if(v.action==='poll_create'){
          const question=v.question?.trim(),options=v.options?.map(x=>x.trim()),days=v.durationDays;
          if(!question||question.length<10||question.length>200||!options||options.length<2||options.length>6||options.some(x=>!x||x.length>100)||new Set(options.map(x=>x.toLowerCase())).size!==options.length||!Number.isInteger(days)||Number(days)<1||Number(days)>30)throw new Error('invalid_poll');
          const result=await c.query("INSERT INTO agents.forum_polls(tenant_id,id,topic_id,question,options,closes_at,created_by) VALUES($1,gen_random_uuid(),$2,$3,$4,clock_timestamp()+$5::int*interval '1 day',$6) ON CONFLICT(tenant_id,topic_id) DO NOTHING RETURNING id",[tenant,v.topicId,question,options,days,operator.actorId]);if(!result.rows.length)throw new Error('poll_exists');
          details={pollId:result.rows[0]?.id};
        }else if(v.action==='poll_close'){
          const result=await c.query('UPDATE agents.forum_polls SET closed=true WHERE tenant_id=$1 AND topic_id=$2 RETURNING id',[tenant,v.topicId]);if(!result.rows.length)throw new Error('poll_not_found');
        }else{
          if(!['complaint','concern'].includes(topic.kind)||!['open','in_progress','resolved','unresolved'].includes(v.status||''))throw new Error('invalid_complaint_status');
          await c.query('INSERT INTO agents.forum_complaint_progress(tenant_id,topic_id,status,updated_by) VALUES($1,$2,$3,$4) ON CONFLICT(tenant_id,topic_id) DO UPDATE SET status=excluded.status,updated_by=excluded.updated_by,updated_at=clock_timestamp()',[tenant,v.topicId,v.status,operator.actorId]);
          details={status:v.status};
        }
        await c.query('INSERT INTO agents.forum_community_audit(tenant_id,topic_id,action,actor_id,reason,details) VALUES($1,$2,$3,$4,$5,$6)',[tenant,v.topicId,v.action,operator.actorId,v.reason.trim(),JSON.stringify(details)]);
        return {ok:true};
      });
    },
    async forumQueue(header:string|undefined) {
      const operator=await actor(header,'incidents.read');
      const topics=(await input.pool.query("SELECT id,room,title,body,kind,jurisdiction,state,created_at FROM agents.forum_topics WHERE tenant_id=$1 AND state='pending' ORDER BY created_at LIMIT 100",[operator.tenantId])).rows;
      const messages=(await input.pool.query("SELECT m.id,m.topic_id,m.body,m.created_at,t.title,f.kind AS media_kind FROM agents.forum_messages m LEFT JOIN agents.forum_message_media f ON f.tenant_id=m.tenant_id AND f.message_id=m.id AND f.expires_at>clock_timestamp() JOIN agents.forum_topics t ON t.tenant_id=m.tenant_id AND t.id=m.topic_id WHERE m.tenant_id=$1 AND m.state='pending' AND t.state='published' ORDER BY CASE WHEN m.created_at<=clock_timestamp()-interval '15 minutes' THEN 0 WHEN t.system_channel THEN 1 ELSE 2 END,m.created_at LIMIT 100",[operator.tenantId])).rows;
      const cases=(await input.pool.query(`SELECT c.id,c.kind,c.target_kind,c.target_id,c.reason AS body,c.created_at,COALESCE(t.title,'Public reply') AS title,COALESCE(t.body,m.body) AS target_body FROM agents.forum_cases c LEFT JOIN agents.forum_topics t ON c.target_kind='topic' AND t.tenant_id=c.tenant_id AND t.id=c.target_id LEFT JOIN agents.forum_messages m ON c.target_kind='message' AND m.tenant_id=c.tenant_id AND m.id=c.target_id WHERE c.tenant_id=$1 AND c.state='pending' ORDER BY c.created_at LIMIT 100`,[operator.tenantId])).rows;
      return {topics,messages,cases};
    },
    async forumReview(header:string|undefined,id:string,kind:'topic'|'message'|'case',state:'published'|'rejected'|'hidden'|'resolved'|'dismissed',reason:string) {
      const operator=await actor(header,'incidents.write');
      if(kind==='case'){
        if(state!=='resolved'&&state!=='dismissed')throw new Error('invalid_case_review');
        return withTransaction(input.pool,async c=>{
          const item=(await c.query("SELECT id,kind,target_kind,target_id FROM agents.forum_cases WHERE tenant_id=$1 AND id=$2 AND state='pending' FOR UPDATE",[operator.tenantId,id])).rows[0];
          if(!item)throw new Error('forum_case_conflict');
          if(state==='resolved'){
            const table=item.target_kind==='topic'?'agents.forum_topics':'agents.forum_messages';
            const guard=item.target_kind==='topic'?' AND NOT system_channel':'';
            const next=item.kind==='report'?'hidden':'published';
            const eligible=item.kind==='report'?"state IN ('published','hidden')":"state IN ('rejected','hidden','published')";
            // Reinstatement never creates a new debit without the citizen's consent.
            // A released original reservation is explicitly waived and audited in this case.
            if(item.kind==='appeal'&&item.target_kind==='topic'){
              const topic=(await c.query("SELECT user_id,fee_operation_id,fee_kobo FROM agents.forum_topics WHERE tenant_id=$1 AND id=$2 AND NOT system_channel FOR UPDATE",[operator.tenantId,item.target_id])).rows[0];
              if(!topic)throw new Error('forum_target_conflict');
              if(topic.fee_operation_id){
                const who={tenantId:operator.tenantId,userId:topic.user_id,operationId:topic.fee_operation_id};
                const spending=createNgnSpending(input.pool,c);
                const receipt=await spending.read(who.tenantId,who.operationId,who.userId);
                if(!receipt)throw new Error('forum_fee_receipt_missing');
                if(receipt.state==='reserved')await spending.capture(who,Number(topic.fee_kobo));
                else if(receipt.state==='failed')await c.query("INSERT INTO agents.forum_fee_appeal_waivers(tenant_id,topic_id,case_id,operation_id,waived_kobo,operator_id,reason) VALUES($1,$2,$3,$4,$5,$6,$7) ON CONFLICT(tenant_id,topic_id) DO NOTHING",[operator.tenantId,item.target_id,id,topic.fee_operation_id,topic.fee_kobo,operator.actorId,reason]);
                else if(receipt.state!=='completed'||receipt.capturedKobo!==Number(topic.fee_kobo))throw new Error('forum_fee_receipt_conflict');
              }
            }
            const changed=await c.query(`UPDATE ${table} SET state=$3,reviewed_at=clock_timestamp(),reviewed_by=$4,review_reason=$5 WHERE tenant_id=$1 AND id=$2 AND ${eligible}${guard} RETURNING id`,[operator.tenantId,item.target_id,next,operator.actorId,reason]);
            if(!changed.rows.length)throw new Error('forum_target_conflict');
          }
          return (await c.query("UPDATE agents.forum_cases SET state=$3,reviewed_at=clock_timestamp(),reviewed_by=$4,review_reason=$5 WHERE tenant_id=$1 AND id=$2 RETURNING id,state",[operator.tenantId,id,state,operator.actorId,reason])).rows[0];
        });
      }
      if(state==='resolved'||state==='dismissed')throw new Error('invalid_content_review');
      if(kind==='topic'){
        return withTransaction(input.pool,async c=>{
          const topic=(await c.query("SELECT id,user_id,state,fee_operation_id,fee_kobo FROM agents.forum_topics WHERE tenant_id=$1 AND id=$2 AND NOT system_channel FOR UPDATE",[operator.tenantId,id])).rows[0];
          if(!topic||!(topic.state==='pending'||(topic.state==='published'&&state==='hidden')))throw new Error('forum_review_conflict');
          if(topic.state==='pending'&&topic.fee_operation_id){
            const who={tenantId:operator.tenantId,userId:topic.user_id,operationId:topic.fee_operation_id};const spending=createNgnSpending(input.pool,c);
            if(state==='published')await spending.capture(who,Number(topic.fee_kobo));else await spending.release(who);
          }
          return (await c.query("UPDATE agents.forum_topics SET state=$3,reviewed_at=clock_timestamp(),reviewed_by=$4,review_reason=$5 WHERE tenant_id=$1 AND id=$2 RETURNING id,state",[operator.tenantId,id,state,operator.actorId,reason])).rows[0];
        });
      }
      const table='agents.forum_messages';
      const row=await input.pool.query(`UPDATE ${table} SET state=$3,reviewed_at=clock_timestamp(),reviewed_by=$4,review_reason=$5 WHERE tenant_id=$1 AND id=$2 AND (state='pending' OR (state='published' AND $3='hidden')) RETURNING id,state`,[operator.tenantId,id,state,operator.actorId,reason]);
      if(!row.rows[0])throw new Error('forum_review_conflict');
      return row.rows[0];
    },
    async queue(header:string|undefined,filters:{status?:string;category?:string;limit?:number;offset?:number;includeHidden?:boolean}) {
      const operator=await actor(header,'incidents.read');
      return {incidents:await repository.adminList(operator.tenantId,filters)};
    },
    async detail(header:string|undefined,id:string) {
      const operator=await actor(header,'incidents.read');
      return {incident:await repository.adminIncident(operator.tenantId,id),events:await repository.events(principal(operator),id,true)};
    },
    async revise(header:string|undefined,id:string,changes:Parameters<Repository['adminUpdate']>[2]) {
      const operator=await actor(header,'incidents.write');
      return {incident:await repository.adminUpdate(principal(operator),id,changes)};
    },
    async publication(header:string|undefined,id:string,changes:Parameters<Repository['reviewPublication']>[2]) {
      const operator=await actor(header,'incidents.write');
      return {incident:await repository.reviewPublication(principal(operator),id,changes)};
    },
    async contacts(header:string|undefined) {
      await actor(header,'contacts.read');
      return {contacts:await repository.contacts({includeInactive:true})};
    },
    async saveContact(header:string|undefined,body:Parameters<Repository['saveContact']>[1]) {
      const operator=await actor(header,'contacts.write');
      return {contact:await repository.saveContact(operator.actorId,body)};
    },
  };
}
