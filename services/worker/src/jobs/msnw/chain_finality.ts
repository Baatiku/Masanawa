import { createHash } from "node:crypto";

const addressPattern = /^0x[0-9a-f]{40}$/;
const txPattern = /^0x[0-9a-f]{64}$/;
const bytes32 = /^0x[0-9a-f]{64}$/;
const hexInt = /^0x[0-9a-f]+$/;
const mintTopic = "0x66a5f8fb8e9eb955e066808e11058dfbe29c4982773a75e58462c333c35d5bd1";
// Ethereum Keccak-256("SettledMint(bytes32,address,uint256)")
// Independently check: Keccak-256("Transfer(address,address,uint256)") starts
// ddf252ad1be2c89b69c2b068fc378daa... (not NIST SHA3-256).
export class MsnwFinalityError extends Error {
  constructor(readonly code: string) { super(code); }
}
type MintCandidate = Readonly<{
  reference: string; amountMicro: string; txHash: string;
  chainId: string; contract: string;
}>;
export type VerifiedMsnwMint = Readonly<{
  reference: string;
  amountMicro: string;
  chainId: string;
  contract: string;
  custody: string;
  txHash: string;
  blockNumber: string;
  blockHash: string;
  receiptSha256: string;
  custodyBalanceMicro: string;
}>;
/** A read-only chain-qualified reserve attestation, never mint authority. */
export type VerifiedMsnwReserve = Readonly<{
  chainId: string;
  contract: string;
  custody: string;
  blockNumber: string;
  blockHash: string;
  custodyBalanceMicro: string;
  totalSupplyMicro: string;
}>;
export function settlementMintReference(reference: string): string {
  if (!/^[A-Za-z0-9_.:-]{1,128}$/.test(reference))
    throw new MsnwFinalityError("msnw.mint_reference_invalid");
  return "0x" + createHash("sha256")
    .update("masanawa:msnw:mint:v1\0", "utf8").update(reference,"utf8")
    .digest("hex");
}
function hexBigInt(value: unknown): bigint {
  if (typeof value !== "string" || !hexInt.test(value.toLowerCase()))
    throw new MsnwFinalityError("msnw.chain_hex_invalid");
  return BigInt(value);
}
function row(value: unknown): Record<string, unknown> {
  if (!value || typeof value !== "object" || Array.isArray(value))
    throw new MsnwFinalityError("msnw.chain_result_invalid");
  return value as Record<string, unknown>;
}

