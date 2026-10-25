import {createHash} from 'node:crypto';
import type {Pool} from 'pg';
import {withTransaction} from '../transaction.js';
import {createGbUsageReservations} from './reservations.js';

export interface GbCallActor {tenantId:string;userId:string}
export interface GbCallAdmission {
  admissionId:string;characterId:string;budgetMb:number;
  state:'pending'|'reserved'|'connecting'|'connected'|'settling'|'completed'|'failed';
  expiresAt:string;verifiedConnectedMs:number;chargedMb:number|null;
}
export class GbCallAdmissionError extends Error {
  constructor(readonly code:string,readonly statusCode:number){super(code);}
}
type Row = {
  admission_id:string;character_id:string;request_sha256:string;budget_mb:number;
  state:GbCallAdmission['state'];expires_at:Date;lease_id:string|null;
  connected_at:Date|null;connection_base_ms:string;verified_connected_ms:string;
  charged_mb:number|null;
};
const valid=(s:string)=>typeof s==='string'&&/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/.test(s);
const fail=(code:string,status=409):never=>{throw new GbCallAdmissionError('gb.call.'+code,status)};
const actorKey=(a:GbCallActor)=>{
  if(!valid(a.tenantId)||!valid(a.userId))fail('invalid_actor',422);
};
const project=(r:Row):GbCallAdmission=>({
  admissionId:r.admission_id,characterId:r.character_id,budgetMb:r.budget_mb,
  state:r.state,expiresAt:r.expires_at.toISOString(),
  verifiedConnectedMs:Number(r.verified_connected_ms),chargedMb:r.charged_mb,
});

/** Internal-only accounting authority. None of its proof methods is an HTTP API.
 * Only the trusted provider relay may call claim/connected/checkpoint/disconnect.
 * Server-observed time is authoritative; no method accepts a client duration.
 */
