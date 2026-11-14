# Billstack wallet continuation, 14 November 2026

Owner selected the existing mobile Billstack reserved-account integration, not Flutterwave bank-account creation. Preserve immutable NGN records, provider-verified numbers and the same canonical account for web/Flutter. No new paid service, public financial enablement, replacement database or Worker activation is authorized.

## Reference and source map

- Flutter: apps/mobile/lib/src/gb_wallet/ngn_funding_card_details.dart; ngn_funding_screen.dart; ngn_wallet/gb_send_screen.dart and gb_recipient_lookup.dart; gb_wallet/gb_data_catalogue.dart and gb_data_choice_controls.dart.
- OPay reference: opay-decloned/res/layout-v22/fragment_airtime_data_topup.xml (30 dp operator icon, arrow, phone input in one horizontal field), fragment_transfer_to_opay_account.xml and fragment_transfer_to_bank_v2.xml. Use familiar spatial structure; do not claim unsupported external bank transfers.
- Canonical backend: customer_auth.ts, main.ts, gb_wallet/billstack_funding_routes.ts and billstack_provider.ts; PostgreSQL gb_wallet/billstack_repository.ts and NGN deposit ledger. Existing NGN recipient search/signed transfer review/data journal remain authoritative.
- Web: funding BFF/validation, signup funding hook, compact Wallet card, phone/carrier input, reviewed data plan/review and recipient/amount/review transfer stages.

## Change

`ensureBillstackAccount` is shared by canonical new-account signup and manual allocation. It validates the owner/applicant before durable start, reuses any assigned/pending owner row and dispatches only the first creator. A provider timeout retains its original reference; no pending row is deleted or provider POST replayed. Successful OTP/session issuance starts best-effort account generation for every client without awaiting the provider; the manual Wallet action recovers missed initiation. This is not a durable retry worker, and a process failure after provider dispatch requires reconciliation of the original reference.

Allocation is separate from enabling deposit credit. The existing configured assignment/readiness checks, raw signed-webhook admission, exact account/reference/amount binding and immutable NGN credit journal remain intact. No funding flag or secret is set by this patch. Existing users use the authenticated manual action, with missing legal names/contact collected before allocation. No account number is invented or shown as a transfer destination before live funding readiness.

The web funding validator previously rejected the already-normalized BFF response, while the signup hook read `state` instead of canonical `account.state`; both are corrected. Web and native share the same Gateway and database, not separate provider accounts or browser balances. Prefix hints use the native NCC map; the web also accepts numbers without a leading zero and allows explicit carrier override for mobile number portability.

## Validation and rollout boundary

39 local tests across customer-auth, Billstack provider and funding-route suites pass; Gateway TypeScript and production build pass. Coverage includes a stalled/rejected bank hook never blocking tokens, no hook on ordinary login/invalid OTP, and a timed-out assignment retaining its reference on the manual path. Existing provider webhook/replay/amount tests remain in the combined run. No real bank account, deposit, data purchase or transfer was made.

The current environment receives TCP connection refused from 68.183.46.65:22 and has no usable SSH identity. Backend deployment and persisted provider/merchant readback cannot be claimed. Existing Droplet only, $12/month, Worker off. Restore authorized SSH access (including trusted host key and an environment-bound private identity), deploy the verified immutable Gateway release, and check real assigned-account ownership and webhook settlement before public financial use. Unknown pending assignments must be reconciled against Billstack merchant records by their original reference, never reset or recreated.
