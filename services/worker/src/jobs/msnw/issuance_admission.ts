import { createHash, createPublicKey, verify as verifySignature } from "node:crypto";
import type { Pool } from "@masanawa/postgres";

export class MsnwAdmissionError extends Error {
  constructor(readonly code: string) { super(code); }
}
export type AdmissionStage = "backing_qualified" | "mint_authorized" | "chain_submitted";
export type SignedMsnwAdmission = Readonly<{
  stage: AdmissionStage;
  reference: string;
  amountMicro: string;
  rateKoboPerMsnw: string;
  chainId: string;
  contract: string;
  reserveProofSha256: string;
  settlementId: string;
  quoteExpiresAt: string;
  txHash?: string;
  signature: string;
}>;
const refPattern = /^[A-Za-z0-9_.:-]{1,128}$/;
const amountPattern = /^[1-9][0-9]{0,23}$/;
const ratePattern = /^[1-9][0-9]{0,17}$/;
const shaPattern = /^[0-9a-f]{64}$/;
const chainPattern = /^[1-9][0-9]{0,17}$/;
const contractPattern = /^0x[0-9a-f]{40}$/;
const txPattern = /^0x[0-9a-f]{64}$/;
const signedStages = new Set<AdmissionStage>([
  "backing_qualified", "mint_authorized", "chain_submitted",
]);

function fail(code: string): never { throw new MsnwAdmissionError(code); }
function sha(value: unknown): string {
  return createHash("sha256").update(JSON.stringify(value),"utf8").digest("hex");
}
function admission(raw: unknown): SignedMsnwAdmission {
  if (!raw || typeof raw !== "object" || Array.isArray(raw))
    fail("msnw.admission.invalid");
  const obj = raw as Record<string,unknown>;
  const keys = ["stage","reference","amountMicro","rateKoboPerMsnw","chainId",
    "contract","reserveProofSha256","settlementId","quoteExpiresAt",
    "signature",...(obj.stage === "chain_submitted" ? ["txHash"] : [])];
  if (Object.keys(obj).sort().join("|") !== keys.sort().join("|") ||
      !signedStages.has(obj.stage as AdmissionStage) ||
      typeof obj.reference !== "string" || !refPattern.test(obj.reference) ||
      typeof obj.amountMicro !== "string" || !amountPattern.test(obj.amountMicro) ||
      typeof obj.rateKoboPerMsnw !== "string" || !ratePattern.test(obj.rateKoboPerMsnw) ||
      typeof obj.chainId !== "string" || !chainPattern.test(obj.chainId) ||
      typeof obj.contract !== "string" || !contractPattern.test(obj.contract) ||
      typeof obj.reserveProofSha256 !== "string" || !shaPattern.test(obj.reserveProofSha256) ||
      typeof obj.settlementId !== "string" || !/^[1-9][0-9]{0,19}$/.test(obj.settlementId) ||
      typeof obj.quoteExpiresAt !== "string" ||
      !Number.isFinite(Date.parse(obj.quoteExpiresAt)) ||
      typeof obj.signature !== "string" ||
      !/^[A-Za-z0-9+/]{86}==$/.test(obj.signature) ||
      (obj.stage === "chain_submitted" &&
        (typeof obj.txHash !== "string" || !txPattern.test(obj.txHash)))) {
    fail("msnw.admission.invalid");
  }
  return obj as SignedMsnwAdmission;
}
/** Stable cross-language detached Ed25519 signing contract.
 * Sign exactly the UTF-8 bytes of JSON.stringify of this array.
 */
export function msnwAdmissionMessage(record: Omit<SignedMsnwAdmission,"signature">): Buffer {
  return Buffer.from(JSON.stringify([
    "masanawa:msnw:admission:v1",record.stage,record.reference,
    record.amountMicro,record.rateKoboPerMsnw,record.chainId,record.contract,
    record.reserveProofSha256,record.settlementId,record.quoteExpiresAt,
    record.txHash ?? null,
  ]),"utf8");
}
function publicKey(base64: string) {
  try {
    const key = createPublicKey({
      key:Buffer.from(base64.trim(),"base64"),format:"der",type:"spki",
    });
    if (key.asymmetricKeyType !== "ed25519") throw Error("wrong key type");
    return key;
  } catch { return fail("msnw.admission.signer_configuration_invalid"); }
}

