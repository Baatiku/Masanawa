import { describe, expect, it } from "vitest";
import type { Pool } from "@masanawa/postgres";
import { createMsnwUsdtConversion, parseStableMicro, stableDecimal } from "./usdt_conversion.js";

function mock(opts: {ownerBalance?:string; treasury?:string; settled?:boolean; active?:boolean;} = {}) {
  const commands:string[]=[];
  const calls:string[]=[];
  const providerCode="USDTTRC20";
  const amountMicro="1000000";
  const usd="1";
  const pool={
    async query(sql:string){
      commands.push(sql);
      if(sql.includes("SELECT conversion_id FROM commerce.msnw_usdt_payouts"))
        return {rows:opts.active?[{conversion_id:"previous-conversion"}]:[],
          rowCount:opts.active?1:0};
      if(sql.includes("FROM commerce.msnw_custody_accounts"))
        return {rows:[{available_micro:opts.ownerBalance??"2000000"}],rowCount:1};
      if(sql.includes("AS queued"))
        return {rows:[{queued:"0"}],rowCount:1};
      return {rows:[],rowCount:0};
    },
    async connect(){return {query:this.query,release(){}};},
  } as unknown as Pool;
  const payout={
    async validateAddress(){calls.push("validate");return {valid:true,address:"T".repeat(34),currency:providerCode};},
    async getMinimumPayoutAmount(){calls.push("minimum");return {currency:providerCode,minimumAmount:"0.1"};},
    async getPayoutFeeEstimate(){calls.push("fee");return {currency:providerCode,amount:usd,fee:"0.01"};},
    async createPayout(){calls.push("POST");return {payoutId:"batch123",withdrawalId:"tx123",status:"waiting"};},
    async verifyPayout(){calls.push("2FA");return {status:"processing"};},
    async getPayoutEvidence(){calls.push("evidence");return {
      batchId:"batch123",withdrawalId:"tx123",
      uniqueExternalId:"msnw-op",
      currency:providerCode,amount:usd,
      address:"T".repeat(34),status:"finished",
    };},
  };
  const custody={
    async readBalances(){calls.push("balance");return [{currency:providerCode,
      available:opts.treasury??"20",pending:"0"}];},
  };
  const service=createMsnwUsdtConversion({
    pool,payout,custody,rateUsdMicroPerMsnw:"1000000",
    verificationCode:"123456",enabledRoutes:[providerCode],
    approvedDestination:()=>true,
  });
  return {service,calls,commands,providerCode,amountMicro};
}
const owner={tenantId:"tenant",userId:"user"};
const inputs={amountMicro:"1000000",providerCode:"USDTTRC20",
  destinationAddress:"T".repeat(34)};

describe("MSNW independently prefunded NOWPayments crypto payout",()=>{
  it("requires microprecision and no invented exchange price",()=>{
    expect(parseStableMicro("1.000001")).toBe(1000001n);
    expect(stableDecimal(1000100n)).toBe("1.0001");
    expect(parseStableMicro("1.0000001","up")).toBe(1000001n);
    expect(()=>parseStableMicro("1.0000001","down")).toThrow(
      "msnw.convert.provider_precision_invalid");
    const f=mock();
    expect(()=>createMsnwUsdtConversion({
      pool:{} as Pool,payout:{} as never,custody:{} as never,
      rateUsdMicroPerMsnw:"0",verificationCode:"123456",
      approvedDestination:()=>true,enabledRoutes:[],
    })).toThrow("msnw.convert.configuration_invalid");
    expect(f.calls).toEqual([]);
  });
  it("gets a provider fee and address validation, not a phantom exchange swap",async()=>{
    const f=mock();
    const quote=await f.service.quote(owner,inputs);
    expect(quote).toMatchObject({
      sourceMicro:"1000000",targetMicro:"1000000",
      feeEstimateMicro:"10000",availableMicro:"2000000",
      providerLiquidityQualified:true,sufficient:true,
    });
    expect(f.calls).toContain("validate");
    expect(f.calls).toContain("minimum");
    expect(f.calls).toContain("fee");
    expect(f.calls).toContain("balance");
    expect(f.calls).not.toContain("POST");
  });
  it("recovers only the authenticated owner's exact idempotency key without another provider payout",async()=>{
    const sql:string[]=[];
    const calls:string[]=[];
    const pool={
      async query(statement:string,params?:unknown[]) {
        sql.push(statement);
        if(statement.includes("idempotency_key=$3")) {
          expect(params).toEqual(["tenant","user","original-convert-key-123"]);
          return {rowCount:1,rows:[{conversion_id:"eaa745c9-2f56-4f6a-989c-098153dcfdd0"}]};
        }
        if(statement.includes("WHERE conversion_id=$1 AND tenant_id=$2 AND user_id=$3")) {
          return {rowCount:1,rows:[{
            conversion_id:"eaa745c9-2f56-4f6a-989c-098153dcfdd0",
            tenant_id:"tenant",user_id:"user",provider_code:"USDTTRC20",
            destination_address:"T".repeat(34),source_micro:"1000000",
            target_micro:"1000000",fee_estimate_micro:"10000",
            state:"manual_review",created_at:new Date("2026-10-18T08:00:00Z"),
            provider_batch_id:null,provider_withdrawal_id:null,
          }]};
        }
        throw Error("Unexpected SQL "+statement);
      },
    };
    const service=createMsnwUsdtConversion({
      pool:pool as unknown as Pool,
      payout:{ async createPayout(){calls.push("post");throw Error("do not submit");} } as never,
      custody:{async readBalances(){throw Error("do not request balances");}} as never,
      rateUsdMicroPerMsnw:"1000000",verificationCode:"123456",
      enabledRoutes:["USDTTRC20"],approvedDestination:()=>true,
    });
    await expect(service.lookup(owner,"bad")).rejects.toMatchObject({
      code:"msnw.convert.idempotency_invalid",statusCode:400,
    });
    const result=await service.lookup(owner,"original-convert-key-123");
    expect(result).toMatchObject({
      conversionId:"eaa745c9-2f56-4f6a-989c-098153dcfdd0",
      asset:"MSNW",sourceMicro:"1000000",state:"manual_review",
    });
    expect(sql.every(stmt=>!stmt.includes("INSERT INTO"))).toBe(true);
    expect(calls).toEqual([]);
  });
  it("prevents another payout from a different device while the first is unresolved",async()=>{
    const f=mock({active:true});
    await expect(f.service.quote(owner,inputs)).rejects.toMatchObject({
      code:"msnw.convert.previous_unresolved",statusCode:409,
    });
    expect(f.calls).toEqual([]);
    expect(f.commands.some(x=>x.includes(
      "state IN ('reserved','submitting'"))).toBe(true);
  });
  it("refuses unapproved network, unavailable liquidity and inadequate MSNW",async()=>{
    const f=mock({treasury:"0.2",ownerBalance:"1"});
    const quote=await f.service.quote(owner,inputs);
    expect(quote.sufficient).toBe(false);
    expect(quote.providerLiquidityQualified).toBe(false);
    await expect(f.service.quote(owner,{...inputs,providerCode:"UNKNOWN"}))
      .rejects.toMatchObject({code:"msnw.convert.network_unsupported"});
    expect(f.calls).not.toContain("POST");
  });
});
