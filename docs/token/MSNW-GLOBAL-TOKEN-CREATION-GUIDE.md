# MSNW — Global Token Creation & Deployment Guide

**Edition:** October 18, 2026  
**Canonical release target:** Base mainnet (8453)  
**Mandatory proving environment:** Base Sepolia (84532)  
**Repository:** `Baatiku/Masanawa` · `contracts/msnw/`  
**Status:** token source prepared; no mainnet deployment, audited issuance, reserve value, token listing or live circulation asserted.

> **Global product rule.** Masanawa serves an international market. MSNW is a blockchain asset with its own six-decimal accounting unit. No fiat currency — Nigerian naira, US dollars, euros, pounds or otherwise — defines MSNW's on-chain denomination. Paystack, Flutterwave, stablecoin gateways and future payment services are **funding/payout adapters**, each separately qualified for its supported regions and currencies. Owner policy fixes platform pricing at **1 MSNW = NGN 1**; keep USD/other FX outside the token contract. The contract does not enforce an external market price.

**Wallet integration (owner clarification, 21 October 2026):** this guide governs MSNW issuance only. Masanawa Wallet holds multiple individually qualified assets; Base-first canonical MSNW does not limit BTC/ETH/USDT/USDC/SOL to Base or convert those holdings into MSNW. Portfolio display currency is an estimate, not MSNW’s denomination. Internal Send transfers existing backed custody claims without a blockchain transaction; Withdraw pays the selected held asset externally on its qualified network. No compulsory MSNW intermediary, duplicate customer balance or unqualified wrapped supply. Follow SCREEN-JOURNEYS WLT01–WLT10 and roadmap W12–W14 for custody, pricing, deposits and operations.

## 1. Product decision record

| Property | Decision |
| --- | --- |
| Official brand | Masanawa Wallet |
| Token ticker | MSNW |
| Standard / VM | ERC-20 / EVM |
| First chain | Base mainnet, chain ID 8453 |
| Testnet | Base Sepolia, chain ID 84532 |
| Display decimals | Six (`1 MSNW = 1,000,000 atomic units`) |
| Initial supply | Zero; no team premine or automatic allocation |
| Maximum supply | No arbitrary hard cap; minting is controlled by independently verified settlement and governance. Any planned governance supply policy must be disclosed separately |
| Initial mint destination | One immutable official custody Safe |
| Burn authority | That custody Safe, acting on its **own** token balance |
| Governance | Different 2-of-3 (or stricter) Safe with delayed default-admin transfer |
| Mint authority | Separate restricted Safe with dual approvals and off-chain reserve approval |
| Emergency pause | Independent pause-only role; **governance**, not pauser, unpauses |
| Upgradeability | Non-upgradeable contract for v1 |
| Public pricing | **1 MSNW = NGN 1.00**, owner-decided policy `msnw-ngn-1-v1`; foreign values use current FX. External market/redemption mechanisms separately qualified |
| Customer balance | Official on-chain tokens held at custody, reconciled with Masanawa's own double-entry custody ledger |
| Multi-chain | Not initially. One canonical contract and supply. Do not issue parallel wrapped supplies without audited bridge rules |

**Why Base?** It offers Ethereum-compatible Solidity tooling, a low-friction ERC-20 ecosystem and inexpensive relative L2 transactions. Select Base for canonical MSNW supply; choosing it does **not** require customers to use US dollars, naira or any other specific fiat rail. Its fees and finality are variable. Later support for external deposits/withdrawals must explicitly expose chain and address, charge or sponsor real gas, and distinguish pending inclusion from finality.

## 2. Design boundary: MSNW versus currencies

**Final owner decision: 1 MSNW = ₦1**, Nigeria-first, policy `msnw-ngn-1-v1`. This supersedes the earlier proposed USD anchor and undecided economic-model options. See [pricing/Flutterwave contract](../MSNW-NGN-PRICING-AND-FLUTTERWAVE-BILLING.md) for exact arithmetic, reserves, quote rollout and provider integration. One kobo maps to 10,000 MSNW atomic units; existing additional creator publication 5,000 MSNW has ₦5,000 reference value. No retrospective customer-balance rewrite or relabelling of old liabilities.

All funding/billing adapters must derive 100 kobo per MSNW from this policy rather than conflicting independent configuration. International funding preserves original currency/minor units and binds real FX into approved atomic amounts. Public trading prices and direct legal fiat redemption are not established merely by the fixed platform reference; qualify liquidity/reserve/custody obligations explicitly. Multi-asset holdings remain independent of MSNW.

