# Flutterwave qualification driver fix — 17 November 2026

The owner successfully imported the recovered credentials and restarted healthy
Gateway/Ops images, but qualification stopped at `database` before any provider
request. Reproduction with the exact installed PostgreSQL package shows that
`await import(createRequire(...).resolve('pg'))` exposes `default.Pool`, while the
named `Pool` property is undefined. `new Pool` therefore fails before connecting.

Use `createRequire(...)('pg').Pool`, matching the CommonJS entry that was resolved.
A regression runs the actual packaged qualification CLI under the container UID
with no network access and verifies a genuine, sanitized ECONNREFUSED diagnostic.
Connection, approval-table and approval-configuration stages are distinguished;
only allowlisted PostgreSQL/OS codes may be printed. No private error message,
connection URI, credential or catalogue payload is exposed by diagnostics.

This fixes qualification tooling. It does not manufacture provider authentication,
funded purchases, receipts, database migrations or successful transactions. The
complete connected customer-feature draft remains separate and unverified.
