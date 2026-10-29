import {createHash} from 'node:crypto';
import type {Pool} from 'pg';
import {withTransaction} from '../transaction.js';
import {lockActiveUser} from '../identity/active_user.js';
type Actor={tenantId:string;userId:string};
export type LegacyKind='reserve'|'spend'|'release'|'pending';
export type LegacyGroup={kind:LegacyKind;campaignId:string;day:string;snapshotAt:string;eventCount:number};
export type LegacyCursor={day:string;campaignId:string;kind:LegacyKind};
export type EventCursor={at:string;key:string};
export type CaseTarget='activity'|'hold'|'legacy_group';
const fail=(status:number,code:string):never=>{throw Object.assign(new Error(code),{status,code});};
const uuid=/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const stamp=(s:unknown):s is string=>typeof s==='string'&&/^\d{4}-\d\d-\d\dT\d\d:\d\d:\d\d\.\d{3}(?:\d{3})?Z$/.test(s)&&Number.isFinite(Date.parse(s))&&new Date(s).toISOString()===s.slice(0,23)+'Z';
export function legacyGroupId(g:LegacyGroup){return Buffer.from(JSON.stringify([1,g.kind,g.campaignId,g.day,g.snapshotAt,g.eventCount])).toString('base64url');}
export function readLegacyGroup(raw:string):LegacyGroup{
 try{
  if(raw.length>1500||!/^[A-Za-z0-9_-]+$/.test(raw))throw Error();
  const v=JSON.parse(Buffer.from(raw,'base64url').toString('utf8')) as unknown[];
  if(!Array.isArray(v)||v.length!==6||v[0]!==1||!['reserve','spend','release','pending'].includes(String(v[1]))||
   typeof v[2]!=='string'||!uuid.test(v[2])||typeof v[3]!=='string'||!/^\d{4}-\d\d-\d\d$/.test(v[3])||
   (!Number.isFinite(Date.parse(v[3]+'T00:00:00Z'))||new Date(v[3]+'T00:00:00Z').toISOString().slice(0,10)!==v[3])||!stamp(v[4])||Date.parse(v[4])>Date.now()+1000||!Number.isSafeInteger(v[5])||Number(v[5])<1)throw Error();
  return {kind:v[1] as LegacyKind,campaignId:v[2],day:v[3],snapshotAt:v[4],eventCount:Number(v[5])};
 }catch{return fail(422,'invalid_history_group');}
}
function count(v:unknown):number{if(typeof v!=='number'&&(typeof v!=='string'||!/^\d+$/.test(v)))return fail(503,'history_amount_unavailable');const n=typeof v==='number'?v:Number(v);
 if(!Number.isSafeInteger(n)||n<0)return fail(503,'history_amount_unavailable');return n;}
