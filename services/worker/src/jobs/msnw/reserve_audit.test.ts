import { describe, expect, it } from "vitest";
import type { Pool } from "@masanawa/postgres";
import { createMsnwReserveAudit } from "./reserve_audit.js";

const chain = {
  chainId:"8453",contract:"0x"+"a".repeat(40),
  custody:"0x"+"b".repeat(40),
  blockNumber:"12345",blockHash:"0x"+"c".repeat(64),
  custodyBalanceMicro:"3000000",totalSupplyMicro:"5000000",
};
function setup(available:unknown,reserved:unknown,chainOverride:Record<string,unknown>={}) {
  const sql:string[]=[];
  let released=false;
  const client={
    async query(statement:string) {
      sql.push(statement);
      if(statement.startsWith("SELECT COALESCE")) return {
        rowCount:1,rows:[{available_micro:available,reserved_micro:reserved}],
      };
      return {rowCount:0,rows:[]};
    },
    release() {released=true;},
  };
  const runtime=createMsnwReserveAudit({
    pool:{async connect(){return client;}} as unknown as Pool,
    verifier:{async readReserve(){return {...chain,...chainOverride} as typeof chain;}},
  });
  return {runtime,sql,released:()=>released};
}
describe("finalized MSNW reserve versus canonical custody liabilities",()=>{
  it("accepts an equal reserve without issuing, burning or moving balances",async()=>{
    const f=setup("2000000","1000000");
    const result=await f.runtime.runOnce();
    expect(result).toMatchObject({
      state:"covered",custodyBalanceMicro:"3000000",
      liabilityMicro:"3000000",availableMicro:"2000000",
      reservedMicro:"1000000",blockNumber:"12345",
    });
    expect(f.sql[0]).toContain("REPEATABLE READ READ ONLY");
    expect(f.sql.at(-1)).toBe("COMMIT");
    expect(f.released()).toBe(true);
    expect(f.sql.some(x=>/INSERT|UPDATE|DELETE|mintSettled/.test(x))).toBe(false);
  });
  it("rejects any amount of unbacked spendable or escrowed MSNW",async()=>{
    for(const [available,reserved] of [
      ["3000001","0"],["2000000","1000001"],["0","4000000"],
    ]) {
      const f=setup(available,reserved);
      await expect(f.runtime.runOnce()).rejects.toMatchObject({
        code:"msnw.reserve_liabilities_exceed_custody",
      });
      expect(f.released()).toBe(true);
      expect(f.sql.some(x=>x.includes("UPDATE commerce"))).toBe(false);
    }
  });
  it("fails closed for malformed ledger amounts and on-chain readback",async()=>{
    const bad=setup("-1","0");
    await expect(bad.runtime.runOnce()).rejects.toMatchObject({
      code:"msnw.reserve_ledger_invalid",
    });
    expect(bad.sql).toContain("ROLLBACK");
    const invalidChain=setup("0","0",{custodyBalanceMicro:"not-an-amount"});
    await expect(invalidChain.runtime.runOnce()).rejects.toMatchObject({
      code:"msnw.reserve_chain_invalid",
    });
  });
});
