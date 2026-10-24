import {createDisputeContext,disputeInput,originalDispute,recordDispute} from './dispute_context.js';
import {createHistoryReading} from './history_reading.js';
import {createBulkPause} from './bulk_pause.js';
import {createAdReports} from './ad_reports.js';
import {createMethodManagement} from './method_management.js';
import {createOfferEditing} from "./offer_editing.js";
import { createHash, randomUUID } from "node:crypto";
import {readBuyOfferAdmission,type BuyOfferAdmission} from "./buy_offer_admission.js";

export class P2pError extends Error {
  constructor(readonly code: string, readonly status = 409) { super(code); }
}
export type P2pActor = Readonly<{ tenantId: string; userId: string }>;
export interface P2pQuery {
  query(sql: string, values?: unknown[]): Promise<{ rows: Record<string, unknown>[]; rowCount: number | null }>;
}
export interface P2pClient extends P2pQuery { release(): void }
export interface P2pPool extends P2pQuery { connect(): Promise<P2pClient> }
/**
 * The ONLY token movement authority. Implement against the canonical, backed
 * MSNW accounting/custody in workstream 1. Every method MUST be idempotent on
 * orderId and write in the supplied database transaction, with balance locks.
 * Never implement these methods using legacy MSN, Credits or a P2P balance.
 */
export interface MsnwEscrowAuthority {
  reserve(tx: P2pQuery, input: { tenantId: string; sellerId: string; buyerId: string; orderId: string; amountMicro: string; feeMicro: string }): Promise<void>;
  release(tx: P2pQuery, input: { tenantId: string; sellerId: string; buyerId: string; orderId: string; amountMicro: string; feeMicro: string }): Promise<string>;
  refund(tx: P2pQuery, input: { tenantId: string; sellerId: string; orderId: string; amountMicro: string }): Promise<string>;
}
export interface P2pOrder {
  order_id: string; tenant_id: string; offer_id: string; seller_id: string;
  buyer_id: string; amount_micro: string; fee_micro: string; fiat_kobo: string;
  rate_kobo_per_msnw: string; payment_deadline: string; state: string;
  version: number; receipt_reference?: string | null;
}
interface StoredP2pMessage { message_id:string; body:string; created_at:string|Date; removed_at?:string|Date|null }
interface P2pMessage extends StoredP2pMessage { is_own:boolean; sender_role:'buyer'|'seller' }
function messageReportReason(value:unknown):string {
  const text=reason(value);
  if([...text].length<10||/[\u0000-\u0008\u000b\u000c\u000e-\u001f\u007f\u202a-\u202e\u2066-\u2069]/.test(text))
    throw new P2pError('p2p.invalid_report_details',422);
  return text;
}
export type P2pAction = "claim" | "dispute" | "cancel" | "confirm" | "release" | "refund";
const uuid = /^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
const safeKey = /^[A-Za-z0-9_-]{8,128}$/;
/** Source of truth for new-order payment timing. Never infer from a device clock. */
export const P2P_PAYMENT_WINDOW_SECONDS = 30 * 60;
const positiveInt = /^[1-9][0-9]*$/;
function positive(value: unknown, max: bigint, code: string): bigint {
  if (typeof value !== "string" || !positiveInt.test(value)) throw new P2pError(code, 422);
  const number = BigInt(value);
  if (number > max) throw new P2pError(code, 422);
  return number;
}
function id(value: unknown): string {
  if (typeof value !== "string" || !uuid.test(value)) throw new P2pError("p2p.invalid_id", 422);
  return value;
}
function key(value: unknown): string {
  if (typeof value !== "string" || !safeKey.test(value)) throw new P2pError("p2p.idempotency_required", 422);
  return value;
}
function reason(value: unknown): string {
  if (typeof value !== "string" || value.trim().length < 10 || value.length > 2000) {
    throw new P2pError("p2p.reason_required", 422);
  }
  return value.trim();
}
export function orderAmounts(micro: string, rateKobo: string, feeBps: number) {
  const amount = positive(micro, 10n ** 18n, "p2p.invalid_amount");
  const rate = positive(rateKobo, 10n ** 12n, "p2p.invalid_rate");
  if (!Number.isInteger(feeBps) || feeBps < 0 || feeBps > 1000) throw new P2pError("p2p.invalid_fee", 422);
  // Round fiat and fee UP: never silently under-collect, round or use floats.
  const fiat = (amount * rate + 999999n) / 1000000n;
  const fee = (amount * BigInt(feeBps) + 9999n) / 10000n;
  if (fiat > 9223372036854775807n || amount + fee > 9223372036854775807n)
    throw new P2pError("p2p.amount_out_of_range", 422);
  return { amountMicro: amount.toString(), fiatKobo: fiat.toString(),
    feeMicro: fee.toString(), reservedMicro: (amount + fee).toString() };
}
/** Stable, opaque UUID per tenant, seller and random authenticated request key. */
function offerRequestId(actor:P2pActor,requestKey:string):string {
  const safe=key(requestKey);
  const digest=createHash("sha256").update("msnw-p2p-offer-v1\u0000")
    .update(actor.tenantId).update("\u0000")
    .update(actor.userId).update("\u0000").update(safe).digest();
  const data=Buffer.from(digest.subarray(0,16));
  data[6]=(data[6]!&0x0f)|0x40;
  data[8]=(data[8]!&0x3f)|0x80;
  const h=data.toString("hex");
  return `${h.slice(0,8)}-${h.slice(8,12)}-${h.slice(12,16)}-${h.slice(16,20)}-${h.slice(20)}`;
}

function pageCursor(value?:string):{time:string|null;id:string|null}{
  if(value===undefined)return {time:null,id:null};
  if(value.length===0||value.length>256)
    throw new P2pError("p2p.invalid_cursor",422);
  try{
    const raw=JSON.parse(Buffer.from(value,"base64url").toString("utf8")) as Record<string,unknown>;
    if(typeof raw.time!=="string"||typeof raw.id!=="string"||
      !uuid.test(raw.id)||
      !/^[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}\.[0-9]{3,6}Z$/.test(raw.time)||
      !Number.isFinite(Date.parse(raw.time)))
      throw Error("bad cursor");
    return {time:raw.time,id:raw.id};
  }catch{throw new P2pError("p2p.invalid_cursor",422);}
}
function cursorTime(row:Record<string,unknown>,field="created_at"):string{
  const exact=row.created_at_cursor;
  if(typeof exact==="string"&&/^[0-9]{4}-/.test(exact))return exact;
  return new Date(String(row[field])).toISOString();
}
function nextPageCursor(items:Record<string,unknown>[],all:number,
  limit:number,dateField="created_at",idField="offer_id"):string|null{
  const last=items.at(-1);
  return all>limit&&last
    ?Buffer.from(JSON.stringify({
      time:cursorTime(last,dateField),
      id:String(last[idField]),
    })).toString("base64url")
    :null;
}

function take<T>(result: { rows: Record<string, unknown>[] }, code = "p2p.not_found"): T {
  if (!result.rows[0]) throw new P2pError(code, 404);
  return result.rows[0] as T;
}

