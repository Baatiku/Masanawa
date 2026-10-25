# Unreachable Gateway Room source retirement — 25 October 2026

**Scope:** Delete the dormant Gateway Room Community service, handlers, SQL utilities, 36 source/test files and four dedicated test helpers. The five-tab production Gateway has stopped mounting Room endpoints, and a preceding independent directory batch removes the last runtime reader/constructor. This batch removes `GatewayAppOptions.roomCommunity` and its source import. Regression tests check deprecated Room URL families return 404 while MB package discovery continues to work.

**Safety:** Retain all previously applied Room migrations and historic table records, privacy/account erasure duties and protected financial/escrow reconciliation. This deletes only the unreachable customer Room service source and its obsolete tests, not migration data. No provider, production DB, deployed phone or fixed-IP hosting operations. Exact-head Foundation CI/PostgreSQL and Gateway typecheck are mandatory. The branch must incorporate prior directory retirement before merging to avoid a stale Gateway constructor reference.

Unrelated consumer Room/creator, legacy finance and server module retirement requires a separate reviewed reference graph.
