# Trusted MB call provider relay — opt-in server core

Continues merged [#425](https://github.com/Baatiku/Masanawa/pull/425) and [#426](https://github.com/Baatiku/Masanawa/pull/426). Implements the trusted transport core for UX-R02/R03/R06/R07/R08. **Main does not install or compose this relay yet; current mobile/token admission is unchanged.** Those checklist items remain open. No working production call or real Gemini/device acceptance is claimed.

## Implemented

- An explicitly installed Gateway WebSocket endpoint, `/agent/live/stream`, using pinned `ws` 8.22.0. Ordinary Gateway construction does not register its upgrade/lifecycle hooks.
- A strong one-use, short-lived relay credential in the Authorization header. Provider credentials never appear in the returned relay URL; token/private setup remain in bounded process memory, not SQL/logs. Nonce count/bytes, active connections, frame/queue size, handshake time and resumption lifetime are bounded.
- Every issuance and connection checks the exact owner/approved character/original admission. The issuer must provide a private originating-session validation callback; it and current access are checked again at provider setup and progress. Revocation stops the relay without creating further billable proof.
- Only the approved Google TLS hostname/path is dialed. Tests inject a loopback stand-in through a code-only factory. Model, voice and persona setup are replaced with the server-approved grant. Client tools are rejected; resumption uses only the handle observed from the same admission's provider connection.
- Actual provider setup establishes connection proof. Real upstream pong/data checkpoints renew the fenced ledger lease. Client `setupComplete` or duration messages cannot establish proof. A hard timer terminates the session at the remaining reserved MB budget.
- Reconnect closes the old lease, preserves accumulated confirmed usage and excludes downtime. Normal closure records server-observed time; upstream uncertainty preserves only the last checkpoint. Failed/ringing/setup-only attempts settle zero and release all MB.
- Background recovery and graceful shutdown use the durable authority. A failed recovery keeps new entry unavailable; one damaged journal no longer prevents processing later expired holds. Late-committing holds remain recoverable.
- Provider errors are reduced to a safe client message and closed diagnostic labels. New typed relay unavailability returns safe HTTP 503 on the actual live-token route, without exposing raw provider errors or internal configuration.

## Validation and fixed failures

Focused tests use real loopback client/provider WebSockets and real PostgreSQL, plus simulated upstream messages and readiness errors. They cover setup locking, private/single-use/expired credentials, reconnection and original resumption, forged proof, hard budget/once-only settlement, uncertain upstream loss, account/session revocation, provider error redaction, malformed upgrades, recovery, shutdown and the live-token 503 boundary.

The first broader run caught an intermittent 403: base64url lease entropy could begin with `_` or `-`, outside the ledger ID grammar. Lease IDs now preserve the full random entropy with an admissible prefix, and fixed entropy vectors protect this regression. Pending upgrade cleanup, duplicate setup dispatch, recovery starvation and bounded resumption/grant memory were also checked before merge. Source/workspace/real-PG and exact-head hosted CI gate merge.

**PASS_REAL:** local WebSocket transport and PostgreSQL accounting behavior. **PASS_SIMULATED:** the upstream provider and revoked/readiness conditions. **NOT_RUN:** real Gemini, microphone/speaker, installed mobile, public deployment/replica routing acceptance. No provider call or charge was made.

## Next integration (must precede customer enablement)

1. Compose the protected service, this relay, token wrapper and recovery lifecycle together under explicit readiness. Use existing real authentication/active approved platform Masana and customer-state checks, a server-only review secret, and immutable originating-session validation. Never pass permissive test validators in main.
2. Swap the legacy Credits voice gate for the durable MB admission and return `transport: gateway_relay` grants. Keep provider tokens server-side and use original operation readback on retry. Diagnose other live-token/text/recorded-note failures separately.
3. Bind the original call-history ID to the admission durably (forward migration if needed). Reconnect must reuse the intended history/usage receipt rather than create independent charged calls. Existing applied migration 0203 is immutable.
4. Update mobile to send the opaque grant token in the WebSocket Authorization header, preserve normal-vs-uncertain closure, and replace Credits review/admission/outbox with retained MB contracts. Preserve drafts, approved voice/persona, account fences, no charge for ringing and explicit spend-cap consent.
5. Provide owner-scoped finish/cancel of an original admission, stopping the relay before settlement. Recovery holds must block new spending while original cleanup/readback still works; add an exact reviewed cleanup exception rather than a broad financial bypass.
6. Qualify the full token → relay → actual provider → audible device → original receipt path before enablement. Nonces/resumption handles are per-process; rollout/restart retries fail closed against the original durable admission. Qualify replica routing before scaling the enabled relay.

Continue using the stable roadmap IDs. No APK. Flutterwave fixed-IP hosting stays on hold; separate Masanawa-App and historical financial data remain protected.
