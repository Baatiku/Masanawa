import { describe, expect, it } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import {
  hashPlatformSessionToken, hashOtpCode, mintPlatformSessionToken,
  type PlatformSessionRepository, type PlatformSessionIdentity,
} from "@masanawa/security";
import { createCustomerAuthService } from "./customer_auth.js";

describe("authenticated account-security controls", () => {
  function setup() {
    const tenantId=createCanonicalId("tenant");
    const userId=createCanonicalId("user");
    const identity:PlatformSessionIdentity={
      tenantId,userId,profile:{
        tenantId,userId,name:"Amira",email:"amira@example.com",phone:null,
        locale:"en-NG",createdAt:"2026-10-01T12:00:00.000Z",
      },
    };
    const token=mintPlatformSessionToken("access");
    const hash=hashPlatformSessionToken(token);
    const header=`Bearer ${token}`;
    const deviceSession="00000000-0000-4000-8000-000000000001";
    const anotherUserSession="00000000-0000-4000-8000-000000000002";
    const actions:string[]=[];
    const repo={
      async resolveAccess({accessHash}:{accessHash:string}) {
        return accessHash===hash?identity:null;
      },
      async listSessions(request:{tenantId:string;userId:string;accessHash:string;at:string}) {
        expect(request).toMatchObject({tenantId,userId,accessHash:hash});
        return [{sessionId:deviceSession,deviceId:null,
          createdAt:"2026-10-01T12:00:00.000Z",
          lastAccessAt:"2026-10-01T13:00:00.000Z",current:true}];
      },
      async revokeSession(request:{tenantId:string;userId:string;sessionId:string}) {
        expect(request).toMatchObject({tenantId,userId});
        actions.push(`revoke:${request.sessionId}`);
        return request.sessionId===deviceSession;
      },
      async revokeAllSessions(request:{tenantId:string;userId:string}) {
        expect(request).toMatchObject({tenantId,userId});
        actions.push("revokeAll");
        return 2;
      },
      async listAuthEvents(request:{tenantId:string;userId:string;limit:number}) {
        expect(request).toMatchObject({tenantId,userId,limit:50});
        return [{action:"session_created",at:"2026-10-01T12:00:00.000Z"}];
      },
      async recordAuthEvent(request:{tenantId:string;userId:string;action:string}) {
        expect(request).toMatchObject({tenantId,userId});
        actions.push(request.action);
      },
    } as unknown as PlatformSessionRepository;
    const service=createCustomerAuthService({repository:repo,tenantId,otpPepper:"p".repeat(48)});
    return {service,header,deviceSession,anotherUserSession,actions};
  }

  it("rejects missing or invalid bearer tokens before querying owned security data",async()=>{
    const {service}=setup();
    await expect(service.sessions({authorizationHeader:undefined}))
      .rejects.toMatchObject({code:"UNAUTHORIZED",statusCode:401});
    await expect(service.loginHistory({authorizationHeader:"Bearer invalid"}))
      .rejects.toMatchObject({code:"UNAUTHORIZED",statusCode:401});
    await expect(service.logoutAll({authorizationHeader:undefined}))
      .rejects.toMatchObject({code:"UNAUTHORIZED",statusCode:401});
  });

  it("lists only caller-scoped sessions and recent events",async()=>{
    const {service,header,deviceSession}=setup();
    await expect(service.sessions({authorizationHeader:header}))
      .resolves.toMatchObject([{sessionId:deviceSession,current:true}]);
    await expect(service.loginHistory({authorizationHeader:header}))
      .resolves.toMatchObject([{action:"session_created"}]);
  });

  it("revokes owned sessions but never trusts a user ID supplied by the client",async()=>{
    const {service,header,deviceSession,anotherUserSession,actions}=setup();
    await expect(service.revokeSession({authorizationHeader:header,sessionId:"bad"}))
      .rejects.toMatchObject({code:"VALIDATION_FAILED",statusCode:400});
    await expect(service.revokeSession({authorizationHeader:header,sessionId:anotherUserSession}))
      .rejects.toMatchObject({code:"SESSION_NOT_FOUND",statusCode:404});
    await service.revokeSession({authorizationHeader:header,sessionId:deviceSession});
    expect(actions).toContain(`revoke:${deviceSession}`);
    expect(actions).toContain("session_revoked");
  });

  it("signs out all active sessions and records the security action",async()=>{
    const {service,header,actions}=setup();
    await service.logoutAll({authorizationHeader:header});
    expect(actions).toContain("revokeAll");
    expect(actions).toContain("logout_all");
  });

  it("cannot issue session tokens from installation identifiers alone",async()=>{
    const {service}=setup();
    await expect(service.deviceRestore({
      phone:"+2348012345678",deviceId:"a".repeat(32),
    })).rejects.toMatchObject({code:"PASSWORD_REQUIRED",statusCode:401});
  });
});

