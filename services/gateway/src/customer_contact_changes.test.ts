import {describe,it,expect} from "vitest";
import {createCanonicalId} from "@masanawa/contracts";
import {
  hashPlatformSessionToken,mintPlatformSessionToken,
  type PlatformSessionRepository,type PlatformSessionIdentity,
} from "@masanawa/security";
import {createCustomerAuthService} from "./customer_auth.js";

describe("verified contact changes",()=>{
  it("requires both OTPs, rejects a swapped code, and revokes sessions when the old identity is replaced",async()=>{
    const tenantId=createCanonicalId("tenant"),userId=createCanonicalId("user");
    const token=mintPlatformSessionToken("access"),hash=hashPlatformSessionToken(token);
    const profile={
      tenantId,userId,name:"Amina",email:"old@example.com",phone:"+2348012345678",
      locale:"en-NG",createdAt:"2026-10-01T12:00:00.000Z",
    };
    let identity:PlatformSessionIdentity={tenantId,userId,profile};
    const challenges=new Map<string,{codeHash:string;consumed:boolean}>();
    const delivered=new Map<string,string>();
    let replaced=0;
    const repository={
      async resolveAccess(input:{accessHash:string}){
        return input.accessHash===hash?identity:null;
      },
      async resolveProfile(){return null;},
      async putOtpChallenge(input:{identifier:string;codeHash:string}){
        challenges.set(input.identifier,{codeHash:input.codeHash,consumed:false});
      },
      async consumeOtpChallenge(input:{
        identifier:string;codeHash:string;consume?:boolean;
      }){
        const entry=challenges.get(input.identifier);
        if(!entry||entry.consumed||entry.codeHash!==input.codeHash)
          return "invalid" as const;
        if(input.consume!==false)entry.consumed=true;
        return "accepted" as const;
      },
      async cancelOtpChallenge(){},
      async replaceIdentity(input:{
        tenantId:string;userId:string;previousIdentifier:string;nextIdentifier:string;
      }){
        expect(input).toMatchObject({
          tenantId,userId,previousIdentifier:"old@example.com",
          nextIdentifier:"new@example.com",
        });
        replaced++;
        identity={tenantId,userId,profile:{...profile,email:"new@example.com"}};
        return identity.profile;
      },
    } as unknown as PlatformSessionRepository;
    const auth=createCustomerAuthService({
      repository,tenantId,otpPepper:"p".repeat(48),
      emailDelivery:{async send(input){delivered.set(input.identifier,input.code);}},
    });
    const request={
      authorizationHeader:`Bearer ${token}`,
      channel:"email" as const,nextIdentifier:"new@example.com",
    };
    await expect(auth.beginContactChange({
      ...request,authorizationHeader:"Bearer wrong",
    })).rejects.toMatchObject({code:"UNAUTHORIZED"});
    await auth.beginContactChange(request);
    const oldCode=delivered.get("old@example.com")!;
    const newCode=delivered.get("new@example.com")!;
    expect(challenges.size).toBe(2);
    await expect(auth.completeContactChange({
      ...request,oldCode:oldCode==="000000"?"999999":"000000",newCode,
    })).rejects.toMatchObject({code:"OTP_INVALID"});
    expect(replaced).toBe(0);
    await expect(auth.completeContactChange({
      ...request,oldCode,newCode,
    })).resolves.toEqual({success:true});
    expect(replaced).toBe(1);
    await expect(auth.completeContactChange({
      ...request,oldCode,newCode,
    })).rejects.toMatchObject({code:"OTP_INVALID"});
  });
});
