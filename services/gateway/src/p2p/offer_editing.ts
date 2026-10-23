import {P2pError,type P2pActor,type P2pPool} from './service.js';
export interface OfferEditInput {
 offerId:string;requestKey:string;expectedRevision:number;paymentMethodId:string;
 rateKoboPerMsnw:string;minMicro:string;maxMicro:string;remainingMicro:string;
}
const uuid=/^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
function identifier(v:unknown){if(typeof v!=='string'||!uuid.test(v))throw new P2pError('p2p.invalid_id',422);return v;}
function amount(v:unknown,max:bigint){if(typeof v!=='string'||! /^[1-9][0-9]*$/.test(v)||BigInt(v)>max)throw new P2pError('p2p.invalid_offer_edit',422);return BigInt(v);}
const columns=`offer_id,offer_side,payment_method_id,rate_kobo_per_msnw::text,
 min_micro::text,max_micro::text,remaining_micro::text,state,fee_bps,revision,terms_revision`;
export function createOfferEditing(pool:P2pPool,requireMakerBuy:(actor:P2pActor)=>Promise<unknown>){
 return {
  async offerForEdit(actor:P2pActor,offerId:string){
   const result=await pool.query(`SELECT ${columns} FROM commerce.msnw_p2p_offers WHERE tenant_id=$1 AND seller_id=$2 AND offer_id=$3`,[actor.tenantId,actor.userId,identifier(offerId)]);
   if(!result.rows[0])throw new P2pError('p2p.offer_not_found',404);
   return result.rows[0];
  },
  async offerEditByRequest(actor:P2pActor,requestKey:string){
   if(!/^[A-Za-z0-9_-]{8,128}$/.test(requestKey))throw new P2pError('p2p.idempotency_required',422);
   const result=await pool.query(`SELECT offer_id,result_revision FROM commerce.msnw_p2p_offer_edits WHERE tenant_id=$1 AND actor_id=$2 AND request_key=$3`,[actor.tenantId,actor.userId,requestKey]);
   if(!result.rows[0])throw new P2pError('p2p.offer_edit_not_found',404);
   return {offerId:String(result.rows[0].offer_id),revision:Number(result.rows[0].result_revision)};
  },
  async editOffer(actor:P2pActor,input:OfferEditInput){
   const offerId=identifier(input.offerId),paymentMethodId=identifier(input.paymentMethodId);
   if(!/^[A-Za-z0-9_-]{8,128}$/.test(input.requestKey)||!Number.isSafeInteger(input.expectedRevision)||input.expectedRevision<1)throw new P2pError('p2p.invalid_offer_edit',422);
   const rate=amount(input.rateKoboPerMsnw,10n**12n),min=amount(input.minMicro,10n**18n),max=amount(input.maxMicro,10n**18n),remaining=amount(input.remainingMicro,10n**18n);
   if(min>max||max>remaining)throw new P2pError('p2p.invalid_limit',422);
   const payload={offerId,expectedRevision:input.expectedRevision,paymentMethodId,rateKoboPerMsnw:rate.toString(),minMicro:min.toString(),maxMicro:max.toString(),remainingMicro:remaining.toString()};
   const tx=await pool.connect();
   try{
    await tx.query('BEGIN');
    await tx.query('SELECT pg_advisory_xact_lock(hashtext($1))',['p2p-ad-edit:'+actor.tenantId+':'+actor.userId+':'+input.requestKey]);
    const previous=await tx.query(`SELECT request_payload,offer_id,result_revision FROM commerce.msnw_p2p_offer_edits WHERE tenant_id=$1 AND actor_id=$2 AND request_key=$3`,[actor.tenantId,actor.userId,input.requestKey]);
    if(previous.rows[0]){
     const row=previous.rows[0],stored=row.request_payload as Record<string,unknown>;
     if(Object.entries(payload).some(([k,v])=>stored[k]!==v))throw new P2pError('p2p.idempotency_conflict',409);
     await tx.query('COMMIT');return{offerId:String(row.offer_id),revision:Number(row.result_revision),replay:true};
    }
    const found=await tx.query(`SELECT ${columns} FROM commerce.msnw_p2p_offers WHERE tenant_id=$1 AND seller_id=$2 AND offer_id=$3 FOR UPDATE`,[actor.tenantId,actor.userId,offerId]);
    const ad=found.rows[0];if(!ad)throw new P2pError('p2p.offer_not_found',404);
    if(Number(ad.revision)!==input.expectedRevision)throw new P2pError('p2p.offer_edit_stale',409);
    if(!['active','paused'].includes(String(ad.state)))throw new P2pError('p2p.offer_not_editable',409);
    if(ad.offer_side==='buy')await requireMakerBuy(actor);
    const method=await tx.query(`SELECT method_id FROM commerce.msnw_p2p_payment_methods WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3 AND verified_at IS NOT NULL AND disabled_at IS NULL FOR SHARE`,[actor.tenantId,actor.userId,paymentMethodId]);
    if(!method.rows[0])throw new P2pError('p2p.verified_method_required',403);
    if(ad.offer_side!=='buy'){
     const funds=await tx.query(`SELECT available_micro::text FROM commerce.msnw_custody_accounts WHERE tenant_id=$1 AND user_id=$2 FOR SHARE`,[actor.tenantId,actor.userId]);
     const available=BigInt(String(funds.rows[0]?.available_micro??'0'));
     if(remaining*(10000n+BigInt(String(ad.fee_bps)))>available*10000n)throw new P2pError('p2p.offer_capacity_exceeded',422);
    }
    const result=await tx.query(`UPDATE commerce.msnw_p2p_offers SET payment_method_id=$4,rate_kobo_per_msnw=$5,min_micro=$6,max_micro=$7,remaining_micro=$8,updated_at=statement_timestamp() WHERE tenant_id=$1 AND seller_id=$2 AND offer_id=$3 RETURNING ${columns}`,[actor.tenantId,actor.userId,offerId,paymentMethodId,rate.toString(),min.toString(),max.toString(),remaining.toString()]);
    const updated=result.rows[0]!;
    await tx.query(`INSERT INTO commerce.msnw_p2p_offer_edits(tenant_id,actor_id,request_key,offer_id,request_payload,before_terms,after_terms,result_revision) VALUES($1,$2,$3,$4,$5::jsonb,$6::jsonb,$7::jsonb,$8)`,[actor.tenantId,actor.userId,input.requestKey,offerId,JSON.stringify(payload),JSON.stringify(ad),JSON.stringify(updated),updated.revision]);
    await tx.query('COMMIT');return{offerId,revision:Number(updated.revision),replay:false};
   }catch(error){await tx.query('ROLLBACK').catch(()=>undefined);throw error;}finally{tx.release();}
  },
 };
}
