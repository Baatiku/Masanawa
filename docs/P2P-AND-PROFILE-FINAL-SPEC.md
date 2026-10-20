# Masanawa individual P2P and human profile — final functional product contract

**Owner decision:** 20 October 2026. **Status:** Proposed UX/API/verification contract based on current repository source, NOT a claim of working real settlement or device acceptance. **Authority:** [canonical roadmap](PRODUCT-ROADMAP-20261019.md) Phase 7 P7-P01–P10; [complete screen audit](COMPLETE-SCREEN-AND-JOURNEY-BLUEPRINT.md); [screen journeys](SCREEN-JOURNEYS.md) T01–T10/P01–P07.

## 1. Owner scope and product principle

P2P is an important person-to-person trading and trust function, not a merchant-accounts product. Do **not** add merchant enrollment, merchant badges/status, business storefront, point of sale, checkout merchant/payment gateway, cards, margin/futures/staking or exchange-style charts. A seller is simply a qualifying Masanawa user with an offer. Use the existing MSNW custody/escrow/individual bank verification. Full legal and provider eligibility is jurisdiction-based: current Nigerian NGN kobo/MSNW implementation is NOT proof all countries/currencies/payments work.

A public human profile has one canonical identity `/u/:handle` and one account. That same identity appears in Chats, Updates, Room membership, individual P2P offer lists and disputes. A trader's performance is a **conditional subsection** of their human profile with server-measured stats; never duplicate human social identity into a separate merchant/professional account. A trader profile must never expose private phone/email/bank account, original account verification documents or private disputes.

## 2. What current code ACTUALLY offers (main SHA c944045e...)

- `apps/mobile/lib/src/finance/msnw_p2p_screen.dart` has ~2284 lines with top chips **Buy, Sell, Orders, Updates**, market/recovery flow, current NGN rate, min/max, available inventory, bank name, seller display name, quote, guarded new order, proof attachment, seller verification, offer publishing and management, receipt share, dispute and late-payment.
- `apps/mobile/lib/src/finance/p2p_order_presentation.dart` renders progress, bank details, total and payment deadline with copy/refresh.
- `services/gateway/src/p2p/routes.ts` exposes offers, my offers, seller capacity, verified bank methods, offer management, quotes, orders, payment/claim/dispute and receipt routes; `service.ts` owns real P2P order state, 30-minute current payment window constant, bigint exact quotes, spendable capacity and canonical escrow adapter. **This does not mean provider acceptance or custody settlement have been performed for this plan.**
- `services/gateway/src/p2p/{custody_escrow,evidence_storage,seller_confirmation,bank_methods}.ts` explicitly separates bank evidence, seller confirmation and token movement. `msnw_p2p_activity.dart` shows persisted order references in Wallet.
- `screens/profile/person_profile_screen.dart` already displays avatar, name, handle, follower counts, bio, owner Edit profile/My Masana and creator published Masana list. There is NO verified social-to-trader metrics route/panel proven by this audit.
- Source shows typed "RECEIVED" confirmation for seller release and a warning screenshots/claimed paid are not bank proof. **Keep these safety semantics** when polishing.
- Current "Updates" in P2P is an order/notification tab; **not** the newly user-requested social Updates root. Rename its surface "Activity" and fold it under Orders alerts, not another fourth primary tab.

## 3. Final screen design: simpler, safer and professional without an exchange terminal

### T01 — P2P landing (from Wallet)

**Header**: Back -> Wallet, title "P2P Trading", small help/shield icon, Orders shortcut, More -> My Offers and settings. **Two main segments only: Buy | Sell.** In Sell show offers from other sellers (where feature supports two-sided markets) AND accessible "Create offer" after verified capacity. Current backend is predominantly sell-offers for buying MSNW: **do not fake a symmetric buyer-created bid marketplace**. When Sell shows personal offers or sales side of this market, label clearly and avoid duplicate tab data.

**Optional filter row**: amount + payment method + region/currency if verified, Sort by price/trader reliability, no unsupported fiat country/currency chips. One vertical list of compact offer cards, native account theme, 320px-safe. Pending recovery banner is visible above Buy/Sell if prior order state unknown; actionable Retry original, new order disabled. Network offline can show cached **read-only** offers marked stale, not a clickable firm quote.

### T02 — Individual offer row and offer detail

Row: seller avatar/real public display/@handle (tap opens T03), actual rating/completion metric only if backend finalized history supports it; optional verification tag from provider; exact price rate (e.g. NGN/MSNW where qualified), available MSNW, min-max, payment method *type/bank name only*, primary **Buy** action. No public bank account number, documents, PII or invented 99% success.

Tap row -> offer detail with current state, seller rules, eligible bank/payment method, min/max, recent completed trade count and clear safety label "Masanawa holds MSNW in escrow after placing an order; bank payment to seller is separate". Buy -> T04 quote.

