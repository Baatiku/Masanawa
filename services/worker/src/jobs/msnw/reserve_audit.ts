import type { Pool } from "@masanawa/postgres";
import type { createMsnwFinalityVerifier } from "./chain_finality.js";

export class MsnwReserveAuditError extends Error {
  constructor(readonly code: string) { super(code); }
}
type Verifier = Pick<ReturnType<typeof createMsnwFinalityVerifier>, "readReserve">;
const exactMicro = /^(0|[1-9][0-9]{0,77})$/;

/**
 * Compare a finalized on-chain custody balance with the SAME canonical
 * customer liability accounts used by Send, P2P escrow, bills and payouts.
 * This is a read-only preflight, never permission to issue unbacked tokens.
 * The chain RPC and contract bytecode are independently pinned in verifier.
 */
export function createMsnwReserveAudit(input: Readonly<{
  pool: Pool;
  verifier: Verifier;
}>) {
  return Object.freeze({
    async runOnce() {
      // The chain read is finalized (not "latest" or mempool); DB reads use
      // one consistent snapshot. Concurrent customer spending may cause a
      // conservative shortfall, which must fail closed and retry.
      const chain = await input.verifier.readReserve();
      const client = await input.pool.connect();
      let began = false;
      let available = "", reserved = "";
      try {
        await client.query("BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ READ ONLY");
        began = true;
        const rows = await client.query(
          "SELECT COALESCE(sum(available_micro),0)::text AS available_micro," +
          "COALESCE(sum(reserved_micro),0)::text AS reserved_micro " +
          "FROM commerce.msnw_custody_accounts",
        );
        if (rows.rowCount !== 1) {
          throw new MsnwReserveAuditError("msnw.reserve_ledger_unavailable");
        }
        available = String(rows.rows[0]?.available_micro ?? "");
        reserved = String(rows.rows[0]?.reserved_micro ?? "");
        if (!exactMicro.test(available) || !exactMicro.test(reserved)) {
          throw new MsnwReserveAuditError("msnw.reserve_ledger_invalid");
        }
        await client.query("COMMIT"); began = false;
      } catch (error) {
        if (began) await client.query("ROLLBACK").catch(() => undefined);
        throw error;
      } finally { client.release(); }
      if (!exactMicro.test(chain.custodyBalanceMicro) ||
          !exactMicro.test(chain.totalSupplyMicro)) {
        throw new MsnwReserveAuditError("msnw.reserve_chain_invalid");
      }
      const liabilities = BigInt(available) + BigInt(reserved);
      if (liabilities > BigInt(chain.custodyBalanceMicro)) {
        throw new MsnwReserveAuditError("msnw.reserve_liabilities_exceed_custody");
      }
      return Object.freeze({
        state: "covered" as const,
        blockNumber:chain.blockNumber,
        blockHash:chain.blockHash,
        chainId:chain.chainId,
        custodyBalanceMicro:chain.custodyBalanceMicro,
        totalSupplyMicro:chain.totalSupplyMicro,
        liabilityMicro:liabilities.toString(),
        availableMicro:available,
        reservedMicro:reserved,
      });
    },
  });
}
