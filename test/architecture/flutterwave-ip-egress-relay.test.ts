import { execFileSync } from "node:child_process";
import { resolve } from "node:path";
import { describe, expect, it } from "vitest";

describe("fixed IPv4 Flutterwave relay production safety", () => {
  it("passes real Node HTTP integration tests for token, host restrictions and no POST retries", () => {
    const output = execFileSync(process.execPath, [
      "--test",
      resolve("services/flutterwave-ip-relay/relay.test.mjs"),
    ], {
      encoding: "utf8",
      timeout: 30_000,
      env: { ...process.env, MASANAWA_FLUTTERWAVE_RELAY_TOKEN: "test-only" },
    });
    expect(output).toContain("pass 4");
    expect(output).toContain("fail 0");
  });
});
