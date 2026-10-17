import { describe, expect, it } from "vitest";
import { createCanonicalId } from "@masanawa/contracts";
import {
  hashPlatformSessionToken, mintPlatformSessionToken,
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
