import { describe,expect,it } from "vitest";
import { createGatewayApp } from "../app.js";
import { MsnwBillingError } from "./billing_funding.js";

describe("MSNW authenticated Flutterwave bill endpoints",()=>{
  it("rejects user supplied extras before payment execution",async()=>{
    const calls:string[]=[];
    const app=createGatewayApp({
      customerAuth: { async authorizeSensitiveMutation() {} } as never,msnwBilling:{
      async preview(){calls.push("preview");return {asset:"MSNW"};},
      async execute(){calls.push("execute");return {state:"succeeded"};},
      async read(){calls.push("read");return {};},
    } as any});
    const extra=await app.inject({
      method:"POST",url:"/v1/wallet/msnw/billing/execute",
      payload:{
        quoteId:"quote-123",quoteRevision:1,
        expectedAmountMicro:"2000000",expectedRateKoboPerMsnw:"10000",
        forceDebit:false,
      },
    });
    expect(extra.statusCode).toBe(400);
    expect(calls).toEqual([]);
    await app.close();
  });
  it("requires valid signed-in owner before executing provider dispatch",async()=>{
    const app=createGatewayApp({
      customerAuth: { async authorizeSensitiveMutation() {} } as never,msnwBilling:{
      async preview(){throw new MsnwBillingError("msnw.billing.auth_required",401);},
      async execute(){throw new MsnwBillingError("msnw.billing.auth_required",401);},
      async read(){throw new MsnwBillingError("msnw.billing.auth_required",401);},
    } as any});
    const denial=await app.inject({
      method:"POST",url:"/v1/wallet/msnw/billing/execute",
      payload:{quoteId:"quote-123",quoteRevision:1,
        expectedAmountMicro:"2000000",expectedRateKoboPerMsnw:"10000"},
    });
    expect(denial.statusCode).toBe(401);
    expect(JSON.parse(denial.body).error).toBe("msnw.billing.auth_required");
    await app.close();
  });
});
