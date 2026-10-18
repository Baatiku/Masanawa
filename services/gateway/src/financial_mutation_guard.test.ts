import {afterEach,describe,expect,it} from "vitest";
import {createGatewayApp} from "./app.js";
import {CustomerAuthError, type CustomerAuthService} from "./customer_auth.js";
import {requiresFinancialCustomerState} from "./financial_mutation_guard.js";

describe("financial account-status admission",()=>{
  it("only exempts exact, signed provider callback routes",()=>{
    for(const route of [
      "/v1/wallet/msnw/funding/webhook",
      "/v1/financial/nowpayments/ipn",
      "/v1/financial/nowpayments/payout-ipn",
    ]) {
      expect(requiresFinancialCustomerState("POST",route)).toBe(false);
      expect(requiresFinancialCustomerState("POST",route+"?provider=1")).toBe(false);
      expect(requiresFinancialCustomerState("POST",route+"/other")).toBe(true);
    }
    for(const route of [
      "/v1/wallet/msnw/custody/send",
      "/v1/wallet/msnw/p2p/methods/verify",
      "/v1/financial/crypto/withdrawals",
      "/v1/commerce/bills/quotes",
    ])expect(requiresFinancialCustomerState("POST",route)).toBe(true);
    expect(requiresFinancialCustomerState("GET","/v1/wallet/msnw/history")).toBe(false);
    expect(requiresFinancialCustomerState("POST","/v1/auth/password/recovery/start")).toBe(false);
  });

  it("fails closed when financial routes mount without account-state authority",async()=>{
    const app=createGatewayApp();
    try {
      app.post("/v1/wallet/msnw/custody/send",async()=>({spent:true}));
      app.post("/v1/financial/nowpayments/ipn",async()=>({accepted:true}));
      const denied=await app.inject({
        method:"POST",url:"/v1/wallet/msnw/custody/send",payload:{},
      });
      expect(denied.statusCode).toBe(503);
      expect(denied.json().error.code).toBe("AUTH_UNAVAILABLE");
      // Webhook exemption is *only* admission here; the mounted provider
      // route is responsible for authenticating signed raw callbacks.
      const webhook=await app.inject({
        method:"POST",url:"/v1/financial/nowpayments/ipn",payload:{},
      });
      expect(webhook.statusCode).toBe(200);
    }finally{ await app.close(); }
  });

  it("permits legitimate reconciliation callbacks without bypassing customer spending holds",async()=>{
    let checked=0;
    const auth={
      async authorizeSensitiveMutation(){
        checked++;
        throw new CustomerAuthError("ACCOUNT_RECOVERY_HOLD",403);
      },
    } as unknown as CustomerAuthService;
    const app=createGatewayApp({customerAuth:auth});
    try{
      // Production mounts signature-verifying handlers here. This test checks
      // route admission only, not provider signature cryptography.
      app.post("/v1/financial/nowpayments/ipn",async()=>({reconciled:true}));
      app.post("/v1/financial/nowpayments/payout-ipn",async()=>({reconciled:true}));
      app.post("/v1/wallet/msnw/funding/webhook",async()=>({reconciled:true}));
      app.post("/v1/wallet/msnw/billing/execute",async()=>({unexpected:true}));
      for(const route of [
        "/v1/financial/nowpayments/ipn",
        "/v1/financial/nowpayments/payout-ipn",
        "/v1/wallet/msnw/funding/webhook",
      ]){
        const response=await app.inject({method:"POST",url:route,payload:{}});
        expect(response.statusCode).toBe(200);
        expect(response.json()).toEqual({reconciled:true});
      }
      expect(checked).toBe(0);
      const blocked=await app.inject({
        method:"POST",url:"/v1/wallet/msnw/billing/execute",payload:{},
      });
      expect(blocked.statusCode).toBe(403);
      expect(checked).toBe(1);
      expect(blocked.json().error.code).toBe("ACCOUNT_RECOVERY_HOLD");
    }finally{
      await app.close();
    }
  });
});