// Every source row is an existing immutable charge/audit. Viewer identities never leave this query.
const events=`WITH history_events AS (
 SELECT b.id AS campaign_id,b.post_id,'spend'::text AS kind,c.created_at AS at,
  'charge:'||c.view_id::text AS event_key,c.wallet_operation_id AS reference,
  (m.amount_mb*2)::numeric AS half_units
 FROM feed.promotion_view_charges c JOIN feed.promotion_campaigns b
  ON b.tenant_id=c.tenant_id AND b.id=c.campaign_id
 JOIN gb_wallet.operations o ON o.tenant_id=c.tenant_id AND o.operation_id=c.wallet_operation_id
 JOIN gb_wallet.movements m ON m.tenant_id=o.tenant_id AND m.operation_id=o.operation_id
  AND m.from_kind='human' AND m.from_id=b.sponsor_id AND m.source_bucket='purchased' AND m.to_kind='usage'
 WHERE o.operation_kind='promotion_view' AND c.tenant_id=$1 AND b.sponsor_id=$2 AND c.created_at<=$3::timestamptz
 UNION ALL
 SELECT b.id,b.post_id,'pending',c.created_at,'allocation:'||c.view_id::text,
  c.wallet_operation_id,c.sharer_half_mb::numeric
 FROM feed.promotion_view_charges c JOIN feed.promotion_campaigns b ON b.tenant_id=c.tenant_id AND b.id=c.campaign_id
 JOIN gb_wallet.operations o ON o.tenant_id=c.tenant_id AND o.operation_id=c.wallet_operation_id AND o.operation_kind='promotion_view'
 JOIN gb_wallet.movements m ON m.tenant_id=o.tenant_id AND m.operation_id=o.operation_id
  AND m.from_kind='human' AND m.from_id=b.sponsor_id AND m.source_bucket='purchased' AND m.to_kind='usage'
 WHERE c.tenant_id=$1 AND c.sharer_id=$2 AND c.sharer_half_mb>0 AND c.created_at<=$3::timestamptz
 UNION ALL
 SELECT b.id,b.post_id,CASE WHEN a.action='budget_reserved' THEN 'reserve' ELSE 'release' END,
  a.occurred_at,'audit:'||a.id::text,'promotion-audit:'||a.id::text,
  CASE WHEN a.action IN ('budget_reserved','rejected') THEN
    CASE WHEN b.price_version='2026-10-27:1MB' THEN b.target_views::numeric*2 ELSE NULL END
   WHEN (a.details->>'releasedMb') ~ '^[0-9]{1,7}$' THEN (a.details->>'releasedMb')::numeric*2 ELSE NULL END
 FROM feed.promotion_audit a JOIN feed.promotion_campaigns b ON b.tenant_id=a.tenant_id AND b.id=a.campaign_id
 WHERE a.tenant_id=$1 AND b.sponsor_id=$2 AND a.occurred_at<=$3::timestamptz
  AND a.action IN ('budget_reserved','rejected','cancelled','moderation_refund','owner_delete_refund','campaign_expired')
)`;
const atText=`to_char(at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"')`;
function caseRow(r:Record<string,unknown>){return {id:String(r.id),targetKind:String(r.target_kind),reference:String(r.target_reference),
 category:String(r.category),state:String(r.state),revision:count(r.revision),createdAt:r.created_at,updatedAt:r.updated_at};}
