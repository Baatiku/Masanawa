# MSNW NGN pricing decision and Flutterwave billing design

**Decision date:** 21 October 2026. **Authority:** latest owner instruction: **1 MSNW = ₦1 from launch**, Nigeria-first customers, and real Flutterwave Bills. **Status:** final product pricing decision; implementation/production qualification open. This replaces the earlier proposed USD reference policy. Task status lives only in [the roadmap](PRODUCT-ROADMAP-20261019.md); screen behavior lives in [SCREEN-JOURNEYS](SCREEN-JOURNEYS.md).

## Fixed naira reference policy

**1 MSNW = NGN 1.00.** All platform MSNW purchase, service and reference valuation calculations use this fixed naira rate. Initial policy ID: `msnw-ngn-1-v1`. No floating MSNW admin price, dollar peg or independent arbitrary kobo rate. Nigeria-first billing is NGN; the multi-asset Wallet and international product direction remain intact.

| Amount | Fixed reference value before disclosed fees/FX |
|---|---|
| 1 MSNW | ₦1.00 |
| 100 MSNW | ₦100.00 |
| 1,000 MSNW | ₦1,000.00 |
| 5,000 MSNW additional creator publication | ₦5,000.00 |

Six-decimal token precision remains: 1 MSNW = 1,000,000 atomic units. NGN 1 = 100 kobo = 1,000,000 MSNW atomic units; **1 kobo = 10,000 MSNW atomic units**. Therefore an NGN bill with total `k` kobo costs exactly `k × 10,000` atomic units before any separately quoted fee. No FX step is needed between NGN and MSNW. The existing 5,000 MSNW publication default remains ₦5,000 reference value, not USD 50.

For another currency or token, use its current executable FX/asset quote against NGN. USD display value floats with USD/NGN: at an illustrative NGN 1,500 per USD, 1,500 MSNW has a USD 1 reference equivalent; this example is not a configured/live rate. A naira-linked asset protects naira-denominated service-price predictability, not purchasing power in dollars. The user can choose to hold other independently supported assets; never silently convert them to MSNW.

**Scope of stability:** fixed platform NGN reference pricing is decided. External trading/P2P prices may differ; show actual executable bids/asks, fees and deviations. The contract cannot enforce a market peg. An unconditional legal fiat redemption right, public stablecoin certification, universal external liquidity or direct platform fiat withdrawal is not created by this pricing decision. These operating/legal mechanisms require actual qualification, while the reference rate itself is settled and must not be reopened as an undecided USD/variable-token choice.

## Exact accounting, quotes and migration

Use exact integer/rational or decimal arithmetic, never binary float. MSNW atomic `m` has NGN-major reference `m / 1,000,000`; preserve sub-kobo fractions internally and round only when a rail requires minor units, with the rounding rule disclosed. For local amount `p` minor units, exponent `e`, and FX `a/b` local-major units per NGN, MSNW charge is `ceil(p × 1,000,000 × b / (10^e × a))` atomic units; purchases credit floor of net eligible settled value. NGN itself uses the exact kobo mapping above. Refund/reversal uses original authorized units and fee policy, not today's FX. Book rounding residues and FX differences explicitly.

Quotes bind owner/tenant/session, operation, exact asset amounts/precision, original currency/minor scale, policy ID/version/effective time, FX source/as-of/expiry where needed, fees/spread, total debit/net credit, product/customer, quote revision and idempotency identity. Edits, expiry or changed fees invalidate approval. NGN/MSNW policy remains fixed while non-NGN FX and external liquidity quotes expire. No hidden repricing after approval.

Audit existing Paystack mint funding, `MSNW_MINT_PRICE_KOBO_PER_MSNW`, billing `MSNW_BILLING_RATE_KOBO_PER_MSNW`, crypto conversion USD rates, service pricing, creator fees and W13 portfolio valuation together. New NGN quotes must derive **100 kobo per whole MSNW** from the policy, not independently configured conflicting values. Preserve old receipts/quotes under their original policy; expire incompatible unexecuted quotes and require fresh consent. Use forward-compatible migrations/versioned config, do not rewrite applied history, customer balances, historical Credits/MSN liabilities or old obligations. Existing assumptions are not proof that financial reconciliation is complete.

## Reserve, issuance, display and liquidity contract

Before enabling sales/issuance, establish reconciled MSNW liabilities, eligible settled reserves covering the NGN 1 reference commitment per outstanding customer MSNW, segregation/custodian records, treasury liquidity, provider fee/chargeback buffers and shortfall alerts. Value non-NGN reserves at conservative current FX with explicit haircuts; a naira price change against USD affects reserve adequacy and international service costs. Do not count custodial backing twice in customer portfolio totals. Internal Send and P2P settlement move existing claims, not new supply. Supply/mint/burn follows the existing verified reserve and on-chain/custody contracts, not a UI change.