### T03 — Conditional P2P trader profile inside human profile

Arrive from offer avatar, order counterparty, open trader profile link or public /u when authorized. **Use the same person profile layout**:
1. compact cover/avatar/name/@handle and Message/Follow/Block more menu;
2. **Trader information** card if user has verified participation: verified identity status (only real), member since (if safe), actual completed P2P trades, accurate 30-day completion rate and 30-day trade count, median/avg pay time, average release time, positive feedback only if real feedback evidence exists; label period, data sample and "Insufficient history" when appropriate;
3. active offers list (only eligible active offers) and **Trade** button -> P2P filter preset;
4. normal social Posts / Masana / public Rooms sections below as present, conditional and not congested.
**No guessed star ratings, status elite badges or P2P Merchant accounts.** User can be a buyer/seller and create a public human Update separately.

Statistics authority: `trader_stats` must be a read-only aggregation from canonical *finalized* orders with clear denominator: `completionRate = completedOrders / eligibleClosedOrders` for consistent qualified window; specify exclusions for disputed/cancelled by fraud and pending in an ADR so users are not punished by other party. Show only if sample and retention threshold enough to avoid manipulating trust. Never accept `trades=999` from client or financial claims of released MSNW without ledger readback. Average pay/release times from immutable server transitions, not impressionistic self-report.

### T04 — Buy amount / live quote / order review

Offer ID fixed. Input MSNW amount numeric exact decimals up to supported precision; display seller rate/available/limits. Change amount -> invalidate prior quote. Server GET `/offers/:id/quote?amountMicro=...` returns current exact MSNW, NGN fiat total, seller's escrow fee/rate, current capacity, expiry and payment method eligibility. Detail review shows *who* receives bank transfer, *how much*, payment deadline, escrow amount/fee and exact caveat. Buy -> create original idempotent order, persisted recovery key and authoritative order ID. No wallet charge solely from opening offer.

### T05 — Seller create/manage offer

Seller must have qualified linked receiving bank/method with explicit permission and step-up from existing auth; verify current name without leaking to buyers until order authorized. Show spendable MSNW after existing holds; price, min/max and inventory, actual bank and fee. One plain form and review, explicit Publish. Block when pending earlier offer recovery is unresolved. "My Offers" secondary page with active/paused/completed and Pause/Resume/Close; once an order is active, availability derives from escrow reservations. Allow editing only through quote/eligibility versioning and without modifying existing accepted orders.

### T06 — P2P order details and direct counterparty communication

Single order page with large **Buying/Selling MSNW** + amount/status; progress line `Placed -> Awaiting Bank Payment -> Buyer Marked Paid -> Seller Confirmed -> Escrow Released` (or `Disputed/Expired/Refunded`), current remaining window from server time, exact fiat total, bank details shown to authorized counterparty only, receipt/refresh and order reference.

Buyer actions: "I have paid" only after external payment, "Cancel unpaid", "Open dispute"/"Report late payment" according to state. Seller: verify bank independently, then dedicated release review with original server-bound step-up. Never auto-release from chat/screenshots/AI.

**Order Chat**: compact WhatsApp-style direct chat embedded under separate order ID, user-to-user only, metadata `order_id`, file/evidence attachment and timestamps. It is scoped to those two order counterparties and operator case disclosure; public Chat history/ordinary DMs should never override escrow state. If existing human DMs are used as transport, require an order-specific thread binding and immutable evidence/archive projection; don't create a second unscoped messaging infrastructure. Since #227 is open, trade chat depends on its accepted secure transport. Anti-off-platform-payment notice near composer.

### T07 — Orders and activity

"Orders" header secondary to the Buy/Sell landing; filters **All / Active / Finished / Disputed** (short chip list), card amount, role, counterparty, status, deadline, action needed. Tap resumes same order. Adjacent Activity/alerts are notifications about *these orders*, not a duplicate fourth top-level market tab. Search by reference/date and status, graceful empty.

### T08 — Dispute/evidence/late-payment

Open from T06 order, not as separate marketplace app. Reason text/attachment with privacy and maximum size, attached bank reference only when voluntarily supplied. Timed state: open -> operator review -> decision -> escrow release/refund/reconcile. Evidence and buyer's "paid" flag do not prove money, never create custody asset or remove financial holds by staff clicking an unverified label. Late-payment after expiry is an independent complaint and must not automatically resurrect/refund an escrow order already settled. No duplicate support case on retry.

### T09 — P2P receipt and personal activity

The same canonical Wallet activity and receipt objects show trade ID, rate, MSNW debit/credit/fee, bank payment expectation as distinct external event, asset escrow posting and final status. Copy/share redacted details; private bank account never copied into a public post. Wallet recent activity links back to authenticated order.

