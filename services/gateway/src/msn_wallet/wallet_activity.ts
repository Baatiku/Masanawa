import { createHash } from 'node:crypto';
import type { Pool } from '@masanawa/postgres';

export class WalletActivityError extends Error {
  constructor(readonly code: string, readonly statusCode = 400) { super(code); }
}
type Owner = Readonly<{tenantId:string;userId:string}>;
const categories = ['Transfers','Funding','Bills','Conversions','P2P','Crypto','Calls','Rooms','Archive'] as const;
type Filter = Readonly<{category:string;status:string;search:string;from:string|null;to:string|null;asset:string;direction:string;minAmount:string|null;maxAmount:string|null}>;
type Cursor = Readonly<{version:1;at:string;id:string;snapshot:string;scope:string}>;
export interface WalletActivityRecord {
  readonly id:string; readonly reference:string; readonly category:string;
  readonly title:string; readonly amountAtomic:string; readonly decimals:number;
  readonly asset:string; readonly incoming:boolean; readonly status:string;
  readonly createdAt:string; readonly details:Readonly<Record<string,string>>;
}
const timestamp = (v:unknown):v is string => typeof v==='string' &&
  /^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{3,6}Z$/.test(v) && Number.isFinite(Date.parse(v));
function date(raw:unknown):string|null {
  if(raw===undefined||raw==='')return null;
  if(typeof raw!=='string'||!/^\d{4}-\d{2}-\d{2}$/.test(raw))throw new WalletActivityError('wallet.date_invalid');
  const value=new Date(`${raw}T00:00:00.000Z`);
  if(!Number.isFinite(value.getTime())||value.toISOString().slice(0,10)!==raw)throw new WalletActivityError('wallet.date_invalid');
  return value.toISOString();
}
function filters(query:Readonly<Record<string,unknown>>):Filter {
  const category=query.category??'All',status=query.status??'All',search=query.search??'';
  if(typeof category!=='string'||category!=='All'&&!categories.includes(category as never)||
    typeof status!=='string'||!['All','Completed','Pending','Failed'].includes(status)||
    typeof search!=='string'||search.length>160)throw new WalletActivityError('wallet.filter_invalid');
  const from=date(query.from),last=date(query.to);
  const to=last===null?null:new Date(Date.parse(last)+86400000).toISOString();
  if(from!==null&&to!==null&&from>=to)throw new WalletActivityError('wallet.date_range_invalid');
  const asset=query.asset??'All',direction=query.direction??'All';
  if(typeof asset!=='string'||!(/^[A-Za-z0-9][A-Za-z0-9 ()_-]{0,39}$/).test(asset)||typeof direction!=='string'||!['All','in','out'].includes(direction))throw new WalletActivityError('wallet.filter_invalid');
  function amount(raw:unknown):string|null{
    if(raw===undefined||raw==='')return null;
    if(typeof raw!=='string'||!(/^[0-9]{1,40}(\.[0-9]{1,36})?$/).test(raw))throw new WalletActivityError('wallet.amount_invalid');
    const [whole,fraction='']=raw.split('.');const tail=fraction.replace(/0+$/,'');return BigInt(whole!).toString()+(tail?'.'+tail:'');
  }
  const minAmount=amount(query.minAmount),maxAmount=amount(query.maxAmount);
  if((minAmount!==null||maxAmount!==null)&&asset==='All')throw new WalletActivityError('wallet.amount_asset_required');
  const scaled=(value:string)=>{const [a,b='']=value.split('.');return BigInt(a!+b.padEnd(36,'0'));};
  if(minAmount!==null&&maxAmount!==null&&scaled(minAmount)>scaled(maxAmount))throw new WalletActivityError('wallet.amount_range_invalid');
  return {category,status,search:search.trim(),from,to,asset,direction,minAmount,maxAmount};
}
function scope(owner:Owner,filter:Filter):string {
  return createHash('sha256').update(JSON.stringify([owner.tenantId,owner.userId,filter])).digest('hex');
}
function readCursor(raw:unknown,owner:Owner,filter:Filter,now:Date):Cursor|null {
  if(raw===undefined||raw==='')return null;
  if(typeof raw!=='string'||raw.length>1600||!/^[A-Za-z0-9_-]+$/.test(raw))throw new WalletActivityError('wallet.cursor_invalid');
  let v:Cursor;
  try {v=JSON.parse(Buffer.from(raw,'base64url').toString('utf8')) as Cursor;} catch {throw new WalletActivityError('wallet.cursor_invalid');}
  if(!v||v.version!==1||!timestamp(v.at)||!timestamp(v.snapshot)||
    typeof v.id!=='string'||v.id.length<1||v.id.length>512||
    v.scope!==scope(owner,filter)||Date.parse(v.at)>Date.parse(v.snapshot)||
    Date.parse(v.snapshot)>now.getTime()+5000)throw new WalletActivityError('wallet.cursor_invalid');
  return v;
}

