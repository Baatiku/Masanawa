import type { Pool } from "@masanawa/postgres";
/** Executes the canonical PostgreSQL 0129 P2P expiry/refund function.
 * SELECT FOR UPDATE SKIP LOCKED is the lease/fencing authority, and the
 * custody refund + order state + immutable events commit atomically.
 * No provider calls and no independent balance mutations in Worker code.
 */
export function createP2pExpiryRuntime(pool:Pick<Pool,"query">) {
  return Object.freeze({
    async runOnce():Promise<{expired:number}> {
      const value=await pool.query<{expired:number}>(`
        SELECT commerce.msnw_p2p_expire_due_batch(25) AS expired`);
      const count=value.rows[0]?.expired;
      if(typeof count!=="number"||!Number.isInteger(count)||count<0||count>25)
        throw new Error("p2p.expiry_result_invalid");
      return {expired:count};
    },
  });
}
