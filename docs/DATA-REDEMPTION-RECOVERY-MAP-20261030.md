# Redeem Data — owner handset feedback, 30 October 2026

Owner screenshot showed a frozen full-screen original-purchase check, red warning,
and second unconfirmed card after restart. The supplied OPay Mobile Data review
is a layout reference, not a request for cashback/cards or fiat checkout.

## Connected implementation map

| Surface or boundary | Source | Required behavior |
| --- | --- | --- |
| Wallet → Redeem Data selection | `apps/mobile/lib/src/gb_wallet/data_redemption_screen.dart` | Always show editable phone, network, duration and verified catalogue; Start over resets draft only; keep prior recovery inline; continue disabled for a locked original. |
| Bundle review | `apps/mobile/lib/src/gb_wallet/data_redemption_screen.dart` | Scrollable rounded sheet, centered GB, recipient/operator/validity/exact MB debit/verified purchased balance; shortage is one inline error and Continue disabled. |
| Original purchase/Confirm | `apps/mobile/lib/src/gb_wallet/gb_data_purchase_panel.dart` | Confirm requires fresh sufficient non-frozen purchased MB; a known reserve rejection clears the saved rejected intent, unknown outcome is recover-only with one compact notice. |
| Durable original key | `apps/mobile/lib/src/gb_wallet/gb_data_pending_store.dart` (unchanged) | Encrypted per-account intent remains before POST and survives restart; never clear on generic 404, timeout, or unverified unknown. |
| Authoritative funds | `apps/mobile/lib/src/gb_wallet/gb_wallet_summary.dart` (unchanged) | Only `purchasedAvailableMb` can redeem; welcome MB and NGN are not redeemable; cached/offline values cannot authorize Confirm. |
| Pricing and quote | `apps/mobile/lib/src/gb_wallet/gb_data_catalogue.dart` (unchanged) | Only server-verified bundle price/version/recipient; no frontend invented purchase amount. |
| Gateway contract | `services/gateway/src/gb_data/data_purchase_routes.ts`, `data_purchase_service.ts` (unchanged) | Exact `409 {error:{code:'insufficient_purchased_mb'}}` comes from reserve failure before journal claim/provider dispatch. Unknown or missing original cannot be blindly re-posted. |
| Flutter regressions | `apps/mobile/test/gb_data_purchase_recovery_test.dart`, `gb_wallet_shell_test.dart` | No-MB disabled controls, one-time definite-rejection cleanup, restart and original-key fence, quote-sheet review, 320dp and existing account-switch tests. |
| Owner continuity | `AGENTS.md`, `CONTINUE-HERE.md`, `docs/SCREEN-JOURNEYS.md` | Remember clean inline feedback, resettable presentation, and map → patch all → combined test → grouped fixes method. |

## Non-negotiable financial distinction

An explicit reserve-stage `insufficient_purchased_mb` denial proves the provider
has not been called, so the pre-POST local intent may be cleared after the
encrypted deletion succeeds. A timeout, 404 original lookup, ambiguous 409,
or an unknown response does **not** prove this; it must remain recoverable under
its original key. The user may reset the visual form, but another financial
POST remains disabled until the original has an authoritative terminal outcome.
This distinction protects against duplicate data purchases.

No production provider success, device acceptance, migration/deployment, or APK
is implied by implementation or hosted CI.
