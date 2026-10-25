import { afterEach, describe, expect, it } from "vitest";
import { createGatewayApp, type GatewayAppOptions } from "../app.js";

const open: ReturnType<typeof createGatewayApp>[] = [];
afterEach(async()=>{await Promise.all(open.splice(0).map(app=>app.close()));});

describe("explicit reduced-product route gate", () => {
  it("removes legacy creator, P2P and Rooms registration in staged Lite mode",async()=>{
    const options:GatewayAppOptions={
      productScope:"masana-lite",
      creatorClone:{} as NonNullable<GatewayAppOptions["creatorClone"]>,
      roomCommunity:{} as NonNullable<GatewayAppOptions["roomCommunity"]>,
      humanCommunication:{} as NonNullable<GatewayAppOptions["humanCommunication"]>,
      p2p:{} as NonNullable<GatewayAppOptions["p2p"]>,
    };
    const app=createGatewayApp(options);
    open.push(app);
    await app.ready();
    const response=await app.inject({method:"POST",url:"/creator/clone",payload:{}});
    expect(response.statusCode).toBe(404);
    const gb=await app.inject({method:"GET",url:"/v1/gb/recharge/packages"});
    expect(gb.statusCode).toBe(200);
    expect(gb.json().packages).toHaveLength(6);
  });

  it("does not silently change legacy deployments without an explicit cutover",async()=>{
    const app=createGatewayApp();
    open.push(app);
    const gb=await app.inject({method:"GET",url:"/v1/gb/recharge/packages"});
    expect(gb.statusCode).toBe(200);
  });
});
