import Fastify from "fastify";
import {describe,it,expect,vi} from "vitest";
import {registerGbActivityHoldRoutes,type GbActivityHold} from "./activity_hold_routes.js";
const actor={tenantId:"tenant_a",userId:"fan_a"};
const row=(id:string):GbActivityHold=>({operationId:id,kind:"connected_call",operationState:"reserved",state:"reserved",
  reservedMb:250,heldMb:250,chargedMb:0,releasedMb:0,purchasedReservedMb:200,welcomeReservedMb:50,
  createdAt:"2026-10-27T00:00:00.000003Z",resolvedAt:null,entryIds:[]});
function setup(){
  const app=Fastify();const authorize=vi.fn(async()=>actor);
  const listHolds=vi.fn(async()=>[row("op_3"),row("op_2")]);
  const findHold=vi.fn(async()=>row("op_3") as GbActivityHold|null);
  registerGbActivityHoldRoutes(app,{authorize,listHolds,findHold});return {app,authorize,listHolds,findHold};
}
const headers={authorization:"Bearer scoped"};
describe("private read-only reservation history",()=>{
  it("authenticates before all reads and never caches financial lifecycle data",async()=>{
    const f=setup();try{
      f.authorize.mockRejectedValue(Error("revoked"));
      for(const url of ["/v1/gb/wallet/activity/holds","/v1/gb/wallet/activity/holds/op_3"]){
        const r=await f.app.inject({url});expect(r.statusCode).toBe(401);expect(r.headers["cache-control"]).toBe("no-store");
      }
      expect(f.listHolds).not.toHaveBeenCalled();expect(f.findHold).not.toHaveBeenCalled();
    }finally{await f.app.close();}
  });
  it("binds exact microsecond cursors to actor, filter and original snapshot",async()=>{
    const f=setup();try{
      const first=await f.app.inject({url:"/v1/gb/wallet/activity/holds?limit=1&state=reserved&userId=foreign",headers});
      expect(first.statusCode).toBe(200);expect(first.json().items).toHaveLength(1);
      expect(f.listHolds).toHaveBeenCalledWith(actor,2,null,"reserved",first.json().snapshotAt);
      const cursor=first.json().nextCursor as string;
      await f.app.inject({url:`/v1/gb/wallet/activity/holds?limit=1&state=reserved&cursor=${cursor}`,headers});
      expect(f.listHolds).toHaveBeenLastCalledWith(actor,2,{operationId:"op_3",createdAt:"2026-10-27T00:00:00.000003Z"},"reserved",first.json().snapshotAt);
      expect((await f.app.inject({url:`/v1/gb/wallet/activity/holds?state=released&cursor=${cursor}`,headers})).statusCode).toBe(400);
      f.authorize.mockResolvedValueOnce({tenantId:"tenant_a",userId:"other"});
      expect((await f.app.inject({url:`/v1/gb/wallet/activity/holds?state=reserved&cursor=${cursor}`,headers})).statusCode).toBe(400);
      expect(f.listHolds).toHaveBeenCalledTimes(2);
    }finally{await f.app.close();}
  });
  it("keeps missing, unavailable and unconfigured lifecycle reads distinct from empty",async()=>{
    const f=setup();try{
      f.findHold.mockResolvedValueOnce(null);
      expect((await f.app.inject({url:"/v1/gb/wallet/activity/holds/op_3",headers})).statusCode).toBe(404);
      f.findHold.mockRejectedValueOnce(Error("db"));
      expect((await f.app.inject({url:"/v1/gb/wallet/activity/holds/op_3",headers})).statusCode).toBe(503);
      f.listHolds.mockRejectedValueOnce(Error("db"));
      expect((await f.app.inject({url:"/v1/gb/wallet/activity/holds",headers})).statusCode).toBe(503);
      f.listHolds.mockResolvedValueOnce([]);
      const empty=await f.app.inject({url:"/v1/gb/wallet/activity/holds",headers});
      expect(empty.statusCode).toBe(200);expect(empty.json()).toMatchObject({items:[],nextCursor:null});
      const absent=Fastify();registerGbActivityHoldRoutes(absent,{authorize:async()=>actor});
      try{expect((await absent.inject({url:"/v1/gb/wallet/activity/holds",headers})).statusCode).toBe(503);}finally{await absent.close();}
    }finally{await f.app.close();}
  });
  it("rejects malformed query/id and exposes only scoped fresh detail without a write route",async()=>{
    const f=setup();try{
      for(const query of ["limit=0","limit=31","limit=no","state=completed","cursor=broken"])
        expect((await f.app.inject({url:`/v1/gb/wallet/activity/holds?${query}`,headers})).statusCode).toBe(400);
      const detail=await f.app.inject({url:"/v1/gb/wallet/activity/holds/op_3?userId=foreign",headers});
      expect(detail.json().hold.heldMb).toBe(250);expect(f.findHold).toHaveBeenCalledWith(actor,"op_3");
      expect((await f.app.inject({method:"POST",url:"/v1/gb/wallet/activity/holds/op_3",headers,payload:{state:"captured"}})).statusCode).toBe(404);
    }finally{await f.app.close();}
  });
});
