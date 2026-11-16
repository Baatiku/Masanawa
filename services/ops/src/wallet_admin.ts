import {createHash} from 'node:crypto';
import {hashPlatformSessionToken} from '@masanawa/security';
import type {Pool} from '@masanawa/postgres';
import type {OpsAdminDashboardService} from './admin_dashboard.js';
export class WalletAdminError extends Error {constructor(readonly statusCode:number,readonly code:string){super(code);}}
type Adjustment={userId:string;operationId:string;mode:'credit'|'set_balance';amountKobo:number;expectedVersion:number;reason:string;fundingReference:string};
export function createWalletAdmin(input:{pool:Pick<Pool,'query'>;authorize:OpsAdminDashboardService['authorize']}){
 const valid=(s:unknown):s is string=>typeof s==='string'&&/^[a-zA-Z0-9_.:-]{1,160}$/.test(s);
 return {
  async receipt(authorizationHeader:string|undefined,userId:string,operationId:string){const actor=await input.authorize({authorizationHeader,capability:'wallet.read'});if(!valid(userId)||!valid(operationId))throw new WalletAdminError(400,'invalid_receipt');const row=(await input.pool.query(`SELECT operation_id AS "operationId",account_id AS "userId",before_kobo::text AS "beforeKobo",after_kobo::text AS "afterKobo",delta_kobo::text AS "deltaKobo",created_at AS "createdAt" FROM gb_wallet.ngn_admin_adjustments WHERE tenant_id=$1 AND account_id=$2 AND operation_id=$3`,[actor.tenantId,userId,operationId])).rows[0];return {receipt:row??null};},
  async read(authorizationHeader:string|undefined,userId:string){
   const actor=await input.authorize({authorizationHeader,capability:'wallet.read'});
   if(!valid(userId))throw new WalletAdminError(400,'invalid_user');
   const result=await input.pool.query(`SELECT u.user_id AS "userId",p.display_name AS "displayName",u.state,COALESCE(a.balance_kobo,0)::text AS "balanceKobo",COALESCE(a.held_kobo,0)::text AS "heldKobo",COALESCE(a.debt_kobo,0)::text AS "debtKobo",COALESCE(a.version,0)::text AS version,COALESCE(a.frozen,false) AS frozen FROM identity.users u JOIN security.platform_user_profiles p ON p.tenant_id=u.tenant_id AND p.user_id=u.user_id LEFT JOIN gb_wallet.ngn_accounts a ON a.tenant_id=u.tenant_id AND a.account_id=u.user_id WHERE u.tenant_id=$1 AND u.user_id=$2`,[actor.tenantId,userId]);
   if(!result.rows[0])throw new WalletAdminError(404,'user_not_found');
   const entries=await input.pool.query(`SELECT operation_id AS "operationId",actor_id AS "actorId",before_kobo::text AS "beforeKobo",after_kobo::text AS "afterKobo",delta_kobo::text AS "deltaKobo",reason,funding_reference AS "fundingReference",created_at AS "createdAt" FROM gb_wallet.ngn_admin_adjustments WHERE tenant_id=$1 AND account_id=$2 ORDER BY created_at DESC,operation_id DESC LIMIT 50`,[actor.tenantId,userId]);
   return {operatorId:actor.actorId,...result.rows[0],adjustments:entries.rows};
  },
  async adjust(authorizationHeader:string|undefined,p:Adjustment){
   const actor=await input.authorize({authorizationHeader,capability:'wallet.adjust.write'});
   if(!valid(p.userId)||!valid(p.operationId)||p.operationId.length<16||!['credit','set_balance'].includes(p.mode)||!Number.isSafeInteger(p.amountKobo)||p.amountKobo<0||!Number.isSafeInteger(p.expectedVersion)||p.expectedVersion<0||typeof p.reason!=='string'||p.reason.trim().length<10||p.reason.length>1000||typeof p.fundingReference!=='string'||p.fundingReference.trim().length<3||p.fundingReference.length>200)throw new WalletAdminError(422,'invalid_adjustment');
   const token=/^Bearer\s+(\S+)$/i.exec(authorizationHeader??'')?.[1];
   if(!token)throw new WalletAdminError(401,'sign_in_required');
   const fresh=await input.pool.query(`SELECT 1 FROM security.platform_sessions WHERE tenant_id=$1 AND user_id=$2 AND access_hash=$3 AND revoked_at IS NULL AND access_expires_at>clock_timestamp() AND created_at>clock_timestamp()-interval '15 minutes'`,[actor.tenantId,actor.actorId,hashPlatformSessionToken(token)]);
   if(!fresh.rows.length)throw new WalletAdminError(403,'fresh_admin_sign_in_required');
   const hash=createHash('sha256').update(JSON.stringify({actor:actor.actorId,...p})).digest('hex');
   try{
    const result=await input.pool.query(`SELECT * FROM gb_wallet.apply_admin_ngn_adjustment($1,$2,$3,$4,$5,$6,$7,$8,$9,$10)`,[actor.tenantId,actor.actorId,p.userId,p.operationId,p.mode,p.amountKobo,p.expectedVersion,p.reason,p.fundingReference,hash]);
    const r=result.rows[0];return {operationId:r.operation_id,userId:r.account_id,deltaKobo:String(r.delta_kobo),beforeKobo:String(r.before_kobo),afterKobo:String(r.after_kobo),createdAt:r.created_at};
   }catch(error){const message=error instanceof Error?error.message:'';if(['admin_adjustment_conflict','admin_balance_changed','admin_account_frozen','admin_balance_below_holds_or_overflow','admin_balance_unchanged','admin_account_unavailable'].includes(message))throw new WalletAdminError(409,message);throw error;}
  },
 };
}
