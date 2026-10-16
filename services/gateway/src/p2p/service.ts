import { randomUUID } from "node:crypto";

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
export type P2pAction = "claim" | "dispute" | "cancel" | "confirm" | "release" | "refund";
const uuid = /^[a-f0-9]{8}-[a-f0-9]{4}-[1-8][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}$/i;
const safeKey = /^[A-Za-z0-9_-]{8,128}$/;
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
function take<T>(result: { rows: Record<string, unknown>[] }, code = "p2p.not_found"): T {
  if (!result.rows[0]) throw new P2pError(code, 404);
  return result.rows[0] as T;
}

export function createP2pService(pool: P2pPool, escrow: MsnwEscrowAuthority) {
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
  return Object.freeze({
    async offers(actor: P2pActor) {
      const rows = await pool.query(`SELECT o.offer_id,o.seller_id,o.rate_kobo_per_msnw::text,
        o.min_micro::text,o.max_micro::text,o.remaining_micro::text,o.fee_bps,
        p.bank_name,p.method_type,o.created_at
        FROM commerce.msnw_p2p_offers o JOIN commerce.msnw_p2p_payment_methods p
          ON p.method_id=o.payment_method_id
        WHERE o.tenant_id=$1 AND o.state='active' AND o.remaining_micro>0
          AND p.disabled_at IS NULL AND p.verified_at IS NOT NULL
        ORDER BY o.created_at DESC LIMIT 100`, [actor.tenantId]);
      // Account number and holder name are deliberately NOT exposed in discovery.
      return rows.rows;
    },
    async myOffers(actor: P2pActor) {
      return (await pool.query(`SELECT offer_id,rate_kobo_per_msnw::text,
        min_micro::text,max_micro::text,remaining_micro::text,state,created_at,
        payment_method_id,fee_bps
        FROM commerce.msnw_p2p_offers WHERE tenant_id=$1 AND seller_id=$2
        ORDER BY created_at DESC LIMIT 100`,[actor.tenantId,actor.userId])).rows;
    },
    async methods(actor: P2pActor) {
      const rows = await pool.query(`SELECT method_id,method_type,bank_name,account_name,
        account_number,verified_at FROM commerce.msnw_p2p_payment_methods
        WHERE tenant_id=$1 AND owner_id=$2 AND disabled_at IS NULL ORDER BY created_at DESC`,
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
    async createOffer(actor: P2pActor, input: {
      paymentMethodId: string; rateKoboPerMsnw: string;
      minMicro: string; maxMicro: string; inventoryMicro: string;
    }) {
      const rate = positive(input.rateKoboPerMsnw, 10n ** 12n, "p2p.invalid_rate");
      const min = positive(input.minMicro, 10n ** 18n, "p2p.invalid_limit");
      const max = positive(input.maxMicro, 10n ** 18n, "p2p.invalid_limit");
      const inventory = positive(input.inventoryMicro, 10n ** 18n, "p2p.invalid_inventory");
      if (min > max || min > inventory || max > inventory) throw new P2pError("p2p.invalid_limit", 422);
      const offerId = randomUUID();
      return transact(async tx => {
        const method = await tx.query(`SELECT method_id FROM commerce.msnw_p2p_payment_methods
          WHERE tenant_id=$1 AND owner_id=$2 AND method_id=$3
          AND verified_at IS NOT NULL AND disabled_at IS NULL FOR SHARE`,
          [actor.tenantId,actor.userId,id(input.paymentMethodId)]);
        if (!method.rowCount) throw new P2pError("p2p.verified_method_required", 403);
        await tx.query(`INSERT INTO commerce.msnw_p2p_offers
          (offer_id,tenant_id,seller_id,payment_method_id,rate_kobo_per_msnw,
            min_micro,max_micro,remaining_micro) VALUES ($1,$2,$3,$4,$5,$6,$7,$8)`,
          [offerId,actor.tenantId,actor.userId,input.paymentMethodId,
            rate.toString(),min.toString(),max.toString(),inventory.toString()]);
        return { offerId };
      });
    },
    async order(actor: P2pActor, orderId: string) {
      const order = take<P2pOrder>(await pool.query(`SELECT order_id,tenant_id,offer_id,seller_id,buyer_id,
        amount_micro::text,fee_micro::text,fiat_kobo::text,rate_kobo_per_msnw::text,
        payment_deadline,state,version,receipt_reference
        FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND order_id=$2
          AND (seller_id=$3 OR buyer_id=$3)`, [actor.tenantId,id(orderId),actor.userId]));
      const method = take<Record<string,unknown>>(await pool.query(`SELECT bank_name,account_name,
        account_number,method_type FROM commerce.msnw_p2p_payment_methods
        WHERE tenant_id=$1 AND method_id=(SELECT payment_method_id FROM commerce.msnw_p2p_orders
        WHERE tenant_id=$1 AND order_id=$2)`, [actor.tenantId,orderId]));
      return { ...order, payment: method };
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
    async orders(actor: P2pActor) {
      const r = await pool.query(`SELECT order_id,offer_id,seller_id,buyer_id,
        amount_micro::text,fee_micro::text,fiat_kobo::text,rate_kobo_per_msnw::text,
        payment_deadline,state,version,receipt_reference,created_at
        FROM commerce.msnw_p2p_orders WHERE tenant_id=$1
          AND (seller_id=$2 OR buyer_id=$2) ORDER BY created_at DESC LIMIT 100`,
        [actor.tenantId,actor.userId]);
      return r.rows;
    },
    async createOrder(actor: P2pActor, input: { offerId: string; amountMicro: string; idempotencyKey: string }) {
      const orderKey = key(input.idempotencyKey), offerId = id(input.offerId);
      return transact(async tx => {
        // Serialization covers *both* duplicate requests and concurrent offers.
        await tx.query("SELECT pg_advisory_xact_lock(hashtext($1))",
          ["msnw-p2p:" + actor.tenantId + ":" + actor.userId + ":" + orderKey]);
        const existing = await tx.query(`SELECT order_id,offer_id,amount_micro::text
          FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND buyer_id=$2 AND idempotency_key=$3`,
          [actor.tenantId,actor.userId,orderKey]);
        if (existing.rowCount) {
          const prior=existing.rows[0]!;
          if (prior.offer_id!==offerId || prior.amount_micro!==input.amountMicro)
            throw new P2pError("p2p.idempotency_conflict",409);
          return {orderId: String(prior.order_id), replay: true};
        }
        const offer=take<Record<string,unknown>>(await tx.query(`SELECT o.offer_id,o.seller_id,
          o.payment_method_id,o.rate_kobo_per_msnw::text,o.min_micro::text,o.max_micro::text,
          o.remaining_micro::text,o.fee_bps,o.state,p.verified_at,p.disabled_at
          FROM commerce.msnw_p2p_offers o JOIN commerce.msnw_p2p_payment_methods p
          ON o.payment_method_id=p.method_id
          WHERE o.tenant_id=$1 AND o.offer_id=$2 FOR UPDATE OF o`,
          [actor.tenantId,offerId]));
        if (offer.seller_id===actor.userId) throw new P2pError("p2p.self_trade_forbidden",422);
        if (offer.state!=="active" || offer.disabled_at || !offer.verified_at)
          throw new P2pError("p2p.offer_unavailable",409);
        const amounts=orderAmounts(input.amountMicro,String(offer.rate_kobo_per_msnw),Number(offer.fee_bps));
        const a=BigInt(amounts.amountMicro);
        if(a<BigInt(String(offer.min_micro)) || a>BigInt(String(offer.max_micro)) ||
           a>BigInt(String(offer.remaining_micro))) throw new P2pError("p2p.offer_limit",422);
        const orderId=randomUUID();
        // The wallet authority MUST reserve confirmed MSNW in this transaction.
        // If absent, throw; no order or fabricated escrow survives.
        await escrow.reserve(tx,{tenantId:actor.tenantId,sellerId:String(offer.seller_id),
          buyerId:actor.userId,orderId,amountMicro:amounts.amountMicro,feeMicro:amounts.feeMicro});
        await tx.query(`INSERT INTO commerce.msnw_p2p_orders
          (order_id,tenant_id,offer_id,seller_id,buyer_id,payment_method_id,
            amount_micro,fee_micro,fiat_kobo,rate_kobo_per_msnw,payment_deadline,idempotency_key)
          VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,statement_timestamp()+interval '30 minutes',$11)`,
          [orderId,actor.tenantId,offerId,offer.seller_id,actor.userId,
            offer.payment_method_id,amounts.amountMicro,amounts.feeMicro,
            amounts.fiatKobo,offer.rate_kobo_per_msnw,orderKey]);
        await tx.query(`UPDATE commerce.msnw_p2p_offers SET
          remaining_micro=remaining_micro-$3,updated_at=statement_timestamp()
          WHERE tenant_id=$1 AND offer_id=$2`,[actor.tenantId,offerId,amounts.amountMicro]);
        await event(tx,actor,orderId,"reserve",null,"awaiting_payment");
        return {orderId,replay:false};
      });
    },
    async action(actor: P2pActor, orderId: string, action: P2pAction,
      options: { isOperator?: boolean; explanation?: string; releaseAuthorized?: boolean } = {}) {
      return transact(async tx => {
        const order=await orderForUpdate(tx,actor,orderId);
        const member=owns(order,actor);
        if (!member && !options.isOperator) throw new P2pError("p2p.forbidden",403);
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
            await setState(tx,actor,order,"disputed","dispute_opened",reason(options.explanation));
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
      // Supporting evidence references are NEVER treated as confirmed fiat.
      return {order,events:events.rows,evidence:evidence.rows,paymentVerified:false};
    },
    async disputes(actor: P2pActor) {
      return (await pool.query(`SELECT order_id,tenant_id,seller_id,buyer_id,
        amount_micro::text,fee_micro::text,fiat_kobo::text,state,version,created_at
        FROM commerce.msnw_p2p_orders WHERE tenant_id=$1 AND state='disputed'
        ORDER BY updated_at LIMIT 100`,[actor.tenantId])).rows;
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
      const result=await pool.query(`SELECT 1 FROM commerce.msnw_p2p_orders
        WHERE tenant_id=$1 AND order_id=$2 AND (seller_id=$3 OR buyer_id=$3)
          AND state IN ('payment_claimed','disputed')`,
        [actor.tenantId,id(orderId),actor.userId]);
      if(!result.rowCount)throw new P2pError("p2p.evidence_forbidden",403);
    },
    async listEvidence(actor:P2pActor,orderId:string) {
      // Keep historical evidence readable to either participant even after a
      // completed/refunded dispute. The upload permission is stricter.
      const evidence=await pool.query(`SELECT e.evidence_id,e.submitted_by,e.sha256,e.created_at
        FROM commerce.msnw_p2p_evidence e
        JOIN commerce.msnw_p2p_orders o
          ON o.tenant_id=e.tenant_id AND o.order_id=e.order_id
        WHERE o.tenant_id=$1 AND o.order_id=$2
          AND (o.seller_id=$3 OR o.buyer_id=$3)
        ORDER BY e.created_at ASC LIMIT 100`,
        [actor.tenantId,id(orderId),actor.userId]);
      return evidence.rows;
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
        if(!owns(order,actor)||!["payment_claimed","disputed"].includes(order.state))
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
