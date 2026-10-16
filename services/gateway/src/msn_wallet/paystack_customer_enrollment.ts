import type { PlatformCustomerSessionAuthorizer } from "../customer_auth.js";
import type { PaystackDvaPg } from "./paystack_dva.js";

export class MsnwEnrollmentError extends Error {
  constructor(readonly code: string, readonly statusCode = 503) {
    super(code);
  }
}
type Identity = Awaited<ReturnType<PlatformCustomerSessionAuthorizer["authorize"]>>;
export type EnrollmentStatus = Readonly<{ state:
  "identity_details_required" | "creating_customer" | "awaiting_bank_identity" |
  "identity_validation_pending" | "ready_for_bank_account" }>;
type Row = { state: string; email: string; phone: string; legal_name: string;
  customer_id: string | null; customer_code: string | null };
type Customer = { id: string; code: string; identified: boolean };
export interface MsnwPaystackEnrollmentService {
  readonly sessions: PlatformCustomerSessionAuthorizer;
  read(identity: Identity): Promise<EnrollmentStatus>;
  submit(identity: Identity, body: unknown): Promise<EnrollmentStatus>;
  handleProviderIdentification(eventName: "customeridentification.success" | "customeridentification.failed", data: unknown): Promise<boolean>;
}
function identityDetails(identity: Identity, extras?: Record<string, unknown>) {
  const emailFromSession = identity.profile.email?.trim().toLowerCase() ?? "";
  const phoneFromSession = identity.profile.phone?.trim() ?? "";
  const extraEmail = typeof extras?.email === "string"
    ? extras.email.trim().toLowerCase() : "";
  const extraPhone = typeof extras?.phone === "string"
    ? extras.phone.trim() : "";
  const email = emailFromSession || extraEmail;
  const phone = phoneFromSession || extraPhone;
  const name = (typeof extras?.legalName === "string" &&
    extras.legalName.trim() ? extras.legalName : identity.profile.name)
    .trim().replace(/\s+/g, " ");
  if ((emailFromSession && extraEmail && emailFromSession !== extraEmail) ||
      (phoneFromSession && extraPhone && phoneFromSession !== extraPhone)) {
    throw new MsnwEnrollmentError("funding.profile_contact_mismatch", 409);
  }
  if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email) ||
      email.length > 320 ||
      !/^\+[1-9][0-9]{6,14}$/.test(phone) ||
      name.length > 160 || name.split(" ").length < 2)
    throw new MsnwEnrollmentError("funding.identity_details_required", 409);
  return { email, phone, name, firstName: name.split(" ")[0]!,
    lastName: name.split(" ").slice(1).join(" ") };
}
function assertStoredIdentity(identity: Identity, record: Row): void {
  const currentEmail = identity.profile.email?.trim().toLowerCase();
  const currentPhone = identity.profile.phone?.trim();
  // Canonical session claims always override unverified customer-entered
  // contact details. Do not rewrite KYC rows when the account changes.
  if ((currentEmail && currentEmail !== record.email) ||
      (currentPhone && currentPhone !== record.phone))
    throw new MsnwEnrollmentError("funding.identity_changed", 409);
}
function customer(raw: unknown, email: string): Customer {
  if (!raw || typeof raw !== "object" || Array.isArray(raw))
    throw new MsnwEnrollmentError("funding.customer_invalid");
  const v = raw as Record<string, unknown>;
  const id = String(v.id ?? "");
  const code = String(v.customer_code ?? "");
  if (!/^[1-9][0-9]{0,19}$/.test(id) ||
      !/^CUS_[A-Za-z0-9]+$/.test(code) ||
      typeof v.email !== "string" || v.email.toLowerCase() !== email)
    throw new MsnwEnrollmentError("funding.customer_mismatch");
  return { id, code, identified: v.identified === true };
}

