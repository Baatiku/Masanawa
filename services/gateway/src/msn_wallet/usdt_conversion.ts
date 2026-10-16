import { randomUUID } from "node:crypto";
import type { Pool } from "@masanawa/postgres";
import type { NowPaymentsCustodyClient, NowPaymentsPayoutClient } from "@masanawa/nowpayments";

export class MsnwConversionError extends Error {
  constructor(readonly code: string, readonly statusCode = 409) { super(code); }
}
type Owner = Readonly<{ tenantId: string; userId: string }>;
type Route = "USDTTRC20" | "USDTMATIC" | "USDCMATIC";
type Payout = Pick<NowPaymentsPayoutClient, "validateAddress" | "getPayoutFeeEstimate" |
  "getMinimumPayoutAmount" | "createPayout" | "verifyPayout" | "getPayoutEvidence">;
type Custody = Pick<NowPaymentsCustodyClient, "readBalances">;
const routes = new Set<Route>(["USDTTRC20", "USDTMATIC", "USDCMATIC"]);
const addressPattern = /^[A-Za-z0-9]{20,128}$/;
const microPattern = /^[1-9][0-9]{0,23}$/;
const keyPattern = /^[A-Za-z0-9:_-]{16,128}$/;
const terminal = new Set(["finished","refunded"]);
const unfinished = new Set(["reserved","submitting","awaiting_verification","processing","manual_review"]);

function micro(value: unknown): bigint {
  if (typeof value !== "string" || !microPattern.test(value))
    throw new MsnwConversionError("msnw.convert.amount_invalid",400);
  return BigInt(value);
}
export function parseStableMicro(value: unknown, rounding: "down"|"up" = "down"): bigint {
  if (typeof value !== "string" || !/^(?:0|[1-9][0-9]{0,23})(?:\.[0-9]{1,18})?$/.test(value))
    throw new MsnwConversionError("msnw.convert.provider_amount_invalid",503);
  const [whole = "0",fraction = ""] = value.split(".");
  const exact = BigInt(whole)*1000000n+BigInt((fraction.slice(0,6)).padEnd(6,"0")||"0");
  return rounding === "up" && /[1-9]/.test(fraction.slice(6)) ? exact+1n : exact;
}
export function stableDecimal(value: bigint): string {
  if(value<0n) throw new MsnwConversionError("msnw.convert.amount_invalid",400);
  const whole = (value/1000000n).toString();
  const fraction = (value%1000000n).toString().padStart(6,"0").replace(/0+$/,"");
  return fraction ? whole+"."+fraction : whole;
}
function convertCode(raw: unknown): Route {
  if(typeof raw!=="string" || !routes.has(raw as Route))
    throw new MsnwConversionError("msnw.convert.network_unsupported",400);
  return raw as Route;
}
function convertAddress(raw: unknown): string {
  if(typeof raw!=="string" || !addressPattern.test(raw))
    throw new MsnwConversionError("msnw.convert.address_invalid",400);
  return raw;
}
function text(raw: unknown): string {
  return typeof raw === "string" ? raw : String(raw??"");
}

