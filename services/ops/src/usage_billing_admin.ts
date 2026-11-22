import {createUsageBillingRepository} from '@masanawa/postgres';
import type {Pool} from '@masanawa/postgres';
import type {OpsAdminDashboardService} from './admin_dashboard.js';

/** Customer charges are never controlled from the browser. Every mutation is
 * freshness-authorized, revision-gated and durably audited by Postgres. */
export function createUsageBillingAdmin(input:{
  pool:Pool;authorize:OpsAdminDashboardService['authorize'];
}){
  const billing=createUsageBillingRepository(input.pool);
  return Object.freeze({
    async read(authorizationHeader:string|undefined){
      const actor=await input.authorize({authorizationHeader,capability:'billing.read'});
      return billing.read(actor.tenantId);
    },
    async write(authorizationHeader:string|undefined,request:{
      expectedRevision:number;billingEnabled:boolean;replyKobo:number;callKoboPerStartedSecond:number;
    }){
      const actor=await input.authorize({authorizationHeader,capability:'billing.write'});
      return billing.write({...request,tenantId:actor.tenantId,actorId:actor.actorId});
    },
  });
}
