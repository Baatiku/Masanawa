import Fastify from "fastify";
import { describe, expect, it, vi } from "vitest";
import { registerGbWalletActivityRoutes } from "./activity_routes.js";

const owner={tenantId:"tenant_a",userId:"fan_a"};
const item=(n:number)=>({entryId:`mb:${n}`,operationId:`operation_${n}`,
  unit:"MB" as const,amount:-n,kind:"send",status:"completed" as const,
  createdAt:new Date(Date.UTC(2026,9,25,20,0,n)).toISOString()});
function fixture() {
  const app=Fastify();
  const authorize=vi.fn(async()=>owner);
  const list=vi.fn(async()=>[item(2),item(1)]);
  registerGbWalletActivityRoutes(app,{authorize,list});
  return {app,authorize,list};
}
const headers={authorization:"Bearer scoped"};

describe("account-fenced MB/NGN Activity HTTP",()=>{
  it("rejects missing sessions before private reads",async()=>{
    const f=fixture();
    f.authorize.mockRejectedValue(new Error("unauthorized"));
    try {
      const r=await f.app.inject({method:"GET",url:"/v1/gb/wallet/activity",headers:{}});
      expect(r.statusCode).toBe(401);
      expect(f.list).not.toHaveBeenCalled();
      expect(r.headers["cache-control"]).toBe("no-store");
    } finally {await f.app.close();}
  });
  it("paginates posted rows with a user-bound cursor and ignores supplied actor fields",async()=>{
    const f=fixture();
    try {
      const first=await f.app.inject({method:"GET",
        url:"/v1/gb/wallet/activity?limit=1&userId=attacker",headers});
      expect(first.statusCode).toBe(200);
      expect(first.json().items).toHaveLength(1);
      expect(f.list).toHaveBeenCalledWith(owner,2,null);
      const cursor=first.json().nextCursor as string;
      expect(cursor).toMatch(/^[A-Za-z0-9_-]+$/);
      f.list.mockResolvedValueOnce([]);
      const second=await f.app.inject({method:"GET",
        url:`/v1/gb/wallet/activity?limit=1&cursor=${cursor}`,headers});
      expect(second.statusCode).toBe(200);
      expect(second.json()).toEqual({items:[],nextCursor:null});
      expect(f.list).toHaveBeenCalledWith(owner,2,
        {createdAt:item(2).createdAt,entryId:"mb:2"});
      for(const url of ["/v1/gb/wallet/activity?limit=31",
        "/v1/gb/wallet/activity?limit=0",
        "/v1/gb/wallet/activity?limit=1&cursor=invalid"]){
        expect((await f.app.inject({method:"GET",url,headers})).statusCode).toBe(422);
      }
      f.authorize.mockResolvedValueOnce({tenantId:"tenant_a",userId:"fan_b"});
      const replay=await f.app.inject({method:"GET",
        url:`/v1/gb/wallet/activity?limit=1&cursor=${cursor}`,headers});
      expect(replay.statusCode).toBe(422);
    } finally {await f.app.close();}
  });
  it("uses unavailable rather than a false empty state when ledgers cannot be read",async()=>{
    const f=fixture();f.list.mockRejectedValueOnce(new Error("missing_new_ledger"));
    try {
      const r=await f.app.inject({method:"GET",url:"/v1/gb/wallet/activity",headers});
      expect(r.statusCode).toBe(503);
      expect(r.json().error.code).toBe("activity_ledger_unavailable");
    } finally {await f.app.close();}
  });
});
