import {describe,it,expect} from "vitest";
import {createCanonicalId} from "@masanawa/contracts";
import {
  hashPlatformSessionToken,mintPlatformSessionToken,
  type PlatformSessionIdentity,type PlatformSessionRepository,
} from "@masanawa/security";
import {createCustomerAuthService} from "./customer_auth.js";

describe("bank payment details step-up",()=>{
  it("requires an owned inbox OTP, matches exact bank details and rejects grant replay",async()=>{
    const tenantId=createCanonicalId("tenant"),userId=createCanonicalId("user");
    const token=mintPlatformSessionToken("access"),accessHash=hashPlatformSessionToken(token);
    const identity:PlatformSessionIdentity={
      tenantId,userId,profile:{
        tenantId,userId,name:"Amina",phone:"+2348012345678",email:"amina@example.com",
        locale:"en-NG",createdAt:"2026-10-01T00:00:00Z",
      },
    };
    const challenges=new Map<string,{codeHash:string;consumed:boolean}>();
    const grants=new Map<string,{fingerprint:string;consumed:boolean}>();
    let sentCode="";
    const repo={
      async resolveAccess({accessHash:given}:{accessHash:string}){
        return given===accessHash?identity:null;
      },
      async putOtpChallenge(input:{identifier:string;codeHash:string}){
        challenges.set(input.identifier,{codeHash:input.codeHash,consumed:false});
      },
      async cancelOtpChallenge(){},
      async consumeOtpChallenge(input:{identifier:string;codeHash:string}){
        const c=challenges.get(input.identifier);
        if(!c||c.consumed||c.codeHash!==input.codeHash)return "invalid" as const;
        c.consumed=true;return "accepted" as const;
      },
      async issueActionGrant(input:{grantHash:string;fingerprint:string}){
        grants.set(input.grantHash,{fingerprint:input.fingerprint,consumed:false});
      },
      async consumeActionGrant(input:{grantHash:string;fingerprint:string}){
        const grant=grants.get(input.grantHash);
        if(!grant||grant.fingerprint!==input.fingerprint||grant.consumed)return false;
        grant.consumed=true;return true;
      },
    } as unknown as PlatformSessionRepository;
    const auth=createCustomerAuthService({
      repository:repo,tenantId,otpPepper:"p".repeat(48),
      emailDelivery:{async send(input){expect(input.identifier).toBe("amina@example.com");sentCode=input.code;}},
    });
    const authHeader=`Bearer ${token}`;
    const params={authorizationHeader:authHeader,bankCode:"058",accountNumber:"0123456789"};
    await expect(auth.beginBankStepUp({...params,authorizationHeader:undefined}))
      .rejects.toMatchObject({code:"UNAUTHORIZED"});
    await expect(auth.beginBankStepUp({...params,bankCode:"INVALID"}))
      .rejects.toMatchObject({code:"VALIDATION_FAILED"});
    await auth.beginBankStepUp(params);
    expect(sentCode).toMatch(/^\d{6}$/u);
    const {stepUpToken}=await auth.confirmBankStepUp({...params,code:sentCode});
    await expect(auth.consumeBankStepUp({...params,accountNumber:"9999999999",stepUpToken}))
      .rejects.toMatchObject({code:"STEP_UP_REQUIRED"});
    await auth.consumeBankStepUp({...params,stepUpToken});
    await expect(auth.consumeBankStepUp({...params,stepUpToken}))
      .rejects.toMatchObject({code:"STEP_UP_REQUIRED"});
  });
});
