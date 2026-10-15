import { readFileSync } from "node:fs";
import { describe, expect, it } from "vitest";

const sql = readFileSync(
  new URL("../migrations/0123_msnw_p2p.sql", import.meta.url), "utf8",
);

describe("MSNW escrow database migration", () => {
  it("uses paired PostgreSQL dollar quoting for immutable financial functions", () => {
    expect(sql.match(/LANGUAGE plpgsql AS \$\$/g)).toHaveLength(2);
    expect(sql.match(/END;\s*\$\$;/g)).toHaveLength(2);
    expect(sql).not.toMatch(/LANGUAGE plpgsql AS \$(?!\$)/);
    expect(sql).not.toMatch(/END;\s*\$(?!\$)/);
  });
  it("holds seller assets in escrow and never trusts payment claims alone", () => {
    expect(sql).toContain("msnw_p2p_orders");
    expect(sql).toContain("payment_claimed");
    expect(sql).toContain("release_pending");
    expect(sql).toContain("refund_pending");
    expect(sql).toContain("msnw_p2p_deny_audit_mutation");
  });
});
