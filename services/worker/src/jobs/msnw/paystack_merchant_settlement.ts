import { createHash } from "node:crypto";
import type { Pool } from "@masanawa/postgres";

export class MsnwMerchantSettlementError extends Error {
  constructor(readonly code: string) { super(code); }
}
type ProviderSettlement = Readonly<{
  id: string; domain: "live" | "test"; total: string; effective: string;
  settledAt: string;
}>;
type ProviderTransaction = Readonly<{
  reference: string; id: string; amount: string;
}>;
const idPattern = /^[1-9][0-9]{0,19}$/;
const refPattern = /^[A-Za-z0-9_.:-]{1,128}$/;
function id(value: unknown): string {
  const normalized = typeof value === "number" && Number.isSafeInteger(value)
    ? String(value) : typeof value === "string" ? value.trim() : "";
  if (!idPattern.test(normalized))
    throw new MsnwMerchantSettlementError("msnw.paystack_provider_id_invalid");
  return normalized;
}
function kobo(value: unknown): string {
  const normalized = typeof value === "number" && Number.isSafeInteger(value)
    ? String(value) : typeof value === "string" ? value.trim() : "";
  if (!/^(0|[1-9][0-9]{0,17})$/.test(normalized))
    throw new MsnwMerchantSettlementError("msnw.paystack_amount_invalid");
  return normalized;
}
function object(value: unknown): Record<string, unknown> {
  if (!value || typeof value !== "object" || Array.isArray(value))
    throw new MsnwMerchantSettlementError("msnw.paystack_payload_invalid");
  return value as Record<string, unknown>;
}
function settlement(value: unknown, domain: "live" | "test"): ProviderSettlement {
  const v = object(value);
  if (v.status !== "success" || v.currency !== "NGN" || v.domain !== domain ||
      typeof v.settlement_date !== "string" ||
      !Number.isFinite(Date.parse(v.settlement_date)))
    throw new MsnwMerchantSettlementError("msnw.paystack_settlement_invalid");
  const total = kobo(v.total_processed), effective = kobo(v.effective_amount);
  if (BigInt(total) === 0n || BigInt(effective) > BigInt(total))
    throw new MsnwMerchantSettlementError("msnw.paystack_settlement_invalid");
  return Object.freeze({ id:id(v.id),domain,total,effective,
    settledAt:v.settlement_date });
}
function transaction(value: unknown, domain: "live" | "test"): ProviderTransaction | null {
  const v = object(value);
  if (v.status !== "success" || v.currency !== "NGN" || v.domain !== domain)
    return null;
  if (typeof v.reference !== "string" || !refPattern.test(v.reference))
    throw new MsnwMerchantSettlementError("msnw.paystack_transaction_invalid");
  const amount = kobo(v.amount);
  if (BigInt(amount) === 0n)
    throw new MsnwMerchantSettlementError("msnw.paystack_transaction_invalid");
  return Object.freeze({ reference:v.reference,id:id(v.id),amount });
}

