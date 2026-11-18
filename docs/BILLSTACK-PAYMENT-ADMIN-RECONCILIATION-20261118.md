# Billstack payment reconciliation from Masanawa Admin — 18 November 2026

## Operator workflow

1. Sign in to the web admin console using a canonical Masanawa account that has `wallet.read` for the payment history and `wallet.adjust.write` for provider-verified reconciliation. Financial writes require a platform session created in the last 15 minutes.
2. Open **Wallet & payments**. The table includes immutable NGN deposits, preserved historical MB-era Billstack funding, and the latest attempted Billstack verification for each explicitly checked session.
3. For an uncredited 9PSB transfer, paste the real Billstack **session ID** from the merchant transaction statement. Paste up to 10 IDs separated by newlines to check in sequence. No customer email, account number, amount or time needs to be typed: the provider proof is independently fetched and matched against exactly one assigned reserved account in the canonical tenant.
4. **Verify & Credit** accepts only a provider `SUCCESS`, `is_settled=true`, `TRANSFER` transaction whose `session_id` and `transaction_ref` equal the supplied session ID. Require a confirmed 9PSB bank, matching receiving account and exact provider/merchant assignment reference. The canonical NGN wallet deposit operation remains atomic and duplicate-safe. Review the returned `credited`, `duplicate` or `needs_review` status and refresh the table.
5. Provider transport errors, unsettled payments, mismatched bank/account, duplicate identity conflicts and database uncertainty never grant a speculative deposit. Immutable admin check attempts retain safe failure codes. Wallet deposit events remain the primary audit evidence even if writing an extra check receipt is temporarily unavailable.

## Coverage and limitations

- The table is **not** an all-provider merchant statement. It lists Masanawa's recorded transfers and session IDs explicitly checked against Billstack. Billstack's publicly reviewed reserved-account documentation confirms signed notifications, but no authenticated merchant-wide historical listing API has been qualified. A transfer never notified or imported cannot be inferred from the wallet database.
- Multiple transfers into the same reserved account are distinguished by the exact provider session ID; the customer's stored reserved account identity determines the credited wallet. Never normalize, guess or truncate transaction IDs.
- The separate **Exceptional owner-funded adjustment** form uses the existing audited `wallet.adjust.write` and immutable NGN adjustment function, requires a current account/version, documentary funding reference, explicit confirmation, reason and fresh sign-in. It is **not** Billstack settlement and must never be used to repair a missing 9PSB transfer: use provider verification to avoid a later signed webhook double-crediting it.
- No provider credentials, raw bank statements, webhook secrets or account balance overwrite commands are presented in the browser. The Billstack secret is supplied only from the server's existing private runtime environment.

## Release gates

- Source/type/build and mocked provider/authorization tests are necessary, not sufficient for real-money acceptance.
- Apply additive migration `0220_admin_billstack_reconciliation.sql` through the canonical migration runner with a private PostgreSQL backup and verified rollback plan, then roll out matching Gateway and Ops images. The admin Next.js frontend is an independently deployed component; its new route requires a matching Ops API deployment.
- Confirm `GET /v1/admin/payments` is denied without `wallet.read`, and `POST /v1/admin/payments/reconcile` is denied without a fresh `wallet.adjust.write` session. Verify actual live provider status for a known receipt, exact account ownership, `credited` receipt and wallet readback, then repeat the same session to confirm `duplicate` and no double credit. Review immutable checks in the admin table.
- Do not claim the two previously reported ₦100 transfers were credited until those exact provider queries and wallet readbacks actually succeed on the existing DigitalOcean server. Do not publish account email, secret keys or full reserved account number in logs.
