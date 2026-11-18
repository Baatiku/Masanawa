import { describe, expect, it } from "vitest";
import type { Pool } from "@masanawa/postgres";
import { createMsnwCustodyIssuanceRuntime } from "./custody_issuance.js";
import type { createMsnwFinalityVerifier } from "./chain_finality.js";

const proof = {
  reference: "verified-payment-1",
  amountMicro: "1000000",chainId: "8453",
  contract: "0x" + "a".repeat(40),
  custody: "0x" + "b".repeat(40),
  txHash: "0x" + "c".repeat(64),blockNumber:"99",
  blockHash: "0x" + "d".repeat(64),
  receiptSha256: "e".repeat(64),
  custodyBalanceMicro: "3000000",
};

function setup(reserve: string, previous = false) {
  const sql: string[] = [];
  const db = {
    async query(command: string) {
      sql.push(command);
      if (command.startsWith("SELECT f.reference"))
        return { rowCount: 1, rows: [{
          reference:proof.reference,amount_micro:proof.amountMicro,
          chain_id:proof.chainId,contract_address:proof.contract,tx_hash:proof.txHash,
          tenant_id:"tenant-1",user_id:"user-1",
          reserve_proof_sha256:"1".repeat(64),quote_sha256:"2".repeat(64),
        }] };
      if (command.startsWith("SELECT 1 AS credited"))
        return { rowCount: previous ? 1 : 0,rows:previous?[{credited:1}]:[] };
      if (command.startsWith("SELECT COALESCE(sum"))
        return { rowCount:1,rows:[{liability_micro:reserve}] };
      if (command.startsWith("INSERT INTO commerce.msnw_settlement_events"))
        return {rowCount:1,rows:[{reference:proof.reference}]};
      if (command.startsWith("INSERT INTO commerce.msnw_custody_issuances"))
        return {rowCount:1,rows:[{reference:proof.reference}]};
      if (command.startsWith("UPDATE commerce.msnw_custody_accounts"))
        return {rowCount:1,rows:[]};
      return {rowCount:1,rows:[]};
    },
    release() {},
  };
  const pool = { async connect() { return db; },
    async query() { return {rowCount:0,rows:[]}; },
  } as unknown as Pool;
  const verifier = { async verify() { return proof; } } as unknown as ReturnType<typeof createMsnwFinalityVerifier>;
  return { sql,runtime:createMsnwCustodyIssuanceRuntime({pool,verifier}) };
}

describe("MSNW proof-bound custody credit", () => {
  it("writes a balanced customer credit only after one finalized mint and sufficient custody", async () => {
    const {sql,runtime} = setup("2000000");
    expect(await runtime.finalize(proof))
      .toEqual({reference:proof.reference,state:"credited"});
    expect(sql.filter(x => x==="COMMIT")).toHaveLength(1);
    expect(sql.join("\n")).toContain("chain_finalized");
    expect(sql.join("\n")).toContain("INSERT INTO commerce.msnw_custody_issuances");
    expect(sql.join("\n")).toContain("custody_reserve_asset");
    expect(sql.join("\n")).toContain("customer_liability");
  });
  it("never credits more than independently verified custody tokens", async () => {
    const {sql,runtime} = setup("2500000");
    await expect(runtime.finalize(proof))
      .rejects.toMatchObject({code:"msnw.issuance_reserve_insufficient"});
    expect(sql).toContain("ROLLBACK");
    expect(sql.some(x => x.includes("UPDATE commerce.msnw_custody_accounts")))
      .toBe(false);
  });
  it("replays without creating duplicate liabilities", async () => {
    const {sql,runtime} = setup("2000000",true);
    expect(await runtime.finalize(proof))
      .toEqual({reference:proof.reference,state:"already_credited"});
    expect(sql.some(x => x.startsWith("INSERT INTO commerce.msnw_custody_issuances")))
      .toBe(false);
  });
});