export function createMsnwFinalityVerifier(input: Readonly<{
  chainId: string; contract: string; custody: string;
  bytecodeSha256: string; rpcUrl: string;
  fetchImpl?: typeof fetch;
}>) {
  const chainId = input.chainId.trim();
  const contract = input.contract.toLowerCase();
  const custody = input.custody.toLowerCase();
  const bytecodeSha = input.bytecodeSha256.toLowerCase();
  if (!/^[1-9][0-9]*$/.test(chainId) || !addressPattern.test(contract) ||
      !addressPattern.test(custody) || !/^[0-9a-f]{64}$/.test(bytecodeSha))
    throw new MsnwFinalityError("msnw.finality_configuration_invalid");
  let url: URL;
  try { url = new URL(input.rpcUrl); }
  catch { throw new MsnwFinalityError("msnw.finality_configuration_invalid"); }
  if (url.protocol !== "https:" || url.username || url.password)
    throw new MsnwFinalityError("msnw.finality_configuration_invalid");
  const fetchImpl = input.fetchImpl ?? fetch;
  let nextId = 0;
  async function rpc(method: string, params: unknown[]) {
    let response: Response;
    const id = ++nextId;
    try {
      response = await fetchImpl(url.toString(),{
        method: "POST", redirect: "error",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ jsonrpc: "2.0",id,method,params }),
        signal: AbortSignal.timeout(12000),
      });
    } catch { throw new MsnwFinalityError("msnw.finality_rpc_unavailable"); }
    if (!response.ok) throw new MsnwFinalityError("msnw.finality_rpc_unavailable");
    let payload: unknown;
    try { payload = await response.json(); }
    catch { throw new MsnwFinalityError("msnw.finality_rpc_invalid"); }
    const data = row(payload);
    if (data.jsonrpc !== "2.0" || data.id !== id || "error" in data ||
        !Object.hasOwn(data,"result"))
      throw new MsnwFinalityError("msnw.finality_rpc_invalid");
    return data.result;
  }

  async function verify(candidate: MintCandidate): Promise<VerifiedMsnwMint> {
    const hash = candidate.txHash.toLowerCase();
    if (!txPattern.test(hash) || candidate.chainId !== chainId ||
        candidate.contract.toLowerCase() !== contract ||
        !/^[1-9][0-9]{0,23}$/.test(candidate.amountMicro))
      throw new MsnwFinalityError("msnw.finality_candidate_invalid");
    const ref = settlementMintReference(candidate.reference);
    const [networkRaw,receiptRaw,finalizedRaw] = await Promise.all([
      rpc("eth_chainId",[]),
      rpc("eth_getTransactionReceipt",[hash]),
      rpc("eth_getBlockByNumber",["finalized",false]),
    ]);
    if (hexBigInt(networkRaw) !== BigInt(chainId))
      throw new MsnwFinalityError("msnw.finality_wrong_chain");
    if (receiptRaw === null)
      throw new MsnwFinalityError("msnw.finality_receipt_pending");
    const receipt = row(receiptRaw), finalized = row(finalizedRaw);
    const blockNumber = String(receipt.blockNumber ?? "").toLowerCase();
    const blockHash = String(receipt.blockHash ?? "").toLowerCase();
    const finalizedNumber = hexBigInt(finalized.number);
    if (!hexInt.test(blockNumber) || !bytes32.test(blockHash) ||
        hexBigInt(blockNumber) > finalizedNumber ||
        String(receipt.transactionHash ?? "").toLowerCase() !== hash ||
        String(receipt.to ?? "").toLowerCase() !== contract ||
        hexBigInt(receipt.status) !== 1n)
      throw new MsnwFinalityError("msnw.finality_unconfirmed");
    const block = row(await rpc("eth_getBlockByNumber",[blockNumber,false]));
    if (hexBigInt(block.number) !== BigInt(blockNumber) ||
        String(block.hash ?? "").toLowerCase() !== blockHash)
      throw new MsnwFinalityError("msnw.finality_chain_reorg");
    const [codeRaw,custodyAmountRaw] = await Promise.all([
      rpc("eth_getCode",[contract,blockNumber]),
      rpc("eth_call",[{ to: contract,
        data: "0x70a08231" + custody.slice(2).padStart(64,"0") },
        String(finalized.number)]),
    ]);
    const code = String(codeRaw ?? "").toLowerCase();
    if (!/^0x(?:[0-9a-f]{2})+$/.test(code) ||
        createHash("sha256").update(Buffer.from(code.slice(2),"hex"))
          .digest("hex") !== bytecodeSha)
      throw new MsnwFinalityError("msnw.finality_bytecode_mismatch");
    const custodyBalanceMicro = hexBigInt(custodyAmountRaw).toString();
    if (!Array.isArray(receipt.logs))
      throw new MsnwFinalityError("msnw.finality_logs_invalid");
    const expectedCustody = "0x" + custody.slice(2).padStart(64,"0");
    const valid = receipt.logs.filter(log => {
      if (!log || typeof log !== "object") return false;
      const entry = log as Record<string, unknown>;
      if (String(entry.address ?? "").toLowerCase() !== contract ||
          !Array.isArray(entry.topics) || entry.topics.length !== 3) return false;
      const topics = entry.topics.map(x => String(x).toLowerCase());
      if (topics[0] !== mintTopic || topics[1] !== ref ||
          topics[2] !== expectedCustody) return false;
      const data = String(entry.data ?? "").toLowerCase();
      if (!bytes32.test(data)) return false;
      return BigInt(data) === BigInt(candidate.amountMicro);
    });
    if (valid.length !== 1)
      throw new MsnwFinalityError("msnw.finality_mint_event_unverified");
    const receiptSha256 = createHash("sha256")
      .update(JSON.stringify({chainId,contract,custody,ref,hash,
        blockNumber,blockHash,amount: candidate.amountMicro})).digest("hex");
    return Object.freeze({
      reference: candidate.reference, amountMicro: candidate.amountMicro,
      chainId,contract,custody,txHash: hash,blockNumber: BigInt(blockNumber).toString(),
      blockHash,receiptSha256,custodyBalanceMicro,
    });
  }
  async function readReserve(): Promise<VerifiedMsnwReserve> {
    const [networkRaw, finalityRaw] = await Promise.all([
      rpc("eth_chainId", []),
      rpc("eth_getBlockByNumber", ["finalized", false]),
    ]);
    if (hexBigInt(networkRaw) !== BigInt(chainId))
      throw new MsnwFinalityError("msnw.finality_wrong_chain");
    const finalized = row(finalityRaw);
    const blockNumber = String(finalized.number ?? "").toLowerCase();
    const blockHash = String(finalized.hash ?? "").toLowerCase();
    if (!hexInt.test(blockNumber) || !bytes32.test(blockHash))
      throw new MsnwFinalityError("msnw.finality_unconfirmed");
    const [codeRaw, balanceRaw, totalSupplyRaw, decimalsRaw] = await Promise.all([
      rpc("eth_getCode", [contract,blockNumber]),
      rpc("eth_call", [{
        to:contract,data:"0x70a08231" + custody.slice(2).padStart(64,"0"),
      },blockNumber]),
      rpc("eth_call", [{to:contract,data:"0x18160ddd"},blockNumber]),
      rpc("eth_call", [{to:contract,data:"0x313ce567"},blockNumber]),
    ]);
    const code = String(codeRaw ?? "").toLowerCase();
    if (!/^0x(?:[0-9a-f]{2})+$/.test(code) ||
        createHash("sha256").update(Buffer.from(code.slice(2),"hex"))
          .digest("hex") !== bytecodeSha)
      throw new MsnwFinalityError("msnw.finality_bytecode_mismatch");
    if (hexBigInt(decimalsRaw) !== 6n)
      throw new MsnwFinalityError("msnw.finality_token_decimals_mismatch");
    const custodyBalance = hexBigInt(balanceRaw);
    const supply = hexBigInt(totalSupplyRaw);
    if (custodyBalance > supply || supply.toString().length > 78)
      throw new MsnwFinalityError("msnw.finality_supply_invalid");
    return Object.freeze({
      chainId,contract,custody,blockNumber:BigInt(blockNumber).toString(),
      blockHash,custodyBalanceMicro:custodyBalance.toString(),
      totalSupplyMicro:supply.toString(),
    });
  }
  return Object.freeze({ verify, readReserve });
}
