import { createCivicResponseRepository, type ResponseActor } from '@masanawa/postgres';
import type { Pool } from '@masanawa/postgres';
import type { AdminActor, OpsAdminDashboardService } from './admin_dashboard.js';

type Repository=ReturnType<typeof createCivicResponseRepository>;
type Authorize=OpsAdminDashboardService['authorize'];
export type CivicResponseAdmin=ReturnType<typeof createCivicResponseAdmin>;

/** Read/update authority is enforced again in Ops; the browser cannot supply a tenant or an operator. */
export function createCivicResponseAdmin(input:{pool:Pool;authorize:Authorize}) {
  const repository:Repository=createCivicResponseRepository(input.pool);
  const actor=async(header:string|undefined,capability:'incidents.read'|'incidents.write'|'contacts.read'|'contacts.write') =>
    input.authorize({authorizationHeader:header,capability});
  const principal=(operator:AdminActor):ResponseActor=>({tenantId:operator.tenantId,userId:operator.actorId});
  return {
    async forumQueue(header:string|undefined) {
      const operator=await actor(header,'incidents.read');
      const topics=(await input.pool.query("SELECT id,room,title,body,kind,jurisdiction,state,created_at FROM agents.forum_topics WHERE tenant_id=$1 AND state='pending' ORDER BY created_at LIMIT 100",[operator.tenantId])).rows;
      const messages=(await input.pool.query("SELECT m.id,m.topic_id,m.body,m.created_at,t.title FROM agents.forum_messages m JOIN agents.forum_topics t ON t.tenant_id=m.tenant_id AND t.id=m.topic_id WHERE m.tenant_id=$1 AND m.state='pending' AND t.state='published' ORDER BY m.created_at LIMIT 100",[operator.tenantId])).rows;
      return {topics,messages};
    },
    async forumReview(header:string|undefined,id:string,kind:'topic'|'message',state:'published'|'rejected'|'hidden',reason:string) {
      const operator=await actor(header,'incidents.write');
      const table=kind==='topic'?'agents.forum_topics':'agents.forum_messages';
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
