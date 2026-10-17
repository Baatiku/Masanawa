import {describe,it,expect} from "vitest";
import type {Pool} from "@masanawa/postgres";
import type {PlatformCustomerSessionAuthorizer} from "./customer_auth.js";
import {createAccountDataExports} from "./account_data_exports.js";

describe("private profile export",()=>{
  it("limits profile, sessions and audit events to the authenticated tenant and user",async()=>{
    const seen:unknown[][]=[];
    const pool={
      async query(sql:string,params:unknown[]){
        seen.push(params);
        if(sql.includes("FROM security.platform_user_profiles p"))return {rows:[{
          display_name:"Amina",email:"owned@example.com",phone:"+2348012345678",
          locale:"ha",created_at:new Date("2026-01-01T12:00:00Z"),
          handle:"amina",bio:"Hello",avatar_url:null,state:"active",
          account_control:"restricted",deletion_phase:null,
        }]};
        if(sql.includes("FROM security.platform_auth_events"))return {rows:[
          {action:"new_device_signin",at:new Date("2026-10-17T12:00:00Z")},
        ]};
        if(sql.includes("FROM security.platform_sessions"))return {rows:[
          {session_id:"session-1",device_id:"device-1",
            created_at:new Date("2026-10-17T11:00:00Z"),
            updated_at:new Date("2026-10-17T12:00:00Z")},
        ]};
        throw Error("Unexpected query: "+sql);
      },
    } as unknown as Pool;
    const sessions={
      async authorize({authorizationHeader}:{authorizationHeader:string|undefined}){
        if(authorizationHeader!=="Bearer owner")throw Error("UNAUTHORIZED");
        return {tenantId:"tenant_owner",userId:"user_owner"};
      },
    } as PlatformCustomerSessionAuthorizer;
    const service=createAccountDataExports(pool,sessions);
    await expect(service.personalData({authorizationHeader:undefined}))
      .rejects.toThrow("UNAUTHORIZED");
    const record=await service.personalData({authorizationHeader:"Bearer owner"});
    expect(seen).toHaveLength(3);
    for(const pair of seen)expect(pair).toEqual(["tenant_owner","user_owner"]);
    expect(record.profile.linkedEmail).toBe("owned@example.com");
    expect(record.profile.state).toBe("restricted");
    expect(record.recentAccessEvents[0]).toMatchObject({action:"new_device_signin"});
    expect(record.activeDevices[0]).toMatchObject({installationId:"device-1"});
    const serialized=JSON.stringify(record);
    for(const secret of ["password_hash","access_hash","refresh_hash","otp_code","bearer_token"])
      expect(serialized).not.toContain(secret);
  });
});