export function createMsnwPaystackEnrollmentService(input: Readonly<{
  pool: PaystackDvaPg; sessions: PlatformCustomerSessionAuthorizer;
  paystackSecretKey: string; fetchImpl?: typeof fetch;
}>): MsnwPaystackEnrollmentService {
  const secret = input.paystackSecretKey.trim();
  if (!/^sk_(?:live|test)_[A-Za-z0-9]+$/.test(secret))
    throw new MsnwEnrollmentError("funding.provider_not_configured");
  const fetchImpl = input.fetchImpl ?? fetch;

  async function api(path: string, method = "GET", body?: unknown) {
    let response: Response;
    try {
      response = await fetchImpl("https://api.paystack.co" + path, {
        method,
        headers: { Authorization: "Bearer " + secret, Accept: "application/json",
          ...(body === undefined ? {} : { "Content-Type": "application/json" }) },
        ...(body === undefined ? {} : { body: JSON.stringify(body) }),
        redirect: "error", signal: AbortSignal.timeout(12000),
      });
    } catch { throw new MsnwEnrollmentError("funding.provider_unavailable"); }
    if (response.status === 404 && method === "GET") return null;
    if (!response.ok) throw new MsnwEnrollmentError("funding.provider_unavailable");
    let payload: unknown;
    try { payload = await response.json(); }
    catch { throw new MsnwEnrollmentError("funding.provider_invalid"); }
    if (!payload || typeof payload !== "object" || Array.isArray(payload) ||
        (payload as { status?: unknown }).status !== true)
      throw new MsnwEnrollmentError("funding.provider_invalid");
    return (payload as { data?: unknown }).data ?? null;
  }

  async function load(identity: Identity): Promise<Row | null> {
    const result = await input.pool.query(
      "SELECT state,email,phone,legal_name,customer_id::text,customer_code " +
      "FROM commerce.msnw_paystack_customer_onboarding WHERE tenant_id=$1 AND user_id=$2",
      [identity.tenantId, identity.userId]);
    const value = result.rows[0];
    if (!value) return null;
    if (typeof value.state !== "string" || typeof value.email !== "string" ||
        typeof value.phone !== "string" || typeof value.legal_name !== "string")
      throw new MsnwEnrollmentError("funding.onboarding_data_invalid");
    return {
      state: value.state, email: value.email,
      phone: value.phone, legal_name: value.legal_name,
      customer_id: typeof value.customer_id === "string" ? value.customer_id : null,
      customer_code: typeof value.customer_code === "string" ? value.customer_code : null,
    };
  }

  async function saveCustomer(identity: Identity, live: Customer) {
    const result = await input.pool.query(
      "UPDATE commerce.msnw_paystack_customer_onboarding " +
      "SET state='created',customer_id=$3,customer_code=$4,updated_at=statement_timestamp() " +
      "WHERE tenant_id=$1 AND user_id=$2 AND state='creating' RETURNING customer_id::text",
      [identity.tenantId, identity.userId, live.id, live.code]);
    if (result.rowCount !== 1 || result.rows[0]?.customer_id !== live.id)
      throw new MsnwEnrollmentError("funding.concurrent_change", 409);
  }

  async function qualify(identity: Pick<Identity, "tenantId" | "userId">, record: Row, email: string): Promise<EnrollmentStatus> {
    if (!record.customer_id || !record.customer_code)
      throw new MsnwEnrollmentError("funding.customer_invalid");
    const live = customer(await api("/customer/" + encodeURIComponent(record.customer_code)), email);
    if (live.id !== record.customer_id || live.code !== record.customer_code)
      throw new MsnwEnrollmentError("funding.customer_mismatch");
    if (!live.identified) return { state: "identity_validation_pending" };
    // Only Paystack's server-reported identification sets the verified state.
    await input.pool.query(
      "UPDATE commerce.msnw_paystack_customer_onboarding " +
      "SET state='verified',verified_at=COALESCE(verified_at,statement_timestamp())," +
      "updated_at=statement_timestamp() WHERE tenant_id=$1 AND user_id=$2 " +
      "AND customer_id=$3 AND state IN ('validating','verified')",
      [identity.tenantId, identity.userId, live.id]);
    await input.pool.query(
      "INSERT INTO commerce.msnw_paystack_dva " +
      "(tenant_id,user_id,paystack_customer_id,identity_verified_at,state) " +
      "SELECT tenant_id,user_id,customer_id,verified_at,'ready' " +
      "FROM commerce.msnw_paystack_customer_onboarding " +
      "WHERE tenant_id=$1 AND user_id=$2 AND customer_id=$3 " +
      "AND state='verified' AND verified_at IS NOT NULL ON CONFLICT DO NOTHING",
      [identity.tenantId, identity.userId, live.id]);
    const check = await input.pool.query(
      "SELECT paystack_customer_id::text AS customer_id FROM commerce.msnw_paystack_dva " +
      "WHERE tenant_id=$1 AND user_id=$2 AND identity_verified_at IS NOT NULL",
      [identity.tenantId, identity.userId]);
    if (check.rows[0]?.customer_id !== live.id)
      throw new MsnwEnrollmentError("funding.dva_identity_conflict", 409);
    return { state: "ready_for_bank_account" };
  }

  async function read(identity: Identity): Promise<EnrollmentStatus> {
    const record = await load(identity);
    if (!record) return { state: "identity_details_required" };
    assertStoredIdentity(identity, record);
    if (record.state === "preparing") return { state: "creating_customer" };
    if (record.state === "creating") {
      // Recover timed-out customer creation by lookup; NEVER repeat the POST.
      const found = await api("/customer/" + encodeURIComponent(record.email));
      if (!found) return { state: "creating_customer" };
      await saveCustomer(identity, customer(found, record.email));
      return { state: "awaiting_bank_identity" };
    }
    if (record.state === "created") return { state: "awaiting_bank_identity" };
    if (record.state === "validating" || record.state === "verified")
      return qualify(identity, record, record.email);
    throw new MsnwEnrollmentError("funding.onboarding_data_invalid");
  }

  return Object.freeze({
    sessions: input.sessions, read,
    async handleProviderIdentification(
      eventName: "customeridentification.success" | "customeridentification.failed",
      data: unknown,
    ): Promise<boolean> {
      if (!data || typeof data !== "object" || Array.isArray(data))
        throw new MsnwEnrollmentError("funding.identity_event_invalid", 400);
      const detail = data as Record<string, unknown>;
      const id = typeof detail.customer_id === "number" && Number.isSafeInteger(detail.customer_id)
        ? String(detail.customer_id) : detail.customer_id;
      const code = detail.customer_code;
      const email = detail.email;
      if (typeof id !== "string" || !/^[1-9][0-9]{0,19}$/.test(id) ||
          typeof code !== "string" || !/^CUS_[A-Za-z0-9]+$/.test(code) ||
          typeof email !== "string")
        throw new MsnwEnrollmentError("funding.identity_event_invalid", 400);
      const result = await input.pool.query(
        "SELECT tenant_id,user_id,state,email,phone,legal_name,customer_id::text,customer_code " +
        "FROM commerce.msnw_paystack_customer_onboarding WHERE customer_id=$1", [id]);
      if (result.rowCount === 0) return false;
      const owner = result.rows[0];
      if (result.rowCount !== 1 || !owner ||
          typeof owner.tenant_id !== "string" || typeof owner.user_id !== "string" ||
          owner.customer_id !== id || owner.customer_code !== code ||
          owner.email !== email.trim().toLowerCase())
        throw new MsnwEnrollmentError("funding.identity_event_owner_mismatch", 409);
      if (eventName === "customeridentification.failed") {
        // A delayed failure must never undo verified onboarding.
        await input.pool.query(
          "UPDATE commerce.msnw_paystack_customer_onboarding " +
          "SET state='created',updated_at=statement_timestamp() " +
          "WHERE tenant_id=$1 AND user_id=$2 AND customer_id=$3 AND state='validating'",
          [owner.tenant_id, owner.user_id, id]);
        return true;
      }
      const identification = detail.identification;
      if (!identification || typeof identification !== "object" ||
          (identification as { type?: unknown }).type !== "bank_account")
        throw new MsnwEnrollmentError("funding.identity_event_invalid", 400);
      if (owner.state !== "validating" && owner.state !== "verified") return false;
      await qualify({ tenantId: owner.tenant_id as Identity["tenantId"],
        userId: owner.user_id as Identity["userId"] }, {
        state: owner.state as string, email: owner.email as string,
        phone: owner.phone as string, legal_name: owner.legal_name as string,
        customer_id: id, customer_code: code,
      }, owner.email as string);
      return true;
    },
    async submit(identity: Identity, supplied: unknown): Promise<EnrollmentStatus> {
      if (!supplied || typeof supplied !== "object" || Array.isArray(supplied))
        throw new MsnwEnrollmentError("funding.bank_identity_invalid", 400);
      const body = supplied as Record<string, unknown>;
      if (Object.keys(body).some(key =>
          !["accountNumber","bankCode","bvn","consent","email","phone","legalName"].includes(key)) ||
          body.consent !== true ||
          (body.email !== undefined && typeof body.email !== "string") ||
          (body.phone !== undefined && typeof body.phone !== "string") ||
          (body.legalName !== undefined && typeof body.legalName !== "string") ||
          typeof body.accountNumber !== "string" || !/^[0-9]{10}$/.test(body.accountNumber) ||
          typeof body.bankCode !== "string" || !/^[0-9]{3,6}$/.test(body.bankCode) ||
          typeof body.bvn !== "string" || !/^[0-9]{11}$/.test(body.bvn))
        throw new MsnwEnrollmentError("funding.bank_identity_invalid", 400);
      let row = await load(identity);
      if (row) assertStoredIdentity(identity, row);
      const providedIdentity = row
        ? { email: row.email, phone: row.phone, legalName: row.legal_name }
        : body;
      const info = identityDetails(identity, providedIdentity);
      if (row && (
        (typeof body.email === "string" && body.email.trim() &&
          body.email.trim().toLowerCase() !== row.email) ||
        (typeof body.phone === "string" && body.phone.trim() &&
          body.phone.trim() !== row.phone) ||
        (typeof body.legalName === "string" && body.legalName.trim() &&
          body.legalName.trim().replace(/\s+/g," ") !== row.legal_name)))
        throw new MsnwEnrollmentError("funding.identity_conflict", 409);
      if (!row) {
        await input.pool.query(
          "INSERT INTO commerce.msnw_paystack_customer_onboarding " +
          "(tenant_id,user_id,email,phone,legal_name,state) " +
          "VALUES ($1,$2,$3,$4,$5,'preparing') ON CONFLICT DO NOTHING",
          [identity.tenantId, identity.userId, info.email, info.phone, info.name]);
        row = await load(identity);
      }
      if (!row || row.email !== info.email || row.phone !== info.phone ||
          row.legal_name !== info.name)
        throw new MsnwEnrollmentError("funding.identity_conflict", 409);
      if (row.state === "preparing") {
        const lock = await input.pool.query(
          "UPDATE commerce.msnw_paystack_customer_onboarding " +
          "SET state='creating',updated_at=statement_timestamp() " +
          "WHERE tenant_id=$1 AND user_id=$2 AND state='preparing' RETURNING state",
          [identity.tenantId, identity.userId]);
        if (lock.rowCount !== 1) return read(identity);
        const existing = await api("/customer/" + encodeURIComponent(info.email));
        const created = existing ?? await api("/customer", "POST", {
          email: info.email, first_name: info.firstName,
          last_name: info.lastName, phone: info.phone,
        });
        await saveCustomer(identity, customer(created, info.email));
        row = await load(identity);
      }
      if (row?.state === "created") {
        const claimed = await input.pool.query(
          "UPDATE commerce.msnw_paystack_customer_onboarding " +
          "SET state='validating',validation_requested_at=statement_timestamp()," +
          "updated_at=statement_timestamp() WHERE tenant_id=$1 AND user_id=$2 " +
          "AND state='created' RETURNING customer_code",
          [identity.tenantId, identity.userId]);
        if (claimed.rowCount !== 1) return read(identity);
        const code = claimed.rows[0]?.customer_code;
        if (typeof code !== "string" || !/^CUS_[A-Za-z0-9]+$/.test(code))
          throw new MsnwEnrollmentError("funding.customer_invalid");
        await api("/customer/" + encodeURIComponent(code) + "/identification", "POST", {
          country: "NG", type: "bank_account",
          account_number: body.accountNumber, bvn: body.bvn, bank_code: body.bankCode,
          first_name: info.firstName, last_name: info.lastName,
        });
        return { state: "identity_validation_pending" };
      }
      return read(identity);
    },
  });
}
