import { describe, expect, it, vi } from "vitest";
import type { Pool } from "@masanawa/postgres";
import {
  createAccountDeletionFinancialClearance,
  createAccountDeletionPrivacyWorker,
  hasFinancialFootprint,
} from "./account_deletion.js";

const owner={request_id:"10000000-0000-4000-8000-000000000001",
  tenant_id:"tenant-a",user_id:"user-a",phase:"identity-verified",revision:2};

function harness(financial:boolean) {
  const calls:{sql:string;params:readonly unknown[]}[]=[];
  let phase=owner.phase,revision=owner.revision;
  const client={
    async query(sql:string,params:unknown[]=[]):Promise<any>{
      sql=sql.replace(/\s+/g," ").trim();
      calls.push({sql,params});
      if(sql.startsWith("SELECT 1 FROM identity.users"))return {rows:[{present:1}],rowCount:1};
      if(sql.includes("FROM pg_catalog.pg_class"))return {rows:[
        {schema_name:"commerce",name:"msnw_usdt_payouts",columns:["tenant_id","user_id","state"]},
        {schema_name:"commerce",name:"msnw_p2p_orders",columns:["tenant_id","buyer_id","seller_id","state"]},
      ],rowCount:2};
      if(sql.includes('FROM "commerce".'))return {rows:financial?[{present:1}]:[],rowCount:financial?1:0};
      if(sql.includes("FROM identity.account_deletion_access_revocations"))
        return {rows:[{present:1}],rowCount:1};
      if(sql.includes("FROM identity.account_deletion_requests") &&
        sql.includes("ORDER BY"))return {rows:[{...owner,phase,revision}],rowCount:1};
      if(sql.includes("FROM identity.account_deletion_requests") &&
        sql.includes("FOR UPDATE"))return {rows:[{...owner,phase,revision}],rowCount:1};
      if(sql.includes("UPDATE identity.account_deletion_requests") &&
        sql.includes("RETURNING revision")){
        const next=params[3] as string;
        if((params[7] as string)!==phase)throw Error("stale update");
        phase=next;revision++;
        return {rows:[{revision}],rowCount:1};
      }
      if(sql.includes("UPDATE security.platform_user_profiles"))return {rows:[],rowCount:1};
      return {rows:[],rowCount:1};
    },
    release:vi.fn(),
  };
  const pool={connect:async()=>client,query:client.query.bind(client)} as unknown as Pool;
  const revoke=vi.fn(async()=>({alreadyRevoked:false}));
  const worker=createAccountDeletionPrivacyWorker({pool,revoke,
    now:()=> "2026-10-18T12:00:00.000Z"});
  return {calls,revoke,worker,client,getPhase:()=>phase};
}

describe("account deletion financial and privacy holds",()=>{
  it("builds account-scoped, parameterized commerce queries without missing new rails",async()=>{
    const h=harness(true);
    expect(await hasFinancialFootprint(h.client as any,"tenant-a","user-a")).toBe(true);
    const lookups=h.calls.filter(c=>c.sql.includes('FROM "commerce".'));
    expect(lookups[0]?.sql).toContain('WHERE tenant_id=$1');
    expect(lookups[0]?.sql).toContain('"user_id"=$2');
    expect(lookups[0]?.params).toEqual(["tenant-a","user-a"]);
    expect(h.calls.every(c=>!c.sql.includes("user-a"))).toBe(true);
  });

  it("refuses to claim clearance when finance inventory is unavailable",async()=>{
    await expect(hasFinancialFootprint({
      query:async()=>({rows:[]}),
    } as any,"tenant-a","user-a")).rejects.toThrow("finance_catalog_unavailable");
  });

  it("places verified financial accounts on auditable hold without revocation",async()=>{
    const h=harness(true);
    expect(await h.worker.runOnce()).toEqual({completed:0,held:1,failed:0});
    expect(h.getPhase()).toBe("awaiting-settlement");
    expect(h.revoke).not.toHaveBeenCalled();
    expect(h.calls.some(c=>c.sql.includes("DELETE FROM"))).toBe(false);
  });

  it("uses canonical revoker then clears only private records for a no-finance account",async()=>{
    const h=harness(false);
    expect(await h.worker.runOnce()).toEqual({completed:1,held:0,failed:0});
    expect(h.getPhase()).toBe("completed");
    expect(h.revoke).toHaveBeenCalledWith({
      tenantId:"tenant-a",userId:"user-a",requestId:owner.request_id,
      expectedRevision:3,now:"2026-10-18T12:00:00.000Z",
    });
    const deletes=h.calls.filter(c=>c.sql.includes("DELETE FROM"));
    expect(deletes.map(c=>c.sql)).toEqual(expect.arrayContaining([
      expect.stringContaining('DELETE FROM agents.mobile_notification_outbox'),
      expect.stringContaining('DELETE FROM agents.mobile_notification_history'),
      expect.stringContaining('DELETE FROM agents.mobile_notification_preferences'),
    ]));
    expect(deletes.every(c=>c.params[0]==="tenant-a"&&c.params[1]==="user-a"))
      .toBe(true);
    expect(deletes.every(c=>!c.sql.includes("commerce."))).toBe(true);
    expect(h.calls.some(c=>c.sql.includes("UPDATE feed.comments SET body"))).toBe(true);
    expect(h.calls.some(c=>c.sql.includes("UPDATE rooms.questions SET body"))).toBe(true);
    expect(h.calls.filter(c=>c.sql.includes("INSERT INTO identity.account_deletion_events")))
      .toHaveLength(2);
  });

  it("keeps an incomplete request retryable if revocation cannot commit",async()=>{
    const h=harness(false);
    h.revoke.mockRejectedValueOnce(Error("finance changed"));
    expect(await h.worker.runOnce()).toEqual({completed:0,held:0,failed:1});
    expect(h.getPhase()).toBe("processing");
    expect(h.calls.some(c=>c.sql.includes("DELETE FROM"))).toBe(false);
  });

  it("rejects unsafe batch sizes instead of sweeping all customers",async()=>{
    const h=harness(false);
    await expect(h.worker.runOnce(0)).rejects.toThrow("batch_limit_invalid");
    await expect(h.worker.runOnce(100)).rejects.toThrow("batch_limit_invalid");
  });
});

it("runs scoped human content redaction only after qualified deletion clearance",async()=>{
  const h=harness(false);expect(await h.worker.runOnce()).toEqual({completed:1,held:0,failed:0});
  const index=h.calls.findIndex(c=>c.sql.includes("talks.redact_human_account"));expect(index).toBeGreaterThan(-1);
  expect(h.calls[index]!.params).toEqual(["tenant-a","user-a"]);
  expect(h.calls.slice(0,index).some(c=>c.sql.includes("account_deletion_access_revocations"))).toBe(true);
});
