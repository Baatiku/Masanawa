# Civic learning reward core — review gate (26 November 2026)

This draft adds the internal, independent neutral-learning and NGN accounting port. It intentionally registers no HTTP endpoints and changes no live balances. It is not yet a deployable rewards product.

- Funding must be debited from the funder's existing canonical NGN balance, tied to a unique recorded unreversed deposit event. Funds move to a reserved escrow account through the existing paired NGN spending journal; there is no mint.
- One active budget per tenant, created paused. The funder can activate, pause, or close and return unspent money. Claims lock the budget, check the funding proof and balance, and transfer only the fixed budget amount. A lesson award is unique per tenant/user/lesson across budget changes; replay returns the original receipt.
- The separate learning module has server-held answers, durable attempts, a seven-day account age floor, 30-second minimum and twenty-minute expiry, and three attempts per UTC day. These are only baseline abuse controls, not proof of unique human identity.
- No political rating, persona choice, popularity rank, political opinion, message volume, or election action is accepted by the learning or accounting API.

Before merge: review wallet lock ordering with provider reversal and ordinary sends, reserved escrow identity namespace, financial/compliance requirements, and add real independent-connection PostgreSQL tests of duplicate awards, funding replay, deposit reversal, overspend, refund, and rollback. Before any route is exposed: integrate existing verified identity and financial restrictions, rate limits, anti-Sybil review, fresh admin authorization and aggregate admin audit; build wallet activity labeling and customer learning/admin UI. Do not enable or fund on production without explicit budget configuration and verified deposit funds. No fabricated balances or paid political engagement.