export class PgRetainedFinanceRepository{
 constructor(private readonly pool:Pool,private readonly owned:{
  activity(a:Actor,reference:string):Promise<unknown>;hold(a:Actor,reference:string):Promise<unknown>}){}
 async history(actor:Actor,filter:string,snapshotAt:string,cursor:LegacyCursor|null,limit:number,campaignFilter?:string){
  const result=await this.pool.query(events+`, grouped AS (
   SELECT campaign_id,post_id,kind,(at AT TIME ZONE 'UTC')::date AS day,
    count(*)::text AS n,CASE WHEN bool_and(half_units IS NOT NULL) THEN sum(half_units)::text ELSE NULL END AS half_units
   FROM history_events GROUP BY campaign_id,post_id,kind,(at AT TIME ZONE 'UTC')::date
  ) SELECT campaign_id::text,post_id::text,kind,day::text,n,half_units FROM grouped
   WHERE ($4='all' OR kind=$4) AND ($9::uuid IS NULL OR campaign_id=$9::uuid) AND ($5::date IS NULL OR (day,campaign_id,kind)<($5::date,$6::uuid,$7::text))
   ORDER BY day DESC,campaign_id DESC,kind DESC LIMIT $8`,
   [actor.tenantId,actor.userId,snapshotAt,filter,cursor?.day??null,cursor?.campaignId??null,cursor?.kind??null,limit,campaignFilter??null]);
  return result.rows.map(row=>({id:legacyGroupId({kind:row.kind,campaignId:row.campaign_id,day:row.day,snapshotAt,eventCount:count(row.n)}),
   campaignId:String(row.campaign_id),postId:String(row.post_id),kind:String(row.kind),day:String(row.day),
   eventCount:count(row.n),halfMb:row.half_units==null?null:count(row.half_units)}));
 }
 private async groupCount(actor:Actor,g:LegacyGroup){
  const result=await this.pool.query(events+` SELECT count(*)::text AS n FROM history_events
    WHERE campaign_id=$4::uuid AND kind=$5 AND (at AT TIME ZONE 'UTC')::date=$6::date`,
   [actor.tenantId,actor.userId,g.snapshotAt,g.campaignId,g.kind,g.day]);return count(result.rows[0]?.n);
 }
 async group(actor:Actor,g:LegacyGroup,cursor:EventCursor|null,limit:number){
  const total=await this.groupCount(actor,g);
  if(!total)return [];
  if(total!==g.eventCount)return fail(409,'history_group_changed');
  const result=await this.pool.query(events+` SELECT event_key,reference,${atText} AS at,
   half_units::text AS half_units FROM history_events WHERE campaign_id=$4::uuid AND kind=$5
    AND (at AT TIME ZONE 'UTC')::date=$6::date
    AND ($7::timestamptz IS NULL OR (at,event_key)<($7::timestamptz,$8))
   ORDER BY at DESC,event_key DESC LIMIT $9`,
   [actor.tenantId,actor.userId,g.snapshotAt,g.campaignId,g.kind,g.day,cursor?.at??null,cursor?.key??null,limit]);
  return result.rows.map(row=>({key:String(row.event_key),reference:String(row.reference),at:String(row.at),
   halfMb:row.half_units==null?null:count(row.half_units)}));
 }
 async submit(actor:Actor,target:CaseTarget,reference:string,category:string){
  let proof:unknown,fingerprintReference=reference;
  if(target==='activity')proof=await this.owned.activity(actor,reference);
  else if(target==='hold')proof=await this.owned.hold(actor,reference);
  else{const g=readLegacyGroup(reference);
   const total=await this.groupCount(actor,g);proof=total>0;
   if(total&&total!==g.eventCount)return fail(409,'history_group_changed');
   fingerprintReference=JSON.stringify([g.kind,g.campaignId,g.day,total]);}

  if(!proof)return fail(404,'inquiry_reference_unavailable');
  const fingerprint=createHash('sha256').update(JSON.stringify([target,fingerprintReference])).digest('hex');
  return withTransaction(this.pool,async client=>{
   await lockActiveUser(client,actor.tenantId,actor.userId);
   await client.query(`SELECT pg_advisory_xact_lock(hashtextextended($1,0))`,[JSON.stringify([actor.tenantId,actor.userId,'wallet-inquiry'])]);
   const known=await client.query(`SELECT * FROM support.wallet_cases WHERE tenant_id=$1 AND user_id=$2
    AND target_kind=$3 AND target_fingerprint=$4 AND category=$5`,[actor.tenantId,actor.userId,target,fingerprint,category]);
   if(known.rows[0])return caseRow(known.rows[0]);
   const rate=await client.query(`SELECT count(*)::int AS n FROM support.wallet_cases WHERE tenant_id=$1 AND user_id=$2
    AND created_at>clock_timestamp()-interval '24 hours'`,[actor.tenantId,actor.userId]);
   if(count(rate.rows[0]?.n)>=20)return fail(429,'inquiry_limit_reached');
   const added=await client.query(`INSERT INTO support.wallet_cases(tenant_id,user_id,target_kind,target_reference,target_fingerprint,category)
    VALUES($1,$2,$3,$4,$5,$6) RETURNING *`,[actor.tenantId,actor.userId,target,reference,fingerprint,category]);
   const row=added.rows[0]!;
   await client.query(`INSERT INTO support.wallet_case_events(tenant_id,case_id,revision,actor_id,state)
    VALUES($1,$2,1,$3,'open')`,[actor.tenantId,row.id,actor.userId]);
   return caseRow(row);
  });
 }
 async cases(actor:Actor,limit:number,cursor:{at:string;id:string}|null,adminState?:string){
  const result=await this.pool.query(`SELECT *,to_char(created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS exact_created_at
   FROM support.wallet_cases WHERE tenant_id=$1
   AND ($3::text IS NOT NULL OR user_id=$2) AND ($3::text IS NULL OR state=$3)
   AND ($4::timestamptz IS NULL OR (created_at,id)<($4::timestamptz,$5::uuid))
   ORDER BY created_at DESC,id DESC LIMIT $6`,[actor.tenantId,actor.userId,adminState??null,cursor?.at??null,cursor?.id??null,limit]);
  return result.rows.map(row=>({...caseRow(row),createdAt:String(row.exact_created_at)}));
 }
 async findCase(actor:Actor,id:string){
  const result=await this.pool.query(`SELECT * FROM support.wallet_cases WHERE tenant_id=$1 AND user_id=$2 AND id=$3::uuid`,
   [actor.tenantId,actor.userId,id]);return result.rows[0]?caseRow(result.rows[0]):null;
 }
 async reviewSource(actor:Actor,id:string,cursor:EventCursor|null,limit:number){
  const found=await this.pool.query(`SELECT * FROM support.wallet_cases WHERE tenant_id=$1 AND id=$2::uuid`,[actor.tenantId,id]);
  const row=found.rows[0];if(!row)return fail(404,'inquiry_not_found');
  const customer={tenantId:actor.tenantId,userId:String(row.user_id)};
  const fields:{label:string;value:string}[]=[];
  let items:{key:string;reference:string;at:string;halfMb:number|null}[]=[];
  const reference=String(row.target_reference),kind=String(row.target_kind);
  if(kind==='legacy_group'){
   const group=readLegacyGroup(reference);items=await this.group(customer,group,cursor,limit);
   fields.push({label:'Campaign',value:group.campaignId},{label:'UTC day',value:group.day},
    {label:'Historical record type',value:group.kind},{label:'Snapshot',value:group.snapshotAt});
  }else{
   if(cursor)return fail(422,'invalid_inquiry_source_cursor');
   const raw=kind==='activity'?await this.owned.activity(customer,reference):await this.owned.hold(customer,reference);
   if(!raw||typeof raw!=='object')return fail(404,'inquiry_reference_unavailable');
   const proof=raw as Record<string,unknown>;
   // Deliberately omit counterparty identifiers, contacts, bank details and provider credentials.
   const allowed=kind==='activity'?['operationId','unit','amount','kind','status','createdAt']:
    ['operationId','state','heldMb','chargedMb','releasedMb','createdAt','resolvedAt'];
   for(const key of allowed){const value=proof[key];
    if(key==='amount'&&typeof value==='number'&&Number.isSafeInteger(value)){
     const raw=BigInt(value),negative=raw<0n,absolute=negative?-raw:raw;
     fields.push({label:'Posted amount',value:proof.unit==='NGN'?
      `${negative?'-':''}₦${absolute/100n}.${String(absolute%100n).padStart(2,'0')}`:`${value} MB`});
    }else if(typeof value==='string'||typeof value==='number')fields.push({label:({operationId:'Original operation reference',unit:'Ledger',kind:'Purpose',status:'Posted status',createdAt:'Recorded at (UTC)',state:'Reservation state',heldMb:'Still held MB',chargedMb:'Posted debit MB',releasedMb:'Released MB',resolvedAt:'Resolved at (UTC)'} as Record<string,string>)[key]??key,value:String(value)});
   }
  }
  return {case:caseRow(row),source:{kind,reference,fields,items}};
 }
 async resolve(actor:Actor,id:string,state:string,revision:number){
  return withTransaction(this.pool,async client=>{
   await lockActiveUser(client,actor.tenantId,actor.userId);
   const result=await client.query(`SELECT * FROM support.wallet_cases WHERE tenant_id=$1 AND id=$2::uuid FOR UPDATE`,[actor.tenantId,id]);
   const row=result.rows[0];if(!row)return fail(404,'inquiry_not_found');
   if(row.state===state&&Number(row.revision)===revision+1&&row.reviewed_by===actor.userId)return caseRow(row);
   if(Number(row.revision)!==revision)return fail(409,'inquiry_stale_revision');
   const changed=await client.query(`UPDATE support.wallet_cases SET state=$3,revision=revision+1,reviewed_by=$4,updated_at=clock_timestamp()
    WHERE tenant_id=$1 AND id=$2::uuid RETURNING *`,[actor.tenantId,id,state,actor.userId]);
   await client.query(`INSERT INTO support.wallet_case_events(tenant_id,case_id,revision,actor_id,state)
    VALUES($1,$2,$3,$4,$5)`,[actor.tenantId,id,revision+1,actor.userId,state]);
   await client.query(`SELECT agents.queue_mobile_notice($1,$2,$3,'wallet','Wallet inquiry updated','wallet_inquiry_updated',$4)`,
    [actor.tenantId,row.user_id,'wallet-case-'+id+'-'+(revision+1),'masanawa://wallet/inquiry/'+id]);
   return caseRow(changed.rows[0]!);
  });
 }
}
