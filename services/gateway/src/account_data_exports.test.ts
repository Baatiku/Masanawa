import {describe,it,expect} from "vitest";
import {createAccountDataExports} from "./account_data_exports.js";
import type {PlatformCustomerSessionAuthorizer} from "./customer_auth.js";
import type {Pool} from "@masanawa/postgres";

describe("account exports must only read the authenticated owner",()=>{
  const owner={tenantId:"tenant_a",userId:"user_a",profile:{}};
  const other={tenantId:"tenant_b",userId:"user_b",profile:{}};
  const requests:unknown[][]=[];
  const pool={
    async query(_sql:string,params:unknown[]){
      requests.push(params);
      if(_sql.includes("FROM agents.mobile_turn_commands"))
        return {rows:[{
          request_id:"request_1",character_id:"character_1",
          kind:"text",state:"completed",user_text:"my text",reply:"assistant reply",
          created_at:new Date("2026-10-17T13:00:00Z"),
        }]};
      if(_sql.includes("FROM security.platform_user_profiles"))
        return {rows:[{display_name:"Masanawa member",email:null,phone:"+2348012345678",
          avatar_url:null,state:"active",deletion_phase:null}]};
      throw Error("unexpected query");
    },
  } as unknown as Pool;
  const sessions:PlatformCustomerSessionAuthorizer={
    async authorize({authorizationHeader}){
      if(authorizationHeader==="Bearer valid")return owner as never;
      if(authorizationHeader==="Bearer other")return other as never;
      throw Error("UNAUTHORIZED");
    },
  };
  it("omits other accounts and needs a signed-in bearer",async()=>{
    requests.length=0;
    const api=createAccountDataExports(pool,sessions);
    await expect(api.conversations({authorizationHeader:undefined})).rejects.toThrow();
    const first=await api.conversations({authorizationHeader:"Bearer valid"});
    expect(first.items).toHaveLength(1);
    expect(first.items[0]).toMatchObject({userText:"my text"});
    expect(requests.at(-1)?.slice(0,2)).toEqual(["tenant_a","user_a"]);
    await api.conversations({authorizationHeader:"Bearer other"});
    expect(requests.at(-1)?.slice(0,2)).toEqual(["tenant_b","user_b"]);
  });
  it("rejects malformed export cursors and reports optional missing profile fields",async()=>{
    const api=createAccountDataExports(pool,sessions);
    await expect(api.conversations({authorizationHeader:"Bearer valid",cursor:"bad!!"}))
      .rejects.toMatchObject({code:"EXPORT_CURSOR_INVALID",statusCode:400});
    const summary=await api.summary({authorizationHeader:"Bearer valid"});
    expect(summary.profileCompletion).toMatchObject({
      displayName:false,profilePhoto:false,linkedEmail:false,phonePresent:true,
    });
  });
});
