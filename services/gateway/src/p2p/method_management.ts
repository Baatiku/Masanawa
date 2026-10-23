import {P2pError,type P2pActor,type P2pPool} from './service.js';
const uuid=/^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
/** Owner-managed availability only. Verified instructions remain immutable, including
 * those referenced by already accepted orders. There is no delete/reactivate API. */
export function createMethodManagement(pool:P2pPool){
 return {
  async managedMethods(actor:P2pActor){
   const rows=await pool.query(`SELECT method_id,method_type,bank_name,account_name,
    right(account_number,4) AS account_last_four,verified_at,disabled_at
    FROM commerce.msnw_p2p_payment_methods WHERE tenant_id=$1 AND owner_id=$2
    ORDER BY created_at DESC,method_id DESC`,[actor.tenantId,actor.userId]);
   return {items:rows.rows};
  },
  async disableMethod(actor:P2pActor,methodId:string){
   if(!uuid.test(methodId))throw new P2pError('p2p.invalid_id',422);
   // UPDATE locks the same row taken FOR SHARE by order creation/editing.
   // Convergent retries preserve the first retirement timestamp; no offer lock
   // means no reverse lock-order dependency on reservation or ad editing.
   const result=await pool.query(`UPDATE commerce.msnw_p2p_payment_methods
    SET disabled_at=coalesce(disabled_at,statement_timestamp())
    WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3
    RETURNING method_id,disabled_at`,[actor.tenantId,actor.userId,methodId]);
   if(!result.rows[0])throw new P2pError('p2p.method_not_found',404);
   return result.rows[0];
  },
 };
}
