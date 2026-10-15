import { createHash } from "node:crypto";
import type { Pool } from "@masanawa/postgres";
import type { VerifiedMsnwMint } from "./chain_finality.js";
import { createMsnwFinalityVerifier } from "./chain_finality.js";

export class MsnwIssuanceError extends Error {
  constructor(readonly code: string) { super(code); }
}
type FinalityVerifier = ReturnType<typeof createMsnwFinalityVerifier>;
const requiredHash = /^[0-9a-f]{64}$/;
const requiredAmount = /^[1-9][0-9]{0,23}$/;
const requiredAddress = /^0x[0-9a-f]{40}$/;

export function createMsnwCustodyIssuanceRuntime(input: Readonly<{
  pool: Pool;
  verifier: FinalityVerifier;
}>) {
  async function finalize(proof: VerifiedMsnwMint) {
    if (!requiredAmount.test(proof.amountMicro) ||
        !requiredHash.test(proof.receiptSha256) ||
        !requiredAddress.test(proof.contract) ||
        !requiredAddress.test(proof.custody))
      throw new MsnwIssuanceError("msnw.issuance_proof_invalid");
    const client = await input.pool.connect();
    let began = false;
    try {
      await client.query("BEGIN"); began = true;
      // One canonical custodian and external supply: serialize all admissions.
      await client.query("SELECT pg_advisory_xact_lock(hashtext('msnw:finalized-custody-issuance'))");
      const outstanding = await client.query(
        "SELECT f.reference,f.amount_micro::text,f.reserve_proof_sha256," +
        "f.quote_sha256,f.chain_id::text,f.contract_address,f.tx_hash," +
        "o.tenant_id,o.user_id " +
        "FROM commerce.msnw_settlement_events f " +
        "JOIN commerce.msnw_funding_obligations o ON o.reference=f.reference " +
        "WHERE f.reference=$1 AND f.stage='chain_submitted' FOR UPDATE OF f",
        [proof.reference],
      );
      if (outstanding.rowCount !== 1)
        throw new MsnwIssuanceError("msnw.issuance_stage_missing");
      const item = outstanding.rows[0]!;
      if (item.amount_micro !== proof.amountMicro ||
          item.chain_id !== proof.chainId ||
          item.contract_address !== proof.contract ||
          item.tx_hash !== proof.txHash ||
          typeof item.tenant_id !== "string" ||
          typeof item.user_id !== "string" ||
          !requiredHash.test(String(item.reserve_proof_sha256)) ||
          !requiredHash.test(String(item.quote_sha256)))
        throw new MsnwIssuanceError("msnw.issuance_stage_mismatch");
      const previously = await client.query(
        "SELECT 1 AS credited FROM commerce.msnw_custody_issuances WHERE reference=$1",
        [proof.reference],
      );
      if (previously.rowCount) {
        await client.query("COMMIT"); began=false;
        return { reference: proof.reference,state: "already_credited" as const };
      }
      // Never turn a chain receipt into spendable MSNW unless the ACTUAL
      // finalized custody tokens cover all existing platform liabilities
      // plus this pending, uniquely identified customer issuance.
      const total = await client.query(
        "SELECT COALESCE(sum(available_micro+reserved_micro),0)::text AS liability_micro " +
        "FROM commerce.msnw_custody_accounts",
      );
      const liabilities = total.rows[0]?.liability_micro;
      if (typeof liabilities !== "string" ||
          !/^(0|[1-9][0-9]*)$/.test(liabilities))
        throw new MsnwIssuanceError("msnw.issuance_liability_invalid");
      if (BigInt(proof.custodyBalanceMicro) <
          BigInt(liabilities) + BigInt(proof.amountMicro))
        throw new MsnwIssuanceError("msnw.issuance_reserve_insufficient");
      const id = createHash("sha256")
        .update("masanawa:msnw:chain-finalized:v1\0")
        .update(proof.reference).update("\0").update(proof.txHash)
        .digest("hex");
      const issued = await client.query(
        "INSERT INTO commerce.msnw_settlement_events " +
        "(event_sha256,reference,stage,reserve_proof_sha256,quote_sha256," +
        "amount_micro,chain_id,contract_address,tx_hash) " +
        "SELECT $2,reference,'chain_finalized',reserve_proof_sha256,quote_sha256," +
        "amount_micro,chain_id,contract_address,tx_hash " +
        "FROM commerce.msnw_settlement_events " +
        "WHERE reference=$1 AND stage='chain_submitted' RETURNING reference",
        [proof.reference,id],
      );
      if (issued.rowCount !== 1)
        throw new MsnwIssuanceError("msnw.issuance_finality_not_recorded");
      await client.query(
        "INSERT INTO commerce.msnw_custody_accounts(tenant_id,user_id) " +
        "VALUES ($1,$2) ON CONFLICT DO NOTHING",
        [item.tenant_id,item.user_id],
      );
      const journal = await client.query(
        "INSERT INTO commerce.msnw_custody_issuances " +
        "(reference,tenant_id,user_id,amount_micro,chain_id,contract_address," +
        "custody_address,mint_tx_hash,finalized_block_number,finalized_block_hash," +
        "chain_receipt_sha256) " +
        "VALUES ($1,$2,$3,$4::numeric,$5::bigint,$6,$7,$8,$9::bigint,$10,$11) " +
        "RETURNING reference",
        [proof.reference,item.tenant_id,item.user_id,proof.amountMicro,
          proof.chainId,proof.contract,proof.custody,proof.txHash,
          proof.blockNumber,proof.blockHash,proof.receiptSha256],
      );
      if (journal.rowCount !== 1)
        throw new MsnwIssuanceError("msnw.issuance_receipt_not_recorded");
      const credit = await client.query(
        "UPDATE commerce.msnw_custody_accounts " +
        "SET available_micro=available_micro+$3::numeric," +
        "updated_at=statement_timestamp() " +
        "WHERE tenant_id=$1 AND user_id=$2",
        [item.tenant_id,item.user_id,proof.amountMicro],
      );
      if (credit.rowCount !== 1)
        throw new MsnwIssuanceError("msnw.issuance_customer_unavailable");
      await client.query(
        "INSERT INTO commerce.msnw_custody_issuance_entries " +
        "(reference,side,delta_micro) VALUES " +
        "($1,'custody_reserve_asset',-$2::numeric)," +
        "($1,'customer_liability',$2::numeric)",
        [proof.reference,proof.amountMicro],
      );
      // Both settlement and funding journal balance triggers execute here.
      await client.query("COMMIT"); began=false;
      return { reference: proof.reference,state: "credited" as const };
    } catch (error) {
      if (began) await client.query("ROLLBACK").catch(() => undefined);
      throw error;
    } finally { client.release(); }
  }

  async function runOnce(): Promise<Readonly<{
    checked: number; credited: number; pending: number;
  }>> {
    const result = await input.pool.query(
      "SELECT f.reference,f.amount_micro::text,f.tx_hash," +
      "f.chain_id::text,f.contract_address " +
      "FROM commerce.msnw_settlement_events f " +
      "JOIN commerce.msnw_funding_obligations o ON o.reference=f.reference " +
      "LEFT JOIN commerce.msnw_settlement_events final " +
      "ON final.reference=f.reference AND final.stage='chain_finalized' " +
      "WHERE f.stage='chain_submitted' AND final.reference IS NULL " +
      "ORDER BY f.recorded_at ASC,f.reference ASC LIMIT 10",
    );
    let credited = 0, pending = 0;
    for (const item of result.rows) {
      if (typeof item.reference !== "string" ||
          typeof item.amount_micro !== "string" ||
          typeof item.tx_hash !== "string" ||
          typeof item.chain_id !== "string" ||
          typeof item.contract_address !== "string")
        throw new MsnwIssuanceError("msnw.issuance_pending_row_invalid");
      try {
        const evidence = await input.verifier.verify({
          reference: item.reference, amountMicro: item.amount_micro,
          chainId: item.chain_id, contract: item.contract_address,
          txHash: item.tx_hash,
        });
        const next = await finalize(evidence);
        if (next.state === "credited") credited++;
      } catch {
        // A failed receipt, reserve shortfall or provider outage must never
        // create a credit. Retry only the original stable reference.
        pending++;
      }
    }
    return Object.freeze({ checked: result.rowCount ?? 0,credited,pending });
  }
  return Object.freeze({ runOnce, finalize });
}