Portfolio shows exact held quantities plus selected display currency (NGN default for initial Nigeria onboarding, user-changeable to supported USD/others). MSNW reference value is NGN quantity at 1:1; non-NGN valuation needs fresh FX. Distinguish reference value from executable sale proceeds. Other tokens use their own prices; USDT/USDC are not assumed USD cash. Unknown rates produce a partial estimate, never a fabricated complete total. Multi-asset Deposit/Send/Withdraw/Swap remains required; MSNW is not a compulsory intermediary.

## Real Flutterwave Bills integration

**Provider choice:** Flutterwave Bills is the required fulfillment integration for the currently scoped airtime, data, cable/TV and electricity services where the actual merchant account supports them. Do not substitute mock fulfillment, a fabricated catalog or another provider to label these journeys complete. UI and Gwani use the same Gateway/commerce operation and approval. Flutterwave payment collection and Flutterwave bill fulfillment are different APIs: successful card/bank collection does not prove a bill was delivered.

**Inspected source baseline:** `8aee7bd2602668022352bf290fed1822c580766e`.
- Reuse `packages/providers/src/flutterwave-bills/{client,http-transport,credential-client,funding-client,commerce-orchestrator,webhook,catalog-projection,receipt-projection}.ts`.
- Reuse Gateway `msn_wallet/{billing_service,billing_routes,billing_funding}.ts`, existing billing stores/quote journal, webhook/reconciliation composition in `services/gateway/src/main.ts`, mobile checkout, and migration `0130_msnw_flutterwave_billing.sql` without modifying applied history.
- Existing transport defaults to HTTPS `https://api.flutterwave.com`; existing bill catalog/receipt types and runtime composition are NG/NGN. `billing_funding.ts` derives MSNW from a configured integer kobo-per-MSNW value; `MSNW_BILLING_RATE_KOBO_PER_MSNW` is not yet NGN-policy-bound. Refactor this boundary; do not call it global fixed-USD pricing today.
- Existing test fixtures prove local behavior only. Existing catalog/production qualification scripts collect read-only category/customer-validation evidence, not proof that a real paid bill was fulfilled. A second fulfillment/readback gate is necessary.

### Provider protocol to verify and retain

The current client implements these routes; they are source-inspected mappings, not a statement that the merchant's current live API supports them unchanged:

| Step | Existing route |
|---|---|
| Categories | `GET /v3/top-bill-categories` |
| Billers | `GET /v3/bills/{category}/billers` |
| Items/packages | `GET /v3/billers/{biller}/items` |
| Customer validation | `GET /v3/bill-items/{item}/validate` |
| Fulfillment | `POST /v3/billers/{biller}/items/{item}/payment` |
| Status/readback | `GET /v3/bills/{reference}` |

