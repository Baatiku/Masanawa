# MSNW token deployment — source only

The official customer-facing asset is MSNW. This non-upgradeable ERC-20 uses six
decimals, separate governance/mint/burn/pause roles, unique cross-operation
settlement references and an initial zero token supply. The burner may destroy
its own balance only. It cannot seize customer balances.

## Local contracts toolchain

Requires Foundry (forge/cast) and external, pinned OpenZeppelin Contracts 5.x
and forge-std libraries installed under this directory's lib/. The dependencies
are not vendored and must be installed/pinned by the release integrator. From
contracts/msnw, run forge build and forge test. Do not commit private keys or
any wallet seed. Environment requires MSNW_CHAIN_ID and four distinct role
addresses: MSNW_GOVERNANCE_ADDRESS (audited multisig), MSNW_MINTER_ADDRESS,
MSNW_BURNER_ADDRESS and MSNW_PAUSER_ADDRESS.

Dry-run the script with a chosen RPC and a secure signing strategy before
any on-chain broadcast:

  forge script script/DeployMasanawaToken.s.sol:DeployMasanawaToken --rpc-url RPC_URL

A deployment requires separate authorization and --broadcast. Record the actual
network, confirmed receipt, contract address, source/compiler verification and
replay protection; populate Gateway MSNW_CHAIN_ID, MSNW_TOKEN_CONTRACT and
MSNW_RPC_URL ONLY with confirmed matching values.

## Issuance rules

On-chain MINTER_ROLE is not backing proof. Worker must first reconcile a
specific immutable Paystack success reference, exact NGN reserve, exchange
quote, unique account binding, and role authority. Unique SHA-256 settlement
references prevent duplicate mint/burn execution on-chain but do not replace
idempotency and provider reversal handling in PostgreSQL. Match totalSupply
against real custody reserves and finalized chain receipts. Before refund/burn,
collect the user's MSNW into the authorized burner/custody wallet; the burner
cannot burn a customer's balance directly. Never burn for a fiat screenshot,
user claim, webhook alone, or unconfirmed token receipt. The off-chain Worker
and reserve accounting remain outstanding and MUST be finished before launch.

This repository change does not deploy a token, create reserves, or authorize
minting. Do not invent an address, private key, total supply or current chain.


## Reproducible finalized issuance binding

The Worker admits only an existing operator-authorized Paystack
settlement in PostgreSQL that has progressed through backing_qualified,
mint_authorized, and chain_submitted. For each chain_submitted reference:

- settlementReference = SHA256(UTF8("masanawa:msnw:mint:v1") || 0x00 || UTF8(reference))
- recipient = MSNW_CUSTODY_ADDRESS (platform custodian, not a self-custody customer address)
- amountMicro = settlement.amount_micro (approved, exact six-decimal amount)
- chain and contract must match the independently verified deployment

The Worker validates the finalized block and canonical receipt hash,
chain ID, deployed code SHA-256, correct SettledMint event topic
0x66a5f8fb8e9eb955e066808e11058dfbe29c4982773a75e58462c333c35d5bd1,
recipient, settlement reference, token amount, and the actual finalized
custody token balance against all existing customer custody liabilities
plus the candidate credit. Untrusted customers never supply mint receipts.

Additional Worker variables: MSNW_CUSTODY_ADDRESS and
MSNW_TOKEN_BYTECODE_SHA256 (SHA-256 of exact deployed runtime bytecode
returned by eth_getCode), alongside MSNW_CHAIN_ID, MSNW_TOKEN_CONTRACT,
MSNW_RPC_URL. Do not set fabricated addresses/hashes/networks.
A partial configuration does not enable the Worker.

Automated Paystack merchant settlement proof, MSNW pricing policy,
custody signer and mint authorization are still outstanding external and
implementation dependencies. Source integration is not an executed mint.
