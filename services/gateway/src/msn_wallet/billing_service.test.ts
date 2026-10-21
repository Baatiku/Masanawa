import { describe, expect, it } from "vitest";
import { createMsnwBillingService } from "./billing_service.js";

function fixture(existing = false, recentPurchase:unknown=null) {
  const calls:string[]=[];
  const owner={tenantId:"t1",userId:"u1"};
  const priced={
    quoteId:"quote-1",quoteRevision:1,asset:"MSNW" as const,
    amountMicro:"5000000",rateKoboPerMsnw:"10000",
    availableMicro:"7000000",sufficient:true,
    totalAmountKobo:"50000",serviceAmountKobo:"50000",recentPurchase,
    customerId:"08030000000",itemName:"Airtime",
    expiresAt:new Date(Date.now()+60000).toISOString(),
  };
  const quoted={
    quoteId:"quote-1",revision:1,tenantId:"t1",userId:"u1",
    state:"confirmed",currency:"NGN",categoryCode:"AIRTIME",
    billerCode:"MTN",itemCode:"AIRTIME",itemName:"Airtime",
    customerId:"08030000000",serviceAmountKobo:50000,
  };
  const service=createMsnwBillingService({
    authorizer:{
      async authorize({authorizationHeader}: {authorizationHeader: string | undefined}) {
        if(authorizationHeader!=="Bearer owner")throw new Error("denied");
        return owner;
      },
    } as any,
    quotes:{
      async confirmQuote() {calls.push("confirm");return quoted;},
    } as any,
    funding:{
      async preview() {calls.push("preview");return priced;},
      async approveRepeat(){calls.push("repeat-consent");},
      async reservation() {calls.push("reservation");
        return existing ? {
          reference:"msnw-bill-quote-1",amountMicro:priced.amountMicro,
          rateKoboPerMsnw:priced.rateKoboPerMsnw,state:"reserved",
        } : null;
      },
    } as any,
    billing:{
      async purchaseMsnwOwned(request: Parameters<NonNullable<Parameters<typeof createMsnwBillingService>[0]["billing"]["purchaseMsnwOwned"]>>[0]) {
        calls.push("execute");
        expect(request.requestId).toBe("msnw-bill-quote-1");
        expect(request.amount).toBe("500");
        return {fulfillmentReference:request.requestId,state:"succeeded"};
      },
      async readPurchase(request: Parameters<Parameters<typeof createMsnwBillingService>[0]["billing"]["readPurchase"]>[0]) {
        calls.push("reconcile");
        expect(request.reference).toBe("msnw-bill-quote-1");
        return {fulfillmentReference:request.reference,state:"pending"};
      },
    } as any,
  });
  return {service,calls,priced};
}

describe("MSNW bill confirmation and provider replay fencing",()=>{
  it("requires the exact server-configured rate and micro amount",async()=>{
    const f=fixture();
    await expect(f.service.execute({
      authorizationHeader:"Bearer owner",quoteId:"quote-1",quoteRevision:1,
      expectedAmountMicro:"5000000",expectedRateKoboPerMsnw:"9999",
    })).rejects.toMatchObject({code:"msnw.billing.quote_repriced"});
    expect(f.calls).toEqual(["reservation","preview"]);
  });
  it("only dispatches after confirming the matching bill owner and value",async()=>{
    const f=fixture();
    const result=await f.service.execute({
      authorizationHeader:"Bearer owner",quoteId:"quote-1",quoteRevision:1,
      expectedAmountMicro:"5000000",expectedRateKoboPerMsnw:"10000",
    });
    expect(result).toMatchObject({state:"succeeded"});
    expect(f.calls).toEqual(["reservation","preview","confirm","execute"]);
  });
  it("a timed-out previous order is reconciled, never dispatched twice",async()=>{
    const f=fixture(true);
    await f.service.execute({
      authorizationHeader:"Bearer owner",quoteId:"quote-1",quoteRevision:1,
      expectedAmountMicro:"5000000",expectedRateKoboPerMsnw:"10000",
    });
    expect(f.calls).toEqual(["reservation","reconcile"]);
  });
  it("denies other users before reaching any stored quote or provider",async()=>{
    const f=fixture();
    await expect(f.service.preview({
      authorizationHeader:"Bearer someone-else",quoteId:"quote-1",quoteRevision:1,
    })).rejects.toMatchObject({code:"msnw.billing.auth_required",statusCode:401});
    expect(f.calls).toEqual([]);
  });
});

it('blocks new unresolved bills and requires explicit exact repeat reference before confirmation',async()=>{
 const request={authorizationHeader:'Bearer owner',quoteId:'quote-1',quoteRevision:1,expectedAmountMicro:'5000000',expectedRateKoboPerMsnw:'10000'};
 const pending=fixture(false,{reference:'msnw-bill-original',state:'reserved'});
 await expect(pending.service.execute(request)).rejects.toMatchObject({code:'msnw.billing.previous_unresolved'});
 expect(pending.calls).toEqual(['reservation','preview']);
 const settled=fixture(false,{reference:'msnw-bill-original',state:'fulfilled'});
 await expect(settled.service.execute(request)).rejects.toMatchObject({code:'msnw.billing.repeat_confirmation_required'});
 await settled.service.execute({...request,repeatOf:'msnw-bill-original'});
 expect(settled.calls.slice(-5)).toEqual(['reservation','preview','repeat-consent','confirm','execute']);
});
