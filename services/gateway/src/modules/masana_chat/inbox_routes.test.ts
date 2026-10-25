import Fastify from "fastify";
import { describe, expect, it, vi } from "vitest";
import { registerMasanaInboxRoutes } from "./inbox_routes.js";
const character = "character_0199f0d0-0000-7000-8000-000000000003";
function fixture() {
  const app=Fastify();
  const resolveFan=vi.fn(async () => ({tenantId:"tenant-a",fanUserId:"fan-a"}));
  const list=vi.fn(async () => [{
    characterId:character,displayName:"Gwana",profession:"Teacher",
    lastMessage:"Salam",lastActivityAt:"2026-10-11",pinned:false,
    unreadCount:1,revision:0,
  }]);
  const setPinned=vi.fn(async () => 1 as number|null);
  const markRead=vi.fn(async () => 2 as number|null);
  registerMasanaInboxRoutes(app,{resolveFan,inbox:{list,setPinned,markRead}});
  return {app,resolveFan,list,setPinned,markRead};
}
describe("C10 authenticated Chats list HTTP",()=>{
  it("requires bearer authorization before any private read or write",async()=>{
    const f=fixture();
    try {
      for(const [method,url] of [
        ["GET","/v1/chats"],["PATCH","/v1/chats/"+character],
        ["POST","/v1/chats/"+character+"/read"],
      ] as const){
        const result=await f.app.inject({method,url});
        expect(result.statusCode).toBe(401);
      }
      expect(f.resolveFan).not.toHaveBeenCalled();
      expect(f.list).not.toHaveBeenCalled();
      expect(f.setPinned).not.toHaveBeenCalled();
    }finally{await f.app.close();}
  });
  it("ignores forged tenant and fan in list and pin payload",async()=>{
    const f=fixture(),headers={authorization:"Bearer fan"};
    try{
      const result=await f.app.inject({method:"GET",
        url:"/v1/chats?q=teacher&tenantId=other",headers});
      expect(result.statusCode).toBe(200);
      expect(result.json().chats[0].displayName).toBe("Gwana");
      expect(f.list).toHaveBeenCalledWith({
        tenantId:"tenant-a",fanUserId:"fan-a"},"teacher");
      const pin=await f.app.inject({method:"PATCH",url:"/v1/chats/"+character,
        headers,payload:{tenantId:"other",fanUserId:"other",
          pinned:true,expectedRevision:0}});
      expect(pin.statusCode).toBe(200);
      expect(f.setPinned).toHaveBeenCalledWith({
        tenantId:"tenant-a",fanUserId:"fan-a"},character,true,0);
    }finally{await f.app.close();}
  });
  it("rejects wildcard-length/invalid ids and revision conflicts",async()=>{
    const f=fixture(),headers={authorization:"Bearer fan"};
    try{
      expect((await f.app.inject({method:"GET",
        url:"/v1/chats?q="+"x".repeat(81),headers})).statusCode).toBe(422);
      expect((await f.app.inject({method:"PATCH",
        url:"/v1/chats/"+character,headers,
        payload:{pinned:true,expectedRevision:-1}})).statusCode).toBe(422);
      f.setPinned.mockResolvedValueOnce(null);
      expect((await f.app.inject({method:"PATCH",
        url:"/v1/chats/"+character,headers,
        payload:{pinned:true,expectedRevision:0}})).statusCode).toBe(409);
      f.markRead.mockResolvedValueOnce(null);
      expect((await f.app.inject({method:"POST",
        url:"/v1/chats/"+character+"/read",headers})).statusCode).toBe(404);
    }finally{await f.app.close();}
  });
  it("pages by a query-bound cursor, retains legacy responses and fails closed on malformed positions",async()=>{
    const f=fixture(),headers={authorization:"Bearer fan"};
    const second="character_0199f0d0-0000-7000-8000-000000000004";
    f.list.mockResolvedValueOnce([
      {characterId:character,displayName:"Gwana",profession:"Teacher",
        lastMessage:"Salam",lastActivityAt:"2026-10-11T14:00:00Z",
        pinned:false,unreadCount:1,revision:0},
      {characterId:second,displayName:"Amina",profession:"Teacher",
        lastMessage:"Reply",lastActivityAt:"2026-10-11T13:00:00Z",
        pinned:true,unreadCount:0,revision:0},
    ]);
    try {
      const first=await f.app.inject({method:"GET",url:"/v1/chats?q=teacher&limit=1",headers});
      expect(first.statusCode).toBe(200);
      expect(first.json().chats).toHaveLength(1);
      const cursor=first.json().nextCursor as string;
      expect(cursor).toMatch(/^[A-Za-z0-9_-]+$/);
      expect(f.list).toHaveBeenCalledWith({tenantId:"tenant-a",fanUserId:"fan-a"},"teacher",
        {limit:2,cursor:null});
      const next=await f.app.inject({method:"GET",
        url:`/v1/chats?q=teacher&limit=1&cursor=${cursor}`,headers});
      expect(next.statusCode).toBe(200);
      expect(next.json().nextCursor).toBeNull();
      expect(f.list).toHaveBeenCalledWith({tenantId:"tenant-a",fanUserId:"fan-a"},"teacher",
        {limit:2,cursor:{lastActivityAt:"2026-10-11T14:00:00.000Z",characterId:character}});
      for (const url of [
        `/v1/chats?q=other&limit=1&cursor=${cursor}`,
        "/v1/chats?limit=0", "/v1/chats?limit=31",
        "/v1/chats?cursor=abc", "/v1/chats?limit=2&cursor=abc",
      ]) {
        const invalid=await f.app.inject({method:"GET",url,headers});
        expect(invalid.statusCode).toBe(422);
      }
      const legacy=await f.app.inject({method:"GET",url:"/v1/chats?q=teacher",headers});
      expect(legacy.statusCode).toBe(200);
      expect(legacy.json()).not.toHaveProperty("nextCursor");
    } finally {await f.app.close();}
  });
});