// One row per customer operation. Funding and final issuance correlate on the
// same reference; reserve/release audit postings never become duplicate rows.
// Every branch binds BOTH tenant and authenticated owner before unioning.
const walletActivitySourceSql = `WITH activity AS (
 SELECT 'Transfers:'||operation_id::text AS id,operation_id::text AS reference,
 'Transfers'::text AS category,CASE WHEN recipient_user_id=$2 THEN 'MSNW received' ELSE 'MSNW sent' END AS title,
 amount_micro::text AS amount_atomic,6 AS decimals,'MSNW'::text AS asset,
 recipient_user_id=$2 AS incoming,'completed'::text AS status,created_at,
 jsonb_strip_nulls(jsonb_build_object('Fee','0 MSNW','Gross MSNW atomic',amount_micro::text,'Net MSNW atomic',amount_micro::text,
 'Recipient ID',recipient_user_id,'Sender ID',actor_user_id,
 'Recipient',(SELECT display_name FROM security.platform_user_profiles p WHERE p.tenant_id=o.tenant_id AND p.user_id=o.recipient_user_id),
 'Sender',(SELECT display_name FROM security.platform_user_profiles p WHERE p.tenant_id=o.tenant_id AND p.user_id=o.actor_user_id))) AS details
 FROM commerce.msnw_custody_operations o WHERE o.tenant_id=$1 AND (actor_user_id=$2 OR recipient_user_id=$2)
 UNION ALL
 SELECT 'Funding:'||f.reference,f.reference,'Funding','Bank funding',f.amount_kobo::text,2,'NGN',true,
 CASE WHEN i.reference IS NOT NULL THEN 'completed' ELSE 'backing_pending' END,f.created_at,
 CASE WHEN i.reference IS NULL THEN '{}'::jsonb ELSE jsonb_build_object('MSNW credited atomic',i.amount_micro::text) END
 FROM commerce.msnw_paystack_fiat_evidence f LEFT JOIN commerce.msnw_custody_issuances i
 ON i.reference=f.reference AND i.tenant_id=f.tenant_id AND i.user_id=f.user_id
 WHERE f.tenant_id=$1 AND f.user_id=$2
 UNION ALL
 SELECT 'Bills:'||fulfillment_reference,fulfillment_reference,'Bills','Bill payment',reserved_micro::text,6,'MSNW',false,
 CASE state WHEN 'fulfilled' THEN 'completed' ELSE state END,created_at,
 jsonb_strip_nulls(jsonb_build_object('Biller',biller_code,'Item',item_code,'Customer',customer_id,'Provider reference',provider_reference,
 'Provider NGN atomic',provider_ngn_kobo::text,'Total NGN atomic',total_ngn_kobo::text))
 FROM commerce.msnw_billing_reservations WHERE tenant_id=$1 AND user_id=$2
 UNION ALL
 SELECT 'Conversions:'||conversion_id::text,conversion_id::text,'Conversions','MSNW to '||provider_code,
 source_micro::text,6,'MSNW',false,state,created_at,
 jsonb_build_object('Network',provider_code,'Destination',destination_address,'Crypto amount atomic',target_micro::text)
 FROM commerce.msnw_usdt_payouts WHERE tenant_id=$1 AND user_id=$2
 UNION ALL
 SELECT 'P2P:'||order_id::text,order_id::text,'P2P',CASE WHEN buyer_id=$2 THEN 'P2P buy' ELSE 'P2P sell' END,
 amount_micro::text,6,'MSNW',buyer_id=$2,state,created_at,
 jsonb_strip_nulls(jsonb_build_object('Receipt',receipt_reference,'Fee MSNW atomic',fee_micro::text))
 FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND (buyer_id=$2 OR seller_id=$2)
 UNION ALL
 SELECT 'Crypto:'||request_id,request_id,'Crypto','Crypto '||replace(operation,'_',' '),
 replace(amount::text,'.',''),CASE WHEN strpos(amount::text,'.')>0 THEN length(split_part(amount::text,'.',2)) ELSE 0 END,
 asset,operation IN ('deposit','fiat-purchase','fiat_purchase'),status,created_at,
 jsonb_strip_nulls(jsonb_build_object('Network',network,'Target asset',target_asset))
 FROM commerce.crypto_intents WHERE tenant_id=$1 AND user_id=$2
 UNION ALL
 SELECT 'Archive:'||ledger_entry_id,ledger_entry_id,
 CASE WHEN reason LIKE '%voice%' OR reason LIKE '%call%' THEN 'Calls'
      WHEN reason LIKE '%room%' OR reason LIKE '%membership%' THEN 'Rooms' ELSE 'Archive' END,
 replace(reason,'-',' '),amount_credits::text,0,'Cr (historical)',credit_user_id=$2 AND credit_kind='customer-credit','recorded',created_at,
 jsonb_strip_nulls(jsonb_build_object('Fulfillment reference',fulfillment_id,'Quote reference',quote_id))
 FROM commerce.ledger_entries WHERE tenant_id=$1 AND
 ((debit_user_id=$2 AND debit_kind='customer-credit') OR (credit_user_id=$2 AND credit_kind='customer-credit'))
 UNION ALL
 SELECT 'Archive NGN:'||entry_id,reference,'Archive','Historical NGN '||replace(reason,'-',' '),
 amount_kobo::text,2,'NGN (historical)',direction='credit','recorded',created_at,'{}'::jsonb
 FROM commerce.ngn_wallet_entries WHERE tenant_id=$1 AND user_id=$2
)`;
export const walletActivitySql = `${walletActivitySourceSql} SELECT id,reference,category,title,amount_atomic,decimals,asset,incoming,status,
 to_char(created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS created_at,details
 FROM activity WHERE created_at<=$3::timestamptz
 AND ($4::timestamptz IS NULL OR created_at>=$4) AND ($5::timestamptz IS NULL OR created_at<$5)
 AND ($6='All' OR category=$6)
 AND ($7='All' OR ($7='Completed' AND status IN ('completed','finished','succeeded','settled','released','recorded'))
  OR ($7='Failed' AND status IN ('failed','cancelled','rejected','expired','refunded'))
  OR ($7='Pending' AND status NOT IN ('completed','finished','succeeded','settled','released','recorded','failed','cancelled','rejected','expired','refunded')))
 AND ($8='' OR strpos(lower(title||' '||reference||' '||asset||' '||details::text),lower($8))>0)
 AND ($12='All' OR asset=$12)
 AND ($13='All' OR incoming=($13='in'))
 AND ($14::numeric IS NULL OR amount_atomic::numeric >= $14::numeric*power(10::numeric,decimals))
 AND ($15::numeric IS NULL OR amount_atomic::numeric <= $15::numeric*power(10::numeric,decimals))
 AND ($9::timestamptz IS NULL OR (created_at,id COLLATE "C")<($9::timestamptz,$10::text COLLATE "C"))
 ORDER BY created_at DESC,id COLLATE "C" DESC LIMIT $11`;

