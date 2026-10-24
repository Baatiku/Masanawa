import {randomUUID} from 'node:crypto';
import {P2pError,type P2pActor,type P2pPool} from './service.js';
const requestPattern=/^[A-Za-z0-9_-]{8,128}$/;
function key(value:string){if(!requestPattern.test(value))throw new P2pError('p2p.invalid_request_key',422);return value;}
const projection='operation_id,cardinality(paused_offer_ids)::int AS paused_count,created_at';
export function createBulkPause(pool:P2pPool){return{
 async adAvailability(actor:P2pActor){
  const result=await pool.query(`SELECT count(*) FILTER(WHERE state='active')::int AS active,
   count(*) FILTER(WHERE state='paused')::int AS paused,count(*) FILTER(WHERE state='closed')::int AS closed,
   statement_timestamp() AS as_of FROM commerce.msnw_p2p_offers WHERE tenant_id=$1 AND seller_id=$2`,[actor.tenantId,actor.userId]);
  return result.rows[0]!;
 },
 async bulkPauseByRequest(actor:P2pActor,requestKey:string){
  const result=await pool.query(`SELECT ${projection} FROM commerce.msnw_p2p_bulk_pauses WHERE tenant_id=$1 AND owner_id=$2 AND request_key=$3`,[actor.tenantId,actor.userId,key(requestKey)]);
  if(!result.rows[0])throw new P2pError('p2p.pause_request_not_found',404);return result.rows[0];
 },
 async pauseAllAds(actor:P2pActor,requestKey:string){
  key(requestKey);const tx=await pool.connect();
  try{
   await tx.query('BEGIN');
   await tx.query('SELECT pg_advisory_xact_lock(hashtext($1))',['p2p-bulk-pause:'+actor.tenantId+':'+actor.userId]);
   const prior=await tx.query(`SELECT ${projection} FROM commerce.msnw_p2p_bulk_pauses WHERE tenant_id=$1 AND owner_id=$2 AND request_key=$3`,[actor.tenantId,actor.userId,requestKey]);
   if(prior.rows[0]){await tx.query('COMMIT');return{...prior.rows[0],replay:true};}
   // Lock in UUID order, compatible with single-ad order reservation. Ads
   // created after this statement are intentionally outside this operation.
   const active=await tx.query(`SELECT offer_id FROM commerce.msnw_p2p_offers WHERE tenant_id=$1 AND seller_id=$2 AND state='active' ORDER BY offer_id LIMIT 1001 FOR UPDATE`,[actor.tenantId,actor.userId]);
   if(active.rows.length>1000)throw new P2pError('p2p.bulk_pause_limit',422);
   const ids=active.rows.map(r=>String(r.offer_id));
   await tx.query(`UPDATE commerce.msnw_p2p_offers SET state='paused',updated_at=statement_timestamp() WHERE tenant_id=$1 AND seller_id=$2 AND offer_id=ANY($3::uuid[]) AND state='active'`,[actor.tenantId,actor.userId,ids]);
   const saved=await tx.query(`INSERT INTO commerce.msnw_p2p_bulk_pauses(operation_id,tenant_id,owner_id,request_key,paused_offer_ids) VALUES($1,$2,$3,$4,$5::uuid[]) RETURNING ${projection}`,[randomUUID(),actor.tenantId,actor.userId,requestKey,ids]);
   await tx.query('COMMIT');return{...saved.rows[0],replay:false};
  }catch(error){await tx.query('ROLLBACK').catch(()=>undefined);throw error;}finally{tx.release();}
 },
};}