export function createMsnwUsdtConversion(input: Readonly<{
  pool: Pool;
  payout: Payout;
  custody: Custody;
  rateUsdMicroPerMsnw: string;
  verificationCode: string;
  approvedDestination: (owner:Owner,route:Route,address:string) => boolean;
  enabledRoutes: readonly string[];
}>) {
  if(!microPattern.test(input.rateUsdMicroPerMsnw) ||
     !/^[0-9]{6}$/.test(input.verificationCode))
    throw new MsnwConversionError("msnw.convert.configuration_invalid",503);
  const priceMicro = BigInt(input.rateUsdMicroPerMsnw);
  const enabled = new Set(input.enabledRoutes);
  async function quote(owner: Owner, parameters: Readonly<{
    amountMicro: unknown; providerCode: unknown; destinationAddress: unknown;
  }>) {
    const source = micro(parameters.amountMicro);
    const providerCode = convertCode(parameters.providerCode);
    const destinationAddress = convertAddress(parameters.destinationAddress);
    if(!enabled.has(providerCode) ||
       !input.approvedDestination(owner,providerCode,destinationAddress))
      throw new MsnwConversionError("msnw.convert.destination_unapproved",403);
    // A 6-decimal MSNW quote amount converts to exact 6-decimal USD
    // stablecoin tokens using an explicitly operator-governed rate.
    const target = source*priceMicro/1000000n;
    if(target<1n || !microPattern.test(target.toString()))
      throw new MsnwConversionError("msnw.convert.quote_dust",409);
    await input.payout.validateAddress({
      currency:providerCode,address:destinationAddress,
    });
    const expected = stableDecimal(target);
    const [minimum,fee,providerBalances,customer] = await Promise.all([
      input.payout.getMinimumPayoutAmount({currency:providerCode}),
      input.payout.getPayoutFeeEstimate({currency:providerCode,amount:expected}),
      input.custody.readBalances(),
      input.pool.query(
        "SELECT available_micro::text FROM commerce.msnw_custody_accounts " +
        "WHERE tenant_id=$1 AND user_id=$2",
        [owner.tenantId,owner.userId],
      ),
    ]);
    if(minimum.currency!==providerCode || fee.currency!==providerCode ||
       parseStableMicro(minimum.minimumAmount,"up")>target ||
       parseStableMicro(fee.amount)!==target)
      throw new MsnwConversionError("msnw.convert.provider_quote_mismatch",503);
    const feeMicro = parseStableMicro(fee.fee,"up");
    const provider = providerBalances.find(x=>x.currency===providerCode);
    if(!provider)
      throw new MsnwConversionError("msnw.convert.provider_liquidity_unavailable",503);
    const balanceMicro = parseStableMicro(provider.available);
    const pending = await input.pool.query(
      "SELECT COALESCE(sum(target_micro+fee_estimate_micro),0)::text AS queued " +
      "FROM commerce.msnw_usdt_payouts WHERE provider_code=$1 " +
      "AND state IN ('reserved','submitting','awaiting_verification','processing','manual_review')",
      [providerCode],
    );
    const queued = text(pending.rows[0]?.queued);
    if(!/^(0|[1-9][0-9]*)$/.test(queued))
      throw new MsnwConversionError("msnw.convert.pending_liquidity_invalid",503);
    const remaining = balanceMicro>BigInt(queued) ? balanceMicro-BigInt(queued) : 0n;
    const ownMicro=text(customer.rows[0]?.available_micro??"0");
    if(!/^(0|[1-9][0-9]*)$/.test(ownMicro))
      throw new MsnwConversionError("msnw.convert.customer_balance_invalid",503);
    return Object.freeze({
      asset:"MSNW" as const,providerCode,destinationAddress,
      sourceMicro:source.toString(),targetMicro:target.toString(),
      payoutAmount:expected,feeEstimateMicro:feeMicro.toString(),
      rateUsdMicroPerMsnw:priceMicro.toString(),
      availableMicro:ownMicro,
      sufficient:BigInt(ownMicro)>=source,
      providerLiquidityQualified:remaining>=target+feeMicro,
      expiresAt:new Date(Date.now()+2*60*1000).toISOString(),
    });
  }

  async function find(owner:Owner,conversionId:string) {
    if(!/^[0-9a-f-]{36}$/.test(conversionId))
      throw new MsnwConversionError("msnw.convert.operation_invalid",400);
    const result=await input.pool.query(
      "SELECT conversion_id::text,tenant_id,user_id,idempotency_key,provider_code," +
      "destination_address,source_micro::text,target_micro::text," +
      "rate_usd_micro_per_msnw::text,fee_estimate_micro::text," +
      "provider_batch_id,provider_withdrawal_id,state,created_at " +
      "FROM commerce.msnw_usdt_payouts " +
      "WHERE conversion_id=$1 AND tenant_id=$2 AND user_id=$3",
      [conversionId,owner.tenantId,owner.userId],
    );
    if(result.rowCount!==1) throw new MsnwConversionError("msnw.convert.not_found",404);
    const row = result.rows[0]!;
    return row;
  }
  function show(row:Record<string,unknown>) {
    const value=row.created_at;
    return Object.freeze({
      conversionId:text(row.conversion_id),asset:"MSNW" as const,
      providerCode:text(row.provider_code),
      destinationAddress:text(row.destination_address),
      sourceMicro:text(row.source_micro),
      targetMicro:text(row.target_micro),
      feeEstimateMicro:text(row.fee_estimate_micro),
      state:text(row.state),
      createdAt:value instanceof Date?value.toISOString():text(value),
    });
  }
  async function reserve(owner:Owner,parameters: Readonly<{
    amountMicro:unknown;providerCode:unknown;destinationAddress:unknown;
    expectedTargetMicro:unknown;expectedFeeMicro:unknown;
    expectedRateUsdMicroPerMsnw:unknown;idempotencyKey:unknown;
  }>) {
    const idem=parameters.idempotencyKey;
    if(typeof idem!=="string" || !keyPattern.test(idem))
      throw new MsnwConversionError("msnw.convert.idempotency_invalid",400);
    // Recover the original immutable order BEFORE requesting a fresh quote:
    // a changed provider fee, expired quote or drained provider liquidity must
    // never trigger another POST when an earlier withdrawal may exist.
    const previous=await input.pool.query(
      "SELECT conversion_id::text,provider_code,destination_address," +
      "source_micro::text,target_micro::text,fee_estimate_micro::text," +
      "rate_usd_micro_per_msnw::text FROM commerce.msnw_usdt_payouts " +
      "WHERE tenant_id=$1 AND user_id=$2 AND idempotency_key=$3",
      [owner.tenantId,owner.userId,idem],
    );
    if(previous.rowCount===1){
      const item=previous.rows[0]!;
      if(item.provider_code!==parameters.providerCode ||
         item.destination_address!==parameters.destinationAddress ||
         item.source_micro!==parameters.amountMicro ||
         item.target_micro!==parameters.expectedTargetMicro ||
         item.fee_estimate_micro!==parameters.expectedFeeMicro ||
         item.rate_usd_micro_per_msnw!==parameters.expectedRateUsdMicroPerMsnw)
        throw new MsnwConversionError("msnw.convert.idempotency_conflict",409);
      return {conversionId:text(item.conversion_id),claimed:false};
    }
    const quoted=await quote(owner,parameters);
    if(quoted.targetMicro!==parameters.expectedTargetMicro ||
       quoted.feeEstimateMicro!==parameters.expectedFeeMicro ||
       quoted.rateUsdMicroPerMsnw!==parameters.expectedRateUsdMicroPerMsnw)
      throw new MsnwConversionError("msnw.convert.quote_changed",409);
    if(!quoted.sufficient) throw new MsnwConversionError("msnw.convert.insufficient_funds",409);
    if(!quoted.providerLiquidityQualified)
      throw new MsnwConversionError("msnw.convert.provider_liquidity_unavailable",503);
    const client=await input.pool.connect();
    let started=false;
    try{
      await client.query("BEGIN");started=true;
      await client.query("SELECT pg_advisory_xact_lock(hashtext('msnw:usdt:treasury'))");
      await client.query("SELECT pg_advisory_xact_lock(hashtext($1))",
        [owner.tenantId+":"+owner.userId+":"+idem]);
      const replay=await client.query(
        "SELECT * FROM commerce.msnw_usdt_payouts WHERE tenant_id=$1 AND user_id=$2 " +
        "AND idempotency_key=$3 FOR UPDATE",
        [owner.tenantId,owner.userId,idem],
      );
      if(replay.rowCount){
        const row=replay.rows[0]!;
        if(text(row.provider_code)!==quoted.providerCode ||
           text(row.destination_address)!==quoted.destinationAddress ||
           text(row.source_micro)!==quoted.sourceMicro ||
           text(row.target_micro)!==quoted.targetMicro ||
           text(row.rate_usd_micro_per_msnw)!==quoted.rateUsdMicroPerMsnw ||
           text(row.fee_estimate_micro)!==quoted.feeEstimateMicro)
          throw new MsnwConversionError("msnw.convert.idempotency_conflict",409);
        await client.query("COMMIT");started=false;
        return { conversionId:text(row.conversion_id),claimed:false };
      }
      const outstanding=await client.query(
        "SELECT COALESCE(sum(target_micro+fee_estimate_micro),0)::text AS queued " +
        "FROM commerce.msnw_usdt_payouts WHERE provider_code=$1 " +
        "AND state IN ('reserved','submitting','awaiting_verification','processing','manual_review')",
        [quoted.providerCode],
      );
      const queued = text(outstanding.rows[0]?.queued);
      if(!/^(0|[1-9][0-9]*)$/.test(queued))
        throw new MsnwConversionError("msnw.convert.pending_liquidity_invalid",503);
      // In addition to the preflight provider quote, serialize provider
      // treasury commitments and reject overcommitment across requests.
      if(BigInt(queued) +
         BigInt(quoted.targetMicro)+BigInt(quoted.feeEstimateMicro) >
         parseStableMicro((await input.custody.readBalances())
           .find(x=>x.currency===quoted.providerCode)?.available??"0"))
        throw new MsnwConversionError("msnw.convert.provider_liquidity_unavailable",503);
      const funds=await client.query(
        "SELECT available_micro::text FROM commerce.msnw_custody_accounts " +
        "WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE",
        [owner.tenantId,owner.userId],
      );
      if(funds.rowCount!==1 ||
         BigInt(text(funds.rows[0]?.available_micro))<BigInt(quoted.sourceMicro))
        throw new MsnwConversionError("msnw.convert.insufficient_funds",409);
      const id=randomUUID();
      const moved=await client.query(
        "UPDATE commerce.msnw_custody_accounts " +
        "SET available_micro=available_micro-$3::numeric," +
        "reserved_micro=reserved_micro+$3::numeric,updated_at=statement_timestamp() " +
        "WHERE tenant_id=$1 AND user_id=$2 AND available_micro >=$3::numeric",
        [owner.tenantId,owner.userId,quoted.sourceMicro],
      );
      if(moved.rowCount!==1)
        throw new MsnwConversionError("msnw.convert.insufficient_funds",409);
      await client.query(
        "INSERT INTO commerce.msnw_usdt_payouts " +
        "(conversion_id,tenant_id,user_id,idempotency_key,provider_code,destination_address," +
        "source_micro,target_micro,rate_usd_micro_per_msnw,fee_estimate_micro,quote_expires_at) " +
        "VALUES ($1,$2,$3,$4,$5,$6,$7::numeric,$8::numeric,$9::bigint,$10::numeric,$11)",
        [id,owner.tenantId,owner.userId,idem,quoted.providerCode,
          quoted.destinationAddress,quoted.sourceMicro,quoted.targetMicro,
          quoted.rateUsdMicroPerMsnw,quoted.feeEstimateMicro,quoted.expiresAt],
      );
      await client.query(
        "INSERT INTO commerce.msnw_usdt_payout_audit " +
        "(event_id,conversion_id,stage,available_delta,reserved_delta,treasury_collected_delta) " +
        "VALUES ($1,$2,'reserved',-$3::numeric,$3::numeric,0)",
        [randomUUID(),id,quoted.sourceMicro],
      );
      await client.query("COMMIT");started=false;
      return {conversionId:id,claimed:true};
    } catch(e){
      if(started) await client.query("ROLLBACK").catch(()=>undefined);
      throw e;
    } finally{client.release();}
  }
  async function mark(conversionId:string,oldState:string,newState:string,batchId?:string,
    withdrawalId?:string) {
    const result=await input.pool.query(
      "UPDATE commerce.msnw_usdt_payouts SET state=$3," +
      "provider_batch_id=COALESCE($4,provider_batch_id)," +
      "provider_withdrawal_id=COALESCE($5,provider_withdrawal_id)," +
      "submitted_at=COALESCE(submitted_at,statement_timestamp()) " +
      "WHERE conversion_id=$1 AND state=$2 RETURNING conversion_id::text",
      [conversionId,oldState,newState,batchId??null,withdrawalId??null],
    );
    return result.rowCount===1;
  }
  async function submit(owner:Owner,conversionId:string) {
    const record=await find(owner,conversionId);
    if(record.state!=="reserved")return show(record);
    if(!(await mark(conversionId,"reserved","submitting")))
      return show(await find(owner,conversionId));
    try{
      // This POST is attempted ONCE after durable 'submitting' claim.
      // Unknown outcomes are NEVER retried by another POST.
      const external=await input.payout.createPayout({
        amount:stableDecimal(BigInt(text(record.target_micro))),
        currency:text(record.provider_code),
        address:text(record.destination_address),
        uniqueExternalId:"msnw-"+conversionId,
      });
      const bound=await mark(conversionId,"submitting","awaiting_verification",
        external.payoutId,external.withdrawalId??undefined);
      if(!bound)throw new MsnwConversionError("msnw.convert.state_conflict");
      try {
        await input.payout.verifyPayout({
          payoutId:external.payoutId,verificationCode:input.verificationCode,
        });
        await mark(conversionId,"awaiting_verification","processing");
      } catch {
        // A 2FA outage or rejection must not cause a second payout.
      }
    }catch{
      await mark(conversionId,"submitting","manual_review");
    }
    return show(await find(owner,conversionId));
  }
  async function confirm(owner:Owner,parameters:Parameters<typeof reserve>[1]) {
    const result=await reserve(owner,parameters);
    return submit(owner,result.conversionId);
  }
  async function settle(owner:Owner,conversionId:string,
    terminalState:"finished"|"refunded") {
    const db=await input.pool.connect();
    let started=false;
    try{
      await db.query("BEGIN");started=true;
      const locked=await db.query(
        "SELECT * FROM commerce.msnw_usdt_payouts WHERE conversion_id=$1 " +
        "AND tenant_id=$2 AND user_id=$3 FOR UPDATE",
        [conversionId,owner.tenantId,owner.userId],
      );
      if(locked.rowCount!==1)throw new MsnwConversionError("msnw.convert.not_found",404);
      const current=locked.rows[0]!;
      if(current.state===terminalState){
        await db.query("COMMIT");started=false;return show(current);
      }
      if(terminal.has(text(current.state)))
        throw new MsnwConversionError("msnw.convert.terminal_conflict");
      const source=text(current.source_micro);
      if(!microPattern.test(source))
        throw new MsnwConversionError("msnw.convert.journal_invalid",503);
      const money=await db.query(
        "UPDATE commerce.msnw_custody_accounts " +
        "SET reserved_micro=reserved_micro-$3::numeric," +
        "available_micro=available_micro+$4::numeric," +
        "updated_at=statement_timestamp() " +
        "WHERE tenant_id=$1 AND user_id=$2 AND reserved_micro >=$3::numeric",
        [owner.tenantId,owner.userId,source,terminalState==="refunded"?source:"0"],
      );
      if(money.rowCount!==1)
        throw new MsnwConversionError("msnw.convert.reserve_corrupt",503);
      await db.query(
        "UPDATE commerce.msnw_usdt_payouts SET state=$4," +
        "settled_at=statement_timestamp() WHERE conversion_id=$1 " +
        "AND tenant_id=$2 AND user_id=$3",
        [conversionId,owner.tenantId,owner.userId,terminalState],
      );
      await db.query(
        "INSERT INTO commerce.msnw_usdt_payout_audit " +
        "(event_id,conversion_id,stage,available_delta,reserved_delta,treasury_collected_delta) " +
        "VALUES ($1,$2,$3,$4::numeric,-$5::numeric,$6::numeric)",
        [randomUUID(),conversionId,terminalState,
         terminalState==="refunded"?source:"0",source,
         terminalState==="finished"?source:"0"],
      );
      await db.query("COMMIT");started=false;
      return show({...current,state:terminalState});
    }catch(e){
      if(started)await db.query("ROLLBACK").catch(()=>undefined);
      throw e;
    }finally{db.release();}
  }
  async function refresh(owner:Owner,conversionId:string) {
    const current=await find(owner,conversionId);
    if(terminal.has(text(current.state)))return show(current);
    const batch=text(current.provider_batch_id);
    if(!/^[A-Za-z0-9_-]{1,128}$/.test(batch))
      return show(current);
    const provider=await input.payout.getPayoutEvidence({payoutId:batch});
    if(provider.batchId!==batch ||
       provider.uniqueExternalId!=="msnw-"+conversionId ||
       provider.currency!==current.provider_code ||
       provider.address!==current.destination_address ||
       parseStableMicro(provider.amount)!==BigInt(text(current.target_micro)) ||
       (current.provider_withdrawal_id &&
        provider.withdrawalId!==current.provider_withdrawal_id))
      throw new MsnwConversionError("msnw.convert.provider_evidence_mismatch",503);
    if(provider.status==="finished"){
      return settle(owner,conversionId,"finished");
    }
    if(["failed","rejected","rejected_not_checked","cancelled","canceled"].includes(provider.status)){
      return settle(owner,conversionId,"refunded");
    }
    if(!unfinished.has(text(current.state)))
      throw new MsnwConversionError("msnw.convert.state_invalid",503);
    await mark(conversionId,text(current.state),"processing");
    return show(await find(owner,conversionId));
  }
  async function history(owner:Owner) {
    const result=await input.pool.query(
      "SELECT conversion_id::text,tenant_id,user_id,provider_code," +
      "destination_address,source_micro::text,target_micro::text," +
      "fee_estimate_micro::text,state,created_at " +
      "FROM commerce.msnw_usdt_payouts WHERE tenant_id=$1 AND user_id=$2 " +
      "ORDER BY created_at DESC,conversion_id DESC LIMIT 50",
      [owner.tenantId,owner.userId],
    );
    return Object.freeze(result.rows.map(show));
  }
  return Object.freeze({quote,confirm,refresh,history});
}
