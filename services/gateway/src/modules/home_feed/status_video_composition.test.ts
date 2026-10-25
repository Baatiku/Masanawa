import { afterEach, describe, expect, it, vi } from "vitest";
import { createGatewayApp } from "../../app.js";

const apps: ReturnType<typeof createGatewayApp>[] = [];
afterEach(async () => { await Promise.all(apps.splice(0).map(app => app.close())); });

describe("authenticated retained Status Gateway registration", () => {
  it("binds Status to the authenticated tenant and user", async () => {
    const list = vi.fn(async () => ({items:[],nextCursor:null}));
    const app = createGatewayApp({status:{
      sessions:{authorize:async ({authorizationHeader}) => {
        if (authorizationHeader !== "Bearer permitted") {
          throw Object.assign(new Error("authentication_required"),{status:401,code:"authentication_required"});
        }
        return {tenantId:"tenant_a",userId:"fan_a"};
      }},
      feed:{list} as never,
      editorial:{} as never,
    }});
    apps.push(app);
    await app.ready();
    expect((await app.inject({url:"/v1/feed"})).statusCode).toBe(401);
    const response = await app.inject({url:"/v1/feed",headers:{authorization:"Bearer permitted"}});
    expect(response.statusCode).toBe(200);
    expect(response.json()).toEqual({items:[],nextCursor:null});
    expect(list).toHaveBeenCalledWith("tenant_a","fan_a","for_you",undefined,undefined);
  });
});