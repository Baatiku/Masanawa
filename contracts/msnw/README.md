# MSNW token — global asset and canonical Base deployment

**Recommended network:** Base (chain ID 8453). Test first on Base Sepolia
(chain ID 84532). The Ethereum-compatible MSNW contract is not denominated in
NGN, USD or any other national currency. Paystack/Flutterwave are optional
regional payment adapters; they do not determine the token's market or unit.

**Source status:** not deployed merely because code is present in GitHub.
No token supply, market price, reserve guarantee, or customer balance should be
claimed before real chain, custody and funding evidence.

Full deployment and global operating specification:
[MSNW-GLOBAL-TOKEN-CREATION-GUIDE.md](../../docs/token/MSNW-GLOBAL-TOKEN-CREATION-GUIDE.md)

## Immutable contract profile

- Name: **Masanawa Wallet**; symbol: **MSNW**.
- Standard: ERC-20, Solidity 0.8.24, OpenZeppelin Contracts 5.x.
- Precision: six decimals; initial supply: **zero**.
- No country-specific denomination, fiat peg hardcoded in contract, transfer
  fee, reflection tokenomics, presale allocation or arbitrary customer burn.
- `custodian()`: immutable approved custody Safe. Every settlement mint goes
  to that address and only that Safe can burn its own held tokens.
- Governance: separate audited multisig with
  `AccessControlDefaultAdminRules` two-day transfer delay.
- Minter: separately authorized role (prefer a second multisig with dual
  approvals); its sole permitted recipient is the custody Safe. It does not
  prove payment or reserve backing.
- Emergency PAUSER_ROLE: **pause only**. Unpause requires DEFAULT_ADMIN_ROLE
  governance approval.
- Duplicate settlement reference protection across mint and burn.
- Source is **non-upgradeable**. If custody must migrate, use a documented
  audited on-chain migration with customer reconciliation; do not silently
  remap contract balances.

## Build and test

Use Foundry. From `contracts/msnw`:

```sh
forge --version
# Install and record immutable, reviewed commits for BOTH dependencies;
# do not use mutable master as a production release lock.
forge install OpenZeppelin/openzeppelin-contracts --no-commit
forge install foundry-rs/forge-std --no-commit
forge build
forge test -vvv
```

Keep actual reviewed dependency SHAs in the release manifest. `lib/` is not
vendored; dependency retrieval is needed before `forge build` works. Include
the Forge version, compiler version, optimizer settings, source commit, and
full production deployment transaction in the release record.

## Deploy with approved addresses

Prepare a funded, secure Foundry deployer **separate from every token role**.
Never put private keys in git, Railway, mobile binaries, markdown or logs.
The script reads these non-secret role/network values:

```env
MSNW_CHAIN_ID=84532
MSNW_GOVERNANCE_ADDRESS=
MSNW_MINTER_ADDRESS=
MSNW_CUSTODY_ADDRESS=
MSNW_PAUSER_ADDRESS=
```

All four addresses must be non-zero and mutually distinct. The custody
address is **also** the BURNER_ROLE holder; there is deliberately no
`MSNW_BURNER_ADDRESS` variable or autonomous burner hot wallet. Use one
custody Safe whose transaction threshold is independently enforced.

From `contracts/msnw` (after checking these variables):

```sh
# Base Sepolia dry run. No broadcast:
forge script script/DeployMasanawaToken.s.sol:DeployMasanawaToken \
  --rpc-url "$BASE_SEPOLIA_RPC_URL"

# Actual testnet broadcast, only after dry run and review:
forge script script/DeployMasanawaToken.s.sol:DeployMasanawaToken \
  --rpc-url "$BASE_SEPOLIA_RPC_URL" --account msnw-deployer --broadcast
```

Confirm the real receipt and contract source on the explorer, all role
assignments, `custodian()`, `decimals()==6`, and `totalSupply()==0`.
Prove an actual approved mint and burn on **testnet** with a distinct
settlement reference, including a customer transfer and pause/recovery.

Only after testnet, custody/off-chain reconciler, reserve governance,
provider acceptance, external security review and jurisdictional legal
assessment should `MSNW_CHAIN_ID=8453` and the corresponding mainnet RPC
be used for an **independent** mainnet deployment. Copy values from actual
receipts and `eth_getCode`, not proposed addresses.

## Funding and global markets

Paystack-backed NGN admissions remain intentionally NGN-specific:
`MSNW_MINT_PRICE_KOBO_PER_MSNW` is **only** the exact conversion unit used
by that adapter; it is not a global MSNW peg or token definition.

For other currencies, add provider-neutral funding obligations with
`currency ISO code, minor-unit scale, exact paid amount, independent verified
settlement, payout/reserve account, fee, FX/asset quote, expiry, and approved
MSNW atomic output`. Each adapter must meet the same signed reserve
admission, finality, idempotency and custody reconciliation rules. No fiat
currency, payout route or USDC/USDT pair is presumed supported without live
provider qualification.

A nominal price or dollar reference is not the same as a legally enforceable
stablecoin redemption promise. Decide and disclose the token's actual rights,
reserve assets, customer redemption process and exchange/liquidity model
before marketing it internationally. Apply applicable rules **per served
jurisdiction**, not a single-country interpretation.

## Runtime authority

The Worker uses `MSNW_CHAIN_ID`, `MSNW_TOKEN_CONTRACT`,
`MSNW_RPC_URL`, `MSNW_CUSTODY_ADDRESS`,
`MSNW_TOKEN_BYTECODE_SHA256`. It verifies the finalized chain, exact
mint reference, on-chain `SettledMint` event, recipient, token amount,
deployed bytecode hash and sufficient custody reserve before crediting
the existing customer ledger. Never make the issuance available from
unqualified payment notifications.

The signed approval workflow is in
[MSNW-SIGNED-ISSUANCE-OPERATIONS-20261018.md](../../docs/workstreams/MSNW-SIGNED-ISSUANCE-OPERATIONS-20261018.md).
The verified payout/fiat adapter currently supports Paystack NGN and is not
evidence that international providers or minting have been qualified.

Official references:
- https://docs.base.org/base-chain/api-reference/ethereum-json-rpc-api/eth_chainId
- https://docs.openzeppelin.com/contracts/5.x/access-control
- https://docs.openzeppelin.com/contracts/5.x/api/token/erc20
- https://docs.safe.global/advanced/smart-account-supported-networks