Before integration acceptance, verify these routes, schemas, required identifiers, fees, reference behavior, webhook signature/version and statuses against [Flutterwave's official developer documentation](https://developer.flutterwave.com/) and the actual merchant API version. Do not mix v3 and a newer API/webhook protocol. Use the existing HTTPS transport with production endpoint allowlisting, bounded timeouts and protected credentials; an approved relay must preserve authentication, body integrity, origin restriction and redacted diagnostics. Mocks and sandbox credentials must be impossible to select as a live fulfillment fallback.

**Research limitation, 21 October 2026:** access to `https://developer.flutterwave.com/llms.txt` and `https://developer.flutterwave.com/v3.0/docs/bill-payments` was blocked by the environment proxy (403 tunnel). Current official endpoint and merchant capability validation is **NOT_RUN**, assigned to the integration operator under S05/S06; source planning continues. No credentials were used and no real purchase was made.

### End-to-end service and screen behavior

1. **Availability/catalog:** server discovers current supported country/category/biller/item from Flutterwave, projects it into the existing catalog and returns capability state/last refresh. First adapter scope is actual NG/NGN support; do not advertise global coverage from the app's global audience. A bounded stale catalog may be browsable with its timestamp, but purchase requires refreshed product/price/availability. Disabled or unfunded provider rails explain unavailability rather than render a mock catalog.
2. **Customer/product validation:** operator/package/account → Flutterwave validation → permitted customer name/account/product/min-max. Respect account type, prepaid/postpaid and package constraints. Airtime prefix is only a hint; use catalog eligibility and validation where supported. Editing customer, operator, amount or package invalidates lookup and quote. No debit when required validation is unavailable.
3. **Quote:** exact Flutterwave service price/currency plus fees and fixed 1 MSNW/NGN conversion → total MSNW debit. Show original local service amount, fees, policy version/expiry and MSNW total; FX rate/time only when converting a non-NGN payment source. Reserve exact units after owner-bound approval. Prefer canonical MSNW funding for this integration; another held asset requires an explicit qualified Swap/new review, never hidden sale. Existing provider checkout, if retained, is an explicitly chosen qualified payment source and must not also debit MSNW.
4. **Fulfill:** persist operation/provider reference and reserve once before network submission; revalidate quote and capability at the execution boundary. Submit the Flutterwave bill request once under its supported reference rules. A response envelope or HTTP 200 alone cannot settle the purchase. A crash/timeout enters unknown/pending; query the original reference before considering any safe resubmission. Provider treasury funding/fee coverage is separate from customer MSNW reservation and must be available before consent/execution as applicable.
5. **Readback/receipt:** use authenticated status readback and verified webhook as reconciliation signals, cross-check reference/customer/product/currency/amount, then settle exactly once on authoritative fulfillment. Show actual airtime/data outcome, TV package/period or electricity token/units where returned; protect tokens/customer identifiers and offer copy only to the purchaser. Callback/return page, screenshot, model text or “marked paid” never proves fulfillment.
6. **Failure/reversal:** confirmed non-fulfillment releases reservation; completed-but-reversed purchases receive immutable original-amount compensation with the approved fee policy. Unknown or partial delivery stays pending/manual review until resolved, with bounded polling, operator escalation and an operation-linked support case. No automatic duplicate purchase/refund during ambiguous provider state. Persist late-success/reversal handling through worker restart.
7. **Return/recovery:** Wallet and Gwani open the same account-scoped quote/review, shared result and Activity receipt. Show pending at home, allow Check status and safe Retry original, preserve request through process death, and refresh custody/history from authoritative state. Saving a customer is explicit; repeat purchase refreshes validation/catalog/quote and warns on recent matching purchases.

### Integration qualification and delivery plan

**Connected implementation batch:** extend the versioned NGN pricing/FX authority and quote journal; adapt NGN billing reservations/preview; wire the existing Flutterwave transport/catalog/validation/fulfillment/readback and Worker recovery; update mobile/Gwani review/results/Activity. Inspect all dependent rates (Paystack mint funding, MSNW crypto conversion, service pricing, creator fees and W13 valuation) in the same NGN-policy rollout. Shared financial authority remains under one integrator. No second provider, ledger, billing root or duplicate roadmap.

Run one focused batch validation for arithmetic/rounding, changed quote/customer/FX where applicable, balance serialization, duplicate submission/callback, timeout-before/after-provider-acceptance, late success, definitive failure, reversal, partial fulfillment and account fencing. Use real disposable PostgreSQL for reservation/settlement races; mocks are allowed for deterministic tests only and must be labelled as such.

Provider operator obtains actual Bills-enabled merchant permissions, API version, eligible services/countries, fee schedule, treasury funding and webhook secrets via protected runtime configuration. Reuse `flutterwave-billing-{catalog-qualification,production-qualification,qualification-gate}.mjs` for real catalog/customer validation with consented targets. Separately execute sandbox contract checks and an explicitly authorized low-value real fulfillment for each enabled service family, retain redacted request/reference, provider debit/fulfillment, independent status readback, receipt and ledger reconciliation. A read-only script pass is not that financial acceptance. Paid checks require specific authorization; do not trigger charges merely to update documentation.

Unresolved SDK/network/provider credentials or merchant approval are recorded with source SHA, owner, reason and next action; continue independent implementation. Only affected unqualified rails remain disabled. No APK unless explicitly requested. No production-ready claim until the enabled-journey gates actually pass.


## Current executable NGN quote contract
New MSNW external-crypto payout admission uses `MSNW_NGN_QUOTE_URL` (HTTPS, no query/userinfo/redirects) and an approved Ed25519 PEM `MSNW_NGN_QUOTE_PUBLIC_KEY`. The reader sends only providerCode/referenceCurrency=NGN, no customer data or provider credentials. Missing/unavailable/invalid evidence prevents new admission; existing payout status and original-request recovery remain composed.

Response: `{payload: "<exact UTF-8 JSON>", signature: "<base64 Ed25519 signature>"}`. Signed payload requires policyId `msnw-ngn-1-v1`, referenceCurrency `NGN`, exact providerCode, bounded quoteId/source, positive integer numerator/denominator, asOf/expiresAt. Ratio is **target atomic units per one MSNW (=NGN1)**; target is `floor(sourceAtomic × numerator / (1,000,000 × denominator))`. Quotes are at most five minutes old/long and must remain unexpired at reservation. Quote IDs identify a stable snapshot; a changed snapshot requires a new review, never hidden repricing. No USDT/USDC USD-parity assumption or floating-point rate calculation.

Migration 0135 captures immutable evidence on new payout rows; old rows keep their original terms/null evidence. The legacy `rateUsdMicroPerMsnw` field is retained for protocol/storage compatibility, not used to calculate signed-NGN target amounts. Quote authority deployment, signer ownership/rotation, backing/liquidity and real provider acceptance remain operator qualification tasks. This adapter alone does not establish a live market feed or production financial readiness.
