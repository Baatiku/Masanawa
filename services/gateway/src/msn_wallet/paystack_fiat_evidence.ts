import { createHash } from "node:crypto";
import type { MsnBalanceAuthority } from "./routes.js";
import type { PaystackDvaPg } from "./paystack_dva.js";

export interface VerifiedPaystackFunding {
  readonly reference: string;
  readonly amountKobo: string;
  readonly state: "fiat_verified_backing_pending";
  readonly paidAt: string;
}
export interface MsnwPaystackFiatService {
  readonly authorizer: MsnBalanceAuthority;
  verify(tenantId: string, userId: string, reference: string): Promise<VerifiedPaystackFunding>;
  list(tenantId: string, userId: string): Promise<readonly VerifiedPaystackFunding[]>;
}
export class PaystackEvidenceError extends Error {
  constructor(readonly code: string, readonly statusCode = 503) {
    super(code);
    this.name = "PaystackEvidenceError";
  }
}
type ProviderPayment = {
  reference: string;
  transactionId: string;
  amountKobo: string;
  customerId: string;
  receiverAccount: string;
  paidAt: string;
  evidenceHash: string;
};

function numericId(value: unknown): string {
  const raw = typeof value === "number"
    ? (Number.isSafeInteger(value) && value > 0 ? String(value) : "")
    : typeof value === "string" ? value.trim() : "";
  if (!/^[1-9][0-9]{0,19}$/.test(raw)) throw new PaystackEvidenceError("funding.provider_id_invalid");
  return raw;
}