export function createMsnwMerchantSettlementRuntime(input: Readonly<{
  pool: Pool; paystackSecretKey: string; fetchImpl?: typeof fetch;
}>) {
  const secret = input.paystackSecretKey.trim();
  if (!/^sk_(?:live|test)_[A-Za-z0-9]+$/.test(secret))
    throw new MsnwMerchantSettlementError("msnw.paystack_unavailable");
  const domain = secret.startsWith("sk_live_") ? "live" : "test";
  const fetchImpl = input.fetchImpl ?? fetch;
  async function api(path: string): Promise<readonly unknown[]> {
    let response: Response;
    try {
      response = await fetchImpl("https://api.paystack.co" + path,{
        method:"GET",redirect:"error",
        headers: {Authorization:"Bearer " + secret,Accept:"application/json"},
        signal:AbortSignal.timeout(12000),
      });
    } catch { throw new MsnwMerchantSettlementError("msnw.paystack_unavailable"); }
    if (!response.ok)
      throw new MsnwMerchantSettlementError("msnw.paystack_unavailable");
    let body: Record<string, unknown>;
    try { body = object(await response.json()); }
    catch { throw new MsnwMerchantSettlementError("msnw.paystack_payload_invalid"); }
    if (body.status !== true || !Array.isArray(body.data))
      throw new MsnwMerchantSettlementError("msnw.paystack_payload_invalid");
    return body.data;
  }
  // Always recheck the newest page; rotate the remaining read budget
  // through deeper history so a long-lived settlement archive does not
  // permanently strand evidence after the first 250 provider records.
  // The cursor is only a paging optimization, not settlement authority.
  let nextDeepPage = 2;
  async function listSettlements(): Promise<readonly ProviderSettlement[]> {
    const found: ProviderSettlement[] = [];
    const seen = new Set<string>();
    async function appendPage(page: number): Promise<number> {
      const raw = await api("/settlement?status=success&perPage=50&page=" + page);
      for (const value of raw) {
        const entry = settlement(value,domain);
        // Pages can shift when Paystack inserts new settlements during a
        // scan. Deduplicate by provider ID and verify the immutable proof
        // independently before writing.
        if (seen.has(entry.id)) continue;
        seen.add(entry.id);
        found.push(entry);
      }
      return raw.length;
    }
    if (await appendPage(1) < 50) {
      nextDeepPage = 2;
      return found;
    }
    for (let i = 0; i < 4; i++) {
      const currentPage = nextDeepPage;
      const count = await appendPage(currentPage);
      if (count < 50 || currentPage >= 10000) {
        nextDeepPage = 2;
        break;
      }
      nextDeepPage = currentPage + 1;
    }
    return found;
  }
  async function transactions(settlementId: string) {
    const found: ProviderTransaction[] = [];
    const seen = new Set<string>();
    for (let page=1;page<=10;page++) {
      const raw = await api("/settlement/" + settlementId +
        "/transactions?perPage=100&page=" + page);
      for (const value of raw) {
        const item = transaction(value,domain);
        if (!item) continue;
        if (seen.has(item.id))
          throw new MsnwMerchantSettlementError("msnw.paystack_transaction_duplicate");
        seen.add(item.id);
        found.push(item);
      }
      if (raw.length < 100) return found;
    }
    // Never mark a partially paged merchant payout as fully scanned.
    throw new MsnwMerchantSettlementError("msnw.paystack_settlement_truncated");
  }

  async function record(entry: ProviderSettlement, rows: readonly ProviderTransaction[]) {
    const client = await input.pool.connect();
    let began = false;
    try {
      await client.query("BEGIN");began=true;
      await client.query("SELECT pg_advisory_xact_lock(hashtext($1))",
        ["msnw:paystack:settlement:" + entry.id]);
      const existing = await client.query(
        "SELECT provider_proof_sha256,gross_processed_kobo::text," +
        "effective_paid_kobo::text FROM commerce.msnw_paystack_merchant_settlements " +
        "WHERE settlement_id=$1 FOR UPDATE", [entry.id]);
      const matched = await client.query(
        "SELECT e.reference,e.provider_transaction_id,e.amount_kobo::text " +
        "FROM commerce.msnw_paystack_fiat_evidence e " +
        "JOIN commerce.msnw_funding_obligations o ON o.reference=e.reference " +
        "WHERE e.reference=ANY($1::text[])",
        [rows.map(x => x.reference)],
      );
      const byRef = new Map(rows.map(x => [x.reference,x]));
      const qualified: ProviderTransaction[] = [];
      for (const value of matched.rows) {
        const row = byRef.get(String(value.reference));
        if (row && row.id === String(value.provider_transaction_id) &&
            row.amount === String(value.amount_kobo))
          qualified.push(row);
      }
      const settlementHash = createHash("sha256").update(JSON.stringify({
        id:entry.id,domain:entry.domain,total:entry.total,
        effective:entry.effective,settledAt:entry.settledAt,
      })).digest("hex");
      if (existing.rowCount) {
        const row = existing.rows[0];
        // Re-inspect already scanned settlements when fiat evidence arrived
        // AFTER the original payout scan. Historical payout proof is immutable
        // and MUST match this freshly authenticated Paystack observation.
        if (existing.rowCount !== 1 || !row ||
            row.provider_proof_sha256 !== settlementHash ||
            String(row.gross_processed_kobo) !== entry.total ||
            String(row.effective_paid_kobo) !== entry.effective) {
          throw new MsnwMerchantSettlementError("msnw.paystack_settlement_changed");
        }
      } else {
        await client.query(
          "INSERT INTO commerce.msnw_paystack_merchant_settlements " +
          "(settlement_id,currency,provider_status,gross_processed_kobo," +
          "effective_paid_kobo,settlement_date,provider_proof_sha256) " +
          "VALUES ($1,'NGN','success',$2::bigint,$3::bigint,$4,$5)",
          [entry.id,entry.total,entry.effective,entry.settledAt,settlementHash],
        );
      }
      let added = 0;
      for (const payment of qualified) {
        const matchHash = createHash("sha256").update(JSON.stringify({
          settlementId:entry.id,reference:payment.reference,
          transactionId:payment.id,amount:payment.amount,
        })).digest("hex");
        const result = await client.query(
          "INSERT INTO commerce.msnw_paystack_payout_matches " +
          "(reference,settlement_id,provider_transaction_id,original_amount_kobo," +
          "payout_match_sha256) " +
          "SELECT e.reference,$2,e.provider_transaction_id,e.amount_kobo,$3 " +
          "FROM commerce.msnw_paystack_fiat_evidence e " +
          "WHERE e.reference=$1 AND e.provider_transaction_id=$4 " +
          "AND e.amount_kobo=$5::bigint ON CONFLICT DO NOTHING " +
          "RETURNING reference",
          [payment.reference,entry.id,matchHash,payment.id,payment.amount],
        );
        added += result.rowCount ?? 0;
      }
      await client.query("COMMIT");began=false;
      return added;
    } catch (error) {
      if (began) await client.query("ROLLBACK").catch(() => undefined);
      throw error;
    } finally {client.release();}
  }

  // Give previously scanned payouts a rotating read-only recheck slot:
  // late-registered Paystack evidence can then be matched using the SAME
  // immutable settlement and transaction identifiers. No minting or balance
  // changes are permitted. The other four slots favor new settlements.
  let revisitOffset = 0;
  async function runOnce() {
    let scanned=0,matched=0,failed=0;
    const settlements = await listSettlements();
    const done = await input.pool.query(
      "SELECT settlement_id FROM commerce.msnw_paystack_merchant_settlements " +
      "WHERE settlement_id=ANY($1::text[])",
      [settlements.map(x => x.id)],
    );
    const seen = new Set(done.rows.map(row => String(row.settlement_id)));
    const fresh = settlements.filter(x => !seen.has(x.id));
    const prior = settlements.filter(x => seen.has(x.id));
    const revisit = prior.length
      ? prior[revisitOffset++ % prior.length] : undefined;
    const candidates = [
      ...fresh.slice(0, revisit ? 4 : 5),
      ...(revisit ? [revisit] : []),
    ];
    for (const entry of candidates) {
      try {
        const payouts = await transactions(entry.id);
        matched += await record(entry,payouts);
        scanned++;
      } catch {
        // Keep the original immutable settlement and all unmatched funding
        // obligations intact. A temporary outage cannot assert bank proof.
        failed++;
      }
    }
    return Object.freeze({scanned,matched,failed});
  }
  return Object.freeze({runOnce});
}
