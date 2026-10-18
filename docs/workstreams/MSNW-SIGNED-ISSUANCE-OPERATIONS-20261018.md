# Signed MSNW issuance operator workflow — source admission

> **Scope: one currency-specific funding adapter, NOT the token definition.**
> This runbook describes the existing NGN-denominated Paystack bank funding
> and `rateKoboPerMsnw` operator admission. Masanawa targets a global market.
> The on-chain MSNW asset is currency-neutral. Additional fiat/stablecoin
> funding adapters require their own signed settlement and exact FX/quote
> records before issuance, following
> [MSNW Global Token Creation Guide](../token/MSNW-GLOBAL-TOKEN-CREATION-GUIDE.md).
> Do not interpret this example rate as a naira peg or exclusive market.
>
> The reviewed token contract has an **immutable custody Safe**: that Safe
> receives mintSettled and alone performs burnSettled of its own tokens.
> The minter, governance Safe and emergency pauser are distinct.

**Security boundary:** this command never holds a blockchain private key and cannot mint. It records three independently approved stages in the existing append-only settlement journal. The current Worker only credits custody accounts when it independently verifies a successfully finalized on-chain mint to the official custodian, with adequate reserved assets and the correct code hash.

## Prerequisites

1. Actual verified deployed `MSNW_CHAIN_ID`, `MSNW_TOKEN_CONTRACT`, `MSNW_RPC_URL`, `MSNW_CUSTODY_ADDRESS`, and `MSNW_TOKEN_BYTECODE_SHA256`, consistent across Gateway and Worker.
2. The Paystack funding reference must have an immutable, independently verified successful customer transfer, and a corresponding real positive merchant-bank payout `commerce.msnw_paystack_payout_matches` and merchant settlement. Duplicate provider references are not new liquidity.
3. An actual bank reserve allocation attestation with an independent signed SHA-256 document hash, mapped to **one** funding reference, covering all existing liabilities plus the proposed issuance. This cannot be synthesized from Paystack payment success alone. The off-chain reserve attestor signs `backing_qualified`.
4. A real operator-approved positive `MSNW_MINT_PRICE_KOBO_PER_MSNW`, expressed as **integer kobo per one whole MSNW**, used to compute exact six-decimal token units as `floor(amountKobo * 1_000_000 / rateKoboPerMsnw)`. Configure the same rate before quoting. Pricing must be reviewed and agreed upon with the depositor.
5. Independent Ed25519 reserve and mint approval key pairs. Configure only their public keys on Railway as base64 DER-encoded SubjectPublicKeyInfo, in `MSNW_RESERVE_APPROVER_PUBLIC_KEY` and `MSNW_MINT_APPROVER_PUBLIC_KEY`. Keep the two separate PKCS#8 private keys offline; **never paste a private key into Railway, GitHub, the APK or the assistant**. A public key does not authorize spending.
6. Current migration roots must include `packages/commerce/migrations/0132_msnw_signed_admission.sql`. This adds immutable signer provenance; do not alter historical MSNW/Cr/MSN records.

## One reference, three signed approvals

The offline operator composes each strict UTF-8 JSON file with exactly these fields:

```json
{
  "stage": "backing_qualified",
  "reference": "ACTUAL_VERIFIED_PAYSTACK_REFERENCE",
  "amountMicro": "ACTUAL_EXACT_INTEGER_MICRO",
  "rateKoboPerMsnw": "ACTUAL_GOVERNED_INTEGER_RATE",
  "chainId": "ACTUAL_CHAIN_ID",
  "contract": "0xACTUAL_DEPLOYED_CONTRACT_LOWERCASE",
  "reserveProofSha256": "ACTUAL_SHA256_OF_VERIFIED_RESERVE_ATTESTATION",
  "settlementId": "ACTUAL_PAYSTACK_MERCHANT_SETTLEMENT_ID",
  "quoteExpiresAt": "ACTUAL_FUTURE_ISO8601_QUOTE_EXPIRY",
  "signature": "BASE64_ED25519_SIGNATURE"
}
```

