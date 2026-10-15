import type { MsnBalanceAuthority } from "./routes.js";

/** Provider account assignment is NOT fiat settlement and never creates MSNW. */
export interface PaystackDvaPg {
  query(sql: string, params?: unknown[]): Promise<{
    rows: Record<string, unknown>[];
    rowCount: number | null;
  }>;
}

export class DvaError extends Error {
  constructor(message: string, readonly statusCode: number) {
    super(message);
    this.name = "DvaError";
  }
}

type Enrollment = {
  customerId: string;
  state: "ready" | "requested" | "assigned";
  accountNumber: string | null;
  bankName: string | null;
  accountName: string | null;
  providerId: string | null;
};
export type DvaAccountStatus = Readonly<{
  state: "identity_verification_required" | "awaiting_consent" | "pending" | "assigned";
  account?: Readonly<{
    accountNumber: string;
    accountName: string;
    bankName: string;
    currency: "NGN";
  }>;
}>;

export interface MsnwPaystackDvaService {
  readonly authorizer: MsnBalanceAuthority;
  read(tenantId: string, userId: string): Promise<DvaAccountStatus>;
  request(tenantId: string, userId: string, consent: boolean): Promise<DvaAccountStatus>;
}

type QualifiedAccount = Readonly<{
  providerId: string;
  bankName: string;
  accountName: string;
  accountNumber: string;
}>;

/** Require a matching Paystack owner and an actual assigned, active NGN bank account. */
function qualifiedAccount(value: unknown, customerId: string): QualifiedAccount | null {
  if (!value || typeof value !== "object" || Array.isArray(value)) return null;
  const item = value as Record<string, unknown>;
  const customer = item.customer as Record<string, unknown> | undefined;
  const bank = item.bank as Record<string, unknown> | undefined;
  const providerId = String(item.id ?? "");
  if (String(customer?.id ?? "") !== customerId ||
      !/^[1-9][0-9]*$/.test(providerId) ||
      item.active !== true || item.assigned !== true ||
      item.currency !== "NGN" ||
      typeof item.account_number !== "string" ||
      !/^[0-9]{10}$/.test(item.account_number) ||
      typeof item.account_name !== "string" ||
      !item.account_name.trim() ||
      typeof bank?.name !== "string" || !bank.name.trim()) {
    return null;
  }
  return Object.freeze({
    providerId,
    accountNumber: item.account_number,
    accountName: item.account_name.trim(),
    bankName: bank.name.trim(),
  });
}

