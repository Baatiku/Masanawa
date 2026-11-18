import Fastify from "fastify";
import {describe,expect,it,vi} from "vitest";
import type {DataRedemptionPorts,DataRedemptionRow} from "./data_purchase_service.js";
import {registerGbDataPurchaseRoutes} from "./data_purchase_routes.js";

const owner={tenantId:"tenant_a",userId:"fan_a"};
const headers={authorization:"Bearer scoped"};
function fixture() {
 const app=Fastify();
 const authorize=vi.fn(async()=>owner);
 const read=vi.fn(async(_actor:typeof owner,_id:string)=>null as DataRedemptionRow|null);
 const pay=vi.fn();
 const reserve=vi.fn();
 const service:DataRedemptionPorts={
  approved:async()=>[],liveItems:async()=>[],reserve,capture:vi.fn(),
  release:vi.fn(),claim:vi.fn(),read,resolve:vi.fn(),pay,status:vi.fn(),
 };
 registerGbDataPurchaseRoutes(app,{authorize,service});
 return {app,authorize,read,pay,reserve};
}

describe("authenticated, read-only original Data purchase recovery",()=>{
 it("derives the original actor-scoped operation without provider or ledger mutation",async()=>{
  const f=fixture();
  try{
   const key="redeem_original_20261026";
   const absent=await f.app.inject({method:"GET",
    url:`/v1/gb/data/purchases/intent/${key}`,headers});
   expect(absent.statusCode).toBe(404);
   const id=f.read.mock.calls[0]![1];
   expect(id).toMatch(/^data_[0-9a-f]{48}$/);
   f.read.mockResolvedValueOnce({operationId:id,userId:"fan_a",
    bundleId:"BIL22:DT001",version:"v1",phone:"+2348012345678",
    amountNgn:"500",costMb:1000,state:"pending"});
   const result=await f.app.inject({method:"GET",
    url:`/v1/gb/data/purchases/intent/${key}`,headers});
   expect(result.statusCode).toBe(200);
   expect(result.headers["cache-control"]).toBe("no-store");
   expect(result.json()).toEqual({operationId:id,state:"pending",costMb:1000,
    bundleId:"BIL22:DT001",version:"v1",recipientPhone:"+2348012345678"});
   expect(f.pay).not.toHaveBeenCalled();
   expect(f.reserve).not.toHaveBeenCalled();
  }finally{await f.app.close();}
 });
 it("blocks other accounts, bad keys, unauthenticated and unavailable recovery",async()=>{
  const f=fixture();
  try{
   const key="redeem_original_20261026";
   const a=await f.app.inject({method:"GET",
    url:`/v1/gb/data/purchases/intent/${key}`,headers});
   expect(a.statusCode).toBe(404);
   const idA=f.read.mock.calls[0]![1];
   f.authorize.mockResolvedValueOnce({tenantId:"tenant_a",userId:"fan_b"});
   const b=await f.app.inject({method:"GET",
    url:`/v1/gb/data/purchases/intent/${key}`,headers});
   expect(b.statusCode).toBe(404);
   expect(f.read.mock.calls[1]![1]).not.toBe(idA);
   f.authorize.mockResolvedValueOnce({tenantId:"tenant_b",userId:"fan_a"});
   const otherTenant=await f.app.inject({method:"GET",
    url:`/v1/gb/data/purchases/intent/${key}`,headers});
   expect(otherTenant.statusCode).toBe(404);
   expect(f.read.mock.calls[2]![1]).not.toBe(idA);
   const bad=await f.app.inject({method:"GET",
    url:"/v1/gb/data/purchases/intent/bad!_key",headers});
   expect(bad.statusCode).toBe(422);
   expect(bad.json().error.code).toBe("invalid_idempotency");
   expect(f.read).toHaveBeenCalledTimes(3);
   f.authorize.mockRejectedValueOnce(Error("unauthorized"));
   const denied=await f.app.inject({method:"GET",
    url:`/v1/gb/data/purchases/intent/${key}`,headers});
   expect(denied.statusCode).toBe(401);
   expect(f.read).toHaveBeenCalledTimes(3);
   f.read.mockRejectedValueOnce(Error("database_offline"));
   const offline=await f.app.inject({method:"GET",
    url:`/v1/gb/data/purchases/intent/${key}`,headers});
   expect(offline.statusCode).toBe(503);
   expect(f.pay).not.toHaveBeenCalled();
  }finally{await f.app.close();}
 });
});
