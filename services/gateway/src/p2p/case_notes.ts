import {createHash,randomUUID} from 'node:crypto';
import {P2pError,type P2pActor,type P2pPool,type P2pQuery} from './service.js';
import {disputeInput} from './dispute_context.js';
const uuid=/^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
/** Gateway must authorize the caller as a P2P finance/dispute operator. */
export function createCaseNotes(pool:P2pPool){
 async function order(tx:P2pQuery,actor:P2pActor,orderId:string,lock=false){
  if(!uuid.test(orderId))throw new P2pError('p2p.invalid_id',422);
  const o=(await tx.query(`SELECT order_id,state FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND order_id=$2 ${lock?'FOR UPDATE':''}`,[actor.tenantId,orderId])).rows[0];if(!o)throw new P2pError('p2p.not_found',404);return o;
 }
 return{
  async caseNotes(actor:P2pActor,orderId:string){
   const o=await order(pool,actor,orderId);
   const notes=await pool.query(`SELECT note_id,details,created_at,created_by=$3 AS is_own FROM commerce.msnw_p2p_case_notes WHERE tenant_id=$1 AND order_id=$2 ORDER BY created_at DESC,note_id DESC LIMIT 50`,[actor.tenantId,orderId,actor.userId]);
   return{orderId,state:o.state,items:notes.rows,limit:50,canAdd:notes.rows.length<50,staffOnly:true};
  },
  async addCaseNote(actor:P2pActor,orderId:string,raw:unknown){
   const details=disputeInput('other',raw).details,hash=createHash('sha256').update(details).digest('hex');
   const tx=await pool.connect();try{
    await tx.query('BEGIN');await order(tx,actor,orderId,true);
    const original=(await tx.query(`SELECT note_id FROM commerce.msnw_p2p_case_notes WHERE tenant_id=$1 AND order_id=$2 AND created_by=$3 AND content_sha256=$4`,[actor.tenantId,orderId,actor.userId,hash])).rows[0];
    if(original){await tx.query('COMMIT');return{noteId:original.note_id,replay:true};}
    const n=(await tx.query(`SELECT count(*)::int AS n FROM commerce.msnw_p2p_case_notes WHERE tenant_id=$1 AND order_id=$2`,[actor.tenantId,orderId])).rows[0];
    if(Number(n?.n)>=50)throw new P2pError('p2p.case_note_limit',429);
    const noteId=randomUUID();await tx.query(`INSERT INTO commerce.msnw_p2p_case_notes(note_id,tenant_id,order_id,created_by,details,content_sha256) VALUES($1,$2,$3,$4,$5,$6)`,[noteId,actor.tenantId,orderId,actor.userId,details,hash]);await tx.query('COMMIT');return{noteId,replay:false};
   }catch(error){await tx.query('ROLLBACK').catch(()=>undefined);throw error;}finally{tx.release();}
  },
 };
}