Names such as `ACTUAL_` above are **documentation labels, never accepted configuration**. All addresses/hashes/rates/signatures must be actual approved values. `mint_authorized` is the same economics/proof with `stage` changed and freshly signed by the distinct mint approver. `chain_submitted` also contains `txHash` (actual lowercase transaction hash from the minter's on-chain submission), and is signed by the mint approver. The final Worker verifies the real receipt before making custody spendable.

The signable message is **UTF-8(JSON.stringify)** of this positional array, with the exact field values, `txHash` set to `null` except for `chain_submitted`:

```text
["masanawa:msnw:admission:v1",stage,reference,amountMicro,rateKoboPerMsnw,chainId,contract,reserveProofSha256,settlementId,quoteExpiresAt,txHashOrNull]
```

Build the Worker and preview the message:

```bash
pnpm --filter @masanawa/worker-service build
cd services/worker
node --conditions=production dist/msnw_admission_cli.js message /secure/operator/backing.json
```

Sign the exact message with the **offline** key for that role. Example local Node.js logic:

```js
import { sign,createPrivateKey } from 'node:crypto';
import { readFileSync } from 'node:fs';
const privateKey=createPrivateKey(readFileSync('/secure/offline/role-key.pem'));
const message=Buffer.from(process.env.MSNW_SIGNABLE_MESSAGE,'utf8');
const signature=sign(null,message,privateKey).toString('base64');
process.stdout.write(signature+'\n');
```

Use an offline method for message transfer, verify all fields before signing, and insert its detached `signature` in the corresponding JSON. The CLI does not create or store private keys. Only after real approvals and real bank reserve proof:

```bash
cd services/worker
pnpm msnw:admit admit /secure/operator/backing-signed.json
pnpm msnw:admit admit /secure/operator/mint-authorized-signed.json
# Separately send a real unique on-chain mintSettled(custodian, micro, referenceHash)
# with authorized signer/governance and record its transaction hash.
pnpm msnw:admit admit /secure/operator/chain-submitted-signed.json
```

The source token contract uses `settlementMintReference(reference)` in `services/worker/src/jobs/msnw/chain_finality.ts` to derive its unique `bytes32` from the original Paystack reference. Rejected, reverted, fraudulent, wrong-contract, wrong-custody, wrong-amount or not-finalized chain transactions cannot create customer credit. Pending proof remains in the original immutable journal for reconciliation. Once final, the existing `createMsnwCustodyIssuanceRuntime` adds balanced available customer custody credit exactly once, after reserve coverage and finalized proof.

**Important:** no operator-approved reserve signature, mint signing key, source token deployment, reserve treasury or exchange rate was generated or activated by this repository change. Only configured, bank-verified and chain-confirmed facts make live issuance possible.

## Test and rollback plan

```bash
pnpm exec vitest run services/worker/src/jobs/msnw/issuance_admission.test.ts \
  services/worker/src/jobs/msnw/custody_issuance.test.ts \
  services/worker/src/jobs/msnw/chain_finality.test.ts \
  services/worker/src/jobs/msnw/reserve_audit.test.ts
pnpm --filter @masanawa/worker-service typecheck
pnpm --filter @masanawa/worker-service build
```

On a disposable PostgreSQL database, validate additive migration, row locks, immutable signatures, stale/modified terms, duplicate signatures, different reserve proofs, wrong-tenant references, payout changes, transaction reversal races and finalized receipt reconciliation. No forged payment screenshot is allowed to mint. Rollback is **disable further operator admissions/chain minter role**, retain audit evidence and resolve pending obligations; never delete signed journal rows or claw back customer balances without an approved linked operation.

Production deployment, executable chain mint, reserve allocation and provider acceptance remain separate release evidence until actually performed.
