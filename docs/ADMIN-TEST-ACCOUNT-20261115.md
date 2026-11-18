# Owner test account

Requested account: `belloabubakaratiku@gmail.com`.
Requested credit: 500000 kobo (₦5,000), isolated test wallet.

Ops grants must be installed in the private runtime environment's
`MASANAWA_OPS_ADMIN_GRANTS_JSON`, using the actual
`MASANAWA_PLATFORM_TENANT_ID` and this exact email selector. Preserve existing
grants. Capabilities: dashboard.read, users.read, runtime.read, operations.read,
audit.read, news.read, wallet.read, wallet.test.write, data.read, calls.read,
moderation.read, agents.presentation.read, agents.presentation.write,
agents.skills.read, agents.skills.write, skills.catalog.read.

Run the canonical forward-only migrations before updating Ops. Migration 0118
creates separate security.ops_test_wallets and ops_test_wallet_entries tables.
Restart only Ops, preserving its previous image and runtime file for rollback.
The user signs in through the normal email OTP flow and visits /admin.
Settings → Initialize ₦5,000 test credit performs authenticated self-only,
idempotent initialization. It cannot refill an existing wallet or create a
verified deposit. No payment adapter reads these tables.

This initial test wallet provides isolated balance readback and initialization.
Simulated chat/call/data/send debits and integration into feature test mode are
still required. It does not enable paid live service calls with test credits.

Installation remains unverified: runtime TCP connection to 68.183.46.65:22 is
refused. No live grant or credit has been claimed as applied.