Recommended quote contract for each adapter:
```text
fundingReference  / tenantId / userId
provider          / currencyCode / currencyMinorUnitScale
paidAmountMinor   / confirmedSettlementId / reserveAccountId
feeAmountMinor    / rateSource / quoteCreatedAt / quoteExpiresAt
approvedMsnwMicro / referenceNonce / riskDecision
```
All monetary amounts are exact integers or fixed-precision decimals: **never binary floating point**. Verify provider callback signatures server-side; bind quote, owner, provider transaction and settlement to an immutable idempotency identity. A payment screenshot, tentative balance or provider callback alone never creates spendable MSNW.

**International adapters** may include locally qualified card/bank providers and USDC/USDT deposits over supported chains. Token receipt validation is chain/contract-specific. A provider's general crypto payout support is not proof that MSNW itself is listed or swappable. Keep supported fiat/crypto networks discoverable from genuine provider capability responses.

## 3. Wallets and signer responsibilities

Prepare four **different**, non-zero addresses on the chosen chain:

| Environment key | Real-world role | Control |
| --- | --- | --- |
| `MSNW_GOVERNANCE_ADDRESS` | Contract default admin, role grants/revokes, pause recovery | Independent 2-of-3 or stronger Safe with offline-separated owners |
| `MSNW_MINTER_ADDRESS` | Calls `mintSettled` after bank/stablecoin backing, reserve and quote authorization | Separate multisig (or audited signer automation backed by strict limits) |
| `MSNW_CUSTODY_ADDRESS` | Only account that receives minted MSNW and can call `burnSettled` | Designated custody Safe; its owners independently authorize burns and withdrawals |
| `MSNW_PAUSER_ADDRESS` | Emergency `pause()` only | Independent security operator; cannot unpause alone |

Never share a single key across governance and operations; never assign the deployment EOA governance authority. A backup owner is not the same thing as a shared seed phrase. Use device hardware signers and documented recovery rules.

**Contract security specifics:**
- `custodian()` is immutable; minting to any other address reverts.
- Even if `BURNER_ROLE` is mistakenly granted to an additional address, `burnSettled` rejects anyone except the immutable custody Safe.
- The custody Safe burns its own token holdings; tokens in customer self-custody cannot be confiscated by `burnSettled`.
- Only governance can unpause an emergency halt. Both minting and ordinary transfers stop while paused.
- Every mint or burn uses a unique globally consumed 32-byte settlement reference; references cannot be replayed or reused across mint/burn.
- Zero supply is deployed; there is no fiat reference, transfer tax, hidden allocation, reflection feature, public mint or upgrade proxy.

**Trade-off:** because the custody address is immutable, changing custody in the future requires an explicitly approved, audited and ledger-reconciled migration. Do not secretly remap balances or represent a new contract as the original token.

## 4. Prepare the development environment

Required: an audited Foundry installation (forge and cast), Git, Solidity compiler `0.8.24`, dedicated Base RPC for each network, two multisig wallets, secure encrypted deployer keystore, and sufficient ETH on the **matching** network.

From the cloned repository:
```sh
cd contracts/msnw
forge --version

# Fetch OpenZeppelin 5.x and forge-std. Record and REVIEW exact commit SHAs
# and pin them in your release checklist before treating the result as reproducible.
forge install OpenZeppelin/openzeppelin-contracts --no-commit
forge install foundry-rs/forge-std --no-commit

forge build
forge test -vvv
```

The checked-in `foundry.toml` expects `lib/openzeppelin-contracts` and `lib/forge-std`. The repo does not vendor those libraries. Pin reviewed dependency versions/SHAs and record compiler output. Never deploy code whose source tests, dependencies or exact compiled runtime bytecode are unknown.

## 5. Configure a Base Sepolia testnet deployment

Before running, create real **testnet Safes** and record all four addresses. The deployment script reads these public values:
```sh
export MSNW_CHAIN_ID=84532
export MSNW_GOVERNANCE_ADDRESS="0x...testnet-governance..."
export MSNW_MINTER_ADDRESS="0x...testnet-minter..."
export MSNW_CUSTODY_ADDRESS="0x...testnet-custody..."
export MSNW_PAUSER_ADDRESS="0x...testnet-pauser..."
export BASE_SEPOLIA_RPC_URL="https://...your-real-sepolia-rpc..."
```

Illustrative address strings above are **placeholders and must be replaced** with valid deployed wallet addresses. None should be an exchange deposit address, a wrong-chain address, an uninitialized Safe or a copied address from another organization.

Import a funded *deployer-only* key into a local Foundry keystore using Foundry's supported secure wallet method. Never paste private keys in a command transcript or put them in a repository `.env`. A mainnet deployer must be separately prepared and funded.