export function createMsnwPaystackDvaService(input: Readonly<{
  pool: PaystackDvaPg;
  authorizer: MsnBalanceAuthority;
  paystackSecretKey: string;
  fetchImpl?: typeof fetch;
}>): MsnwPaystackDvaService {
  const secretKey = input.paystackSecretKey.trim();
  if (!/^sk_(?:test|live)_[A-Za-z0-9]+$/.test(secretKey)) {
    throw new Error("MSNW Paystack DVA is not configured");
  }
  const fetchImpl = input.fetchImpl ?? fetch;
  const { pool, authorizer } = input;

  async function row(tenantId: string, userId: string): Promise<Enrollment | null> {
    const result = await pool.query(
      `SELECT paystack_customer_id::text AS customer_id,state,
              provider_dva_id::text AS provider_id,
              bank_name,account_name,account_number
         FROM commerce.msnw_paystack_dva
        WHERE tenant_id=$1 AND user_id=$2`, [tenantId, userId],
    );
    const value = result.rows[0];
    if (!value) return null;
    if (typeof value.customer_id !== "string" ||
        !/^[1-9][0-9]*$/.test(value.customer_id) ||
        !["ready", "requested", "assigned"].includes(String(value.state))) {
      throw new DvaError("funding.data_unavailable", 503);
    }
    return {
      customerId: value.customer_id,
      state: value.state as Enrollment["state"],
      accountNumber: typeof value.account_number === "string" ? value.account_number : null,
      accountName: typeof value.account_name === "string" ? value.account_name : null,
      bankName: typeof value.bank_name === "string" ? value.bank_name : null,
      providerId: typeof value.provider_id === "string" ? value.provider_id : null,
    };
  }

  function status(value: Enrollment | null): DvaAccountStatus {
    if (!value) return { state: "identity_verification_required" };
    if (value.state === "ready") return { state: "awaiting_consent" };
    if (value.state === "requested") return { state: "pending" };
    if (value.accountNumber && /^[0-9]{10}$/.test(value.accountNumber) &&
        value.bankName && value.accountName && value.providerId) {
      return { state: "assigned", account: {
        accountNumber: value.accountNumber,
        bankName: value.bankName,
        accountName: value.accountName,
        currency: "NGN",
      } };
    }
    throw new DvaError("funding.data_unavailable", 503);
  }

  async function paystack(path: string, method = "GET", body?: unknown): Promise<unknown> {
    let response: Response;
    try {
      response = await fetchImpl("https://api.paystack.co" + path, {
        method,
        headers: {
          Authorization: "Bearer " + secretKey,
          Accept: "application/json",
          ...(body === undefined ? {} : { "Content-Type": "application/json" }),
        },
        ...(body === undefined ? {} : { body: JSON.stringify(body) }),
        redirect: "error",
        signal: AbortSignal.timeout(12000),
      });
    } catch {
      // No ambiguous POST retry: the durable 'requested' state requires
      // provider reconciliation on the next customer call.
      throw new DvaError("funding.provider_unavailable", 503);
    }
    if (!response.ok) throw new DvaError("funding.provider_unavailable", 503);
    let payload: unknown;
    try { payload = await response.json(); }
    catch { throw new DvaError("funding.provider_unavailable", 503); }
    if (!payload || typeof payload !== "object" || (payload as { status?: unknown }).status !== true)
      throw new DvaError("funding.provider_unavailable", 503);
    return (payload as { data?: unknown }).data ?? null;
  }

  async function persist(tenantId: string, userId: string,
                         customerId: string, account: QualifiedAccount): Promise<DvaAccountStatus> {
    await pool.query(
      `UPDATE commerce.msnw_paystack_dva
          SET state='assigned',provider_dva_id=$4,
              account_number=$5,bank_name=$6,account_name=$7,
              assigned_at=statement_timestamp(),updated_at=statement_timestamp()
        WHERE tenant_id=$1 AND user_id=$2
          AND paystack_customer_id=$3 AND state='requested'`,
      [tenantId, userId, customerId, account.providerId,
       account.accountNumber, account.bankName, account.accountName],
    );
    return status(await row(tenantId, userId));
  }

  async function reconcile(tenantId: string, userId: string,
                           customerId: string): Promise<DvaAccountStatus> {
    // Reconciliation never creates another bank account. There must be no
    // blind retry of a timed-out provider POST.
    const data = await paystack(
      "/dedicated_account?customer=" + encodeURIComponent(customerId) +
      "&currency=NGN",
    );
    if (!Array.isArray(data)) throw new DvaError("funding.provider_unavailable", 503);
    const accounts = data.map((v) => qualifiedAccount(v, customerId)).filter(
      (v): v is QualifiedAccount => v !== null,
    );
    if (accounts.length > 1) throw new DvaError("funding.duplicate_provider_accounts", 503);
    if (accounts.length === 1) {
      return persist(tenantId, userId, customerId, accounts[0]!);
    }
    return { state: "pending" };
  }

  return Object.freeze({
    authorizer,
    async read(tenantId: string, userId: string) {
      return status(await row(tenantId, userId));
    },
    async request(tenantId: string, userId: string, consent: boolean) {
      if (consent !== true) throw new DvaError("funding.explicit_consent_required", 400);
      // The trusted onboarding/KYC service must have inserted this account,
      // with its verified identity and provider customer ID, beforehand.
      // No user-entered customer ID, BVN, account name or bank is accepted.
      const began = await pool.query(
        `UPDATE commerce.msnw_paystack_dva
            SET state='requested',consented_at=statement_timestamp(),
                requested_at=statement_timestamp(),updated_at=statement_timestamp()
          WHERE tenant_id=$1 AND user_id=$2 AND state='ready'
            AND identity_verified_at IS NOT NULL
          RETURNING paystack_customer_id::text AS customer_id`,
        [tenantId, userId],
      );
      const previous = await row(tenantId, userId);
      if (!previous) throw new DvaError("funding.identity_verification_required", 409);
      if (previous.state === "assigned") return status(previous);
      if (began.rowCount !== 1) {
        // Account already requested; reconcile but never create twice.
        return reconcile(tenantId, userId, previous.customerId);
      }
      const data = await paystack("/dedicated_account", "POST", {
        customer: previous.customerId,
      });
      const account = qualifiedAccount(data, previous.customerId);
      return account
        ? persist(tenantId, userId, previous.customerId, account)
        : { state: "pending" };
    },
  });
}
