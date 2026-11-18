import { randomUUID } from "node:crypto";
import type { Pool } from "@masanawa/postgres";
import { MSNW_PRICING_POLICY, assertMsnwNgnPolicyRate, parseNgnKobo, type BillingFundingAuthority,
  type BillingQuote, type BillingQuoteRepository } from "@masanawa/commerce";
import type { QuoteId } from "@masanawa/contracts";

export class MsnwBillingError extends Error {
  constructor(readonly code: string, readonly statusCode = 409, readonly details?:Record<string,unknown>) { super(code); }
}
type Owner = Readonly<{ tenantId: string; userId: string }>;
const atomic = /^[1-9][0-9]{0,23}$/;
export function msnwForKobo(totalKobo: number, rate: bigint): string {
  if (!Number.isSafeInteger(totalKobo) || totalKobo <= 0 || rate < 1n)
    throw new MsnwBillingError("msnw.billing.price_invalid",503);
  const micro = (BigInt(totalKobo) * 1000000n + rate - 1n) / rate;
  if (micro < 1n || !atomic.test(micro.toString()))
    throw new MsnwBillingError("msnw.billing.amount_out_of_range",409);
  return micro.toString();
}
export function createMsnwBillingFunding(input: Readonly<{
  pool: Pool;
  quotes: BillingQuoteRepository;
  rateKoboPerMsnw?: string;
}>) {
  let configuredRate: string;
  try { configuredRate = assertMsnwNgnPolicyRate(input.rateKoboPerMsnw); }
  catch { throw new MsnwBillingError("msnw.billing.rate_not_configured",503); }
  const rate = BigInt(configuredRate);
  async function ownedQuote(owner: Owner, quoteId: string): Promise<BillingQuote> {
    const value = await input.quotes.readQuote({
      tenantId:owner.tenantId as BillingQuote["tenantId"],
      userId:owner.userId as BillingQuote["userId"],
      quoteId:quoteId as QuoteId,
    });
    if (!value) throw new MsnwBillingError("msnw.billing.quote_not_found",404);
    return value;
  }
  function assertUsable(quote: BillingQuote, revision: number) {
    if (quote.revision !== revision || quote.currency !== "NGN" ||
        !["quoted","confirmed"].includes(quote.state) ||
        quote.checkoutTxRef || quote.paymentVerifiedAt ||
        Date.parse(quote.expiresAt) <= Date.now())
      throw new MsnwBillingError("msnw.billing.quote_expired_or_changed");
  }
  async function recentPurchase(owner:Owner,terms:{billerCode:string;itemCode:string;customerId:string;serviceAmountKobo:number;categoryCode?:string|null},db:Pick<Pool,'query'>=input.pool){
    const phoneCategory=['AIRTIME','MOBILEDATA'].includes((terms.categoryCode??'').replaceAll('_','').toUpperCase());
    const phone=terms.customerId.replace(/^\+?234/,'0');
    const customers=phoneCategory&&/^0[789][0-9]{9}$/.test(phone)?[phone,'+234'+phone.slice(1),'234'+phone.slice(1)]:[terms.customerId];
    const result=await db.query(`SELECT fulfillment_reference,state,created_at FROM commerce.msnw_billing_reservations
     WHERE tenant_id=$1 AND user_id=$2 AND biller_code=$3 AND item_code=$4 AND customer_id=ANY($5::text[]) AND provider_ngn_kobo=$6
     AND (state='reserved' OR (state='fulfilled' AND settled_at>=statement_timestamp()-interval '5 minutes'))
     ORDER BY (state='reserved') DESC,COALESCE(settled_at,created_at) DESC,fulfillment_reference DESC LIMIT 1`,
     [owner.tenantId,owner.userId,terms.billerCode,terms.itemCode,customers,terms.serviceAmountKobo]);
    const row=result.rows[0];if(!row)return null;
    if(typeof row.fulfillment_reference!=='string'||!['reserved','fulfilled'].includes(row.state))throw new MsnwBillingError('msnw.billing.history_invalid',503);
    return {reference:row.fulfillment_reference as string,state:row.state as string,createdAt:row.created_at instanceof Date?row.created_at.toISOString():String(row.created_at)};
  }
  async function approveRepeat(owner:Owner,quoteId:string,revision:number,repeatOf:string){
    const q=await ownedQuote(owner,quoteId);assertUsable(q,revision);
    if(!/^msnw-bill-[A-Za-z0-9_-]{5,128}$/.test(repeatOf))throw new MsnwBillingError('msnw.billing.repeat_invalid',400);
    const prior=await recentPurchase(owner,q);
    if(!prior||prior.state!=='fulfilled'||prior.reference!==repeatOf)throw new MsnwBillingError('msnw.billing.repeat_changed');
    await input.pool.query(`INSERT INTO commerce.msnw_bill_repeat_consents(tenant_id,user_id,quote_id,quote_revision,repeat_of)
     VALUES($1,$2,$3,$4,$5) ON CONFLICT DO NOTHING`,[owner.tenantId,owner.userId,quoteId,revision,repeatOf]);
    const consent=await input.pool.query('SELECT repeat_of,quote_revision FROM commerce.msnw_bill_repeat_consents WHERE tenant_id=$1 AND user_id=$2 AND quote_id=$3',[owner.tenantId,owner.userId,quoteId]);
    if(consent.rows[0]?.repeat_of!==repeatOf||Number(consent.rows[0]?.quote_revision)!==revision)throw new MsnwBillingError('msnw.billing.repeat_changed');
  }
  async function preview(owner: Owner, quoteId: string, revision: number) {
    if (!quoteId || quoteId.length > 180 || !Number.isSafeInteger(revision))
      throw new MsnwBillingError("msnw.billing.quote_invalid",400);
    const quote = await ownedQuote(owner,quoteId);
    assertUsable(quote,revision);
    const amountMicro = msnwForKobo(quote.totalAmountKobo,rate);
    const result = await input.pool.query(
      "SELECT available_micro::text FROM commerce.msnw_custody_accounts " +
      "WHERE tenant_id=$1 AND user_id=$2",
      [owner.tenantId,owner.userId]);
    const available = result.rows[0]?.available_micro ?? "0";
    if (typeof available !== "string" || !/^(0|[1-9][0-9]*)$/.test(available))
      throw new MsnwBillingError("msnw.billing.balance_invalid",503);
    return Object.freeze({
      quoteId,quoteRevision:revision,asset:"MSNW" as const,
      serviceAmountKobo:String(quote.serviceAmountKobo),
      totalAmountKobo:String(quote.totalAmountKobo),
      amountMicro,rateKoboPerMsnw:rate.toString(),pricingPolicy:MSNW_PRICING_POLICY,
      availableMicro:available,
      sufficient:BigInt(available)>=BigInt(amountMicro),
      customerId:quote.customerId,itemName:quote.itemName,
      recentPurchase:await recentPurchase(owner,quote),
      expiresAt:quote.expiresAt,
    });
  }

  async function reservation(owner: Owner, quoteId: string) {
    const result = await input.pool.query(
      "SELECT fulfillment_reference,rate_kobo_per_msnw::text," +
      "reserved_micro::text,state FROM commerce.msnw_billing_reservations " +
      "WHERE tenant_id=$1 AND user_id=$2 AND quote_id=$3",
      [owner.tenantId,owner.userId,quoteId],
    );
    const row=result.rows[0];
    if(!row) return null;
    if(typeof row.fulfillment_reference!=="string" ||
       typeof row.rate_kobo_per_msnw!=="string" ||
       typeof row.reserved_micro!=="string" ||
       !atomic.test(row.reserved_micro) ||
       !["reserved","fulfilled","refunded"].includes(row.state))
      throw new MsnwBillingError("msnw.billing.reservation_corrupt",503);
    return Object.freeze({
      reference:row.fulfillment_reference,
      rateKoboPerMsnw:row.rate_kobo_per_msnw,
      amountMicro:row.reserved_micro,
      state:row.state as "reserved" | "fulfilled" | "refunded",
    });
  }

  async function closeUnreserved(owner:Owner,quoteId:string,revision:number){
    if(!quoteId||quoteId.length>180||!Number.isSafeInteger(revision))throw new MsnwBillingError('msnw.billing.quote_invalid',400);
    const db=await input.pool.connect();let begun=false;
    const reference='msnw-bill-'+quoteId;
    try{
      await db.query('BEGIN');begun=true;
      // The canonical reservation path takes this same quote lock before debit.
      // Expired is a durable fence, not a transient absence/404 assumption.
      const result=await db.query('SELECT * FROM commerce.billing_quotes WHERE tenant_id=$1 AND user_id=$2 AND quote_id=$3 FOR UPDATE',[owner.tenantId,owner.userId,quoteId]);
      const q=result.rows[0];if(!q)throw new MsnwBillingError('msnw.billing.quote_not_found',404);
      if(Number(q.revision)!==revision)throw new MsnwBillingError('msnw.billing.quote_changed');
      const existing=await db.query('SELECT state FROM commerce.msnw_billing_reservations WHERE tenant_id=$1 AND user_id=$2 AND quote_id=$3',[owner.tenantId,owner.userId,quoteId]);
      if(existing.rows[0]){await db.query('COMMIT');begun=false;return {reference,closed:false,state:String(existing.rows[0].state)};}
      if(q.checkout_tx_ref||q.payment_verified_at||q.fulfillment_reference||!['quoted','confirmed','expired'].includes(q.state))throw new MsnwBillingError('msnw.billing.quote_not_closable');
      await db.query("UPDATE commerce.billing_quotes SET state='expired',updated_at=statement_timestamp() WHERE tenant_id=$1 AND user_id=$2 AND quote_id=$3",[owner.tenantId,owner.userId,quoteId]);
      await db.query('COMMIT');begun=false;return {reference,closed:true,state:'expired'};
    }catch(error){if(begun)await db.query('ROLLBACK').catch(()=>undefined);throw error;}finally{db.release();}
  }

  const funding: BillingFundingAuthority = {
    async reserveConfirmedBill(request) {
      if (!request.fulfillmentReference.startsWith("msnw-bill-") ||
          request.currency !== "NGN" || !request.quoteId)
        throw new MsnwBillingError("msnw.billing.rail_invalid",400);
      const ngn = parseNgnKobo(request.amount);
      const db = await input.pool.connect();
      let begun=false;
      try {
        await db.query("BEGIN"); begun=true;
        const previous = await db.query(
          "SELECT * FROM commerce.msnw_billing_reservations " +
          "WHERE fulfillment_reference=$1 FOR UPDATE",
          [request.fulfillmentReference]);
        if (previous.rowCount) {
          const row=previous.rows[0]!;
          if (row.tenant_id!==request.tenantId || row.user_id!==request.userId ||
              row.quote_id!==request.quoteId ||
              Number(row.quote_revision)!==request.quoteRevision ||
              row.biller_code!==request.billerCode || row.item_code!==request.itemCode ||
              row.customer_id!==request.customerId ||
              String(row.provider_ngn_kobo)!==String(ngn))
            throw new MsnwBillingError("msnw.billing.replay_conflict");
          await db.query("COMMIT"); begun=false;
          return;
        }
        const quotes = await db.query(
          "SELECT revision,state,expires_at,checkout_tx_ref,payment_verified_at," +
          "biller_code,item_code,customer_id,verified_customer_name,service_amount_kobo,total_amount_kobo," +
          "currency,confirmed_at FROM commerce.billing_quotes " +
          "WHERE tenant_id=$1 AND user_id=$2 AND quote_id=$3 FOR UPDATE",
          [request.tenantId,request.userId,request.quoteId]);
        if (quotes.rowCount!==1)
          throw new MsnwBillingError("msnw.billing.quote_not_found",404);
        const q=quotes.rows[0]!;
        if (Number(q.revision)!==request.quoteRevision || q.state!=="confirmed" ||
            !q.confirmed_at || q.checkout_tx_ref || q.payment_verified_at ||
            (q.expires_at instanceof Date ? q.expires_at.getTime()
              : Date.parse(String(q.expires_at)))<=Date.now() ||
            q.currency!=="NGN" || q.biller_code!==request.billerCode ||
            q.item_code!==request.itemCode || q.customer_id!==request.customerId ||
            (q.verified_customer_name!=null && q.verified_customer_name!==request.customerName?.trim()) ||
            Number(q.service_amount_kobo)!==ngn)
          throw new MsnwBillingError("msnw.billing.quote_changed");
        const kobo=Number(q.total_amount_kobo);
        const micro=msnwForKobo(kobo,rate);
        const account=await db.query(
          "SELECT available_micro::text FROM commerce.msnw_custody_accounts " +
          "WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE",
          [request.tenantId,request.userId]);
        if (account.rowCount!==1 ||
            BigInt(String(account.rows[0]?.available_micro ?? "0"))<BigInt(micro))
          throw new MsnwBillingError("msnw.billing.insufficient_funds");
        // Account lock serializes all new bill keys before checking a match.
        // Existing-reference replay above remains valid even during an outage.
        const recent=await recentPurchase({tenantId:request.tenantId,userId:request.userId},{billerCode:request.billerCode,itemCode:request.itemCode,customerId:request.customerId,serviceAmountKobo:ngn,categoryCode:request.categoryCode},db);
        if(recent?.state==='reserved')throw new MsnwBillingError('msnw.billing.previous_unresolved',409,{recentPurchase:recent});
        if(recent){
          const consent=await db.query('SELECT repeat_of,quote_revision FROM commerce.msnw_bill_repeat_consents WHERE tenant_id=$1 AND user_id=$2 AND quote_id=$3',[request.tenantId,request.userId,request.quoteId]);
          if(consent.rows[0]?.repeat_of!==recent.reference||Number(consent.rows[0]?.quote_revision)!==request.quoteRevision)
            throw new MsnwBillingError('msnw.billing.repeat_confirmation_required',409,{recentPurchase:recent});
        }
        const reserve=await db.query(
          "UPDATE commerce.msnw_custody_accounts " +
          "SET available_micro=available_micro-$3::numeric," +
          "reserved_micro=reserved_micro+$3::numeric,updated_at=statement_timestamp() " +
          "WHERE tenant_id=$1 AND user_id=$2 AND available_micro >=$3::numeric",
          [request.tenantId,request.userId,micro]);
        if (reserve.rowCount!==1)
          throw new MsnwBillingError("msnw.billing.insufficient_funds");
        await db.query(
          "INSERT INTO commerce.msnw_billing_reservations " +
          "(fulfillment_reference,tenant_id,user_id,quote_id,quote_revision," +
          "biller_code,item_code,customer_id,provider_ngn_kobo,total_ngn_kobo," +
          "rate_kobo_per_msnw,reserved_micro) " +
          "VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12)",
          [request.fulfillmentReference,request.tenantId,request.userId,
            request.quoteId,request.quoteRevision,request.billerCode,request.itemCode,
            request.customerId,ngn,kobo,rate.toString(),micro],
        );
        await db.query(
          "UPDATE commerce.billing_quotes " +
          "SET fulfillment_reference=$4,state=\'reserved\',updated_at=statement_timestamp() " +
          "WHERE tenant_id=$1 AND user_id=$2 AND quote_id=$3",
          [request.tenantId,request.userId,request.quoteId,request.fulfillmentReference],
        );
        await db.query(
          "INSERT INTO commerce.msnw_billing_audit " +
          "(event_id,fulfillment_reference,stage,customer_available_delta," +
          "customer_reserved_delta,treasury_collected_delta) " +
          "VALUES ($1,$2,'reserved',-$3::numeric,$3::numeric,0)",
          [randomUUID(),request.fulfillmentReference,micro],
        );
        await db.query("COMMIT"); begun=false;
      } catch(error) {
        if (begun) await db.query("ROLLBACK").catch(()=>undefined);
        throw error;
      } finally { db.release(); }
    },
    async settleBill(request) {
      if (!request.fulfillmentReference.startsWith("msnw-bill-"))
        throw new MsnwBillingError("msnw.billing.rail_invalid",400);
      const terminal=request.state==="succeeded"?"fulfilled":"refunded";
      const db=await input.pool.connect();
      let begun=false;
      try {
        await db.query("BEGIN");begun=true;
        const result=await db.query(
          "SELECT state,reserved_micro::text,provider_reference FROM " +
          "commerce.msnw_billing_reservations " +
          "WHERE tenant_id=$1 AND user_id=$2 AND fulfillment_reference=$3 FOR UPDATE",
          [request.tenantId,request.userId,request.fulfillmentReference]);
        if(result.rowCount!==1)
          throw new MsnwBillingError("msnw.billing.reservation_missing");
        const r=result.rows[0]!;
        if(r.state!== "reserved") {
          if(r.state!==terminal)
            throw new MsnwBillingError("msnw.billing.terminal_conflict");
          await db.query("COMMIT");begun=false;
          return;
        }
        const micro=String(r.reserved_micro);
        const release=await db.query(
          "UPDATE commerce.msnw_custody_accounts " +
          "SET reserved_micro=reserved_micro-$3::numeric," +
          "available_micro=available_micro+$4::numeric," +
          "updated_at=statement_timestamp() " +
          "WHERE tenant_id=$1 AND user_id=$2 AND reserved_micro>=$3::numeric",
          [request.tenantId,request.userId,micro,
            terminal==="refunded"?micro:"0"],
        );
        if(release.rowCount!==1)
          throw new MsnwBillingError("msnw.billing.reserve_mismatch",503);
        await db.query(
          "UPDATE commerce.msnw_billing_reservations SET state=$4," +
          "provider_reference=$5,settled_at=statement_timestamp() " +
          "WHERE tenant_id=$1 AND user_id=$2 AND fulfillment_reference=$3",
          [request.tenantId,request.userId,request.fulfillmentReference,
            terminal,request.providerReference],
        );
        await db.query(
          "UPDATE commerce.billing_quotes SET state=$4,settlement_state=$5," +
          "bill_provider_reference=COALESCE($6,bill_provider_reference)," +
          "updated_at=statement_timestamp() " +
          "WHERE tenant_id=$1 AND user_id=$2 AND fulfillment_reference=$3",
          [request.tenantId,request.userId,request.fulfillmentReference,
            terminal==="fulfilled"?"succeeded":"refunded",request.state,request.providerReference],
        );
        await db.query(
          "INSERT INTO commerce.msnw_billing_audit " +
          "(event_id,fulfillment_reference,stage,customer_available_delta," +
          "customer_reserved_delta,treasury_collected_delta) " +
          "VALUES ($1,$2,$3,$4::numeric,-$5::numeric,$6::numeric)",
          [randomUUID(),request.fulfillmentReference,terminal,
            terminal==="refunded"?micro:"0",micro,
            terminal==="fulfilled"?micro:"0"],
        );
        await db.query("COMMIT");begun=false;
      } catch(error) {
        if(begun) await db.query("ROLLBACK").catch(()=>undefined);
        throw error;
      } finally{ db.release(); }
    },
  };
  return Object.freeze({funding,preview,ownedQuote,reservation,approveRepeat,closeUnreserved});
}