export function createP2pService(pool: P2pPool, escrow: MsnwEscrowAuthority,
  options:{buyOfferAdmission?:BuyOfferAdmission}={}) {
  async function admission(actor:P2pActor) {
    try {return await readBuyOfferAdmission(options.buyOfferAdmission,actor);}
    catch {throw new P2pError('p2p.buy_offer_admission_unavailable',503);}
  }
  async function requireBuyAdmission(actor:P2pActor,kind:'maker'|'taker') {
    if(!options.buyOfferAdmission)throw new P2pError('p2p.buy_offer_admission_unavailable',503);
    const allowed=await admission(actor);
    if(!(kind==='maker'?allowed.canMakeBuyOffer:allowed.canTakeBuyOffer))
      throw new P2pError('p2p.buy_offer_ineligible',403);
    return allowed;
  }
  async function transact<T>(fn: (tx: P2pQuery) => Promise<T>): Promise<T> {
    const tx = await pool.connect();
    try {
      await tx.query("BEGIN");
      const value = await fn(tx);
      await tx.query("COMMIT");
      return value;
    } catch (e) {
      await tx.query("ROLLBACK").catch(() => undefined);
      throw e;
    } finally { tx.release(); }
  }
  async function event(tx: P2pQuery, actor: P2pActor, orderId: string,
    action: string, from: string | null, to: string, explanation?: string) {
    await tx.query(`INSERT INTO commerce.msnw_p2p_events
      (event_id,tenant_id,order_id,actor_id,action,from_state,to_state,reason)
      VALUES ($1,$2,$3,$4,$5,$6,$7,$8)`, [
      randomUUID(), actor.tenantId, orderId, actor.userId, action, from, to, explanation ?? null,
    ]);
  }
  async function orderForUpdate(tx: P2pQuery, actor: P2pActor, orderId: string): Promise<P2pOrder> {
    return take<P2pOrder>(await tx.query(`SELECT order_id,tenant_id,offer_id,seller_id,buyer_id,
      amount_micro::text,fee_micro::text,fiat_kobo::text,rate_kobo_per_msnw::text,
      payment_deadline,state,version,receipt_reference FROM commerce.msnw_p2p_orders
      WHERE tenant_id=$1 AND order_id=$2 FOR UPDATE`, [actor.tenantId, id(orderId)]));
  }
  const owns = (order: P2pOrder, actor: P2pActor) =>
    order.seller_id === actor.userId || order.buyer_id === actor.userId;
  async function setState(tx: P2pQuery, actor: P2pActor,
    order: P2pOrder, next: string, action: string, explanation?: string, receipt?: string) {
    await tx.query(`UPDATE commerce.msnw_p2p_orders SET state=$3,version=version+1,
      updated_at=statement_timestamp(),receipt_reference=COALESCE($4,receipt_reference),
      settled_at=CASE WHEN $3 IN ('completed','cancelled','expired') THEN statement_timestamp()
                      ELSE settled_at END
      WHERE tenant_id=$1 AND order_id=$2`,
      [actor.tenantId, order.order_id, next, receipt ?? null]);
    await event(tx, actor, order.order_id, action, order.state, next, explanation);
  }
  async function refund(tx: P2pQuery, actor: P2pActor, order: P2pOrder, finalState: "cancelled" | "expired") {
    // Identity and amount are derived from locked persisted order, never request body.
    const reserved = (BigInt(order.amount_micro) + BigInt(order.fee_micro)).toString();
    const receipt = await escrow.refund(tx, {
      tenantId: actor.tenantId, sellerId: order.seller_id,
      orderId: order.order_id, amountMicro: reserved,
    });
    await tx.query(`UPDATE commerce.msnw_p2p_offers SET
      remaining_micro=remaining_micro+$3,updated_at=statement_timestamp()
      WHERE tenant_id=$1 AND offer_id=$2`,
      [actor.tenantId, order.offer_id, order.amount_micro]);
    await setState(tx, actor, order, finalState, finalState, undefined, receipt);
  }
  async function complete(tx: P2pQuery, actor: P2pActor, order: P2pOrder) {
    const receipt = await escrow.release(tx, {
      tenantId: actor.tenantId, sellerId: order.seller_id, buyerId: order.buyer_id,
      orderId: order.order_id, amountMicro: order.amount_micro, feeMicro: order.fee_micro,
    });
    await setState(tx, actor, order, "completed", "escrow_released", undefined, receipt);
  }
  // Public trader context is discoverable only through a currently eligible ad.
  // No raw user ID, receiving account, email, KYC record or invented badge is returned.
  async function traderReference(actor:P2pActor,offerId:string) {
    return take<Record<string,unknown>>(await pool.query(`SELECT o.seller_id,o.offer_side,seller.display_name,p.bank_name,o.rate_kobo_per_msnw::text,o.min_micro::text,
      LEAST(o.max_micro::numeric,o.remaining_micro::numeric,CASE WHEN o.offer_side='buy' THEN o.remaining_micro::numeric ELSE floor(coalesce(c.available_micro,0)::numeric*10000/(10000+o.fee_bps)) END)::text AS max_micro,to_jsonb(o)->>'terms_revision' AS terms_revision,
      statement_timestamp() AS as_of,
      history.completed,history.closed,history.cancelled,history.expired,history.disputed,history.total
      FROM commerce.msnw_p2p_offers o
      JOIN commerce.msnw_p2p_payment_methods p ON p.tenant_id=o.tenant_id AND p.method_id=o.payment_method_id
        AND p.owner_id=o.seller_id
      LEFT JOIN commerce.msnw_custody_accounts c ON c.tenant_id=o.tenant_id AND c.user_id=o.seller_id
      LEFT JOIN security.platform_user_profiles seller ON seller.tenant_id=o.tenant_id AND seller.user_id=o.seller_id
      LEFT JOIN LATERAL(SELECT count(*)::int AS total,
       count(*) FILTER(WHERE past.state='completed')::int AS completed,
       count(*) FILTER(WHERE past.state IN ('completed','cancelled','expired'))::int AS closed,
       count(*) FILTER(WHERE past.state='cancelled')::int AS cancelled,
       count(*) FILTER(WHERE past.state='expired')::int AS expired,
       count(*) FILTER(WHERE past.state='disputed')::int AS disputed
       FROM commerce.msnw_p2p_orders past WHERE past.tenant_id=o.tenant_id
        AND (past.seller_id=o.seller_id OR past.buyer_id=o.seller_id)
        AND past.seller_id<>past.buyer_id AND past.created_at>=statement_timestamp()-interval '30 days'
        AND past.created_at<=statement_timestamp()) history ON true
      WHERE o.tenant_id=$1 AND o.offer_id=$2 AND o.seller_id<>$3 AND o.state='active'
        AND p.verified_at IS NOT NULL AND p.disabled_at IS NULL
        AND (o.offer_side='buy' OR LEAST(o.remaining_micro::numeric,floor(coalesce(c.available_micro,0)::numeric*10000/(10000+o.fee_bps)))>=o.min_micro)
        AND o.remaining_micro>0`,[actor.tenantId,offerId,actor.userId]),'p2p.trader_unavailable');
  }
    /** Seek-paginated listings keep tenant visibility and reserve capacity rules. */
  async function offersPage(actor:P2pActor,input:{cursor?:string;amountMicro?:string;search?:string;
      asset?:string;fiat?:string;method?:string;traderOfferId?:string;side?:string;sort?:string;fiatKobo?:string}={}) {
      const side=input.side??'sell';
      const sort=input.sort??'newest';
      if(!['newest','best_price'].includes(sort))throw new P2pError('p2p.invalid_sort',422);
      const fiatBudget=input.fiatKobo===undefined?null:positive(input.fiatKobo,10n**18n,'p2p.invalid_fiat_amount').toString();
      if(!['sell','buy'].includes(side))throw new P2pError('p2p.invalid_offer_side',422);
      if(side==='buy')await requireBuyAdmission(actor,'taker');
      if((input.asset!==undefined&&input.asset!=='MSNW')||
        (input.fiat!==undefined&&input.fiat!=='NGN'))throw new P2pError('p2p.unsupported_market',422);
      if(input.method!==undefined&&input.method!=='ng_bank_transfer')
        throw new P2pError('p2p.unsupported_method',422);
      const amount=input.amountMicro===undefined?null:
        positive(input.amountMicro,10n**18n,'p2p.invalid_amount').toString();
      if(amount!==null&&fiatBudget!==null)throw new P2pError('p2p.conflicting_amount_filters',422);
      const search=input.search?.trim()??'';
      if(search.length>80||/[\u0000-\u001f\u007f]/.test(search))
        throw new P2pError('p2p.invalid_search',422);
      const trader=input.traderOfferId===undefined?null:await traderReference(actor,id(input.traderOfferId));
      if(trader?.offer_side==='buy')await requireBuyAdmission(actor,'taker');
      const scope:unknown[]=[actor.tenantId,actor.userId,amount,search];
      if(input.traderOfferId!==undefined)scope.push(input.traderOfferId);
      const effectiveSide=String(trader?.offer_side??side);
      if(effectiveSide!=='sell')scope.push(effectiveSide);
      if(sort!=='newest'||fiatBudget!==null)scope.push(sort,fiatBudget);
      const context=createHash('sha256').update(JSON.stringify(scope)).digest('hex').slice(0,24);
      let afterPrice:string|null=null;
      if(input.cursor){
        pageCursor(input.cursor);
        const raw=JSON.parse(Buffer.from(input.cursor,'base64url').toString('utf8'));
        if(raw.context!==context&&(raw.context!==undefined||amount!==null||search!==''||input.traderOfferId!==undefined||effectiveSide!=='sell'||sort!=='newest'||fiatBudget!==null))
          throw new P2pError('p2p.filter_cursor_changed',422);
        if(sort==='best_price'){
          const price=positive(raw.rate,10n**12n,'p2p.invalid_cursor');
          afterPrice=(effectiveSide==='buy'?-price:price).toString();
        }
      }
      const {time,id:afterId}=pageCursor(input.cursor);
      const limit=20;
      const result=await pool.query(`SELECT o.offer_id,o.offer_side,
        o.rate_kobo_per_msnw::text,o.min_micro::text,
        LEAST(o.max_micro,capacity.amount)::text AS max_micro,
        capacity.amount::text AS remaining_micro,budget.amount::text AS budget_amount_micro,o.fee_bps,
        p.bank_name,p.method_type,
        seller.display_name AS seller_display_name,
        (p.verified_at IS NOT NULL AND p.disabled_at IS NULL) AS bank_method_verified,
        history.completed_orders_30d,history.closed_orders_30d,
        o.created_at,
        to_char(o.created_at AT TIME ZONE 'UTC',
          'YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS created_at_cursor
        FROM commerce.msnw_p2p_offers o
        JOIN commerce.msnw_p2p_payment_methods p
          ON p.method_id=o.payment_method_id AND p.tenant_id=o.tenant_id
          AND p.owner_id=o.seller_id
        LEFT JOIN security.platform_user_profiles seller
          ON seller.tenant_id=o.tenant_id AND seller.user_id=o.seller_id
        LEFT JOIN commerce.msnw_custody_accounts c
          ON c.tenant_id=o.tenant_id AND c.user_id=o.seller_id
        CROSS JOIN LATERAL (SELECT CASE WHEN o.offer_side='buy' THEN o.remaining_micro::numeric ELSE LEAST(o.remaining_micro::numeric,
          floor(coalesce(c.available_micro,0)::numeric*10000/(10000+o.fee_bps))) END AS amount) capacity
        CROSS JOIN LATERAL (SELECT CASE WHEN $10::numeric IS NULL THEN NULL ELSE
          LEAST(o.max_micro::numeric,capacity.amount,floor($10::numeric*1000000/o.rate_kobo_per_msnw)) END AS amount) budget
        CROSS JOIN LATERAL (SELECT CASE WHEN $11::text='best_price' THEN
          CASE WHEN o.offer_side='buy' THEN -o.rate_kobo_per_msnw ELSE o.rate_kobo_per_msnw END
          ELSE 0 END AS price) sort_terms
        LEFT JOIN LATERAL (
          SELECT count(*) FILTER (WHERE past.state='completed')::integer AS completed_orders_30d,
                 count(*)::integer AS closed_orders_30d
          FROM commerce.msnw_p2p_orders past
          WHERE past.tenant_id=o.tenant_id AND (past.seller_id=o.seller_id OR past.buyer_id=o.seller_id)
            AND past.created_at>=statement_timestamp()-interval '30 days'
            AND past.state IN ('completed','cancelled','expired')
        ) history ON TRUE
        WHERE o.tenant_id=$1 AND o.seller_id<>$2 AND o.state='active' AND o.offer_side=$9
          AND capacity.amount>=o.min_micro AND capacity.amount>0
          AND ($10::numeric IS NULL OR budget.amount>=o.min_micro)
          AND p.disabled_at IS NULL AND p.verified_at IS NOT NULL
          AND ($8::text IS NULL OR o.seller_id=$8::text)
          AND ($6::numeric IS NULL OR (o.min_micro<=$6::numeric
            AND LEAST(o.max_micro,capacity.amount)>=$6::numeric))
          AND ($7::text='' OR position(lower($7::text) in lower(COALESCE(seller.display_name,'')))>0
            OR o.offer_id::text=$7::text)
          AND ($3::timestamptz IS NULL OR
            ($11::text='newest' AND (o.created_at,o.offer_id)<($3::timestamptz,$4::uuid)) OR
            ($11::text='best_price' AND (sort_terms.price>$12::numeric OR
              (sort_terms.price=$12::numeric AND (o.created_at,o.offer_id)<($3::timestamptz,$4::uuid)))))
        ORDER BY sort_terms.price ASC,o.created_at DESC,o.offer_id DESC LIMIT $5`,
        [actor.tenantId,actor.userId,time,afterId,limit+1,amount,search,trader?.seller_id??null,effectiveSide,fiatBudget,sort,afterPrice]);
      const items=result.rows.slice(0,limit);
      const cursor=nextPageCursor(items,result.rows.length,limit);
      const nextCursor=cursor?Buffer.from(JSON.stringify({...JSON.parse(Buffer.from(cursor,'base64url').toString('utf8')),context,...(sort==='best_price'?{rate:String(items.at(-1)!.rate_kobo_per_msnw)}:{})})).toString('base64url'):null;
      return {items,nextCursor,market:{asset:'MSNW',fiat:'NGN',method:'ng_bank_transfer',offerSide:effectiveSide},
        filters:{amountMicro:amount,search,...(fiatBudget!==null?{fiatKobo:fiatBudget}:{})},sort,
        ...(trader?{trader:{displayName:trader.display_name,completedOrders30d:trader.completed,
          closedOrders30d:trader.closed,cancelledOrders30d:trader.cancelled,expiredOrders30d:trader.expired,disputedOrders30d:trader.disputed,totalOrders30d:trader.total,windowDays:30,asOf:trader.as_of,sourceOfferId:input.traderOfferId,offerSide:effectiveSide}}:{})};
    }
  return Object.freeze({
    ...createAdReports(pool,async(actor,offerId)=>{
      const ad=await traderReference(actor,id(offerId));
      if(ad.offer_side==='buy'){
        await requireBuyAdmission(actor,'taker');
        await requireBuyAdmission({tenantId:actor.tenantId,userId:String(ad.seller_id)},'maker');
      }
      return{makerId:String(ad.seller_id),snapshot:{offerSide:ad.offer_side,traderName:ad.display_name??null,
        bankName:ad.bank_name,rateKoboPerMsnw:ad.rate_kobo_per_msnw,minMicro:ad.min_micro,maxMicro:ad.max_micro,
        termsRevision:Number(ad.terms_revision??1),observedAt:new Date(ad.as_of as string|Date).toISOString()}};
    }),
    ...createMethodManagement(pool),
    ...createBulkPause(pool),
    ...createHistoryReading(pool),
    ...createDisputeContext(pool),
    ...createOfferEditing(pool,actor=>requireBuyAdmission(actor,'maker')),
    async capabilities(actor:P2pActor) {
      const rights=await admission(actor);
      return {makerBuy: rights.canMakeBuyOffer,takerSell:rights.canTakeBuyOffer,
        admissionState:rights.policyReference?'available':'unavailable',policyReference:rights.policyReference,
        asset:'MSNW',fiat:'NGN',method:'ng_bank_transfer'};
    },
    async offers(actor: P2pActor) {
      // Display only presently funded capacity. The existing per-order locked
      // reservation remains the sole escrow authority; discovery never moves funds.
      const rows = await pool.query(`SELECT o.offer_id,o.seller_id,o.rate_kobo_per_msnw::text,
        o.min_micro::text,LEAST(o.max_micro,capacity.amount)::text AS max_micro,
        capacity.amount::text AS remaining_micro,o.fee_bps,p.bank_name,p.method_type,
        seller.display_name AS seller_display_name,
        (p.verified_at IS NOT NULL AND p.disabled_at IS NULL) AS bank_method_verified,
        history.completed_orders_30d,history.closed_orders_30d,
        o.created_at
        FROM commerce.msnw_p2p_offers o JOIN commerce.msnw_p2p_payment_methods p
          ON p.method_id=o.payment_method_id AND p.tenant_id=o.tenant_id AND p.owner_id=o.seller_id
        LEFT JOIN security.platform_user_profiles seller
          ON seller.tenant_id=o.tenant_id AND seller.user_id=o.seller_id
        JOIN commerce.msnw_custody_accounts c ON c.tenant_id=o.tenant_id AND c.user_id=o.seller_id
        CROSS JOIN LATERAL (SELECT LEAST(o.remaining_micro::numeric,
          floor(c.available_micro::numeric*10000/(10000+o.fee_bps))) AS amount) capacity
        LEFT JOIN LATERAL (
          SELECT count(*) FILTER (WHERE past.state='completed')::integer AS completed_orders_30d,
                 count(*)::integer AS closed_orders_30d
          FROM commerce.msnw_p2p_orders past
          WHERE past.tenant_id=o.tenant_id AND (past.seller_id=o.seller_id OR past.buyer_id=o.seller_id)
            AND past.created_at>=statement_timestamp()-interval '30 days'
            AND past.state IN ('completed','cancelled','expired')
        ) history ON TRUE
        WHERE o.tenant_id=$1 AND o.seller_id<>$2 AND o.state='active' AND o.offer_side='sell'
          AND capacity.amount>=o.min_micro AND capacity.amount>0
          AND p.disabled_at IS NULL AND p.verified_at IS NOT NULL
        ORDER BY o.created_at DESC LIMIT 100`, [actor.tenantId,actor.userId]);
      return rows.rows;
    },
    offersPage,
    async traderProfile(actor:P2pActor,offerId:string,input:{cursor?:string}={}) {
      return offersPage(actor,{...input,traderOfferId:id(offerId)});
    },
    async notificationsPage(actor:P2pActor,input:{cursor?:string}={}) {
      const {time,id:afterId}=pageCursor(input.cursor);
      const limit=20;
      const result=await pool.query(`SELECT event_id,order_id,action,state,created_at,
          processed_at,delivered,
          to_char(created_at AT TIME ZONE 'UTC',
            'YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS created_at_cursor
        FROM commerce.msnw_p2p_notifications
        WHERE tenant_id=$1 AND user_id=$2
          AND ($3::timestamptz IS NULL OR
            (created_at,event_id)<($3::timestamptz,$4::uuid))
        ORDER BY created_at DESC,event_id DESC LIMIT $5`,
        [actor.tenantId,actor.userId,time,afterId,limit+1]);
      const items=result.rows.slice(0,limit);
      return {items,nextCursor:nextPageCursor(items,result.rows.length,
        limit,"created_at","event_id")};
    },
    async myOffers(actor: P2pActor) {
      return (await pool.query(`SELECT offer_id,offer_side,rate_kobo_per_msnw::text,
        min_micro::text,max_micro::text,remaining_micro::text,state,created_at,
        payment_method_id,fee_bps
        FROM commerce.msnw_p2p_offers WHERE tenant_id=$1 AND seller_id=$2
        ORDER BY created_at DESC LIMIT 100`,[actor.tenantId,actor.userId])).rows;
    },
    async sellerCapacity(actor:P2pActor) {
      const funds=await pool.query(`SELECT available_micro::text AS available_micro
        FROM commerce.msnw_custody_accounts
        WHERE tenant_id=$1 AND user_id=$2`,[actor.tenantId,actor.userId]);
      const amount=String(funds.rows[0]?.available_micro??"0");
      if(!/^[0-9]+$/.test(amount))throw new P2pError("p2p.wallet_unavailable",503);
      return {availableMicro:amount};
    },
    async methods(actor: P2pActor) {
      const rows = await pool.query(`SELECT method_id,method_type,bank_name,account_name,
        ('••••'||right(account_number,4)) AS account_number,verified_at,
        to_jsonb(m)->>'private_label' AS private_label,coalesce((to_jsonb(m)->>'preferred')::boolean,false) AS preferred
        FROM commerce.msnw_p2p_payment_methods m
        WHERE tenant_id=$1 AND owner_id=$2 AND disabled_at IS NULL ORDER BY preferred DESC,created_at DESC`,
        [actor.tenantId, actor.userId]);
      return rows.rows;
    },
    // Only a trusted server-side KYC/payment verification integration can call this.
    async recordVerifiedMethod(actor: P2pActor, input: {
      methodId: string; bankName: string; bankCode: string; accountName: string;
      accountNumber: string; verificationReference: string;
    }) {
      if (!/^[0-9]{3,6}$/.test(input.bankCode) ||
          !/^[0-9]{10}$/.test(input.accountNumber) ||
          input.bankName.trim().length < 2 || input.bankName.length > 120 ||
          input.accountName.trim().length < 2 || input.accountName.length > 150 ||
          !/^[A-Za-z0-9_.:-]{8,128}$/.test(input.verificationReference)) {
        throw new P2pError("p2p.method_invalid", 422);
      }
      await pool.query(`INSERT INTO commerce.msnw_p2p_payment_methods
        (method_id,tenant_id,owner_id,method_type,bank_name,bank_code,account_name,
          account_number,verification_reference,verified_at)
        VALUES ($1,$2,$3,'ng_bank_transfer',$4,$5,$6,$7,$8,statement_timestamp())
        ON CONFLICT DO NOTHING`, [id(input.methodId),actor.tenantId,actor.userId,
        input.bankName.trim(),input.bankCode,input.accountName.trim(),input.accountNumber,
        input.verificationReference]);
    },
    async pauseOffer(actor:P2pActor,offerId:string) {
      // New orders stop immediately; existing accepted orders and escrow
      // never change their bank instructions, reservation or deadlines.
      const updated=await pool.query(`UPDATE commerce.msnw_p2p_offers
        SET state='paused',updated_at=statement_timestamp()
        WHERE tenant_id=$1 AND seller_id=$2 AND offer_id=$3
          AND state='active' RETURNING offer_id`,
        [actor.tenantId,actor.userId,id(offerId)]);
      if(updated.rowCount!==1)
        throw new P2pError("p2p.offer_not_active",409);
      return {offerId,state:"paused" as const};
    },
    async resumeOffer(actor:P2pActor,offerId:string) {
      const rights=await admission(actor).catch(()=>({canMakeBuyOffer:false}));
      const updated=await pool.query(`UPDATE commerce.msnw_p2p_offers o SET state='active',updated_at=statement_timestamp()
        FROM commerce.msnw_p2p_payment_methods p
        WHERE o.tenant_id=$1 AND o.seller_id=$2 AND o.offer_id=$3
          AND o.state='paused' AND o.remaining_micro>=o.min_micro
          AND p.tenant_id=o.tenant_id AND p.owner_id=o.seller_id AND p.method_id=o.payment_method_id
          AND p.verified_at IS NOT NULL AND p.disabled_at IS NULL
          AND ((o.offer_side='buy' AND $4::boolean) OR (o.offer_side='sell' AND EXISTS(
            SELECT 1 FROM commerce.msnw_custody_accounts c WHERE c.tenant_id=o.tenant_id AND c.user_id=o.seller_id
              AND floor(c.available_micro::numeric*10000/(10000+o.fee_bps))>=o.min_micro)))
        RETURNING o.offer_id`,[actor.tenantId,actor.userId,id(offerId),rights.canMakeBuyOffer]);
      if(updated.rowCount!==1)throw new P2pError('p2p.offer_resume_unavailable',409);
      return {offerId,state:'active' as const};
    },
    async closeOffer(actor: P2pActor, offerId: string) {
      // No existing order or its reserved funds are affected; only future
      // bookings are paused. All order resolution routes remain available.
      const updated = await pool.query(`UPDATE commerce.msnw_p2p_offers
        SET state='closed',updated_at=statement_timestamp()
        WHERE tenant_id=$1 AND offer_id=$2 AND seller_id=$3
          AND state IN ('active','paused') RETURNING offer_id`,
        [actor.tenantId,id(offerId),actor.userId]);
      if (!updated.rowCount) throw new P2pError("p2p.offer_not_found",404);
      return {offerId,state:"closed"};
    },
    async offerByRequest(actor:P2pActor,requestKey:string) {
      const candidate=offerRequestId(actor,requestKey);
      const row=take<Record<string,unknown>>(await pool.query(`SELECT offer_id,state
        FROM commerce.msnw_p2p_offers
        WHERE tenant_id=$1 AND seller_id=$2 AND offer_id=$3`,
        [actor.tenantId,actor.userId,candidate]),"p2p.offer_not_found");
      return {offerId:String(row.offer_id),state:String(row.state)};
    },
    async createOffer(actor: P2pActor, input: {
      paymentMethodId: string; rateKoboPerMsnw: string;
      minMicro: string; maxMicro: string; inventoryMicro: string;
      idempotencyKey?: string;offerSide?:string;
    }) {
      const side=input.offerSide??'sell';
      if(!['sell','buy'].includes(side))throw new P2pError('p2p.invalid_offer_side',422);
      const rate=positive(input.rateKoboPerMsnw,10n**12n,"p2p.invalid_rate");
      const min=positive(input.minMicro,10n**18n,"p2p.invalid_limit");
      const max=positive(input.maxMicro,10n**18n,"p2p.invalid_limit");
      const inventory=positive(input.inventoryMicro,10n**18n,"p2p.invalid_inventory");
      if(min>max||min>inventory||max>inventory)
        throw new P2pError("p2p.invalid_limit",422);
      const paymentMethodId=id(input.paymentMethodId);
      const requestKey=input.idempotencyKey;
      const offerId=requestKey===undefined?randomUUID():offerRequestId(actor,requestKey);
      return transact(async tx=>{
        if(requestKey!==undefined){
          await tx.query("SELECT pg_advisory_xact_lock(hashtext($1))",
            ["msnw-offer:"+actor.tenantId+":"+actor.userId+":"+requestKey]);
          const existing=await tx.query(`SELECT offer_id,payment_method_id,offer_side,
              rate_kobo_per_msnw::text,min_micro::text,max_micro::text,state
            FROM commerce.msnw_p2p_offers
            WHERE tenant_id=$1 AND seller_id=$2 AND offer_id=$3 FOR UPDATE`,
            [actor.tenantId,actor.userId,offerId]);
          if(existing.rows[0]){
            const prior=existing.rows[0]!;
            if(String(prior.offer_side??'sell')!==side || prior.payment_method_id!==paymentMethodId ||
               String(prior.rate_kobo_per_msnw)!==rate.toString() ||
               String(prior.min_micro)!==min.toString() ||
               String(prior.max_micro)!==max.toString())
              throw new P2pError("p2p.idempotency_conflict",409);
            // Remaining inventory is mutable after later funded orders, so an
            // existing request can only return the ORIGINAL offer, never amend it.
            return {offerId,replay:true,state:String(prior.state)};
          }
        }
        if(side==='buy')await requireBuyAdmission(actor,'maker');
        const method=await tx.query(`SELECT method_id
          FROM commerce.msnw_p2p_payment_methods
          WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3
          AND verified_at IS NOT NULL AND disabled_at IS NULL FOR SHARE`,
          [actor.tenantId,actor.userId,paymentMethodId]);
        if(!method.rowCount)throw new P2pError("p2p.verified_method_required",403);
        await tx.query(`INSERT INTO commerce.msnw_p2p_offers
          (offer_id,tenant_id,seller_id,payment_method_id,rate_kobo_per_msnw,
            min_micro,max_micro,remaining_micro,offer_side) VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9)`,
          [offerId,actor.tenantId,actor.userId,paymentMethodId,
            rate.toString(),min.toString(),max.toString(),inventory.toString(),side]);
        return {offerId,replay:false,state:"active"};
      });
    },
    async order(actor: P2pActor, orderId: string) {
      const order = take<P2pOrder>(await pool.query(`SELECT order_id,tenant_id,offer_id,seller_id,buyer_id,
        amount_micro::text,fee_micro::text,fiat_kobo::text,rate_kobo_per_msnw::text,
        payment_deadline,state,version,receipt_reference,statement_timestamp() AS server_now
        FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND order_id=$2
          AND (seller_id=$3 OR buyer_id=$3)`, [actor.tenantId,id(orderId),actor.userId]));
      const method = take<Record<string,unknown>>(await pool.query(`SELECT bank_name,account_name,
        account_number,method_type FROM commerce.msnw_p2p_payment_methods
        WHERE tenant_id=$1 AND method_id=(SELECT payment_method_id FROM commerce.msnw_p2p_orders
        WHERE tenant_id=$1 AND order_id=$2)`, [actor.tenantId,orderId]));
      const late=await pool.query(`SELECT case_id,state,created_at,updated_at
        FROM commerce.msnw_p2p_late_payment_cases
        WHERE tenant_id=$1 AND order_id=$2`,[actor.tenantId,orderId]);
      return { ...order, payment: method,latePayment:late.rows[0]??null };
    },
    /** Participant-only text channel; bank/evidence and settlement stay separate. */
    async messagesPage(actor:P2pActor, orderId:string, input:{cursor?:string}={}) {
      const order = take<P2pOrder>(await pool.query(`SELECT order_id,seller_id,buyer_id,state
        FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND order_id=$2
        AND (seller_id=$3 OR buyer_id=$3)`,[actor.tenantId,id(orderId),actor.userId]));
      const cursor=pageCursor(input.cursor);
      const result=await pool.query(`SELECT message_id,CASE WHEN removed_at IS NULL THEN body ELSE '' END AS body,removed_at,created_at,
        to_char(created_at AT TIME ZONE 'UTC','YYYY-MM-DD"T"HH24:MI:SS.US"Z"') AS created_at_cursor,
        CASE WHEN sender_id=$3 THEN true ELSE false END AS is_own,
        CASE WHEN sender_id=$4 THEN 'seller' ELSE 'buyer' END AS sender_role
        FROM commerce.msnw_p2p_order_messages WHERE tenant_id=$1 AND order_id=$2
        AND ($5::timestamptz IS NULL OR (created_at,message_id)<($5::timestamptz,$6::uuid))
        ORDER BY created_at DESC,message_id DESC LIMIT 41`,
        [actor.tenantId,orderId,actor.userId,order.seller_id,cursor.time,cursor.id]);
      const items=result.rows.slice(0,40);
      const nextCursor=nextPageCursor(items,result.rows.length,40,'created_at','message_id');
      // Public state transitions only: private operator reasons/evidence never enter chat.
      const events=await pool.query(`SELECT event_id,action,to_state,created_at
        FROM commerce.msnw_p2p_events WHERE tenant_id=$1 AND order_id=$2
        AND action IN ('reserve','buyer_claimed_payment','dispute_opened','escrow_released',
          'cancelled','expired','late_payment_reported','late_payment_escalated','late_payment_closed')
        ORDER BY created_at DESC,event_id DESC LIMIT 50`,[actor.tenantId,orderId]);
      // Include all bounded tombstones, including messages on already-cached older pages.
      const removed=await pool.query(`SELECT message_id,removed_at FROM commerce.msnw_p2p_order_messages
        WHERE tenant_id=$1 AND order_id=$2 AND removed_at IS NOT NULL`,[actor.tenantId,orderId]);
      const removedIds=new Set(removed.rows.map(r=>r.message_id));
      return {items:items.map(({created_at_cursor,...item})=>removedIds.has(item.message_id)
          ? {...item,body:'',removed_at:removed.rows.find(r=>r.message_id===item.message_id)?.removed_at}:item),
        removed:removed.rows,nextCursor,events:events.rows,
        canSend:['awaiting_payment','payment_claimed','disputed'].includes(order.state),
        orderState:order.state};
    },
    async messageByRequest(actor:P2pActor,orderId:string,requestKey:string) {
      const request=key(requestKey);
      const result=await pool.query(`SELECT m.message_id,CASE WHEN m.removed_at IS NULL THEN m.body ELSE '' END AS body,m.removed_at,m.created_at,true AS is_own,
        CASE WHEN m.sender_id=o.seller_id THEN 'seller' ELSE 'buyer' END AS sender_role
        FROM commerce.msnw_p2p_order_messages m JOIN commerce.msnw_p2p_orders o
        ON o.tenant_id=m.tenant_id AND o.order_id=m.order_id
        WHERE m.tenant_id=$1 AND m.order_id=$2 AND m.sender_id=$3 AND m.request_key=$4
        AND (o.seller_id=$3 OR o.buyer_id=$3)`,[actor.tenantId,id(orderId),actor.userId,request]);
      return take<Record<string,unknown>>(result,'p2p.message_not_found');
    },
    async sendMessage(actor:P2pActor,orderId:string,input:{body:unknown;requestKey:unknown}):Promise<P2pMessage & {replay:boolean}> {
      const request=key(input.requestKey);
      if(typeof input.body!=='string'||!input.body.trim()||input.body.length>2000||
        Buffer.byteLength(input.body,'utf8')>8000||/[\u0000-\u0008\u000b\u000c\u000e-\u001f\u007f\u202a-\u202e\u2066-\u2069]/.test(input.body))
        throw new P2pError('p2p.invalid_message',422);
      const body=input.body.trim();
      return transact(async tx=>{
        // Same row lock as release/refund serializes terminal transitions and sends.
        const order=await orderForUpdate(tx,actor,orderId);
        if(!owns(order,actor))throw new P2pError('p2p.not_found',404);
        const prior=await tx.query(`SELECT message_id,body,removed_at,created_at FROM commerce.msnw_p2p_order_messages
          WHERE tenant_id=$1 AND order_id=$2 AND sender_id=$3 AND request_key=$4`,
          [actor.tenantId,orderId,actor.userId,request]);
        if(prior.rows[0]) {
          const previous=take<StoredP2pMessage>(prior);
          if(previous.body!==body)throw new P2pError('p2p.idempotency_conflict');
          return {...previous,body:previous.removed_at?'':previous.body,is_own:true,sender_role:actor.userId===order.seller_id?'seller':'buyer',replay:true};
        }
        if(!['awaiting_payment','payment_claimed','disputed'].includes(order.state))
          throw new P2pError('p2p.discussion_read_only');
        const count=await tx.query(`SELECT count(*)::int AS total,
          count(*) FILTER (WHERE sender_id=$3 AND created_at>statement_timestamp()-interval '1 minute')::int AS recent
          FROM commerce.msnw_p2p_order_messages WHERE tenant_id=$1 AND order_id=$2`,
          [actor.tenantId,orderId,actor.userId]);
        if(Number(count.rows[0]?.total)>=2000||Number(count.rows[0]?.recent)>=20)
          throw new P2pError('p2p.message_rate_limited',429);
        const saved=take<StoredP2pMessage>(await tx.query(`INSERT INTO commerce.msnw_p2p_order_messages
          (message_id,tenant_id,order_id,sender_id,request_key,body) VALUES($1,$2,$3,$4,$5,$6)
          RETURNING message_id,body,created_at`,[randomUUID(),actor.tenantId,orderId,actor.userId,request,body]));
        return {...saved,is_own:true,sender_role:actor.userId===order.seller_id?'seller':'buyer',replay:false};
      });
    },
    async reportMessage(actor:P2pActor,orderId:string,messageId:string,input:{category:unknown;details:unknown}):Promise<{report_id:string;state:string;created_at:string|Date;replay:boolean}> {
      id(messageId);
      if(typeof input.category!=='string'||!['scam','harassment','personal_information','other'].includes(input.category))
        throw new P2pError('p2p.invalid_report_category',422);
      const details=messageReportReason(input.details);
      return transact(async tx=>{
        // The hourly actor quota spans orders. A per-order lock alone cannot serialize it.
        await tx.query('SELECT pg_advisory_xact_lock(hashtext($1))',
          ['msnw-p2p-reports:'+actor.tenantId+':'+actor.userId]);
        const order=await orderForUpdate(tx,actor,orderId);
        if(!owns(order,actor))throw new P2pError('p2p.not_found',404);
        const message=take<Record<string,unknown>>(await tx.query(`SELECT sender_id FROM commerce.msnw_p2p_order_messages
          WHERE tenant_id=$1 AND order_id=$2 AND message_id=$3`,[actor.tenantId,orderId,messageId]));
        if(message.sender_id===actor.userId)throw new P2pError('p2p.report_counterparty_only',422);
        const prior=await tx.query(`SELECT report_id,state,created_at FROM commerce.msnw_p2p_message_reports
          WHERE tenant_id=$1 AND order_id=$2 AND message_id=$3 AND reporter_id=$4`,
          [actor.tenantId,orderId,messageId,actor.userId]);
        if(prior.rows[0])return {...take<{report_id:string;state:string;created_at:string|Date}>(prior),replay:true};
        const count=await tx.query(`SELECT count(*)::int AS total FROM commerce.msnw_p2p_message_reports
          WHERE tenant_id=$1 AND reporter_id=$2 AND created_at>statement_timestamp()-interval '1 hour'`,[actor.tenantId,actor.userId]);
        if(Number(count.rows[0]?.total)>=20)throw new P2pError('p2p.report_rate_limited',429);
        return {...take<{report_id:string;state:string;created_at:string|Date}>(await tx.query(`INSERT INTO commerce.msnw_p2p_message_reports
          (report_id,tenant_id,order_id,message_id,reporter_id,category,details) VALUES($1,$2,$3,$4,$5,$6,$7)
          RETURNING report_id,state,created_at`,[randomUUID(),actor.tenantId,orderId,messageId,actor.userId,input.category,details])),replay:false};
      });
    },
    async messageReports(actor:P2pActor) {
      const result=await pool.query(`SELECT r.*,m.body,m.removed_at,m.sender_id FROM commerce.msnw_p2p_message_reports r
        JOIN commerce.msnw_p2p_order_messages m ON m.tenant_id=r.tenant_id AND m.order_id=r.order_id AND m.message_id=r.message_id
        WHERE r.tenant_id=$1 AND r.state='open' ORDER BY r.created_at,r.report_id LIMIT 101`,[actor.tenantId]);
      return {items:result.rows.slice(0,100),hasMore:result.rows.length>100};
    },
    async reviewMessageReport(actor:P2pActor,reportId:string,input:{decision:unknown;reason:unknown;version:unknown}) {
      id(reportId);
      if(typeof input.decision!=='string'||!['dismiss','remove'].includes(input.decision)||!Number.isSafeInteger(input.version)||Number(input.version)<1)
        throw new P2pError('p2p.invalid_message_review',422);
      const explanation=messageReportReason(input.reason);
      return transact(async tx=>{
        // Match send/report lock order. No financial state or authority is invoked.
        const identity=take<Record<string,unknown>>(await tx.query(`SELECT order_id FROM commerce.msnw_p2p_message_reports
          WHERE tenant_id=$1 AND report_id=$2`,[actor.tenantId,reportId]));
        await orderForUpdate(tx,actor,String(identity.order_id));
        const report=take<Record<string,unknown>>(await tx.query(`SELECT * FROM commerce.msnw_p2p_message_reports
          WHERE tenant_id=$1 AND report_id=$2 FOR UPDATE`,[actor.tenantId,reportId]));
        const target=input.decision==='remove'?'removed':'dismissed';
        if(report.state!=='open') {
          if(report.state===target&&report.reviewed_by===actor.userId&&report.review_reason===explanation&&Number(report.version)===Number(input.version)+1)
            return {report_id:reportId,state:report.state,version:report.version,replay:true};
          throw new P2pError('p2p.stale_message_review');
        }
        if(Number(report.version)!==input.version)throw new P2pError('p2p.stale_message_review');
        if(target==='removed')await tx.query(`UPDATE commerce.msnw_p2p_order_messages SET removed_at=coalesce(removed_at,statement_timestamp())
          WHERE tenant_id=$1 AND order_id=$2 AND message_id=$3`,[actor.tenantId,report.order_id,report.message_id]);
        return {...take<Record<string,unknown>>(await tx.query(`UPDATE commerce.msnw_p2p_message_reports
          SET state=$3,version=version+1,reviewed_at=statement_timestamp(),reviewed_by=$4,review_reason=$5
          WHERE tenant_id=$1 AND report_id=$2 RETURNING report_id,state,version`,
          [actor.tenantId,reportId,target,actor.userId,explanation])),replay:false};
      });
    },
    async notifications(actor:P2pActor) {
      // The outbox is durable and tenant/user-scoped; processing push attempts
      // must never delete a customer's in-app order notification.
      const result=await pool.query(`SELECT event_id,order_id,action,state,created_at,
        processed_at,delivered
        FROM commerce.msnw_p2p_notifications
        WHERE tenant_id=$1 AND user_id=$2
        ORDER BY created_at DESC,event_id DESC LIMIT 50`,
        [actor.tenantId,actor.userId]);
      return result.rows;
    },
    /** Seek-paginated, tenant/participant-scoped order history. */
    async orders(actor: P2pActor) {
      const r = await pool.query(`SELECT order_id,offer_id,seller_id,buyer_id,
        amount_micro::text,fee_micro::text,fiat_kobo::text,rate_kobo_per_msnw::text,
        payment_deadline,state,version,receipt_reference,created_at
        FROM commerce.msnw_p2p_orders WHERE tenant_id=$1
          AND (seller_id=$2 OR buyer_id=$2) ORDER BY created_at DESC LIMIT 100`,
        [actor.tenantId,actor.userId]);
      return r.rows;
    },
    async receipt(actor:P2pActor,orderId:string) {
      // Only a completed or refunded immutable custody journal can become a
      // receipt. A buyer payment claim/screenshot never qualifies.
      const order=take<Record<string,unknown>>(await pool.query(`SELECT
          o.order_id,o.seller_id,o.buyer_id,o.state,
          o.amount_micro::text AS amount_micro,
          o.fee_micro::text AS fee_micro,
          o.fiat_kobo::text AS fiat_kobo,
          o.receipt_reference,j.operation_id,j.receipt_ref,
          j.stage,j.created_at
        FROM commerce.msnw_p2p_orders o
        JOIN commerce.msnw_p2p_custody_journal j
          ON j.tenant_id=o.tenant_id AND j.order_id=o.order_id
          AND j.stage=CASE WHEN o.state='completed' THEN 'release'
                           WHEN o.state IN ('cancelled','expired') THEN 'refund'
                           ELSE 'never_issued' END
          AND j.receipt_ref=o.receipt_reference
        WHERE o.tenant_id=$1 AND o.order_id=$2
          AND (o.seller_id=$3 OR o.buyer_id=$3)`,
        [actor.tenantId,id(orderId),actor.userId]));
      const entries=await pool.query(`SELECT p.owner_kind,p.user_id,
          p.bucket,p.delta_micro::text AS delta_micro
        FROM commerce.msnw_p2p_custody_postings p
        WHERE p.operation_id=$1
        ORDER BY p.posting_index`,[order.operation_id]);
      if(entries.rows.length<2||entries.rows.length>3 ||
          entries.rows.some(row=>typeof row.delta_micro!=="string" ||
            !/^-?[0-9]+$/.test(row.delta_micro)) ||
          entries.rows.reduce((sum,row)=>sum+BigInt(String(row.delta_micro)),0n)!==0n)
        throw new P2pError("p2p.receipt_postings_inconsistent",503);
      return {
        orderId:order.order_id,status:order.state,
        receiptReference:order.receipt_ref,stage:order.stage,
        amountMicro:order.amount_micro,feeMicro:order.fee_micro,
        fiatKobo:order.fiat_kobo,recordedAt:order.created_at,
        direction:order.seller_id===actor.userId?"sell":"buy",
        postings:entries.rows.map(row=>({
          ownerKind:row.owner_kind,userId:row.user_id,
          bucket:row.bucket,deltaMicro:row.delta_micro,
        })),
      };
    },
    /** Read-only preview; the final reservation rechecks every term under lock. */
    async quote(actor:P2pActor,input:{offerId:string;amountMicro:string;paymentMethodId?:string}) {
      const offerId=id(input.offerId);
      const offer=take<Record<string,unknown>>(await pool.query(`SELECT o.offer_id,o.seller_id,o.offer_side,
        o.payment_method_id,o.terms_revision,o.rate_kobo_per_msnw::text,o.min_micro::text,o.max_micro::text,
        o.remaining_micro::text,o.fee_bps,o.state,p.bank_name,p.verified_at,p.disabled_at,
        LEAST(o.remaining_micro::numeric,floor(coalesce(c.available_micro,0)::numeric*10000/(10000+o.fee_bps)))::text AS funded_micro
        FROM commerce.msnw_p2p_offers o
        JOIN commerce.msnw_p2p_payment_methods p ON p.method_id=o.payment_method_id AND p.tenant_id=o.tenant_id AND p.owner_id=o.seller_id
        LEFT JOIN commerce.msnw_custody_accounts c ON c.tenant_id=o.tenant_id AND c.user_id=CASE WHEN o.offer_side='buy' THEN $3 ELSE o.seller_id END
        WHERE o.tenant_id=$1 AND o.offer_id=$2`,[actor.tenantId,offerId,actor.userId]),'p2p.offer_not_found');
      const side=String(offer.offer_side??'sell');
      if(offer.seller_id===actor.userId)throw new P2pError('p2p.self_trade_forbidden',422);
      if(offer.state!=='active'||!offer.verified_at||offer.disabled_at)throw new P2pError('p2p.offer_unavailable',409);
      let bankName=String(offer.bank_name),receivingMethodId=String(offer.payment_method_id);
      if(side==='buy') {
        await requireBuyAdmission(actor,'taker');
        await requireBuyAdmission({tenantId:actor.tenantId,userId:String(offer.seller_id)},'maker');
        receivingMethodId=id(input.paymentMethodId);
        const method=take<Record<string,unknown>>(await pool.query(`SELECT bank_name FROM commerce.msnw_p2p_payment_methods
          WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3 AND verified_at IS NOT NULL AND disabled_at IS NULL`,
          [actor.tenantId,actor.userId,receivingMethodId]),'p2p.verified_method_required');
        bankName=String(method.bank_name);
      }else if(input.paymentMethodId!==undefined)throw new P2pError('p2p.receiving_method_not_applicable',422);
      const amounts=orderAmounts(input.amountMicro,String(offer.rate_kobo_per_msnw),Number(offer.fee_bps));
      const amount=BigInt(amounts.amountMicro);
      if(amount<BigInt(String(offer.min_micro))||amount>BigInt(String(offer.max_micro))||amount>BigInt(String(offer.funded_micro)))
        throw new P2pError('p2p.offer_limit',422);
      return {offerId,termsRevision:Number(offer.terms_revision??1),offerSide:side,takerAction:side==='buy'?'sell':'buy',
        ...(side==='buy'?{receivingMethodId}:{}),
        amountMicro:amounts.amountMicro,fiatKobo:amounts.fiatKobo,feeMicro:amounts.feeMicro,
        rateKoboPerMsnw:String(offer.rate_kobo_per_msnw),feeBps:Number(offer.fee_bps),
        minMicro:String(offer.min_micro),maxMicro:String(offer.max_micro),availableMicro:String(offer.funded_micro),
        bankName,paymentWindowSeconds:P2P_PAYMENT_WINDOW_SECONDS};
    },
    /** Exact buyer+tenant request lookup for interrupted POST recovery. */
    async orderByRequest(actor:P2pActor, requestKey:string) {
      const request=key(requestKey);
      const row=take<Record<string,unknown>>(await pool.query(`SELECT order_id,state
        FROM commerce.msnw_p2p_orders
        WHERE tenant_id=$1 AND ((request_actor_id=$2 AND request_key=$3)
          OR (request_actor_id IS NULL AND buyer_id=$2 AND idempotency_key=$3))`,
        [actor.tenantId,actor.userId,request]),"p2p.order_not_found");
      return {orderId:String(row.order_id),state:String(row.state)};
    },
    async createOrder(actor: P2pActor, input: { offerId: string; amountMicro: string;
      idempotencyKey: string; expectedRateKoboPerMsnw?: string; expectedFeeBps?: number;paymentMethodId?:string;expectedTermsRevision?:number }) {
      const orderKey = key(input.idempotencyKey), offerId = id(input.offerId);
      return transact(async tx => {
        // Serialization covers *both* duplicate requests and concurrent offers.
        await tx.query("SELECT pg_advisory_xact_lock(hashtext($1))",
          ["msnw-p2p:" + actor.tenantId + ":" + actor.userId + ":" + orderKey]);
        const existing = await tx.query(`SELECT order_id,offer_id,payment_method_id,seller_id,amount_micro::text
          FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND ((request_actor_id=$2 AND request_key=$3)
            OR (request_actor_id IS NULL AND buyer_id=$2 AND idempotency_key=$3))`,
          [actor.tenantId,actor.userId,orderKey]);
        if (existing.rowCount) {
          const prior=existing.rows[0]!;
          if (prior.offer_id!==offerId || prior.amount_micro!==input.amountMicro ||
              (input.paymentMethodId!==undefined && prior.payment_method_id!==input.paymentMethodId))
            throw new P2pError("p2p.idempotency_conflict",409);
          return {orderId: String(prior.order_id), replay: true};
        }
        const offer=take<Record<string,unknown>>(await tx.query(`SELECT o.offer_id,o.seller_id,o.offer_side,
          o.payment_method_id,o.terms_revision,o.rate_kobo_per_msnw::text,o.min_micro::text,o.max_micro::text,
          o.remaining_micro::text,o.fee_bps,o.state,p.verified_at,p.disabled_at
          FROM commerce.msnw_p2p_offers o JOIN commerce.msnw_p2p_payment_methods p
          ON o.payment_method_id=p.method_id AND p.tenant_id=o.tenant_id AND p.owner_id=o.seller_id
          WHERE o.tenant_id=$1 AND o.offer_id=$2 FOR UPDATE OF o FOR SHARE OF p`,
          [actor.tenantId,offerId]));
        if (offer.seller_id===actor.userId) throw new P2pError("p2p.self_trade_forbidden",422);
        if (offer.state!=="active" || offer.disabled_at || !offer.verified_at)
          throw new P2pError("p2p.offer_unavailable",409);
        if ((input.expectedRateKoboPerMsnw !== undefined &&
            input.expectedRateKoboPerMsnw !== String(offer.rate_kobo_per_msnw)) ||
            (input.expectedFeeBps !== undefined &&
            input.expectedFeeBps !== Number(offer.fee_bps))) {
          throw new P2pError("p2p.quote_changed",409);
        }
        const termsRevision=Number(offer.terms_revision??1);
        if((input.expectedTermsRevision!==undefined&&input.expectedTermsRevision!==termsRevision)||
          (input.expectedTermsRevision===undefined&&termsRevision>1))throw new P2pError('p2p.quote_changed',409);
        const side=String(offer.offer_side??'sell');
        const sellerId=side==='buy'?actor.userId:String(offer.seller_id);
        const buyerId=side==='buy'?String(offer.seller_id):actor.userId;
        const receivingMethodId=side==='buy'?id(input.paymentMethodId):String(offer.payment_method_id);
        if(side==='buy') {
          await requireBuyAdmission(actor,'taker');
          await requireBuyAdmission({tenantId:actor.tenantId,userId:buyerId},'maker');
        }else if(input.paymentMethodId!==undefined)throw new P2pError('p2p.receiving_method_not_applicable',422);
        const destination=await tx.query(`SELECT method_id FROM commerce.msnw_p2p_payment_methods
          WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3 AND verified_at IS NOT NULL AND disabled_at IS NULL FOR SHARE`,
          [actor.tenantId,sellerId,receivingMethodId]);
        if(!destination.rowCount)throw new P2pError('p2p.verified_method_required',403);
        const amounts=orderAmounts(input.amountMicro,String(offer.rate_kobo_per_msnw),Number(offer.fee_bps));
        const a=BigInt(amounts.amountMicro);
        if(a<BigInt(String(offer.min_micro)) || a>BigInt(String(offer.max_micro)) ||
           a>BigInt(String(offer.remaining_micro))) throw new P2pError("p2p.offer_limit",422);
        const orderId=randomUUID();
        // The wallet authority MUST reserve confirmed MSNW in this transaction.
        // If absent, throw; no order or fabricated escrow survives.
        await escrow.reserve(tx,{tenantId:actor.tenantId,sellerId,
          buyerId,orderId,amountMicro:amounts.amountMicro,feeMicro:amounts.feeMicro});
        await tx.query(`INSERT INTO commerce.msnw_p2p_orders
          (order_id,tenant_id,offer_id,seller_id,buyer_id,payment_method_id,
            amount_micro,fee_micro,fiat_kobo,rate_kobo_per_msnw,payment_deadline,idempotency_key,request_actor_id,request_key)
          VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,statement_timestamp()+($12::integer*interval '1 second'),$11,$13,$14)`,
          [orderId,actor.tenantId,offerId,sellerId,buyerId,
            receivingMethodId,amounts.amountMicro,amounts.feeMicro,
            amounts.fiatKobo,offer.rate_kobo_per_msnw,side==='buy'?randomUUID():orderKey,P2P_PAYMENT_WINDOW_SECONDS,actor.userId,orderKey]);
        await tx.query(`UPDATE commerce.msnw_p2p_offers SET
          remaining_micro=remaining_micro-$3,updated_at=statement_timestamp()
          WHERE tenant_id=$1 AND offer_id=$2`,[actor.tenantId,offerId,amounts.amountMicro]);
        await event(tx,actor,orderId,"reserve",null,"awaiting_payment");
        return {orderId,replay:false};
      });
    },
    async action(actor: P2pActor, orderId: string, action: P2pAction,
      options: { isOperator?: boolean; explanation?: string; releaseAuthorized?: boolean; disputeCategory?:string } = {}) {
      const typed=action==='dispute'&&options.disputeCategory!==undefined?disputeInput(options.disputeCategory,options.explanation):null;
      return transact(async tx => {
        const order=await orderForUpdate(tx,actor,orderId);
        const member=owns(order,actor);
        if (!member && !options.isOperator) throw new P2pError("p2p.forbidden",403);
        if(typed){
          if(!member)throw new P2pError('p2p.dispute_denied',403);
          const original=await originalDispute(tx,actor,order.order_id);
          if(original)return{orderId:order.order_id,state:order.state,submission:original,replay:true};
        }
        if (["completed","cancelled","expired"].includes(order.state))
          throw new P2pError("p2p.already_terminal",409);
        switch(action) {
          case "claim":
            if (actor.userId!==order.buyer_id || order.state!=="awaiting_payment")
              throw new P2pError("p2p.claim_denied",403);
            if (new Date(String(order.payment_deadline)).getTime()<=Date.now())
              throw new P2pError("p2p.deadline_passed",409);
            await tx.query(`UPDATE commerce.msnw_p2p_orders SET
              payment_claimed_at=statement_timestamp() WHERE tenant_id=$1 AND order_id=$2`,
              [actor.tenantId,order.order_id]);
            await setState(tx,actor,order,"payment_claimed","buyer_claimed_payment");
            break;
          case "dispute":
            if (!member || !["awaiting_payment","payment_claimed","release_pending"].includes(order.state))
              throw new P2pError("p2p.dispute_denied",403);
            await setState(tx,actor,order,"disputed","dispute_opened",typed?.details??reason(options.explanation));
            if(typed){const submission=await recordDispute(tx,actor,order.order_id,typed);return{orderId:order.order_id,state:'disputed',submission,replay:false};}
            break;
          case "cancel":
            // A seller must not unilaterally cancel an order while the buyer
            // may be transferring bank funds. Seller requests use dispute.
            if (actor.userId!==order.buyer_id || order.state!=="awaiting_payment")
              throw new P2pError("p2p.cancel_denied",403);
            await refund(tx,actor,order,"cancelled");
            break;
          case "confirm":
            if (actor.userId!==order.seller_id || order.state!=="payment_claimed" ||
                !options.releaseAuthorized)
              throw new P2pError("p2p.seller_confirmation_required",403);
            await complete(tx,actor,order);
            break;
          case "release":
            if (!options.isOperator || order.state!=="disputed")
              throw new P2pError("p2p.operator_resolution_required",403);
            reason(options.explanation);
            await complete(tx,actor,order);
            await event(tx,actor,order.order_id,"operator_reason","disputed","completed",options.explanation);
            break;
          case "refund":
            if (!options.isOperator || order.state!=="disputed")
              throw new P2pError("p2p.operator_resolution_required",403);
            reason(options.explanation);
            await refund(tx,actor,order,"cancelled");
            await event(tx,actor,order.order_id,"operator_reason","disputed","cancelled",options.explanation);
            break;
          default: throw new P2pError("p2p.invalid_action",422);
        }
        return {orderId:order.order_id,state:
          action==="confirm"||action==="release"?"completed":
          action==="cancel"||action==="refund"?"cancelled":
          action==="claim"?"payment_claimed":"disputed"};
      });
    },
    async reportLatePayment(actor:P2pActor,orderId:string, explanation:string){
      const note=reason(explanation);
      return transact(async tx=>{
        const order=await orderForUpdate(tx,actor,orderId);
        // A late bank claim does not undo a committed MSNW refund, and only
        // the original buyer can open a case for the original order.
        if(actor.userId!==order.buyer_id||
           !["expired","cancelled"].includes(order.state))
          throw new P2pError("p2p.late_payment_denied",403);
        const existing=await tx.query(`SELECT case_id,state
          FROM commerce.msnw_p2p_late_payment_cases
          WHERE tenant_id=$1 AND order_id=$2 FOR UPDATE`,
          [actor.tenantId,order.order_id]);
        if(existing.rows[0]){
          return {caseId:String(existing.rows[0].case_id),
            state:String(existing.rows[0].state),replay:true};
        }
        const caseId=randomUUID();
        await tx.query(`INSERT INTO commerce.msnw_p2p_late_payment_cases
          (case_id,tenant_id,order_id,buyer_id,buyer_reason)
          VALUES($1,$2,$3,$4,$5)`,
          [caseId,actor.tenantId,order.order_id,actor.userId,note]);
        await tx.query(`INSERT INTO commerce.msnw_p2p_late_payment_case_events
          (event_id,case_id,actor_id,action,explanation)
          VALUES($1,$2,$3,'reported',$4)`,
          [randomUUID(),caseId,actor.userId,note]);
        await event(tx,actor,order.order_id,"late_payment_reported",
          order.state,order.state);
        return {caseId,state:"open",replay:false};
      });
    },
    async resolveLatePayment(actor:P2pActor,orderId:string,
      decision:"escalate"|"close",explanation:string) {
      const note=reason(explanation);
      if(!["escalate","close"].includes(decision))
        throw new P2pError("p2p.late_case_action_invalid",422);
      return transact(async tx=>{
        const order=await orderForUpdate(tx,actor,orderId);
        if(!["expired","cancelled"].includes(order.state))
          throw new P2pError("p2p.late_case_state_invalid",409);
        const result=await tx.query(`SELECT case_id,state
          FROM commerce.msnw_p2p_late_payment_cases
          WHERE tenant_id=$1 AND order_id=$2 FOR UPDATE`,
          [actor.tenantId,order.order_id]);
        const prior=take<{case_id:string;state:string}>(result);
        if(prior.state==="closed")
          throw new P2pError("p2p.late_case_already_closed",409);
        const target=decision==="close"?"closed":"escalated";
        if(prior.state===target)
          return {caseId:prior.case_id,state:target,replay:true};
        await tx.query(`UPDATE commerce.msnw_p2p_late_payment_cases
          SET state=$3,operator_note=$4,updated_at=statement_timestamp(),
              closed_at=CASE WHEN $3='closed' THEN statement_timestamp() ELSE NULL END
          WHERE tenant_id=$1 AND order_id=$2`,
          [actor.tenantId,order.order_id,target,note]);
        await tx.query(`INSERT INTO commerce.msnw_p2p_late_payment_case_events
          (event_id,case_id,actor_id,action,explanation)
          VALUES($1,$2,$3,$4,$5)`,
          [randomUUID(),prior.case_id,actor.userId,target,note]);
        await event(tx,actor,order.order_id,"late_payment_"+target,
          order.state,order.state);
        // Never calls escrow.release/refund: the terminal receipt is immutable.
        return {caseId:prior.case_id,state:target,replay:false};
      });
    },
    async reconciliationHealth(actor:P2pActor) {
      // Scope comes solely from the independently authenticated operator,
      // never the request query or a client-supplied staff/tenant claim.
      const result=await pool.query(`SELECT inconsistent_orders::text,
          under_reserved_sellers::text,undelivered_dead_letters::text
        FROM commerce.msnw_p2p_reconciliation_counts($1::text)`,
        [actor.tenantId]);
      const raw=result.rows[0];
      if(!raw)throw new P2pError("p2p.audit_unavailable",503);
      function count(value:unknown):number {
        if(typeof value!=="string" || !/^[0-9]+$/.test(value) ||
            !Number.isSafeInteger(Number(value)))
          throw new P2pError("p2p.audit_count_invalid",503);
        return Number(value);
      }
      return {
        inconsistentOrders:count(raw.inconsistent_orders),
        underReservedSellers:count(raw.under_reserved_sellers),
        undeliveredDeadLetters:count(raw.undelivered_dead_letters),
        // This never implies a successful fiat confirmation or chain mint.
        readOnly:true,
      };
    },
    async caseFile(actor: P2pActor, orderId: string) {
      // Gateway must authorize this caller as a finance/dispute operator.
      const order = take<P2pOrder>(await pool.query(`SELECT order_id,tenant_id,offer_id,seller_id,
        buyer_id,amount_micro::text,fee_micro::text,fiat_kobo::text,
        payment_deadline,state,version,receipt_reference,created_at,updated_at
        FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND order_id=$2`,
        [actor.tenantId,id(orderId)]));
      const events = await pool.query(`SELECT action,actor_id,from_state,to_state,reason,created_at
        FROM commerce.msnw_p2p_events WHERE tenant_id=$1 AND order_id=$2
        ORDER BY created_at`,[actor.tenantId,orderId]);
      const evidence = await pool.query(`SELECT evidence_id,submitted_by,sha256,object_ref,created_at
        FROM commerce.msnw_p2p_evidence WHERE tenant_id=$1 AND order_id=$2
        ORDER BY created_at`,[actor.tenantId,orderId]);
      const caseRows=await pool.query(`SELECT case_id,buyer_id,state,buyer_reason,
        operator_note,created_at,updated_at,closed_at
        FROM commerce.msnw_p2p_late_payment_cases
        WHERE tenant_id=$1 AND order_id=$2`,[actor.tenantId,orderId]);
      const caseEntry=caseRows.rows[0];
      const caseEvents=caseEntry ? await pool.query(`SELECT actor_id,action,explanation,created_at
        FROM commerce.msnw_p2p_late_payment_case_events
        WHERE case_id=$1 ORDER BY created_at`,[caseEntry.case_id]) : null;
      // Supporting evidence references are NEVER treated as confirmed fiat.
      const opening=await pool.query('SELECT submission_id,category,details,opened_by,created_at FROM commerce.msnw_p2p_dispute_submissions WHERE tenant_id=$1 AND order_id=$2',[actor.tenantId,orderId]);
      return {order,events:events.rows,evidence:evidence.rows,disputeSubmission:opening.rows[0]??null,
        latePayment:caseEntry?{...caseEntry,events:caseEvents?.rows??[]}:null,
        paymentVerified:false};
    },
    async disputes(actor: P2pActor) {
      // Expired escrow is never reopened. Review late-payment appeals as
      // separate nonfinancial support cases beside active escrow disputes.
      return (await pool.query(`SELECT o.order_id,o.tenant_id,o.seller_id,o.buyer_id,
        o.amount_micro::text,o.fee_micro::text,o.fiat_kobo::text,
        o.state,o.version,o.created_at,c.state AS late_case_state,
        c.case_id AS late_case_id,c.buyer_reason AS late_case_reason
        FROM commerce.msnw_p2p_orders o
        LEFT JOIN commerce.msnw_p2p_late_payment_cases c
          ON c.tenant_id=o.tenant_id AND c.order_id=o.order_id
        WHERE o.tenant_id=$1 AND
          (o.state='disputed' OR c.state IN ('open','escalated'))
        ORDER BY greatest(o.updated_at,coalesce(c.updated_at,o.updated_at)) DESC
        LIMIT 100`,[actor.tenantId])).rows;
    },
    async expireDue(actor: P2pActor, limit=25) {
      // Trusted Worker actor only. Each row lock races safely against buyer claim.
      if (!Number.isInteger(limit)||limit<1||limit>100) throw new P2pError("p2p.invalid_limit",422);
      const due=await pool.query(`SELECT order_id FROM commerce.msnw_p2p_orders
        WHERE tenant_id=$1 AND state='awaiting_payment' AND payment_deadline<=statement_timestamp()
        ORDER BY payment_deadline LIMIT $2`,[actor.tenantId,limit]);
      let expired=0;
      for(const item of due.rows) {
        const changed=await transact(async tx => {
          const order=await orderForUpdate(tx,actor,String(item.order_id));
          if(order.state!=="awaiting_payment" ||
             new Date(String(order.payment_deadline)).getTime()>Date.now()) return false;
          await refund(tx,actor,order,"expired");
          return true;
        });
        if(changed) expired++;
      }
      return {expired};
    },
    async assertEvidenceAllowed(actor:P2pActor, orderId:string) {
      const result=await pool.query(`SELECT 1 FROM commerce.msnw_p2p_orders o
        WHERE o.tenant_id=$1 AND o.order_id=$2
          AND (o.seller_id=$3 OR o.buyer_id=$3)
          AND (o.state IN ('payment_claimed','disputed')
            OR (o.buyer_id=$3 AND o.state IN ('expired','cancelled')
              AND EXISTS(SELECT 1 FROM commerce.msnw_p2p_late_payment_cases c
                WHERE c.tenant_id=o.tenant_id AND c.order_id=o.order_id
                  AND c.state IN ('open','escalated'))))`,
        [actor.tenantId,id(orderId),actor.userId]);
      if(!result.rowCount)throw new P2pError("p2p.evidence_forbidden",403);
    },
    async listEvidence(actor:P2pActor,orderId:string) {
      // Keep historical evidence readable to either participant even after a
      // completed/refunded dispute. The upload permission is stricter.
      const evidence=await pool.query(`SELECT e.evidence_id,e.submitted_by,e.sha256,e.created_at,e.object_ref
        FROM commerce.msnw_p2p_evidence e
        JOIN commerce.msnw_p2p_orders o
          ON o.tenant_id=e.tenant_id AND o.order_id=e.order_id
        WHERE o.tenant_id=$1 AND o.order_id=$2
          AND (o.seller_id=$3 OR o.buyer_id=$3)
        ORDER BY e.created_at ASC LIMIT 100`,
        [actor.tenantId,id(orderId),actor.userId]);
      return evidence.rows.map(row=>{
        const ref=String(row.object_ref??"");
        const metadata=ref.match(/_([1-9][0-9]{0,6})_(pdf|png|jpg|webp)$/);
        // Never send an object-store reference or hash to the consumer UI.
        const {object_ref:_privateRef,sha256:_digest,...safe}=row;
        return {
          ...safe,
          fileType:metadata?.[2]??null,
          sizeBytes:metadata?Number(metadata[1]):null,
        };
      });
    },
    async evidenceFor(actor:P2pActor,orderId:string,evidenceId:string,operator=false) {
      const value=await pool.query(`SELECT e.object_ref,e.sha256,e.submitted_by,
          o.order_id,o.state
        FROM commerce.msnw_p2p_evidence e JOIN commerce.msnw_p2p_orders o
         ON o.tenant_id=e.tenant_id AND o.order_id=e.order_id
        WHERE o.tenant_id=$1 AND o.order_id=$2 AND e.evidence_id=$3
        AND ($5::boolean OR o.seller_id=$4 OR o.buyer_id=$4)`,
        [actor.tenantId,id(orderId),id(evidenceId),actor.userId,operator]);
      const row=take<Record<string,unknown>>(value);
      if(typeof row.object_ref!=="string"||!row.object_ref.startsWith("p2p/"))
        throw new P2pError("p2p.evidence_unavailable",503);
      return {objectRef:row.object_ref,sha256:row.sha256};
    },
    async recordEvidence(actor:P2pActor, orderId:string, evidence:{
      objectRef:string; sha256:string; verifiedOwnerId:string;
    }) {
      if(evidence.verifiedOwnerId!==actor.userId ||
         !/^[a-f0-9]{64}$/.test(evidence.sha256) ||
         !/^[A-Za-z0-9/_-]{10,300}$/.test(evidence.objectRef))
        throw new P2pError("p2p.evidence_not_verified",403);
      return transact(async tx => {
        const order=await orderForUpdate(tx,actor,orderId);
        let lateEvidenceAllowed=false;
        if(actor.userId===order.buyer_id &&
           ["expired","cancelled"].includes(order.state)){
          const appeal=await tx.query(`SELECT state
            FROM commerce.msnw_p2p_late_payment_cases
            WHERE tenant_id=$1 AND order_id=$2 FOR SHARE`,
            [actor.tenantId,order.order_id]);
          lateEvidenceAllowed=["open","escalated"].includes(String(appeal.rows[0]?.state));
        }
        if(!owns(order,actor)||
           (!["payment_claimed","disputed"].includes(order.state) &&
             !lateEvidenceAllowed))
          throw new P2pError("p2p.evidence_forbidden",403);
        const evidenceId=randomUUID();
        await tx.query(`INSERT INTO commerce.msnw_p2p_evidence
          (evidence_id,tenant_id,order_id,submitted_by,object_ref,sha256)
          VALUES($1,$2,$3,$4,$5,$6)`,[evidenceId,actor.tenantId,orderId,actor.userId,
          evidence.objectRef,evidence.sha256]);
        await event(tx,actor,orderId,"evidence_recorded",order.state,order.state);
        return {evidenceId,state:order.state};
      });
    },
  });
}
export type P2pService = ReturnType<typeof createP2pService>;