Dry-run with no broadcast:
```sh
forge script script/DeployMasanawaToken.s.sol:DeployMasanawaToken \
  --rpc-url "$BASE_SEPOLIA_RPC_URL"
```
Review gas, target chain, role addresses and expected contract source. Only then explicitly authorize a testnet broadcast:
```sh
forge script script/DeployMasanawaToken.s.sol:DeployMasanawaToken \
  --rpc-url "$BASE_SEPOLIA_RPC_URL" \
  --account msnw-deployer --broadcast
```
Record the **actual** deployed contract address, transaction hash, network, block number, verified source files/compiler settings and resulting runtime code. A source commit is **not** proof of on-chain deployment.

## 6. Independently verify the testnet token

```sh
# Use the actual deployed address and actual matching RPC:
cast call "$MSNW_TOKEN_CONTRACT" "name()(string)" --rpc-url "$BASE_SEPOLIA_RPC_URL"
cast call "$MSNW_TOKEN_CONTRACT" "symbol()(string)" --rpc-url "$BASE_SEPOLIA_RPC_URL"
cast call "$MSNW_TOKEN_CONTRACT" "decimals()(uint8)" --rpc-url "$BASE_SEPOLIA_RPC_URL"
cast call "$MSNW_TOKEN_CONTRACT" "totalSupply()(uint256)" --rpc-url "$BASE_SEPOLIA_RPC_URL"
cast call "$MSNW_TOKEN_CONTRACT" "custodian()(address)" --rpc-url "$BASE_SEPOLIA_RPC_URL"
```

Check exactly: `Masanawa Wallet`, `MSNW`, `6`, `0`, the designated Safe address. Verify role assignments with `hasRole`. Extract exact deployed bytecode via `eth_getCode` and calculate SHA-256 of the bytes (not the ASCII hex string). That is the `MSNW_TOKEN_BYTECODE_SHA256` used by the Worker.

Perform these **real testnet cases**:
- Anonymous/user/suspended account cannot mint, burn, pause or unpause.
- Valid minter cannot mint to an arbitrary external wallet, only the designated Safe.
- A fresh settlement reference mints once, cannot be reused for another mint or a burn.
- Transfer tokens to a self-custody test wallet; that wallet cannot be burned by the custody operator.
- Custody Safe may burn only tokens it actually holds. Test insufficient balance.
- Emergency pause stops transfer/mint/burn; emergency pauser cannot unpause; governance can.
- Simulated wrong chain, wrong bytecode, RPC outage, delayed/forked receipt and duplicate callback never make a customer ledger balance spendable.
- Reconcile actual chain custody balance, supply and all app available/reserved liabilities.

## 7. Connect the MSNW Worker and Gateway to real chain facts

Only after a verified testnet deployment, populate **the correct environment** with actual values:
```env
MSNW_CHAIN_ID=84532
MSNW_TOKEN_CONTRACT=<actual verified token contract>
MSNW_RPC_URL=<verified https RPC>
MSNW_CUSTODY_ADDRESS=<actual approved custody Safe>
MSNW_TOKEN_BYTECODE_SHA256=<actual SHA-256 of deployed runtime bytecode>
```

The signed admission path also needs **public**, independently controlled approval keys and a documented per-adapter exact price:
```env
MSNW_RESERVE_APPROVER_PUBLIC_KEY=<real base64 SPKI DER Ed25519 public key>
MSNW_MINT_APPROVER_PUBLIC_KEY=<distinct real base64 SPKI DER Ed25519 public key>
MSNW_MINT_PRICE_KOBO_PER_MSNW=<only for verified Paystack NGN adapter>
```
Do **not** put private Ed25519 keys, blockchain seed phrases or Safe-owner keys in Railway. Leave unavailable provider networks and conversion rates disabled rather than inventing provider pricing.

The required signed issuance sequence is:
```text
backing_qualified -> mint_authorized -> chain_submitted
      -> [finalized-chain, code, event and reserve verification]
      -> balanced custody ledger credit
```
Every stage is bound to the original funding reference and signed approval. On-chain `settlementMintReference(reference)` is derived by the original Worker; no one guesses or constructs different reference formulas by hand. A customer sees spendable tokens only after the Worker independently verifies receipt finality, expected custody recipient, on-chain amount, code and total on-chain coverage.

## 8. Pre-mainnet go/no-go controls

Do not broadcast on Base mainnet until all are satisfied:

- [ ] Real Safe wallets deployed, 2-of-3 signers independently controlled and recovery playbook tested
- [ ] Token deployment roles all non-zero and distinct; deployer holds no privileged role
- [ ] Foundry code built/tests passed with exact pinned dependency versions
- [ ] Security review confirms no arbitrary mint destination, burn/confiscation, hidden transfer tax or unintended admin recovery
- [ ] Testnet deployment receipt and explorer-verified source retained
- [ ] Token identity, all role grants, runtime bytecode hash and zero initial supply verified independently
- [ ] On-chain reference replay, pause/unpause, custody burn and unauthorized access tests passed
- [ ] Reserve model, issuance price policy and actual user rights approved and published
- [ ] Provider-specific fiat/stablecoin quote and settlement evidence tested across each enabled market
- [ ] Signed treasury/reserve approval, reconciled bank/chain proceeds and exact custody journal tested end-to-end
- [ ] Independent jurisdiction-by-jurisdiction regulatory/legal review for the activities actually offered
- [ ] Independent read-only chain/ledger reserve audit passes; recovery and incident process rehearsed
- [ ] Android wallet has clear network, amount, fee, pending/finalized status and address verification
- [ ] Mainnet deployment authorization explicitly approved by governing signers, with controlled budget and transaction record

## 9. Base mainnet deployment and activation

Use the same reviewed contract source; change only real, approved **mainnet** role addresses, chain, RPC and keystore. Do not copy testnet contract addresses or signers unverified.

```sh
export MSNW_CHAIN_ID=8453
export BASE_MAINNET_RPC_URL="https://...your-real-mainnet-rpc..."
# Set ACTUAL mainnet MSNW_GOVERNANCE_ADDRESS,
# MSNW_MINTER_ADDRESS, MSNW_CUSTODY_ADDRESS, MSNW_PAUSER_ADDRESS.

forge script script/DeployMasanawaToken.s.sol:DeployMasanawaToken \
  --rpc-url "$BASE_MAINNET_RPC_URL"  # dry run

# Only with the explicit release/signer approval:
forge script script/DeployMasanawaToken.s.sol:DeployMasanawaToken \
  --rpc-url "$BASE_MAINNET_RPC_URL" \
  --account msnw-mainnet-deployer --broadcast
```

Immediately record and independently verify the **real** chain ID 8453, contract address, transaction and block hash, code hash, roles, `custodian()`, totalSupply=0 and source verification. Then enter the real Worker/Gateway values, deploy one controlled funding test through approved reserve admission, verify actual finalized mint and customer credit, and only then progressively enable customers/providers/regions.

Do not broadcast multiple competing MSNW contracts and call them all canonical. Plan any later chains as explicit bridged/wrapped instruments with total global supply and double-credit controls.

## 10. What we must never promise without evidence

- Base deployment does not create a market price, make MSNW liquid, or list it on NOWPayments/exchanges.
- A nominal USD quote is not a dollar peg; a user wallet balance is not a guaranteed fiat redemption claim.
- USDC on Base does not imply MSNW is interoperable with all stablecoin payment gateways.
- Successful card/bank authorization does not prove bank reserves cleared or the on-chain mint finalized.
- App-internal transfers are ledger entries backed by official custody, not individual blockchain transfers; be transparent about that model.
- Mainnet code and unsigned deployment instructions are not a deployed token or final audited security clearance.

## 11. Recorded sources and code paths

- Base official network IDs: https://docs.base.org/base-chain/api-reference/ethereum-json-rpc-api/eth_chainId
- Base testnet developer guide: https://docs.base.org/cookbook/use-case-guides/finance/access-real-time-asset-data-pyth-price-feeds/
- OpenZeppelin ERC-20 and pausable extensions: https://docs.openzeppelin.com/contracts/5.x/api/token/erc20
- OpenZeppelin default-admin safeguards: https://docs.openzeppelin.com/contracts/5.x/access-control
- OpenZeppelin mainnet controls/multisig: https://docs.openzeppelin.com/contracts/5.x/learn/preparing-for-mainnet
- Safe network support: https://docs.safe.global/advanced/smart-account-supported-networks
- Contract: `contracts/msnw/MasanawaToken.sol`
- Deployment: `contracts/msnw/script/DeployMasanawaToken.s.sol`
- Foundry tests: `contracts/msnw/test/MasanawaToken.t.sol`
- Financial chain/readback: `services/worker/src/jobs/msnw/chain_finality.ts`
- Reserve/asset audit: `services/worker/src/jobs/msnw/reserve_audit.ts`
- Authenticated approval journal: `services/worker/src/jobs/msnw/issuance_admission.ts`

**Release interpretation:** preparation and source integration do not certify mainnet readiness; Foundry, provider, PostgreSQL, chain and mobile acceptance must be executed and recorded in an environment with the real dependencies.
