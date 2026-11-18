# Worker retirement source batch — 25 October 2026

Base main: `26d4e3139192ffcc68b905fb009e6b17b74573a2`. Scope is `Baatiku/Masanawa` only.

Deleted Rooms question/answer and reply-notification workers, YouTube synchronization/subscription/quota/outbox workers, creator draft-generation workers and P2P push notices. Their initialization, credential requirements, readiness rows and lifecycle hooks are removed. Moved the shared bounded scheduler out of the retired YouTube namespace. Removed the Worker Rooms package dependency and updated workflow test paths.

Retained platform editorial publication, account privacy/deletion and media cleanup, abandoned conversation recovery, and historical financial obligations, finality/reserve/payout/escrow reconciliation. These last jobs protect existing liabilities; deleting new customer flows does not authorize abandoning reserved funds or deleting historical records. Applied migrations and records are unchanged. Gateway source/runtime retirement is separate and not claimed complete.

PASS_REAL: Worker TypeScript check; 23 Worker test files / 77 tests before adding the composition regression. Full exact-head CI required before merge. No live financial action, provider acceptance, handset proof or APK.
