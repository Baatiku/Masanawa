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