export function createMsnwPaystackFiatService(input: Readonly<{
  pool: PaystackDvaPg;
  authorizer: MsnBalanceAuthority;
  paystackSecretKey: string;
  fetchImpl?: typeof fetch;
}>): MsnwPaystackFiatService {
  const secret = input.paystackSecretKey.trim();
  if (!/^sk_(?:live|test)_[A-Za-z0-9]+$/.test(secret)) {
    throw new PaystackEvidenceError("funding.provider_not_configured");
  }
  const environment = secret.startsWith("sk_live_") ? "live" : "test";
  const fetchImpl = input.fetchImpl ?? fetch;

  async function verifiedOwner(tenantId: string, userId: string) {
    const result = await input.pool.query(
      `SELECT paystack_customer_id::text AS customer_id,account_number
         FROM commerce.msnw_paystack_dva
        WHERE tenant_id=$1 AND user_id=$2 AND state='assigned'
          AND identity_verified_at IS NOT NULL AND consented_at IS NOT NULL`,
      [tenantId, userId],
    );
    const item = result.rows[0];
    if (!item || typeof item.customer_id !== "string" ||
        !/^[1-9][0-9]*$/.test(item.customer_id) ||
        typeof item.account_number !== "string" ||
        !/^[0-9]{10}$/.test(item.account_number)) {
      throw new PaystackEvidenceError("funding.verified_account_required", 409);
    }
    return { customerId: item.customer_id, accountNumber: item.account_number };
  }

  async function verifyReference(reference: string): Promise<ProviderPayment> {
    if (!/^[A-Za-z0-9_.:-]{1,128}$/.test(reference)) {
      throw new PaystackEvidenceError("funding.reference_invalid", 400);
    }
    let response: Response;
    try {
      response = await fetchImpl(
        "https://api.paystack.co/transaction/verify/" + encodeURIComponent(reference),
        {
          method: "GET",
          headers: { Authorization: "Bearer " + secret,
            Accept: "application/json" },
          redirect: "error",
          signal: AbortSignal.timeout(12000),
        },
      );
    } catch {
      throw new PaystackEvidenceError("funding.provider_unavailable");
    }
    if (!response.ok) throw new PaystackEvidenceError("funding.provider_unavailable");
    let json: unknown;
    try { json = await response.json(); }
    catch { throw new PaystackEvidenceError("funding.provider_unavailable"); }
    if (!json || typeof json !== "object" || Array.isArray(json) ||
        (json as { status?: unknown }).status !== true) {
      throw new PaystackEvidenceError("funding.provider_unavailable");
    }
    const data = (json as { data?: unknown }).data;
    if (!data || typeof data !== "object" || Array.isArray(data)) {
      throw new PaystackEvidenceError("funding.provider_invalid");
    }
    const payment = data as Record<string, unknown>;
    const authorization = payment.authorization as Record<string, unknown> | undefined;
    const customer = payment.customer as Record<string, unknown> | undefined;
    const amount = payment.amount;
    const paidAt = payment.paid_at;
    if (payment.reference !== reference || payment.status !== "success" ||
        payment.domain !== environment || payment.currency !== "NGN" ||
        !["bank_transfer", "dedicated_nuban"].includes(String(payment.channel)) ||
        authorization?.channel !== "dedicated_nuban" ||
        typeof authorization.receiver_bank_account_number !== "string" ||
        !/^[0-9]{10}$/.test(authorization.receiver_bank_account_number) ||
        typeof amount !== "number" || !Number.isSafeInteger(amount) ||
        amount <= 0 || amount > 9007199254740991 ||
        typeof paidAt !== "string" || !Number.isFinite(Date.parse(paidAt))) {
      throw new PaystackEvidenceError("funding.not_verified", 409);
    }
    const transactionId = numericId(payment.id);
    const customerId = numericId(customer?.id);
    const receiverAccount = authorization.receiver_bank_account_number;
    const evidenceHash = createHash("sha256").update(JSON.stringify([
      "msnw-paystack-dva-fiat-v1", reference, transactionId,
      String(amount), customerId, receiverAccount, paidAt, environment,
    ])).digest("hex");
    return {
      reference, transactionId, amountKobo: String(amount),
      customerId, receiverAccount, paidAt, evidenceHash,
    };
  }

  function toStatus(record: Record<string, unknown>): VerifiedPaystackFunding {
    const ref = record.reference;
    const amount = record.amount_kobo;
    const paidAt = record.provider_paid_at;
    if (typeof ref !== "string" || typeof amount !== "string" ||
        !/^[1-9][0-9]*$/.test(amount)) {
      throw new PaystackEvidenceError("funding.readback_unavailable");
    }
    const timestamp = paidAt instanceof Date ? paidAt.toISOString()
      : typeof paidAt === "string" ? paidAt : "";
    if (!Number.isFinite(Date.parse(timestamp))) {
      throw new PaystackEvidenceError("funding.readback_unavailable");
    }
    return Object.freeze({
      reference: ref, amountKobo: amount,
      paidAt: timestamp, state: "fiat_verified_backing_pending" as const,
    });
  }

  return Object.freeze({
    authorizer: input.authorizer,
    async verify(tenantId: string, userId: string, reference: string) {
      const owner = await verifiedOwner(tenantId, userId);
      const proof = await verifyReference(reference);
      if (proof.customerId !== owner.customerId ||
          proof.receiverAccount !== owner.accountNumber) {
        throw new PaystackEvidenceError("funding.owner_mismatch", 403);
      }
      const result = await input.pool.query(
        `INSERT INTO commerce.msnw_paystack_fiat_evidence
         (reference,provider_transaction_id,tenant_id,user_id,
          paystack_customer_id,amount_kobo,funding_account_number,
          provider_evidence_sha256,provider_paid_at)
         VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9)
         ON CONFLICT DO NOTHING
         RETURNING reference,amount_kobo::text,provider_paid_at`,
        [reference, proof.transactionId, tenantId, userId,
         owner.customerId, proof.amountKobo, owner.accountNumber,
         proof.evidenceHash, proof.paidAt],
      );
      if (result.rowCount === 1 && result.rows[0]) {
        return toStatus(result.rows[0]);
      }
      // Global references may only be replayed by the EXACT same owner,
      // transaction, amount, Paystack evidence and destination bank account.
      const existing = await input.pool.query(
        `SELECT reference,amount_kobo::text,provider_paid_at,
                tenant_id,user_id,paystack_customer_id::text AS customer_id,
                provider_transaction_id,funding_account_number,
                provider_evidence_sha256
           FROM commerce.msnw_paystack_fiat_evidence WHERE reference=$1`,
        [reference],
      );
      const row = existing.rows[0];
      if (!row || row.tenant_id !== tenantId || row.user_id !== userId ||
          row.customer_id !== owner.customerId ||
          row.provider_transaction_id !== proof.transactionId ||
          row.amount_kobo !== proof.amountKobo ||
          row.funding_account_number !== owner.accountNumber ||
          row.provider_evidence_sha256 !== proof.evidenceHash) {
        throw new PaystackEvidenceError("funding.replay_conflict", 409);
      }
      return toStatus(row);
    },
    async list(tenantId: string, userId: string) {
      const result = await input.pool.query(
        `SELECT reference,amount_kobo::text,provider_paid_at
           FROM commerce.msnw_paystack_fiat_evidence
          WHERE tenant_id=$1 AND user_id=$2
          ORDER BY created_at DESC,reference DESC LIMIT 30`,
        [tenantId, userId],
      );
      return Object.freeze(result.rows.map(toStatus));
    },
  });
}
