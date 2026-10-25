import { readFileSync } from "node:fs";
import { describe, expect, it } from "vitest";

// Guard the production bootstrap, not only HTTP route registration. Retired
// finance workers must not be silently recreated through unused Gateway options.
describe("retired P2P and legacy Credit Send bootstrap", () => {
  const bootstrap = readFileSync(
    new URL("../../services/gateway/src/main.ts", import.meta.url),
    "utf8",
  );

  it("does not construct or register retired P2P runtime services", () => {
    expect(bootstrap).not.toContain('from "./p2p/');
    expect(bootstrap).not.toMatch(/createP2pService\s*\(/u);
    expect(bootstrap).not.toMatch(/createMsnwP2pCustodyEscrow\s*\(/u);
    expect(bootstrap).not.toMatch(/createVerifiedP2pBankMethods\s*\(/u);
    expect(bootstrap).not.toMatch(/configuredP2pEvidenceStorage\s*\(/u);
    expect(bootstrap).not.toMatch(/\{\s*p2p:\s*options\.appOptions/u);
  });

  it("never enables the retired Credit Send product flag", () => {
    expect(bootstrap).not.toContain("walletCreditSendEnabled:");
    expect(bootstrap).not.toContain("MASANAWA_WALLET_CREDIT_SEND_ENABLED");
  });

  it("preserves the historical finance feature pool and account deletion", () => {
    expect(bootstrap).toContain("database.featurePool");
    expect(bootstrap).toContain("accountDeletion");
  });
});
