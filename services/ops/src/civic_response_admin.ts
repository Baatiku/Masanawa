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
