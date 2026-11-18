import {readFile} from "node:fs/promises";
import {PGlite} from "@electric-sql/pglite";
import type {Pool} from "pg";
import {describe,it,expect,vi} from "vitest";
import {createGbWalletHoldRepository} from "./activity_holds.js";
const actor={tenantId:"a",userId:"fan_a"};
const row={operation_id:"call_1",kind:"connected_call",operation_state:"completed",state:"captured",
  purchased_mb:"200",welcome_mb:"50",charged_mb:"100",created_at:"2026-10-27T00:00:00.000001Z",
  resolved_at:"2026-10-27T00:01:00.000000Z",entry_ids:["mb:1","mb:2"]};
describe("owned reservation and release projection",()=>{
  it("does not turn unused reserved MB into income and rejects contradictory records",async()=>{
    const query=vi.fn(async()=>({rows:[row]}));
    const repo=createGbWalletHoldRepository({query} as unknown as Pick<Pool,"query">);
    expect(await repo.findHold(actor,"call_1")).toMatchObject({reservedMb:250,heldMb:0,chargedMb:100,releasedMb:150,entryIds:["mb:1","mb:2"]});
    for(const change of [{charged_mb:"251"},{charged_mb:"0"},{state:"reserved"},{operation_state:"pending"},
      {purchased_mb:"9007199254740992"},{entry_ids:["ngn:other"]},{entry_ids:["mb:1","mb:1"]},{resolved_at:null}]){
      const bad=createGbWalletHoldRepository({query:async()=>({rows:[{...row,...change}]})} as unknown as Pick<Pool,"query">);
      await expect(bad.findHold(actor,"call_1")).rejects.toThrow();
    }
    expect(query.mock.calls[0]).toMatchObject([expect.stringContaining("o.actor_id=$2"),["a","fan_a","call_1"]]);
  });
  it("reads actual PostgreSQL holds with microsecond paging, partial capture, release and tenant privacy",async()=>{
    const db=new PGlite();try{
      await db.exec(await readFile(new URL("../../../../../packages/commerce/migrations/0200_gb_wallet_foundation.sql",import.meta.url),"utf8"));
      await db.exec(`INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb,welcome_mb,reserved_purchased_mb,reserved_welcome_mb) VALUES
        ('a','human','fan_a',3000,500,100,20),('a','human','fan_b',3000,0,200,0),('b','human','fan_a',3000,0,200,0)`);
      const hash="a".repeat(64);
      for(const [tenant,id,user,state,amount] of [
        ["a","call_1","fan_a","completed",100],["a","release_1","fan_a","failed",200],
        ["a","pending_1","fan_a","reserved",120],["a","other_user","fan_b","reserved",200],
        ["b","other_tenant","fan_a","reserved",200],
      ])await db.query(`INSERT INTO gb_wallet.operations(tenant_id,operation_id,actor_id,idempotency_key,request_sha256,operation_kind,amount_mb,state)
        VALUES($1,$2,$3,$2,$4,'connected_call',$5,$6)`,[tenant,id,user,hash,amount,state]);
      await db.exec(`INSERT INTO gb_wallet.reservations(tenant_id,operation_id,account_kind,account_id,purchased_mb,welcome_mb,state,created_at,resolved_at) VALUES
        ('a','call_1','human','fan_a',200,50,'captured','2026-10-27T00:00:00.000001Z','2026-10-27T00:01:00Z'),
        ('a','release_1','human','fan_a',200,0,'released','2026-10-27T00:00:00.000002Z','2026-10-27T00:01:00Z'),
        ('a','pending_1','human','fan_a',100,20,'reserved','2026-10-27T00:00:00.000003Z',NULL),
        ('a','other_user','human','fan_b',200,0,'reserved','2026-10-27T00:00:00.000004Z',NULL),
        ('b','other_tenant','human','fan_a',200,0,'reserved','2026-10-27T00:00:00.000005Z',NULL);
        INSERT INTO gb_wallet.movements(tenant_id,operation_id,from_kind,from_id,to_kind,to_id,source_bucket,target_bucket,amount_mb,created_at) VALUES
          ('a','call_1','human','fan_a','usage','connected_call','welcome','usage',50,'2026-10-27T00:01:00Z'),
          ('a','call_1','human','fan_a','usage','connected_call','purchased','usage',50,'2026-10-27T00:01:00Z')`);
      const repo=createGbWalletHoldRepository(db as unknown as Pick<Pool,"query">),snapshot="2026-10-28T00:00:00.000Z";
      const first=await repo.listHolds(actor,1,null,"all",snapshot);
      expect(first[0]).toMatchObject({operationId:"pending_1",heldMb:120,chargedMb:0,releasedMb:0,createdAt:"2026-10-27T00:00:00.000003Z"});
      const second=await repo.listHolds(actor,1,{createdAt:first[0]!.createdAt,operationId:first[0]!.operationId},"all",snapshot);
      expect(second[0]).toMatchObject({operationId:"release_1",heldMb:0,chargedMb:0,releasedMb:200});
      const third=await repo.listHolds(actor,1,{createdAt:second[0]!.createdAt,operationId:second[0]!.operationId},"all",snapshot);
      expect(third[0]).toMatchObject({operationId:"call_1",reservedMb:250,chargedMb:100,releasedMb:150,entryIds:["mb:1","mb:2"]});
      expect(await repo.findHold(actor,"other_user")).toBeNull();expect(await repo.findHold(actor,"other_tenant")).toBeNull();
      expect((await repo.listHolds(actor,10,null,"released",snapshot)).map(x=>x.operationId)).toEqual(["release_1"]);
      expect((await repo.listHolds({tenantId:"b",userId:"fan_a"},10,null,"all",snapshot)).map(x=>x.operationId)).toEqual(["other_tenant"]);
      await db.exec("UPDATE gb_wallet.operations SET state='pending' WHERE tenant_id='a' AND operation_id='call_1'");
      await expect(repo.findHold(actor,"call_1")).rejects.toThrow("invalid_captured_hold");
    }finally{await db.close();}
  },30000);
});