/** Operator-only admission path: no customer endpoint and no mint private key.
 * Stage transitions use the existing immutable journal; final verified chain
 * receipt and actual customer credit remain solely in custody_issuance.ts.
 */
export function createMsnwIssuanceAdmission(input: Readonly<{
  pool: Pool;
  chainId: string;
  contract: string;
  rateKoboPerMsnw: string;
  reserveApproverPublicKey: string;
  mintApproverPublicKey: string;
  now?: () => Date;
}>) {
  if (!chainPattern.test(input.chainId) ||
      !contractPattern.test(input.contract) ||
      !ratePattern.test(input.rateKoboPerMsnw) ||
      !input.reserveApproverPublicKey.trim() ||
      !input.mintApproverPublicKey.trim() ||
      input.reserveApproverPublicKey.trim() === input.mintApproverPublicKey.trim())
    fail("msnw.admission.configuration_invalid");
  const reserveKey=publicKey(input.reserveApproverPublicKey);
  const mintKey=publicKey(input.mintApproverPublicKey);
  const clock=input.now ?? (()=>new Date());
  async function admit(raw: unknown) {
    const doc = admission(raw);
    if (doc.chainId !== input.chainId ||
        doc.contract !== input.contract ||
        doc.rateKoboPerMsnw !== input.rateKoboPerMsnw)
      fail("msnw.admission.terms_invalid");
    if (doc.stage === "backing_qualified" &&
        Date.parse(doc.quoteExpiresAt) <= clock().getTime())
      fail("msnw.admission.quote_expired");
    if (!verifySignature(null,msnwAdmissionMessage(doc),
      doc.stage==="backing_qualified"?reserveKey:mintKey,
      Buffer.from(doc.signature,"base64")))
      fail("msnw.admission.signature_invalid");
    const db = await input.pool.connect();
    let begun=false;
    try {
      await db.query("BEGIN"); begun=true;
      await db.query("SELECT pg_advisory_xact_lock(hashtext($1))",
        ["msnw:issuance:admission:global"]);
      const payment=await db.query(
        "SELECT o.reference,o.tenant_id,o.user_id,o.amount_kobo::text," +
        "e.provider_evidence_sha256,p.settlement_id," +
        "p.original_amount_kobo::text,s.effective_paid_kobo::text " +
        "FROM commerce.msnw_funding_obligations o " +
        "JOIN commerce.msnw_paystack_fiat_evidence e ON e.reference=o.reference " +
        "JOIN commerce.msnw_paystack_payout_matches p ON p.reference=o.reference " +
        "JOIN commerce.msnw_paystack_merchant_settlements s " +
        "ON s.settlement_id=p.settlement_id " +
        "WHERE o.reference=$1 AND s.provider_status='success' AND s.currency='NGN' " +
        "FOR UPDATE OF o",
        [doc.reference],
      );
      if (payment.rowCount!==1 || !payment.rows[0])
        fail("msnw.admission.provider_backing_missing");
      const bank=payment.rows[0]!;
      if (bank.settlement_id !== doc.settlementId ||
          bank.original_amount_kobo !== bank.amount_kobo ||
          !ratePattern.test(String(bank.amount_kobo)) ||
          !ratePattern.test(String(bank.effective_paid_kobo)) ||
          !shaPattern.test(String(bank.provider_evidence_sha256)))
        fail("msnw.admission.provider_backing_mismatch");
      const amount=BigInt(String(bank.amount_kobo))*1000000n /
        BigInt(input.rateKoboPerMsnw);
      if (amount<1n || !amountPattern.test(amount.toString()) ||
          amount.toString() !== doc.amountMicro)
        fail("msnw.admission.quote_mismatch");
      const quoteHash=sha(["masanawa:msnw:quoted-fiat-v1",
        doc.reference,bank.tenant_id,bank.user_id,bank.amount_kobo,
        doc.amountMicro,doc.rateKoboPerMsnw,doc.chainId,doc.contract,
        doc.quoteExpiresAt]);
      const priorStage=doc.stage==="backing_qualified" ? null
        : doc.stage==="mint_authorized" ? "backing_qualified" : "mint_authorized";
      if (priorStage) {
        const prior=await db.query(
          "SELECT reserve_proof_sha256,quote_sha256,amount_micro::text," +
          "chain_id::text,contract_address FROM commerce.msnw_settlement_events " +
          "WHERE reference=$1 AND stage=$2 FOR UPDATE",
          [doc.reference,priorStage],
        );
        const item=prior.rows[0];
        if (prior.rowCount!==1 || !item ||
            item.reserve_proof_sha256!==doc.reserveProofSha256 ||
            item.quote_sha256!==quoteHash ||
            item.amount_micro!==doc.amountMicro ||
            item.chain_id!==doc.chainId ||
            item.contract_address!==doc.contract)
          fail("msnw.admission.previous_stage_mismatch");
      }
      const reversed=await db.query(
        "SELECT stage FROM commerce.msnw_settlement_events " +
        "WHERE reference=$1 AND stage IN ('provider_reversed','settlement_anomaly')",
        [doc.reference],
      );
      if (reversed.rowCount) fail("msnw.admission.reversal_or_anomaly");
      if (doc.stage==="backing_qualified") {
        const other=await db.query(
          "SELECT reference FROM commerce.msnw_settlement_events " +
          "WHERE stage='backing_qualified' AND reserve_proof_sha256=$1 " +
          "AND reference<>$2 LIMIT 1",
          [doc.reserveProofSha256,doc.reference],
        );
        if (other.rowCount) fail("msnw.admission.reserve_proof_reused");
      }
      const eventSha=sha(["masanawa:msnw:admission-event:v1",
        doc.stage,doc.reference,doc.reserveProofSha256,quoteHash,
        doc.amountMicro,doc.chainId,doc.contract,doc.txHash ?? null]);
      const previous=await db.query(
        "SELECT event_sha256 FROM commerce.msnw_settlement_events " +
        "WHERE reference=$1 AND stage=$2 FOR UPDATE",
        [doc.reference,doc.stage],
      );
      if (previous.rowCount) {
        if (previous.rowCount!==1 || previous.rows[0]?.event_sha256!==eventSha)
          fail("msnw.admission.idempotency_conflict");
        await db.query("COMMIT"); begun=false;
        return Object.freeze({reference:doc.reference,stage:doc.stage,
          state:"already_recorded" as const,eventSha256:eventSha});
      }
      const inserted=await db.query(
        "INSERT INTO commerce.msnw_settlement_events " +
        "(event_sha256,reference,stage,reserve_proof_sha256,quote_sha256," +
        "amount_micro,chain_id,contract_address,tx_hash) " +
        "VALUES ($1,$2,$3,$4,$5,$6::numeric,$7::bigint,$8,$9) " +
        "RETURNING reference",
        [eventSha,doc.reference,doc.stage,doc.reserveProofSha256,
          quoteHash,doc.amountMicro,doc.chainId,doc.contract,
          doc.txHash??null],
      );
      if (inserted.rowCount!==1) fail("msnw.admission.journal_unavailable");
      await db.query("COMMIT"); begun=false;
      return Object.freeze({reference:doc.reference,stage:doc.stage,
        state:"recorded" as const,eventSha256:eventSha});
    } catch(error) {
      if (begun) await db.query("ROLLBACK").catch(()=>undefined);
      throw error;
    } finally {db.release();}
  }
  return Object.freeze({admit});
}
