/** Billstack's read-only, independently settled reserved-account transfer lookup.
 * This module never initiates a payment and does not use webhook claims as proof. */
export type BillstackSettledTransfer = Readonly<{
  eventId: string;
  accountReference: string;
  accountNumber: string;
  amountKobo: number;
  receivedAt: string;
  bankName: string;
}>;

export class BillstackTransactionError extends Error {
  constructor(readonly code: string) { super(code); this.name = 'BillstackTransactionError'; }
}

const record = (value: unknown): Record<string, unknown> => {
  if (!value || typeof value !== 'object' || Array.isArray(value))
    throw new BillstackTransactionError('billstack.invalid_response');
  return value as Record<string, unknown>;
};
const required = (value: unknown, length = 160): string => {
  if (typeof value !== 'string' || !value.length || value.length > length || value.trim() !== value)
    throw new BillstackTransactionError('billstack.invalid_response');
  return value;
};
function amountKobo(value: unknown): number {
  const raw = typeof value === 'number' ? String(value) : value;
  if (typeof raw !== 'string' || !/^(?:0|[1-9]\d{0,10})(?:\.\d{1,2})?$/.test(raw))
    throw new BillstackTransactionError('billstack.invalid_response');
  const [naira, decimals = ''] = raw.split('.');
  const kobo = BigInt(naira!) * 100n + BigInt(decimals.padEnd(2, '0') || '0');
  if (kobo <= 0n || kobo > BigInt(Number.MAX_SAFE_INTEGER))
    throw new BillstackTransactionError('billstack.invalid_response');
  return Number(kobo);
}

export async function getSettledBillstackTransfer(input: {
  secretKey: string; sessionId: string; fetcher?: typeof fetch;
}): Promise<BillstackSettledTransfer> {
  if (!/^[0-9]{20,40}$/.test(input.sessionId))
    throw new BillstackTransactionError('billstack.invalid_transaction_id');
  if (typeof input.secretKey !== 'string' || input.secretKey.trim().length < 12)
    throw new BillstackTransactionError('billstack.credentials_unavailable');
  const fetcher = input.fetcher ?? fetch;
  let response: Response;
  try {
    response = await fetcher('https://api.billstack.co/v2/thirdparty/getTransaction/', {
      method: 'POST',
      headers: { authorization: `Bearer ${input.secretKey}`, 'content-type': 'application/json', accept: 'application/json' },
      body: JSON.stringify({ session_id: input.sessionId }),
      signal: AbortSignal.timeout(15_000),
      redirect: 'error',
    });
  } catch { throw new BillstackTransactionError('billstack.transaction_lookup_unavailable'); }
  if (!response.ok) throw new BillstackTransactionError('billstack.transaction_lookup_unavailable');
  let envelope: Record<string, unknown>;
  try { envelope = record(await response.json()); }
  catch { throw new BillstackTransactionError('billstack.invalid_response'); }
  if (envelope.status !== true) throw new BillstackTransactionError('billstack.transaction_lookup_unavailable');
  const data = record(envelope.data);
  // Live Billstack 9PSB reserved-account deposits report PAID / INWARD.
  // Earlier provider records can report SUCCESS / TRANSFER. Only these
  // inbound methods are eligible, and neither status nor method alone proves
  // funding without settlement, exact references and an assigned bank account.
  const status = typeof data.status === 'string' ? data.status.trim().toUpperCase() : '';
  if (!['SUCCESS', 'PAID'].includes(status) || data.is_settled !== true ||
    (data.method !== 'TRANSFER' && data.method !== 'INWARD'))
    throw new BillstackTransactionError('billstack.transaction_not_settled');
  if (data.session_id !== input.sessionId || data.transaction_ref !== input.sessionId)
    throw new BillstackTransactionError('billstack.transaction_id_mismatch');
  const accountNumber = required(data.nuban, 10);
  if (!/^\d{10}$/.test(accountNumber)) throw new BillstackTransactionError('billstack.invalid_response');
  const receivedAt = required(data.created_at, 100);
  if (!Number.isFinite(Date.parse(receivedAt))) throw new BillstackTransactionError('billstack.invalid_response');
  return {
    eventId: input.sessionId,
    accountReference: required(data.reference),
    accountNumber,
    amountKobo: amountKobo(data.amount),
    receivedAt,
    bankName: required(data.bank, 100),
  };
}
