import { afterEach, describe, expect, it } from "vitest";
import { createGatewayApp } from "../app.js";

const apps: Array<ReturnType<typeof createGatewayApp>> = [];
afterEach(async () => { await Promise.all(apps.splice(0).map(app=>app.close())); });

describe("lite Gateway MB wallet read composition", () => {
  it("does not mount new GB wallet as a second legacy financial ledger",async()=>{
    const app=createGatewayApp({ productScope: "legacy", gbWalletSummary: {
      authorize: async()=>({tenantId:"tenant-a",userId:"fan-a"}),
      read: async()=>({
        purchasedMb:1200,welcomeMb:500,reservedPurchasedMb:0,
        reservedWelcomeMb:0,frozen:false,
      }),
    }});
    apps.push(app);
    expect((await app.inject({method:"GET",url:"/v1/gb/wallet/summary"})).statusCode).toBe(404);
  });

  it("only displays whole-MB values from authenticated owner and never caches it",async()=>{
    const seen: string[]=[];
    const app=createGatewayApp({ productScope: "masana-lite", gbWalletSummary: {
      authorize: async token=>{
        if(token!=="Bearer authorized") throw new Error("unauthorized");
        return {tenantId:"tenant-a",userId:"fan-a"};
      },
      read: async user=>{
        seen.push(user.tenantId+"/"+user.userId);
        return {purchasedMb:1200,welcomeMb:500,reservedPurchasedMb:200,
          reservedWelcomeMb:0,frozen:false};
      },
    }});
    apps.push(app);
    const denied=await app.inject({method:"GET",url:"/v1/gb/wallet/summary"});
    expect(denied.statusCode).toBe(401);
    const response=await app.inject({method:"GET",url:"/v1/gb/wallet/summary",
      headers:{authorization:"Bearer authorized"}});
    expect(response.statusCode).toBe(200);
    expect(response.headers["cache-control"]).toBe("no-store");
    expect(response.json()).toMatchObject({balance:{
      unit:"MB",totalMb:1700,availableMb:1500,
      availableGb:"1.5", purchasedAvailableMb:1000,
      welcomeAvailableMb:500,canSpendPurchased:true,
    }});
    expect(seen).toEqual(["tenant-a/fan-a"]);
  });
});
