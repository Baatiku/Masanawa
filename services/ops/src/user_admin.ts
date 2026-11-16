import type {Pool} from '@masanawa/postgres';
import {hashPlatformSessionToken} from '@masanawa/security';
import type {OpsAdminDashboardService} from './admin_dashboard.js';
import {WalletAdminError} from './wallet_admin.js';
export function createUserAdmin(input:{pool:Pick<Pool,'query'>;authorize:OpsAdminDashboardService['authorize']}){return{
 async read(authorizationHeader:string|undefined,userId:string){const actor=await input.authorize({authorizationHeader,capability:'users.read'});if(!/^[a-zA-Z0-9_.:-]{1,160}$/.test(userId))throw new WalletAdminError(422,'invalid_user_id');const user=(await input.pool.query(`SELECT u.user_id AS "userId",p.display_name AS "displayName",u.state,u.revision::text FROM identity.users u JOIN security.platform_user_profiles p ON p.tenant_id=u.tenant_id AND p.user_id=u.user_id WHERE u.tenant_id=$1 AND u.user_id=$2`,[actor.tenantId,userId])).rows[0];if(!user)throw new WalletAdminError(404,'user_not_found');return user;},
 async transition(authorizationHeader:string|undefined,p:{userId:string;operationId:string;state:'active'|'disabled';expectedRevision:number;reason:string}){
  const actor=await input.authorize({authorizationHeader,capability:'users.write'});
  if(!/^[a-zA-Z0-9_.:-]{1,160}$/.test(p.userId)||!/^[a-zA-Z0-9_-]{16,80}$/.test(p.operationId)||!['active','disabled'].includes(p.state)||!Number.isSafeInteger(p.expectedRevision)||p.expectedRevision<1||typeof p.reason!=='string'||p.reason.trim().length<10||p.reason.length>500)throw new WalletAdminError(422,'invalid_user_transition');
  if(p.userId===actor.actorId)throw new WalletAdminError(403,'cannot_disable_own_account');
  const token=/^Bearer\s+(\S+)$/i.exec(authorizationHeader??'')?.[1];if(!token)throw new WalletAdminError(401,'sign_in_required');
  const fresh=await input.pool.query(`SELECT 1 FROM security.platform_sessions WHERE tenant_id=$1 AND user_id=$2 AND access_hash=$3 AND revoked_at IS NULL AND access_expires_at>clock_timestamp() AND created_at>clock_timestamp()-interval '15 minutes'`,[actor.tenantId,actor.actorId,hashPlatformSessionToken(token)]);if(!fresh.rows.length)throw new WalletAdminError(403,'fresh_admin_sign_in_required');
  const old=(await input.pool.query(`SELECT user_id AS "userId",actor_id,next_state AS state,revision::text,reason FROM security.ops_user_lifecycle_events WHERE tenant_id=$1 AND operation_id=$2`,[actor.tenantId,p.operationId])).rows[0];if(old){if(old.userId!==p.userId||old.actor_id!==actor.actorId||old.state!==p.state||old.reason!==p.reason)throw new WalletAdminError(409,'user_transition_conflict');return old;}
  const r=await input.pool.query(`WITH changed AS(UPDATE identity.users SET state=$3,revision=revision+1,updated_at=clock_timestamp() WHERE tenant_id=$1 AND user_id=$2 AND revision=$4 AND state IN('active','disabled') AND state<>$3 RETURNING user_id,state,revision),revoked AS(UPDATE security.platform_sessions SET revoked_at=clock_timestamp() WHERE tenant_id=$1 AND user_id=$2 AND $3='disabled' AND revoked_at IS NULL AND EXISTS(SELECT 1 FROM changed) RETURNING 1)
   INSERT INTO security.ops_user_lifecycle_events(tenant_id,user_id,operation_id,actor_id,previous_state,next_state,revision,reason) SELECT $1,user_id,$5,$6,CASE WHEN $3='disabled' THEN 'active' ELSE 'disabled' END,state,revision,$7 FROM changed RETURNING user_id AS "userId",next_state AS state,revision::text`,[actor.tenantId,p.userId,p.state,p.expectedRevision,p.operationId,actor.actorId,p.reason]);
  if(!r.rows[0])throw new WalletAdminError(409,'user_state_changed_or_archived');return r.rows[0];
 }
};}
