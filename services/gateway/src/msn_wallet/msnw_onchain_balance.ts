import type { MsnBalanceAuthority } from "./routes.js";
import type { MsnPgQuery } from "./store.js";

export interface MsnwOnchainBalanceDependencies {
  readonly authorizer: MsnBalanceAuthority;
  read(tenantId: string, userId: string): Promise<Readonly<{
    asset: "MSNW";
    spendableMicro: string;
    receiveAddress: string;
    chainId: string;
    tokenContract: string;
  }>>;
}

export class MsnwOnchainError extends Error {
  constructor(readonly code: string, readonly statusCode = 503) {
    super(code);
    this.name = "MsnwOnchainError";
  }
}
const hexAddress = /^0x[0-9a-f]{40}$/;
const hexNumber = /^0x[0-9a-fA-F]+$/;
const decimal = /^[1-9][0-9]*$/;

/** Production is disabled until a verified token contract, RPC and owner
 * binding migration are all configured. No old MSN/Cr records are read. */
export function createMsnwOnchainBalanceReader(input: Readonly<{
  pool: MsnPgQuery;
  authorizer: MsnBalanceAuthority;
  chainId: string;
  contract: string;
  rpcUrl: string;
  fetchImpl?: typeof fetch;
}>): MsnwOnchainBalanceDependencies {
  const chainId = input.chainId.trim();
  const contract = input.contract.trim().toLowerCase();
  if (!decimal.test(chainId) || !hexAddress.test(contract)) {
    throw new MsnwOnchainError("msnw.chain_configuration_invalid");
  }
  let rpcUrl: URL;
  try { rpcUrl = new URL(input.rpcUrl); }
  catch { throw new MsnwOnchainError("msnw.rpc_configuration_invalid"); }
  if (rpcUrl.protocol !== "https:" || rpcUrl.username || rpcUrl.password) {
    throw new MsnwOnchainError("msnw.rpc_configuration_invalid");
  }
  const fetchImpl = input.fetchImpl ?? fetch;
  let nextRequestId = 0;

  async function rpc(method: string, params: unknown[]): Promise<unknown> {
    let response: Response;
    const requestId = ++nextRequestId;
    try {
      response = await fetchImpl(rpcUrl.toString(), {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ jsonrpc: "2.0", id: requestId, method, params }),
        redirect: "error",
        signal: AbortSignal.timeout(10000),
      });
    } catch { throw new MsnwOnchainError("msnw.rpc_unavailable"); }
    if (!response.ok) throw new MsnwOnchainError("msnw.rpc_unavailable");
    let payload: unknown;
    try { payload = await response.json(); }
    catch { throw new MsnwOnchainError("msnw.rpc_unavailable"); }
    if (!payload || typeof payload !== "object" || Array.isArray(payload) ||
        "error" in payload || !("result" in payload) ||
        (payload as { id?: unknown }).id !== requestId ||
        (payload as { jsonrpc?: unknown }).jsonrpc !== "2.0") {
      throw new MsnwOnchainError("msnw.rpc_unavailable");
    }
    return (payload as { result: unknown }).result;
  }

  function hexResult(value: unknown, maxBytes = 64): string {
    if (typeof value !== "string" || !/^0x[0-9a-fA-F]*$/.test(value) ||
        value.length < 4 || value.length > maxBytes * 2 + 2 ||
        value.length % 2 !== 0) {
      throw new MsnwOnchainError("msnw.invalid_onchain_readback");
    }
    return value.toLowerCase();
  }

  function abiSymbol(value: unknown): string {
    const data = hexResult(value, 160).slice(2);
    if (data.length < 128) throw new MsnwOnchainError("msnw.invalid_token_symbol");
    const offset = BigInt("0x" + data.slice(0, 64));
    const length = BigInt("0x" + data.slice(64, 128));
    if (offset !== 32n || length < 1n || length > 32n ||
        data.length < 128 + Number(length) * 2) {
      throw new MsnwOnchainError("msnw.invalid_token_symbol");
    }
    return Buffer.from(data.slice(128, 128 + Number(length) * 2), "hex").toString("utf8");
  }

  return Object.freeze({
    authorizer: input.authorizer,
    async read(tenantId: string, userId: string) {
      const result = await input.pool.query(
        `SELECT wallet_address,proof_sha256
           FROM commerce.msnw_onchain_wallet_bindings
          WHERE tenant_id=$1 AND user_id=$2 AND chain_id=$3
            AND token_contract=$4 AND verified_at IS NOT NULL`,
        [tenantId, userId, chainId, contract],
      );
      const binding = result.rows[0];
      const walletAddress = binding?.wallet_address;
      if (typeof walletAddress !== "string" || !hexAddress.test(walletAddress) ||
          typeof binding.proof_sha256 !== "string" ||
          !/^[0-9a-f]{64}$/.test(binding.proof_sha256)) {
        // A missing binding is not a verified zero balance.
        throw new MsnwOnchainError("msnw.verified_wallet_unavailable");
      }

      const actualChainId = rpc("eth_chainId", []);
      const finalized = rpc("eth_getBlockByNumber", ["finalized", false]);
      const [network, block] = await Promise.all([actualChainId, finalized]);
      if (typeof network !== "string" || !hexNumber.test(network) ||
          BigInt(network) !== BigInt(chainId)) {
        throw new MsnwOnchainError("msnw.chain_mismatch");
      }
      if (!block || typeof block !== "object" ||
          typeof (block as { number?: unknown }).number !== "string") {
        throw new MsnwOnchainError("msnw.finalized_block_unavailable");
      }
      const blockNumber = (block as { number: string }).number;
      if (!hexNumber.test(blockNumber)) {
        throw new MsnwOnchainError("msnw.finalized_block_unavailable");
      }

      const call = (data: string) =>
        rpc("eth_call", [{ to: contract, data }, blockNumber]);

      const [code, decimalsRaw, symbolRaw, pausedRaw, balanceRaw] =
        await Promise.all([
          rpc("eth_getCode", [contract, blockNumber]),
          call("0x313ce567"),  // decimals()
          call("0x95d89b41"),  // symbol()
          call("0x5c975abb"),  // paused()
          call("0x70a08231" + walletAddress.slice(2).padStart(64, "0")), // balanceOf()
        ]);
      if (typeof code !== "string" || !/^0x(?:[0-9a-fA-F]{2})+$/.test(code) ||
          code === "0x00") {
        throw new MsnwOnchainError("msnw.contract_unavailable");
      }
      if (BigInt(hexResult(decimalsRaw)) !== 6n || abiSymbol(symbolRaw) !== "MSNW") {
        throw new MsnwOnchainError("msnw.contract_identity_mismatch");
      }
      if (BigInt(hexResult(pausedRaw)) !== 0n) {
        throw new MsnwOnchainError("msnw.contract_paused");
      }
      const amount = BigInt(hexResult(balanceRaw, 32));
      return Object.freeze({
        asset: "MSNW" as const,
        spendableMicro: amount.toString(),
        receiveAddress: walletAddress,
        chainId,
        tokenContract: contract,
      });
    },
  });
}