function normalize(row:Record<string,unknown>):WalletActivityRecord {
  if(typeof row.id!=='string'||typeof row.reference!=='string'||typeof row.category!=='string'||
    typeof row.title!=='string'||typeof row.amount_atomic!=='string'||!/^[0-9]{1,100}$/.test(row.amount_atomic)||
    typeof row.decimals!=='number'||!Number.isInteger(row.decimals)||row.decimals<0||row.decimals>36||
    typeof row.asset!=='string'||typeof row.incoming!=='boolean'||typeof row.status!=='string'||!timestamp(row.created_at)||
    row.details===null||typeof row.details!=='object'||Array.isArray(row.details))throw new WalletActivityError('wallet.record_invalid',503);
  const details=Object.fromEntries(Object.entries(row.details).filter((v):v is [string,string]=>typeof v[1]==='string'));
  for(const [key,label,decimals,asset] of [
    ['Gross MSNW atomic','Gross amount',6,'MSNW'],['Net MSNW atomic','Net amount',6,'MSNW'],
    ['MSNW credited atomic','MSNW credited',6,'MSNW'],['Crypto amount atomic','Crypto amount',6,details.Network??''],
    ['Fee MSNW atomic','Fee',6,'MSNW'],['Provider NGN atomic','Provider price',2,'NGN'],['Total NGN atomic','Total price',2,'NGN'],
  ] as const) {
    const value=details[key];
    if(value!==undefined) {
      if(!/^[0-9]{1,100}$/.test(value))throw new WalletActivityError('wallet.record_invalid',503);
      details[label]=`${atomic(value,decimals)} ${asset}`.trim();delete details[key];
    }
  }
  return Object.freeze({id:row.id,reference:row.reference,category:row.category,title:row.title,
    amountAtomic:row.amount_atomic,decimals:row.decimals,asset:row.asset,incoming:row.incoming,
    status:row.status,createdAt:row.created_at,details:Object.freeze(details)});
}
function atomic(v:string,decimals:number):string {
  if(decimals===0)return BigInt(v).toString();
  const padded=v.padStart(decimals+1,'0'),whole=BigInt(padded.slice(0,-decimals)).toString(),fraction=padded.slice(-decimals).replace(/0+$/,'');
  return fraction?`${whole}.${fraction}`:whole;
}
export function activityCsv(rows:readonly WalletActivityRecord[]):string {
  const cell=(v:string)=>`"${(/^[\s]*[=+\-@\t\r]/.test(v)?`'${v}`:v).replaceAll('"','""')}"`;
  return ['Reference,Category,Description,Amount,Asset,Direction,Status,Created UTC,Details',...rows.map(r=>
    [r.reference,r.category,r.title,atomic(r.amountAtomic,r.decimals),r.asset,r.incoming?'in':'out',r.status,r.createdAt,JSON.stringify(r.details)].map(cell).join(','))].join('\r\n');
}
/** Standalone paginated PDF; exact-value lines and complete references are
 * wrapped, never truncated. Standard embedded PDF instructions need no new
 * runtime dependency or outbound document service. */
export function activityPdf(rows:readonly WalletActivityRecord[],snapshot:string):Buffer {
  const ascii=(value:string)=>value.normalize('NFKD').replace(/[^\x20-\x7e]/g,'?');
  const escape=(value:string)=>ascii(value).replace(/[\\()]/g,'\\$&');
  const chunks:string[][]=[[`Generated ${snapshot} | ${rows.length} transactions`,
    'UTC timestamps | Original asset denominations','']];
  for(const row of rows) {
    const group:string[]=[];
    for(const text of [`${row.createdAt} | ${row.category} | ${row.status}`,
      `${row.incoming?'Received':'Sent'} ${atomic(row.amountAtomic,row.decimals)} ${row.asset} | ${row.title}`,
      `Reference: ${row.reference}`,...Object.entries(row.details).map(([key,value])=>`${key}: ${value}`)]) {
      for(let start=0;start<text.length;start+=96)group.push(text.slice(start,start+96));
    }
    group.push('');
    const current=chunks.at(-1)!;
    if(current.length+group.length>47)chunks.push(group);else current.push(...group);
  }
  const objects:string[]=['<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica >>',''];
  const kids:number[]=[];
  for(const [index,page] of chunks.entries()) {
    const stream=`0.02 0.35 0.31 rg 0 756 595 86 re f\nBT /F1 20 Tf 1 1 1 rg 40 795 Td (Masanawa) Tj /F1 11 Tf 0 -20 Td (Transaction statement) Tj ET\n`+
      `BT /F1 9 Tf 0.12 0.15 0.18 rg 40 728 Td 14 TL ${page.map((line,i)=>`${i?'T* ':''}(${escape(line)}) Tj`).join('\n')} ET\n`+
      `BT /F1 8 Tf 0.4 0.4 0.4 rg 40 28 Td (Page ${index+1} of ${chunks.length}) Tj ET`;
    const contentId=objects.length+1;
    objects.push(`<< /Length ${Buffer.byteLength(stream,'ascii')} >>\nstream\n${stream}\nendstream`);
    const pageId=objects.length+1;
    objects.push(`<< /Type /Page /Parent 2 0 R /MediaBox [0 0 595 842] /Resources << /Font << /F1 1 0 R >> >> /Contents ${contentId} 0 R >>`);
    kids.push(pageId);
  }
  objects[1]=`<< /Type /Pages /Count ${kids.length} /Kids [${kids.map(id=>`${id} 0 R`).join(' ')}] >>`;
  const root=objects.length+1;objects.push('<< /Type /Catalog /Pages 2 0 R >>');
  let output='%PDF-1.4\n';const offsets=[0];
  objects.forEach((object,i)=>{offsets.push(Buffer.byteLength(output,'ascii'));output+=`${i+1} 0 obj\n${object}\nendobj\n`;});
  const xref=Buffer.byteLength(output,'ascii');
  output+=`xref\n0 ${objects.length+1}\n0000000000 65535 f \n`+offsets.slice(1).map(offset=>`${String(offset).padStart(10,'0')} 00000 n \n`).join('')+
    `trailer\n<< /Size ${objects.length+1} /Root ${root} 0 R >>\nstartxref\n${xref}\n%%EOF\n`;
  return Buffer.from(output,'ascii');
}

export function createWalletActivity(pool:Pool,clock:()=>Date=()=>new Date()) {
  async function queryRows(owner:Owner,filter:Filter,snapshot:string,cursor:Cursor|null,limit:number,db:Pick<Pool,'query'>=pool) {
    const result=await db.query(walletActivitySql,[owner.tenantId,owner.userId,snapshot,filter.from,filter.to,
      filter.category,filter.status,filter.search,cursor?.at??null,cursor?.id??null,limit,filter.asset,filter.direction,filter.minAmount,filter.maxAmount]);
    return result.rows.map(normalize);
  }
  async function statement(owner:Owner,query:Readonly<Record<string,unknown>>,maximum:number) {
    if(Object.keys(query).some(k=>!['category','status','search','from','to','asset','direction','minAmount','maxAmount'].includes(k)))throw new WalletActivityError('wallet.filter_invalid');
    const filter=filters(query),snapshot=clock().toISOString(),client=await pool.connect();
    try {
      await client.query('BEGIN ISOLATION LEVEL REPEATABLE READ READ ONLY');
      await client.query("SET LOCAL statement_timeout = '15s'");
      const items=await queryRows(owner,filter,snapshot,null,maximum+1,client);
      if(items.length>maximum)throw new WalletActivityError('wallet.export_range_too_large',413);
      await client.query('COMMIT');return {items,snapshot};
    } catch(error) {await client.query('ROLLBACK');throw error;} finally {client.release();}
  }
  return {
    async read(owner:Owner,id:string){
      if(!id||id.length>180)throw new WalletActivityError('wallet.operation_invalid');
      const records=await pool.query(`${walletActivitySourceSql} SELECT id,reference,category,title,amount_atomic,decimals,asset,incoming,status,
       to_char(created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS created_at,details
       FROM activity WHERE id=$3 LIMIT 1`,[owner.tenantId,owner.userId,id]);
      if(!records.rows[0])throw new WalletActivityError('wallet.operation_not_found',404);
      return normalize(records.rows[0]);
    },
    async list(owner:Owner,query:Readonly<Record<string,unknown>>) {
      if(Object.keys(query).some(k=>!['category','status','search','from','to','asset','direction','minAmount','maxAmount','cursor','limit'].includes(k)))throw new WalletActivityError('wallet.filter_invalid');
      const filter=filters(query),now=clock(),cursor=readCursor(query.cursor,owner,filter,now);
      const limit=query.limit===undefined?50:Number(query.limit);
      if(!Number.isSafeInteger(limit)||limit<1||limit>100)throw new WalletActivityError('wallet.limit_invalid');
      const snapshot=cursor?.snapshot??now.toISOString();
      const records=await queryRows(owner,filter,snapshot,cursor,limit+1),items=records.slice(0,limit),last=items.at(-1);
      const nextCursor=records.length>limit&&last?Buffer.from(JSON.stringify({version:1,at:last.createdAt,id:last.id,
        snapshot,scope:scope(owner,filter)} satisfies Cursor)).toString('base64url'):null;
      const options=await pool.query(`${walletActivitySourceSql} SELECT DISTINCT asset FROM activity ORDER BY asset`,[owner.tenantId,owner.userId]);
      const assets=options.rows.map(row=>row.asset).filter((value):value is string=>typeof value==='string');
      return {items,nextCursor,snapshot,assets};
    },
    async exportCsv(owner:Owner,query:Readonly<Record<string,unknown>>) {
      const {items,snapshot}=await statement(owner,query,10000);
      return {csv:activityCsv(items),count:items.length,snapshot};
    },
    async exportPdf(owner:Owner,query:Readonly<Record<string,unknown>>) {
      const {items,snapshot}=await statement(owner,query,1000);
      return {pdf:activityPdf(items,snapshot),count:items.length,snapshot};
    },
  };
}
