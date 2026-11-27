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
