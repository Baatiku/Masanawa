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
  const find=vi.fn(async()=>item(2) as ReturnType<typeof item> | null);
  const summary=vi.fn(async(days:7|30)=>({periodDays:days,
    fromAt:"2026-10-18T00:00:00.000Z",toAt:"2026-10-25T00:00:00.000Z",
    MB:{received:1000,spent:500,net:500},
    NGN:{received:500050,spent:100,net:499950}}));
  registerGbWalletActivityRoutes(app,{authorize,list,find,summary});
  return {app,authorize,list,find,summary};
}
const headers={authorization:"Bearer scoped"};

describe("account-fenced MB/NGN Activity HTTP",()=>{
  it("returns separately scoped immutable 7/30 day totals without summing currencies",async()=>{
    const f=fixture();
    try {
      f.authorize.mockRejectedValueOnce(new Error("unauthorized"));
      const missing=await f.app.inject({method:"GET",url:"/v1/gb/wallet/activity/summary"});
      expect(missing.statusCode).toBe(401);
      const headers={authorization:"Bearer scoped"};
      const total=await f.app.inject({method:"GET",url:"/v1/gb/wallet/activity/summary?days=30&userId=other",headers});
      expect(total.statusCode).toBe(200);
      expect(total.headers["cache-control"]).toBe("no-store");
      expect(total.json().MB.net).toBe(500);
      expect(total.json().NGN.net).toBe(499950);
      expect(f.summary).toHaveBeenCalledWith(owner,30);
      expect((await f.app.inject({method:"GET",url:"/v1/gb/wallet/activity/summary?days=0",headers})).statusCode).toBe(422);
      f.summary.mockRejectedValueOnce(new Error("db_unavailable"));
      const failed=await f.app.inject({method:"GET",url:"/v1/gb/wallet/activity/summary",headers});
      expect(failed.statusCode).toBe(503);
    }finally{await f.app.close();}
  });
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
      expect(f.list).toHaveBeenCalledWith(owner,2,null,"all");
      const cursor=first.json().nextCursor as string;
      expect(cursor).toMatch(/^[A-Za-z0-9_-]+$/);
      f.list.mockResolvedValueOnce([]);
      const second=await f.app.inject({method:"GET",
        url:`/v1/gb/wallet/activity?limit=1&cursor=${cursor}`,headers});
      expect(second.statusCode).toBe(200);
      expect(second.json()).toEqual({items:[],nextCursor:null});
      expect(f.list).toHaveBeenCalledWith(owner,2,
        {createdAt:item(2).createdAt,entryId:"mb:2"},"all");
      for(const url of ["/v1/gb/wallet/activity?limit=31",
        "/v1/gb/wallet/activity?limit=0",
        "/v1/gb/wallet/activity?unit=MSNW",
        "/v1/gb/wallet/activity?limit=1&cursor=invalid"]){
        expect((await f.app.inject({method:"GET",url,headers})).statusCode).toBe(422);
      }
      f.authorize.mockResolvedValueOnce({tenantId:"tenant_a",userId:"fan_b"});
      const replay=await f.app.inject({method:"GET",
        url:`/v1/gb/wallet/activity?limit=1&cursor=${cursor}`,headers});
      expect(replay.statusCode).toBe(422);
      const filterReplay=await f.app.inject({method:"GET",
        url:`/v1/gb/wallet/activity?unit=MB&cursor=${cursor}`,headers});
      expect(filterReplay.statusCode).toBe(422);
    } finally {await f.app.close();}
  });
  it("binds an MB/NGN filter to every page cursor, never locally mixes units",async()=>{
    const f=fixture();
    try{
      const first=await f.app.inject({method:"GET",
        url:"/v1/gb/wallet/activity?limit=1&unit=MB",headers});
      expect(first.statusCode).toBe(200);
      expect(f.list).toHaveBeenCalledWith(owner,2,null,"MB");
      const token=first.json().nextCursor as string;
      const page=await f.app.inject({method:"GET",
        url:`/v1/gb/wallet/activity?limit=1&unit=MB&cursor=${token}`,headers});
      expect(page.statusCode).toBe(200);
      expect(f.list).toHaveBeenCalledWith(owner,2,
        {createdAt:item(2).createdAt,entryId:"mb:2"},"MB");
      expect((await f.app.inject({method:"GET",
        url:`/v1/gb/wallet/activity?unit=NGN&cursor=${token}`,headers})).statusCode).toBe(422);
    }finally{await f.app.close();}
  });
  it("uses unavailable rather than a false empty state when ledgers cannot be read",async()=>{
    const f=fixture();f.list.mockRejectedValueOnce(new Error("missing_new_ledger"));
    try {
      const r=await f.app.inject({method:"GET",url:"/v1/gb/wallet/activity",headers});
      expect(r.statusCode).toBe(503);
      expect(r.json().error.code).toBe("activity_ledger_unavailable");
    } finally {await f.app.close();}
  });
  it("reads exact entry freshly within the authenticated actor scope",async()=>{
    const f=fixture();
    try {
      const read=await f.app.inject({method:"GET",
        url:"/v1/gb/wallet/activity/mb:2?userId=another",headers});
      expect(read.statusCode).toBe(200);
      expect(read.json().item).toEqual(item(2));
      expect(f.find).toHaveBeenCalledWith(owner,"mb:2");
      expect(read.headers["cache-control"]).toBe("no-store");
      f.find.mockResolvedValueOnce(null);
      const missing=await f.app.inject({method:"GET",
        url:"/v1/gb/wallet/activity/ngn:another",headers});
      expect(missing.statusCode).toBe(404);
      const bad=await f.app.inject({method:"GET",
        url:"/v1/gb/wallet/activity/INVALID",headers});
      expect(bad.statusCode).toBe(422);
      expect(f.find).toHaveBeenCalledTimes(2);
    }finally{await f.app.close();}
  });
});
