import {P2pError,type P2pActor,type P2pPool} from './service.js';
const uuid=/^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
/** Owner-managed availability only. Verified instructions remain immutable, including
 * those referenced by already accepted orders. There is no delete/reactivate API. */
export function createMethodManagement(pool:P2pPool){
 return {
  async managedMethods(actor:P2pActor){
   const rows=await pool.query(`SELECT method_id,method_type,bank_name,account_name,
    right(account_number,4) AS account_last_four,verified_at,disabled_at,private_label,preferred,
    NOT EXISTS(SELECT 1 FROM commerce.msnw_p2p_offers o WHERE o.tenant_id=m.tenant_id AND o.payment_method_id=m.method_id)
    AND NOT EXISTS(SELECT 1 FROM commerce.msnw_p2p_orders o WHERE o.tenant_id=m.tenant_id AND o.payment_method_id=m.method_id) AS can_archive
    FROM commerce.msnw_p2p_payment_methods m WHERE tenant_id=$1 AND owner_id=$2 AND archived_at IS NULL
    ORDER BY preferred DESC,created_at DESC,method_id DESC`,[actor.tenantId,actor.userId]);
   return {items:rows.rows};
  },
  async renameMethod(actor:P2pActor,methodId:string,label:unknown){
   if(!uuid.test(methodId))throw new P2pError('p2p.invalid_id',422);
   if(label!==null&&(typeof label!=='string'||[...label.trim()].length<1||[...label.trim()].length>40||/[\u0000-\u001f\u007f\u202a-\u202e\u2066-\u2069]/.test(label)))throw new P2pError('p2p.invalid_method_label',422);
   const result=await pool.query(`UPDATE commerce.msnw_p2p_payment_methods SET private_label=$4
    WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3 AND archived_at IS NULL
    RETURNING method_id,private_label`,[actor.tenantId,actor.userId,methodId,typeof label==='string'?label.trim():null]);
   if(!result.rows[0])throw new P2pError('p2p.method_not_found',404);return result.rows[0];
  },
  async preferMethod(actor:P2pActor,methodId:string){
   if(!uuid.test(methodId))throw new P2pError('p2p.invalid_id',422);
   const tx=await pool.connect();
   try{
    await tx.query('BEGIN');
    await tx.query('SELECT pg_advisory_xact_lock(hashtext($1))',['p2p-method-preference:'+actor.tenantId+':'+actor.userId]);
    const target=await tx.query(`SELECT method_id FROM commerce.msnw_p2p_payment_methods
     WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3 AND disabled_at IS NULL AND archived_at IS NULL AND verified_at IS NOT NULL FOR UPDATE`,[actor.tenantId,actor.userId,methodId]);
    if(!target.rows[0])throw new P2pError('p2p.active_method_required',409);
    await tx.query(`UPDATE commerce.msnw_p2p_payment_methods SET preferred=false WHERE tenant_id=$1 AND owner_id=$2 AND preferred AND method_id<>$3`,[actor.tenantId,actor.userId,methodId]);
    await tx.query(`UPDATE commerce.msnw_p2p_payment_methods SET preferred=true WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3`,[actor.tenantId,actor.userId,methodId]);
    await tx.query('COMMIT');return{methodId,preferred:true};
   }catch(error){await tx.query('ROLLBACK').catch(()=>undefined);throw error;}finally{tx.release();}
  },
  async archiveMethod(actor:P2pActor,methodId:string){
   if(!uuid.test(methodId))throw new P2pError('p2p.invalid_id',422);
   const tx=await pool.connect();
   try{
    await tx.query('BEGIN');
    const result=await tx.query(`SELECT method_id,archived_at FROM commerce.msnw_p2p_payment_methods WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3 FOR UPDATE`,[actor.tenantId,actor.userId,methodId]);
    const method=result.rows[0];if(!method)throw new P2pError('p2p.method_not_found',404);
    if(method.archived_at){await tx.query('COMMIT');return method;}
    const references=await tx.query(`SELECT EXISTS(SELECT 1 FROM commerce.msnw_p2p_offers WHERE tenant_id=$1 AND payment_method_id=$2)
     OR EXISTS(SELECT 1 FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND payment_method_id=$2) AS used`,[actor.tenantId,methodId]);
    if(references.rows[0]?.used)throw new P2pError('p2p.method_in_use',409);
    const saved=await tx.query(`UPDATE commerce.msnw_p2p_payment_methods SET archived_at=statement_timestamp(),disabled_at=coalesce(disabled_at,statement_timestamp()),preferred=false
     WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3 RETURNING method_id,archived_at`,[actor.tenantId,actor.userId,methodId]);
    await tx.query('COMMIT');return saved.rows[0]!;
   }catch(error){await tx.query('ROLLBACK').catch(()=>undefined);throw error;}finally{tx.release();}
  },
  async disableMethod(actor:P2pActor,methodId:string){
   if(!uuid.test(methodId))throw new P2pError('p2p.invalid_id',422);
   // UPDATE locks the same row taken FOR SHARE by order creation/editing.
   // Convergent retries preserve the first retirement timestamp; no offer lock
   // means no reverse lock-order dependency on reservation or ad editing.
   const result=await pool.query(`UPDATE commerce.msnw_p2p_payment_methods
    SET disabled_at=coalesce(disabled_at,statement_timestamp()),preferred=false
    WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3
    RETURNING method_id,disabled_at`,[actor.tenantId,actor.userId,methodId]);
   if(!result.rows[0])throw new P2pError('p2p.method_not_found',404);
   return result.rows[0];
  },
 };
}
