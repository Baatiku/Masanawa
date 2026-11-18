import {createHash} from 'node:crypto';
import {P2pError,type P2pActor,type P2pPool} from './service.js';
export interface HistoryFilters {cursor?:string;filter?:string;status?:string;direction?:string;fromDate?:string;toDate?:string;asset?:string;fiat?:string;method?:string;limit?:number}
const uuid=/^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
function day(raw:string|undefined){
 if(raw===undefined)return null;
 if(!/^\d{4}-\d{2}-\d{2}$/.test(raw))throw new P2pError('p2p.invalid_date',422);
 const time=new Date(raw+'T00:00:00.000Z');
 if(!Number.isFinite(time.getTime())||time.toISOString().slice(0,10)!==raw||raw<'0001-01-01')throw new P2pError('p2p.invalid_date',422);
 return raw;
}
function context(actor:P2pActor,kind:string,input:HistoryFilters){
 const filter=input.filter??'all',status=input.status??'all',direction=input.direction??'all';
 if(!['all','active','finished'].includes(filter)||!['all','buy','sell'].includes(direction))throw new P2pError('p2p.invalid_filter',422);
 const statuses=kind==='orders'?['all','awaiting_payment','payment_claimed','disputed','release_pending','refund_pending','completed','cancelled','expired']:['all','active','paused','closed'];
 if(!statuses.includes(status)||(kind==='ads'&&filter!=='all'))throw new P2pError('p2p.invalid_filter',422);
 if((input.asset!==undefined&&input.asset!=='MSNW')||(input.fiat!==undefined&&input.fiat!=='NGN')||(input.method!==undefined&&input.method!=='ng_bank_transfer'))throw new P2pError('p2p.unsupported_market',422);
 const from=day(input.fromDate),to=day(input.toDate);
 if(from&&to&&from>to)throw new P2pError('p2p.invalid_date_range',422);
 const limit=input.limit??20;if(!Number.isInteger(limit)||limit<1||limit>50)throw new P2pError('p2p.invalid_limit',422);
 const scope=createHash('sha256').update(JSON.stringify(['p2p-history-v1',actor.tenantId,actor.userId,kind,filter,status,direction,from,to,limit])).digest('hex');
 let time:string|null=null,id:string|null=null;
 if(input.cursor!==undefined){try{
  if(input.cursor.length>1024)throw Error();const v=JSON.parse(Buffer.from(input.cursor,'base64url').toString('utf8'));
  if(v.scope!==scope||typeof v.time!=='string'||!/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{6}Z$/.test(v.time)||!Number.isFinite(Date.parse(v.time))||new Date(v.time).toISOString().slice(0,19)!==v.time.slice(0,19)||typeof v.id!=='string'||!uuid.test(v.id))throw Error();
  time=v.time;id=v.id;
 }catch{throw new P2pError('p2p.invalid_cursor',422);}}
 return{filter,status,direction,from,to,limit,scope,time,id};
}
function page(rows:Record<string,unknown>[],c:ReturnType<typeof context>,idField:string){
 const items=rows.slice(0,c.limit),last=items.at(-1);
 const nextCursor=rows.length>c.limit&&last?Buffer.from(JSON.stringify({scope:c.scope,time:last.created_at_cursor??new Date(last.created_at as string|Date).toISOString().replace('Z','000Z'),id:String(last[idField])})).toString('base64url'):null;
 return{items:items.map(({created_at_cursor,...item})=>item),nextCursor,filters:{filter:c.filter,status:c.status,direction:c.direction,fromDate:c.from,toDate:c.to},market:{asset:'MSNW',fiat:'NGN',method:'ng_bank_transfer'}};
}
export function createHistoryReading(pool:P2pPool){return{
 async ordersPage(actor:P2pActor,input:HistoryFilters={}){
  const c=context(actor,'orders',input);
  const rows=await pool.query(`SELECT order_id,offer_id,seller_id,buyer_id,amount_micro::text,fee_micro::text,fiat_kobo::text,rate_kobo_per_msnw::text,
   payment_deadline,state,version,receipt_reference,created_at,
   to_char(created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS created_at_cursor
   FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND (seller_id=$2 OR buyer_id=$2)
    AND ($3::text='all' OR($3='active' AND state NOT IN ('completed','cancelled','expired')) OR($3='finished' AND state IN ('completed','cancelled','expired')))
    AND ($4::text='all' OR state=$4)
    AND ($5::text='all' OR($5='buy' AND buyer_id=$2) OR($5='sell' AND seller_id=$2))
    AND ($6::date IS NULL OR created_at>=($6::date::timestamp AT TIME ZONE 'UTC'))
    AND ($7::date IS NULL OR created_at<(($7::date+1)::timestamp AT TIME ZONE 'UTC'))
    AND ($8::timestamptz IS NULL OR(created_at,order_id)<($8::timestamptz,$9::uuid))
   ORDER BY created_at DESC,order_id DESC LIMIT $10`,[actor.tenantId,actor.userId,c.filter,c.status,c.direction,c.from,c.to,c.time,c.id,c.limit+1]);
  return page(rows.rows,c,'order_id');
 },
 async myOffersPage(actor:P2pActor,input:HistoryFilters={}){
  const c=context(actor,'ads',input);
  const rows=await pool.query(`SELECT o.offer_id,o.offer_side,o.rate_kobo_per_msnw::text,o.min_micro::text,o.max_micro::text,o.remaining_micro::text,
   o.state,o.created_at,o.payment_method_id,o.fee_bps,p.bank_name,
   to_char(o.created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS created_at_cursor
   FROM commerce.msnw_p2p_offers o JOIN commerce.msnw_p2p_payment_methods p ON p.tenant_id=o.tenant_id AND p.owner_id=o.seller_id AND p.method_id=o.payment_method_id
   WHERE o.tenant_id=$1 AND o.seller_id=$2 AND($3::text='all' OR o.state=$3) AND($4::text='all' OR o.offer_side=$4)
    AND($5::date IS NULL OR o.created_at>=($5::date::timestamp AT TIME ZONE 'UTC'))
    AND($6::date IS NULL OR o.created_at<(($6::date+1)::timestamp AT TIME ZONE 'UTC'))
    AND($7::timestamptz IS NULL OR(o.created_at,o.offer_id)<($7::timestamptz,$8::uuid))
   ORDER BY o.created_at DESC,o.offer_id DESC LIMIT $9`,[actor.tenantId,actor.userId,c.status,c.direction,c.from,c.to,c.time,c.id,c.limit+1]);
  return page(rows.rows,c,'offer_id');
 },
};}
