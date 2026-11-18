import {createHash,randomUUID} from 'node:crypto';
import {P2pError,type P2pActor,type P2pPool} from './service.js';
const uuid=/^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
const receipt='report_id,offer_id,category,state,created_at';
function identifier(value:string){if(!uuid.test(value))throw new P2pError('p2p.invalid_id',422);return value;}
function explanation(value:unknown){
 if(typeof value!=='string')throw new P2pError('p2p.invalid_ad_report_reason',422);
 const text=value.trim();
 if([...text].length<10||[...text].length>2000||/[\u0000-\u0008\u000b\u000c\u000e-\u001f\u007f\u202a-\u202e\u2066-\u2069]/.test(text))throw new P2pError('p2p.invalid_ad_report_reason',422);
 return text;
}
interface ReportReceipt extends Record<string,unknown> {report_id:string;offer_id:string;category:string;state:string;created_at:unknown}
interface ReportableAd {makerId:string;snapshot:Record<string,unknown>}
export function createAdReports(pool:P2pPool,resolve:(actor:P2pActor,offerId:string)=>Promise<ReportableAd>){
 async function original(actor:P2pActor,offerId:string):Promise<ReportReceipt|undefined>{
  const result=await pool.query(`SELECT ${receipt} FROM commerce.msnw_p2p_ad_reports WHERE tenant_id=$1 AND reporter_id=$2 AND offer_id=$3`,[actor.tenantId,actor.userId,identifier(offerId)]);
  return result.rows[0] as ReportReceipt|undefined;
 }
 async function list(actor:P2pActor,staff:boolean,input:{cursor?:string;filter?:string}={}){
  const filter=staff?(input.filter??'open'):'all';
  if(!['open','reviewed','all'].includes(filter))throw new P2pError('p2p.invalid_filter',422);
  const context=createHash('sha256').update(JSON.stringify(['ad-reports',actor.tenantId,actor.userId,staff,filter])).digest('hex');
  let at:string|null=null,after:string|null=null;
  if(input.cursor){
   try{
    if(input.cursor.length>2048)throw Error();
    const value=JSON.parse(Buffer.from(input.cursor,'base64url').toString('utf8'));
    if(value.context!==context||typeof value.at!=='string'||!/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{6}Z$/.test(value.at)||!Number.isFinite(Date.parse(value.at))||typeof value.id!=='string'||!uuid.test(value.id))throw Error();
    at=value.at;after=value.id;
   }catch{throw new P2pError('p2p.invalid_cursor',422);}
  }
  const fields=staff?receipt+',details,public_snapshot,version,maker_id,reporter_id,review_reason,reviewed_by,reviewed_at':receipt;
  const rows=await pool.query(`SELECT ${fields},to_char(created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS created_at_cursor
   FROM commerce.msnw_p2p_ad_reports WHERE tenant_id=$1 AND ($2::boolean OR reporter_id=$3)
    AND ($4::text='all' OR ($4='open' AND state='open') OR ($4='reviewed' AND state<>'open'))
    AND ($5::timestamptz IS NULL OR(created_at,report_id)<($5::timestamptz,$6::uuid))
   ORDER BY created_at DESC,report_id DESC LIMIT 21`,[actor.tenantId,staff,actor.userId,filter,at,after]);
  const page=rows.rows.slice(0,20),last=page.at(-1);
  const nextCursor=rows.rows.length>20&&last?Buffer.from(JSON.stringify({context,at:last.created_at_cursor,id:last.report_id})).toString('base64url'):null;
  return{items:page.map(({created_at_cursor,...item})=>item),nextCursor};
 }
 return{
  async adReportByOffer(actor:P2pActor,offerId:string){const saved=await original(actor,offerId);if(!saved)throw new P2pError('p2p.ad_report_not_found',404);return saved;},
  async reportAd(actor:P2pActor,offerId:string,input:{category:unknown;details:unknown}){
   identifier(offerId);
   if(typeof input.category!=='string'||!['fraud','misleading','offensive','other'].includes(input.category))throw new P2pError('p2p.invalid_report_category',422);
   const details=explanation(input.details),previous=await original(actor,offerId);
   // Recovery of an accepted report survives later ad closure or admission loss.
   if(previous)return{...previous,replay:true};
   const ad=await resolve(actor,offerId);
   if(ad.makerId===actor.userId)throw new P2pError('p2p.report_counterparty_only',422);
   const tx=await pool.connect();
   try{
    await tx.query('BEGIN');
    await tx.query('SELECT pg_advisory_xact_lock(hashtext($1))',['msnw-p2p-ad-reports:'+actor.tenantId+':'+actor.userId]);
    const prior=await tx.query(`SELECT ${receipt} FROM commerce.msnw_p2p_ad_reports WHERE tenant_id=$1 AND reporter_id=$2 AND offer_id=$3`,[actor.tenantId,actor.userId,offerId]);
    if(prior.rows[0]){await tx.query('COMMIT');return{...(prior.rows[0] as ReportReceipt),replay:true};}
    const count=await tx.query(`SELECT count(*)::int AS total FROM commerce.msnw_p2p_ad_reports WHERE tenant_id=$1 AND reporter_id=$2 AND created_at>statement_timestamp()-interval '1 hour'`,[actor.tenantId,actor.userId]);
    if(Number(count.rows[0]?.total)>=20)throw new P2pError('p2p.report_rate_limited',429);
    const saved=await tx.query(`INSERT INTO commerce.msnw_p2p_ad_reports(report_id,tenant_id,offer_id,maker_id,reporter_id,category,details,public_snapshot)
     VALUES($1,$2,$3,$4,$5,$6,$7,$8::jsonb) RETURNING ${receipt}`,[randomUUID(),actor.tenantId,offerId,ad.makerId,actor.userId,input.category,details,JSON.stringify(ad.snapshot)]);
    await tx.query('COMMIT');return{...(saved.rows[0] as ReportReceipt),replay:false};
   }catch(error){await tx.query('ROLLBACK').catch(()=>undefined);throw error;}finally{tx.release();}
  },
  myAdReports:(actor:P2pActor,input:{cursor?:string}={})=>list(actor,false,input),
  adReports:(actor:P2pActor,input:{cursor?:string;filter?:string}={})=>list(actor,true,input),
  async reviewAdReport(actor:P2pActor,reportId:string,input:{decision:unknown;reason:unknown;version:unknown}){
   identifier(reportId);
   if(typeof input.decision!=='string'||!['dismiss','refer'].includes(input.decision)||!Number.isSafeInteger(input.version)||Number(input.version)<1)throw new P2pError('p2p.invalid_ad_report_review',422);
   const reason=explanation(input.reason),target=input.decision==='dismiss'?'dismissed':'referred';
   const tx=await pool.connect();
   try{
    await tx.query('BEGIN');
    const result=await tx.query(`SELECT * FROM commerce.msnw_p2p_ad_reports WHERE tenant_id=$1 AND report_id=$2 FOR UPDATE`,[actor.tenantId,reportId]);
    const report=result.rows[0];if(!report)throw new P2pError('p2p.ad_report_not_found',404);
    if(report.reporter_id===actor.userId||report.maker_id===actor.userId)throw new P2pError('p2p.independent_review_required',403);
    if(report.state!=='open'){
     if(report.state===target&&report.reviewed_by===actor.userId&&report.review_reason===reason&&Number(report.version)===Number(input.version)+1){await tx.query('COMMIT');return{report_id:reportId,state:target,version:Number(report.version),replay:true};}
     throw new P2pError('p2p.stale_ad_report_review',409);
    }
    if(Number(report.version)!==input.version)throw new P2pError('p2p.stale_ad_report_review',409);
    await tx.query(`UPDATE commerce.msnw_p2p_ad_reports SET state=$3,version=2,reviewed_at=statement_timestamp(),reviewed_by=$4,review_reason=$5 WHERE tenant_id=$1 AND report_id=$2`,[actor.tenantId,reportId,target,actor.userId,reason]);
    await tx.query('COMMIT');return{report_id:reportId,state:target,version:2,replay:false};
   }catch(error){await tx.query('ROLLBACK').catch(()=>undefined);throw error;}finally{tx.release();}
  },
 };
}