### T10 — Trust/security/eligibility/settings

P2P trading allowed only where real jurisdiction/provider/identity authorization qualifies. Verify payment ownership and steps at actual action, recover changed device biometric/OTP without bypass, refuse banned/restricted accounts, freeze suspicious orders per policy, block abusive counterparty while preserving pending escrow and case. Trading preferences/payment methods under secondary Wallet/Settings route; no merchant/business profile.

## 4. Required shared API and durable data contracts

- Keep `/v1/wallet/msnw/p2p/**` canonical and the existing ledger/escrow authority. One `orderId`, one offer owner, one client idempotency key, no parallel order store.
- Add a **minimal public P2P identity projection** under `/v1/profiles/:handle/p2p` (or existing versioned profile subresource), delivering `isEligible,statsAsOf,tradeCount30d,completed30d,rate30d?,avgPaySecs?,avgReleaseSecs?,activeOfferCount,trustIndicator?` with privacy and source definitions; server explicitly returns null/unknown for insufficient history.
- Existing `GET /offers/page` should carry a narrow safe `sellerProfile` projection: ID/handle/avatar/real display name + stats when eligible; avoid client N+1 requests and avoid `seller_id` as public name.
- Orders have immutable role/actor/price/version/deadline/total/escrowPosting id; payment windows derive from authenticated server time. The current source uses `P2P_PAYMENT_WINDOW_SECONDS=30*60`; if changing, make it policy/configurable and ensure retained orders keep original deadlines.
- If introducing trade-chat, require `orderId` binding, signed participant authorization, immutable moderation/evidence journal and no automatic finance triggers. Keep human messaging authority from #227, not a second Chat backend.
- Rate, NGN payment and fee calculations remain bigint/exact decimals. Never infer all currencies or payments qualify. Only actual sandbox/production provider readbacks grant VERIFIED_E2E.
- Do not copy or misinterpret Binance's merchant badges, trade guarantees, appeal policies, rate schedules, supported fiat currencies, or investment products. Adapt UX patterns only.

## 5. End-to-end acceptance and negative gates

1. Eligible trader sets verified bank, quotes and publishes an offer; unsupported region/device/new bank fails safely.
2. Buyer taps verified individual seller/opens **same human profile** with real stats, follows/messages seller without seeing bank credentials.
3. Buyer amount -> quote -> place order -> actual escrow reserve in ledger exactly once; stale rate/available balance/limit change rejects and re-quotes.
4. Two buyer devices place concurrently and recover unknown timeouts without double spending; seller offer capacity never negative; account swap stops old order.
5. Buyer bank transfer outside app -> mark paid creates only a **claim**. Seller checks own bank readback independently, confirms with typed/separate step-up, releases one ledger posting. Wrong payout cannot be authorized through a message.
6. Dispute with evidence and optional order chat; malicious file, abuse, forged pay screenshot, banned user/expired order and late-payment after expiry do not auto-release/re-open escrow.
7. Orders and activity show the same authoritative timeline and receipt after app restart, worker death, offline/reconnect, settlement unknown and restore. A delayed legitimate external payment after expiry follows operator case; no fabricated "refunded to bank" claim.
8. Profile trust stats are calculated from final orders only, protect low sample users, use exact time window, not client-edited. A P2P Seller may also have posts/Masana/Rooms on *one* public profile.
9. 320px/200% text, RTL, TalkBack, no horizontal actions clipped, still safe seller bank validation and order confirmation.
10. Two accounts + third outsider cannot view/order/screenshot private payment details; links and shares require auth/recheck; source, physical device and provider exact-SHA logs collected.

## 6. What to preserve, what to adjust

**Preserve** actual `P2pService`, exact quote/min-max, existing `MsnwEscrowAuthority`, account/server/Paystack bank validation, evidence gates, offer recovery, receipts, late-payment cases, Wallet P2P shortcuts and current trained product safety labels.

**Improve** Buy/Sell landing density, separate Orders/My Offers from top filter clutter, treat P2P 'Updates' as Activity, add trader profile stats from real data, direct avatar/profile links, secure order-specific communication after #227 and stronger operator/case link.

**Never build** a new payment ledger, second profile identity, merchant product, card issuing, unverified P2P ratings or a visual "success" screen unrelated to custody readback.

References: [Binance P2P 2026 overview](https://www.binance.com/en/academy/articles/what-is-binance-p2p-and-how-to-use-it), [Binance P2P terminology/user statistics](https://www.binance.com/en/blog/p2p/7428324997079645557), [Binance escrow and appeals](https://www.binance.com/en/blog/all/421499824684900825), [OPay benchmark](OPAY-WALLET-PAYMENT-BENCHMARK.md), [existing Masanawa P2P source](../apps/mobile/lib/src/finance/msnw_p2p_screen.dart).