describe("financial withdrawal step-up",()=>{
  it("requires email possession, exact request fingerprint, active session and a single-use grant",async()=>{
    const tenantId=createCanonicalId("tenant"),userId=createCanonicalId("user");
    const bearerToken=mintPlatformSessionToken("access");
    const bearerHash=hashPlatformSessionToken(bearerToken);
    let code="",challenge:{
      identifier:string;codeHash:string;consumed:boolean;
    }|undefined;
    const grants=new Map<string,{fingerprint:string;consumed:boolean}>();
    const identity:PlatformSessionIdentity={
      tenantId,userId,profile:{tenantId,userId,name:"Amina",email:"amina@example.com",
        phone:"+2348012345678",locale:"en-NG",createdAt:"2026-10-01T12:00:00.000Z"},
    };
    const repo={
      async resolveAccess({accessHash}:{accessHash:string}){
        return accessHash===bearerHash?identity:null;
      },
      async putOtpChallenge(input:{identifier:string;codeHash:string}){
        challenge={identifier:input.identifier,codeHash:input.codeHash,consumed:false};
      },
      async cancelOtpChallenge(){challenge=undefined;},
      async consumeOtpChallenge(input:{identifier:string;codeHash:string}){
        if(!challenge||challenge.consumed||input.identifier!==challenge.identifier ||
          input.codeHash!==challenge.codeHash)return "invalid" as const;
        challenge.consumed=true;return "accepted" as const;
      },
      async issueActionGrant(input:{accessHash:string;grantHash:string;fingerprint:string}){
        expect(input.accessHash).toBe(bearerHash);
        grants.set(input.grantHash,{fingerprint:input.fingerprint,consumed:false});
      },
      async consumeActionGrant(input:{
        accessHash:string;grantHash:string;fingerprint:string;
      }){
        const grant=grants.get(input.grantHash);
        if(input.accessHash!==bearerHash||!grant||grant.consumed ||
          input.fingerprint!==grant.fingerprint)return false;
        grant.consumed=true;return true;
      },
    } as unknown as PlatformSessionRepository;
    const auth=createCustomerAuthService({
      repository:repo,tenantId,otpPepper:"p".repeat(48),
      emailDelivery:{async send(input){expect(input.identifier).toBe("amina@example.com");code=input.code;}},
    });
    const request={requestId:"request-1",providerCode:"usdttrc20",
      amount:"20",destinationAddress:"TExampleDestination"};
    const authorizationHeader=`Bearer ${bearerToken}`;
    await expect(auth.consumeWithdrawalStepUp({...request,authorizationHeader,stepUpToken:"no"}))
      .rejects.toMatchObject({code:"STEP_UP_REQUIRED"});
    await auth.beginWithdrawalStepUp({...request,authorizationHeader});
    expect(code).toMatch(/^\d{6}$/u);
    const result=await auth.confirmWithdrawalStepUp({...request,authorizationHeader,code});
    await expect(auth.consumeWithdrawalStepUp({
      ...request,amount:"200",authorizationHeader,stepUpToken:result.stepUpToken,
    })).rejects.toMatchObject({code:"STEP_UP_REQUIRED"});
    await auth.consumeWithdrawalStepUp({...request,authorizationHeader,stepUpToken:result.stepUpToken});
    await expect(auth.consumeWithdrawalStepUp({...request,authorizationHeader,
      stepUpToken:result.stepUpToken})).rejects.toMatchObject({code:"STEP_UP_REQUIRED"});
  });
});

describe("account lifecycle financial guards",()=>{
  it("allows read-only account recovery but fails closed for sensitive wallet mutations",async()=>{
    const tenantId=createCanonicalId("tenant"),userId=createCanonicalId("user");
    const token=mintPlatformSessionToken("access");
    const hash=hashPlatformSessionToken(token);
    const identity:PlatformSessionIdentity={
      tenantId,userId,profile:{tenantId,userId,name:"Amira",email:"amira@example.com",
        phone:"+2348012345678",locale:"en-NG",createdAt:"2026-10-01T12:00:00.000Z"},
    };
    let state:"active"|"restricted"|"suspended"|"recovery"="restricted";
    const repository={
      async resolveAccess(input:{accessHash:string}){
        return input.accessHash===hash?identity:null;
      },
      async readAccountState(input:{tenantId:string;userId:string}){
        expect(input).toMatchObject({tenantId,userId});
        return state;
      },
    } as unknown as PlatformSessionRepository;
    const auth=createCustomerAuthService({repository,tenantId,otpPepper:"p".repeat(48)});
    const authorizationHeader=`Bearer ${token}`;
    await expect(auth.authorizeSensitiveMutation({authorizationHeader}))
      .rejects.toMatchObject({code:"ACCOUNT_RESTRICTED",statusCode:403});
    state="recovery";
    await expect(auth.authorizeSensitiveMutation({authorizationHeader}))
      .rejects.toMatchObject({code:"ACCOUNT_RECOVERY_HOLD",statusCode:403});
    state="suspended";
    await expect(auth.authorizeSensitiveMutation({authorizationHeader}))
      .rejects.toMatchObject({code:"ACCOUNT_SUSPENDED",statusCode:403});
    state="active";
    await expect(auth.authorizeSensitiveMutation({authorizationHeader}))
      .resolves.toBeUndefined();
    await expect(auth.authorizeSensitiveMutation({authorizationHeader:undefined}))
      .rejects.toMatchObject({code:"UNAUTHORIZED",statusCode:401});
  });
});
