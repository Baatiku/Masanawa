# MB call admission authority — first communication repair batch

Continuation from merged #423/#424. Implements durable accounting foundations for UX-R02/R06; those checklist items remain open until the trusted relay and mobile integration are complete. This batch does not claim repaired calls, provider/device qualification or a replacement public API.

## Implemented boundary

- Forward-only migration `0203_gb_call_admissions.sql`; no modification of any applied migration or historical financial rows.
- Internal PostgreSQL authority at `adapters/storage/postgres/src/gb_wallet/call_admissions.ts`, reusing the existing separate MB reservation/capture/release implementation.
- Stable owner-bound operation ID from tenant/user/original idempotency key. The immutable journal fingerprint binds the selected Masana and budget. Replaying a key with another character or quantity is rejected.
- Reserve purchased/restricted welcome MB under existing bucket rules before provider work. A journal without a hold after insufficient funds is recoverable; failed/setup-only calls release all held MB. No legacy Credits or conversion.
- One fenced relay connection lease per admission. Only server-side trusted relay code may call connected/checkpoint/disconnect methods. No public endpoint accepts connected time, a client duration or a client “delivered” assertion.
- Timing starts after verified provider connection/setup, not token creation or ringing. Duplicate setup cannot reset time. Reconnect retains confirmed usage and excludes disconnected time. Stale/overlapping leases fail.
- Settlement freezes persisted usage, charges started connected seconds once, caps charges to the reservation and releases unused MB. Completed/failed receipt readback is idempotent.
- Expired lease recovery uses only saved provider-observed progress, without extrapolating process downtime. Recovery also repairs a hold that commits after an expiry race.

The injected clock is an internal server/test dependency. It is never a request parameter. The repository is not an authorization service: the future route/relay integrator must authenticate the actor and verify an active approved platform-Masana target before invoking it.

## Verification

Real PostgreSQL tests cover concurrent duplicate admission, original target/budget conflicts, cross-account/tenant privacy, setup-only release, once-only started-second billing, duplicate setup, reconnect exclusion, stale/overlapping lease rejection, budget caps, persisted-proof crash recovery, no-hold expiry, late reserve commit recovery and concurrent budget exhaustion. Workspace TypeScript, the broader real PostgreSQL suite and hosted exact-head CI gate merge. Provider/device calls are NOT_RUN. No keys, user audio or provider tokens are stored by this journal.

## Required next integration

1. Add a protected MB review/admit/readback service, canonical platform-Masana checks, customer recovery guards and qualified welcome eligibility; preserve explicit user review and operation identity.
2. Implement a trusted provider relay that owns the actual upstream WebSocket and observes setup, pong/progress, disconnect and hard budget deadlines. Use this authority's lease/proof methods from server code only. The existing direct-to-Gemini mobile connection cannot provide independent server billing proof.
3. Swap token admission validation to the retained MB authority, coordinate grant/relay scopes and keep issued tokens ephemeral/private. Do not restore `/agent/twin/voice/*` or permit a missing reservation.
4. Mount periodic recovery/teardown under the retained worker/service lifecycle. Each failed recovery must remain retryable and must not starve other records.
5. Replace mobile Credits DTOs/admission calls and outbox behavior, keeping account fences, explicit spend-cap review, original operation recovery, reconnect and visible pending outcomes.
6. Prove current text/recorded-note errors independently, retain text when audio fails, and validate actual audible provider/device recovery before marking UX-R01–R08 complete.

No APK. Flutterwave fixed-IP hosting stays on hold. Separate Masanawa-App remains untouched.
