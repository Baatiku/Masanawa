import { describe,expect,it } from "vitest";
import { createP2pService, type P2pPool, type MsnwEscrowAuthority } from "./service.js";

const offerId="32e733b0-5aad-4d6a-89af-1b28cc109834";
const seller={tenantId:"tenant-a",userId:"seller-a"};
const escrow={
  reserve:async()=>{throw Error("offer management must not move escrow");},
  release:async()=>{throw Error("offer management must not release escrow");},
  refund:async()=>{throw Error("offer management must not refund escrow");},
} as MsnwEscrowAuthority;

function fixture(matches:boolean) {
  const statements:string[]=[];
  const params:unknown[][]=[];
  const pool={
    async query(sql:string,args:unknown[]=[]){
      statements.push(sql);params.push(args);
      if(sql.startsWith("UPDATE commerce.msnw_p2p_offers")) {
        return {rowCount:matches?1:0,
          rows:matches?[{offer_id:offerId}]:[]};
      }
      throw Error("Unexpected operation SQL");
    },
    async connect(){throw Error("must not open a custody transaction");},
  } as unknown as P2pPool;
  return {service:createP2pService(pool,escrow),statements,params};
}
describe("seller P2P offer pause/resume without escrow mutation",()=>{
  it("pauses only active offers for the tenant-scoped seller",async()=>{
    const f=fixture(true);
    expect(await f.service.pauseOffer(seller,offerId)).toEqual({
      offerId,state:"paused",
    });
    expect(f.params).toEqual([[seller.tenantId,seller.userId,offerId]]);
    expect(f.statements[0]).toContain("state='active'");
    expect(f.statements[0]).toContain("SET state='paused'");
    expect(f.statements[0]).not.toContain("msnw_p2p_custody");
  });
  it("resumes only verified, enabled, currently funded sellers",async()=>{
    const f=fixture(true);
    expect(await f.service.resumeOffer(seller,offerId)).toEqual({
      offerId,state:"active",
    });
    expect(f.params).toEqual([[seller.tenantId,seller.userId,offerId,false]]);
    expect(f.statements[0]).toContain("state='paused'");
    expect(f.statements[0]).toContain("p.verified_at IS NOT NULL");
    expect(f.statements[0]).toContain("p.disabled_at IS NULL");
    expect(f.statements[0]).toContain("c.available_micro");
  });
  it("does not reactivate unqualified offers and never touches escrow",async()=>{
    const f=fixture(false);
    await expect(f.service.resumeOffer(seller,offerId))
      .rejects.toMatchObject({code:"p2p.offer_resume_unavailable"});
    await expect(f.service.pauseOffer(seller,offerId))
      .rejects.toMatchObject({code:"p2p.offer_not_active"});
    expect(f.statements.every(x=>!x.includes("msnw_p2p_custody"))).toBe(true);
  });
  it("rejects malformed offer identifiers before SQL",async()=>{
    const f=fixture(true);
    await expect(f.service.resumeOffer(seller,"not-an-id"))
      .rejects.toMatchObject({code:"p2p.invalid_id"});
    expect(f.statements).toEqual([]);
  });
});