export function createGbCallAdmissions(pool:Pool,now:()=>Date=()=>new Date()){
  const wallet=createGbUsageReservations(pool);
  const originalId=(actor:GbCallActor,key:string)=>'call_'+createHash('sha256')
    .update(JSON.stringify([actor.tenantId,actor.userId,key])).digest('hex').slice(0,48);
  const readRow=async(actor:GbCallActor,id:string):Promise<Row|null>=>{
    actorKey(actor);if(!valid(id))fail('invalid_admission',422);
    const result=await pool.query<Row>(`SELECT * FROM gb_wallet.call_admissions
      WHERE tenant_id=$1 AND user_id=$2 AND admission_id=$3`,
      [actor.tenantId,actor.userId,id]);
    return result.rows[0]??null;
  };
  const requireRow=async(actor:GbCallActor,id:string)=>
    (await readRow(actor,id))??fail('not_found',404);
  // Row lock serializes proof updates and freezes final usage before capture.
  const mutate=async(actor:GbCallActor,id:string,change:(r:Row,at:Date)=>void)=>{
    actorKey(actor);if(!valid(id))fail('invalid_admission',422);
    return withTransaction(pool,async client=>{
      const result=await client.query<Row>(`SELECT * FROM gb_wallet.call_admissions
        WHERE tenant_id=$1 AND user_id=$2 AND admission_id=$3 FOR UPDATE`,
        [actor.tenantId,actor.userId,id]);
      const row=result.rows[0]??fail('not_found',404),at=now();
      change(row,at);
      await client.query(`UPDATE gb_wallet.call_admissions SET
        state=$4,expires_at=$5,lease_id=$6,connected_at=$7,connection_base_ms=$8,
        verified_connected_ms=$9,charged_mb=$10,updated_at=$11
        WHERE tenant_id=$1 AND user_id=$2 AND admission_id=$3`,
        [actor.tenantId,actor.userId,id,row.state,row.expires_at,row.lease_id,
         row.connected_at,row.connection_base_ms,row.verified_connected_ms,row.charged_mb,at]);
      return row;
    });
  };
  const observeTime=(r:Row,at:Date)=>{
    if(r.state!=='connected'||!r.connected_at) return;
    const observed=Number(r.connection_base_ms)+Math.max(0,at.getTime()-r.connected_at.getTime());
    r.verified_connected_ms=String(Math.min(r.budget_mb*1000,
      Math.max(Number(r.verified_connected_ms),observed)));
  };
  const requireLease=(r:Row,lease:string,at:Date)=>{
    if(!valid(lease)||r.lease_id!==lease||r.expires_at.getTime()<=at.getTime())fail('stale_connection');
  };
  const clearConnection=(r:Row)=>{
    r.lease_id=null;r.connected_at=null;
    r.connection_base_ms=r.verified_connected_ms;
  };
  const releaseHeld=async(actor:GbCallActor,id:string)=>{
    const operation=await wallet.read(actor.tenantId,id,actor.userId);
    if(operation?.state==='reserved')await wallet.release({...actor,operationId:id});
    else if(operation?.state==='completed')fail('settlement_conflict');
  };
  const settle=async(actor:GbCallActor,id:string)=>{
    const row=await requireRow(actor,id);
    if(row.state==='completed'||row.state==='failed'){
      // Also repairs a hold that committed after an admission expiry race.
      if(row.state==='failed')await releaseHeld(actor,id);
      return project(row);
    }
    if(row.state!=='settling')fail('not_settling');
    const chargedMb=Math.ceil(Number(row.verified_connected_ms)/1000);
    if(chargedMb===0)await releaseHeld(actor,id);
    else await wallet.capture({...actor,operationId:id},chargedMb);
    return project(await mutate(actor,id,r=>{
      if(r.state==='completed'||r.state==='failed')return;
      if(r.state!=='settling')fail('not_settling');
      r.state=chargedMb===0?'failed':'completed';r.charged_mb=chargedMb;
    }));
  };
  return {
    async readOriginal(actor:GbCallActor,key:string){
      if(!/^[A-Za-z0-9_-]{8,128}$/.test(key))fail('invalid_admission',422);
      const row=await readRow(actor,originalId(actor,key));return row?project(row):null;
    },
    async read(actor:GbCallActor,id:string){const r=await readRow(actor,id);return r?project(r):null;},
    async admit(actor:GbCallActor,input:{characterId:string;budgetMb:number;idempotencyKey:string}){
      actorKey(actor);
      if(!valid(input.characterId)||!Number.isSafeInteger(input.budgetMb)||
         input.budgetMb<1||input.budgetMb>3600||
         !/^[A-Za-z0-9_-]{8,128}$/.test(input.idempotencyKey))fail('invalid_admission',422);
      const id=originalId(actor,input.idempotencyKey);
      const hash=createHash('sha256').update(JSON.stringify([
        input.characterId,input.budgetMb])).digest('hex');
      await pool.query(`INSERT INTO gb_wallet.call_admissions
        (tenant_id,user_id,admission_id,character_id,request_sha256,budget_mb,state,expires_at)
        VALUES($1,$2,$3,$4,$5,$6,'pending',$7) ON CONFLICT DO NOTHING`,
        [actor.tenantId,actor.userId,id,input.characterId,hash,input.budgetMb,
         new Date(now().getTime()+60000)]);
      const row=await requireRow(actor,id);
      if(row.request_sha256!==hash)fail('idempotency_conflict');
      if(row.state==='failed')return settle(actor,id);
      if(row.state!=='pending')return project(row);
      if(row.expires_at.getTime()<=now().getTime())fail('expired');
      await wallet.reserve({...actor,operationId:id,idempotencyKey:id,
        use:'connected_call',amountMb:input.budgetMb});
      const reserved=await mutate(actor,id,(r,at)=>{
        if(r.state==='pending'&&r.expires_at.getTime()>at.getTime())r.state='reserved';
        else if(r.state==='pending'){r.state='settling';clearConnection(r);}
      });
      if(reserved.state==='settling'||reserved.state==='failed')return settle(actor,id);
      return project(reserved);
    },
    async claimConnection(actor:GbCallActor,id:string,characterId:string,leaseId:string){
      if(!valid(leaseId))fail('invalid_lease',422);
      return project(await mutate(actor,id,(r,at)=>{
        if(r.character_id!==characterId)fail('character_mismatch',403);
        if(r.state!=='reserved'||r.expires_at.getTime()<=at.getTime()||
           Number(r.verified_connected_ms)>=r.budget_mb*1000)fail('not_connectable');
        r.state='connecting';r.lease_id=leaseId;
        r.expires_at=new Date(at.getTime()+30000);
      }));
    },
    async connected(actor:GbCallActor,id:string,leaseId:string){
      return project(await mutate(actor,id,(r,at)=>{
        requireLease(r,leaseId,at);
        if(r.state==='connected')return; // Duplicate setup must not reset billing.
        if(r.state!=='connecting')fail('not_connecting');
        r.state='connected';r.connected_at=at;
        r.connection_base_ms=r.verified_connected_ms;
        r.expires_at=new Date(at.getTime()+15000);
      }));
    },
    async checkpoint(actor:GbCallActor,id:string,leaseId:string){
      return project(await mutate(actor,id,(r,at)=>{
        requireLease(r,leaseId,at);if(r.state!=='connected')fail('not_connected');
        observeTime(r,at);r.expires_at=new Date(at.getTime()+15000);
      }));
    },
    async disconnect(actor:GbCallActor,id:string,leaseId:string){
      return project(await mutate(actor,id,(r,at)=>{
        requireLease(r,leaseId,at);
        if(r.state!=='connecting'&&r.state!=='connected')fail('not_connected');
        observeTime(r,at);clearConnection(r);r.state='reserved';
        r.expires_at=new Date(at.getTime()+30000);
      }));
    },
    /** Upstream loss proves no additional duration beyond the last checkpoint. */
    async abandonConnection(actor:GbCallActor,id:string,leaseId:string){
      return project(await mutate(actor,id,(r,at)=>{
        if(!valid(leaseId)||r.lease_id!==leaseId||
           (r.state!=='connecting'&&r.state!=='connected'))fail('stale_connection');
        clearConnection(r);r.state='reserved';
        r.expires_at=new Date(at.getTime()+30000);
      }));
    },
    /** Call only after relay termination. Connected proof must be frozen first. */
    async finish(actor:GbCallActor,id:string){
      await mutate(actor,id,r=>{
        if(r.state==='completed'||r.state==='failed'||r.state==='settling')return;
        if(r.state==='connected'||r.state==='connecting')fail('connection_still_active');
        r.state='settling';clearConnection(r);
      });
      return settle(actor,id);
    },
    /** Expired leases settle only persisted proof; never extrapolate downtime. */
    async recover(limit=100){
      if(!Number.isSafeInteger(limit)||limit<1||limit>1000)fail('invalid_limit',422);
      const pending=await pool.query<{tenant_id:string;user_id:string;admission_id:string}>(`
        SELECT c.tenant_id,c.user_id,c.admission_id FROM gb_wallet.call_admissions c
        LEFT JOIN gb_wallet.operations o ON o.tenant_id=c.tenant_id AND o.operation_id=c.admission_id
        WHERE (c.state='settling' OR (c.state NOT IN ('completed','failed') AND c.expires_at<=$1)
          OR (c.state='failed' AND o.state='reserved'))
        ORDER BY c.expires_at,c.admission_id LIMIT $2`,[now(),limit]);
      const receipts:GbCallAdmission[]=[],failures:Error[]=[];
      for(const row of pending.rows){
        try{
        const actor={tenantId:row.tenant_id,userId:row.user_id},id=row.admission_id;
        const frozen=await mutate(actor,id,(r,at)=>{
          if(r.state==='completed'||r.state==='failed'||r.state==='settling')return;
          if(r.expires_at.getTime()>at.getTime())return;
          r.state='settling';clearConnection(r);
        });
        if(['settling','completed','failed'].includes(frozen.state))receipts.push(await settle(actor,id));
        }catch{failures.push(new GbCallAdmissionError('gb.call.recovery_item_unavailable',503));}
      }
      if(failures.length)throw new AggregateError(failures,'gb.call.recovery_partial');
      return receipts;
    },
  };
}
