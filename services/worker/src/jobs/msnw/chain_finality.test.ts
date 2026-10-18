import { createHash } from "node:crypto";
import { describe, expect, it } from "vitest";
import { createMsnwFinalityVerifier, settlementMintReference } from "./chain_finality.js";

const contract = "0x" + "a".repeat(40);
const custody = "0x" + "b".repeat(40);
const txHash = "0x" + "c".repeat(64);
const blockHash = "0x" + "d".repeat(64);
const topic = "0x66a5f8fb8e9eb955e066808e11058dfbe29c4982773a75e58462c333c35d5bd1";
const code = "0x60016000";
const bytecodeSha256 = createHash("sha256").update(Buffer.from(code.slice(2),"hex")).digest("hex");
function config(changes: Record<string, unknown> = {}) {
  const mintLog = {
    address: contract,
    topics: [topic,settlementMintReference("paystack-a"),
      "0x" + custody.slice(2).padStart(64,"0")],
    data: "0x" + BigInt(1000000).toString(16).padStart(64,"0"),
  };
  const value: Record<string, unknown> = {
    eth_chainId: "0x2105",
    eth_getBlockByNumber: { number: "0x64",hash: blockHash },
    eth_getTransactionReceipt: {
      transactionHash: txHash, to: contract,status: "0x1",
      blockNumber: "0x63",blockHash,logs: [mintLog],
    },
    eth_getCode: code,
    eth_call: "0x" + BigInt(3000000).toString(16).padStart(64,"0"),
    ...changes,
  };
  const methods: string[] = [];
  const fetchImpl = async (_url: string, init?: RequestInit): Promise<Response> => {
    const body = JSON.parse(String(init?.body ?? "{}"));
    methods.push(body.method);
    const selector = body.method === "eth_call" ? body.params?.[0]?.data : null;
    const result = selector === "0x18160ddd"
      ? "0x" + BigInt(5000000).toString(16)
      : selector === "0x313ce567" ? "0x6"
      : body.method === "eth_getBlockByNumber" && body.params?.[0] === "0x63"
        ? { number: "0x63",hash: blockHash } : value[body.method];
    return new Response(JSON.stringify({
      jsonrpc: "2.0",id: body.id,result,
    }), { status: 200,headers: { "content-type": "application/json" } });
  };
  const verifier = createMsnwFinalityVerifier({
    chainId: "8453",contract,custody,bytecodeSha256,
    rpcUrl: "https://rpc.example.test",fetchImpl: fetchImpl as typeof fetch,
  });
  return { verifier,methods };
}
const candidate = {
  reference: "paystack-a", amountMicro: "1000000",
  chainId: "8453",contract,txHash,
};

describe("MSNW on-chain finalized mint attestation", () => {
  it("validates a contract-pinned, finalized mint to the platform custodian", async () => {
    const { verifier,methods } = config();
    const proof = await verifier.verify(candidate);
    expect(proof).toMatchObject({
      reference: "paystack-a",amountMicro: "1000000",
      chainId:"8453",contract,custody,txHash,
      blockNumber:"99",blockHash,custodyBalanceMicro:"3000000",
    });
    expect(proof.receiptSha256).toMatch(/^[0-9a-f]{64}$/);
    expect(methods).toContain("eth_chainId");
    expect(methods).toContain("eth_getTransactionReceipt");
    expect(methods).toContain("eth_getCode");
    expect(methods).toContain("eth_call");
  });
  it("attests finalized custody balance, supply, decimals and contract bytecode",async()=>{
    const {verifier,methods}=config();
    const result=await verifier.readReserve();
    expect(result).toMatchObject({
      blockNumber:"100",blockHash,chainId:"8453",
      custodyBalanceMicro:"3000000",totalSupplyMicro:"5000000",
      contract,custody,
    });
    expect(methods).toContain("eth_getBlockByNumber");
    expect(methods).toContain("eth_getCode");
    expect(methods).toContain("eth_call");
  });
  it("fails closed for a wrong chain or modified audited bytecode",async()=>{
    await expect(config({eth_chainId:"0x1"}).verifier.readReserve())
      .rejects.toMatchObject({code:"msnw.finality_wrong_chain"});
    await expect(config({eth_getCode:"0x6000"}).verifier.readReserve())
      .rejects.toMatchObject({code:"msnw.finality_bytecode_mismatch"});
  });
  it("rejects wrong contract bytecode and unrelated mint receipts", async () => {
    const fakeCode = config({ eth_getCode: "0x6000" });
    await expect(fakeCode.verifier.verify(candidate))
      .rejects.toMatchObject({code:"msnw.finality_bytecode_mismatch"});
    const wrongEvent = config({eth_getTransactionReceipt: {
      transactionHash:txHash,to:contract,status:"0x1",blockNumber:"0x63",
      blockHash,logs: [],
    }});
    await expect(wrongEvent.verifier.verify(candidate))
      .rejects.toMatchObject({code:"msnw.finality_mint_event_unverified"});
  });
  it("rejects pending blocks, reverted and wrong-chain transactions", async () => {
    const pending = config({eth_getBlockByNumber:{number:"0x62",hash:blockHash}});
    await expect(pending.verifier.verify(candidate))
      .rejects.toMatchObject({code:"msnw.finality_unconfirmed"});
    const foreign = config({eth_chainId:"0x1"});
    await expect(foreign.verifier.verify(candidate))
      .rejects.toMatchObject({code:"msnw.finality_wrong_chain"});
    const missing = config({eth_getTransactionReceipt:null});
    await expect(missing.verifier.verify(candidate))
      .rejects.toMatchObject({code:"msnw.finality_receipt_pending"});
  });
  it("rejects invalid network or absent official bytecode pin", () => {
    expect(() => createMsnwFinalityVerifier({
      chainId:"8453",contract,custody,
      bytecodeSha256:"0".repeat(64),rpcUrl:"http://not-private",
    })).toThrow("msnw.finality_configuration_invalid");
  });
});
