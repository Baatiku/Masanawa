# Masanawa — first shared web account/Gateway source cutover

**Date:** 10 November 2026. **Track:** Issue #632, DigitalOcean $12 pilot and exact 189-item Site register. **Stage:** coordinated **source implementation under verification**; not production authentication, provider billing or call acceptance.

## Contract now available in the canonical Gateway

`GET /auth/session` requires the same bearer access token as Flutter. It uses the production customer-auth session repository to return `{user: AuthUserView}`, with no token/refresh credentials in its JSON body and `Cache-Control: private, no-store`. Invalid and revoked credentials reject 401; storage/service failure remains separately 503. It is not a second browser account database or a cookie-auth shortcut.

Files: `services/gateway/src/customer_auth.ts`, `services/gateway/src/app.ts`; route and store-backed regressions in `services/gateway/src/app.test.ts` and `services/gateway/src/customer_auth.test.ts`.

## Separate Cloudflare Site source, corresponding implementation

The `masanawa-civic-directory` Site retains the full 189 original IDs in `docs/WEB-WHATSAPP-PARITY-CHECKLIST-20261108.md` (36 checked, **153 still open**). It has been edited to use the following contract; the Site's own source and deployment are independently versioned, not part of this GitHub repository:

| Site BFF endpoint | Canonical Gateway source | Privacy / gate |
| --- | --- | --- |
| `POST /api/account` action `otp` | `POST /auth/otp` | Same-origin JSON, verified email delivery required |
| `POST /api/account` action `verify` | `POST /auth/verify` | Access/refresh tokens become Secure/HttpOnly/SameSite cookies, never client JSON |
| `GET /api/account` | `GET /auth/session` | Server validates real user principal; display labels do not authenticate |
| `POST /api/account` action `logout` | `POST /auth/logout` | Clear browser tokens; distinguish server revocation not confirmed |
| `GET /api/masana/status` | `GET /agent/directory` | Only canonical Gateway-issued character IDs are chat contacts |
| `GET /api/masana/history` | `GET /agent/history` | Authenticated persona scope, bounded page and optional `before` cursor |
| `POST /api/masana/chat` | `/agent/turns/{requestId}/status`, `/agent/sessions/open`, `/agent/sessions/{id}/turn` | UUIDv7-backed request/correlation IDs, status-before-retry, no direct Gemini |
| `GET /api/masana/turn-status` | `/agent/turns/{requestId}/status` | Unknown outcome readback by exact ID, never text/time coincidence |
| `GET /api/wallet` | `GET /v1/ngn/wallet/summary` | Server kobo only; no invented funding account, payment or cash grant |

The previously active `masanawa_guest` D1 chat identity and global `masanawa-web-threads` browser cache are never adopted into accounts; old plaintext local remnants are cleared. Publisher-news and public civic information remain separate. Web voice note and Live routes now fail closed pending canonical private media/connected-time NGN billing; never relabel them as production-ready or restore a guest fallback.

## Verification and outstanding work

- Site source checks: TypeScript, Vinext build, lint, branded web parity contract, browser BFF unit tests and no-guest negative route smoke. Browser visual/device and two-account production tests remain distinct.
- Gateway source tests: `app.test.ts` checks auth/session 401/200/no-cache/token non-disclosure, `customer_auth.test.ts` checks real repository-backed session identity. Exact-head Foundation CI must run after PR publication; local packages may be unavailable.
- Neither identity nor history is accepted without cross-device login on Flutter and web, refresh/logout/revoke, stable canonical persona records, account-switch late responses, long history and paid turn readback.
- Existing auth cookies and live Gateway deployment versions will not gain this route until the exact tested release image is published and deployed. Both web and Flutter must target the same HTTPS `api.masanawa.com` origin; Cloudflare cannot host a second wallet.
- The original H–O and A–G checkboxes remain **unchanged** until exact Site build/deployment and two-client data isolation evidence are attached. Pending: full inbox/archival, complete media and call journal, semantic opt-in memory, NGN deposit provider qualifications, news engagement, accessibility, and DigitalOcean provisioning/restore/load.

## Follow-up: reversible remote conversation archiving (source only)

`packages/masana/migrations/0016_chat_archive.sql` adds a per-fan `archived` preference to the already-authorized, versioned `masana.fan_chat_preferences` record. It does **not** delete or duplicate any message; the canonical `agents.mobile_turn_commands` journal remains unchanged. `GET /v1/chats` lists active conversations by default, while `?archived=true` reads the authenticated owner's archive. Paged cursors are tied to the same normalized search and archived/active partition; a cursor cannot cross the two views. `PATCH /v1/chats/:characterId/archive` requires a valid server-authenticated fan, published platform character, Boolean value and current CAS revision for archive/unarchive, rejecting stale revisions with 409. Other users' or retired-persona sessions cannot be mutated. The Site's cookie-only BFF forwards the new operations and presents an archived-list/restore control, with same-origin and no-guest negative checks.

This feature requires migration 0016 **before** the new Gateway image is activated. Client source, Postgres integration and live two-account behavior are distinct gates. The Site's 189-item register remains 36 source-checked / 153 open until exact-head CI, the compatible Gateway image, and cross-client acceptance are recorded.

## Follow-up: account-private conversation titles (source only)

The same migration introduces `custom_title` on the existing fan-scoped preference with a maximum of 80 printable characters. `PATCH /v1/chats/:characterId/title` sets or resets the title (`null`) through authenticated, revision-checked writes. The property appears only in the authenticated inbox projection and optional inbox search: it neither alters the public approved Masana persona's display name nor changes AI identity or stored conversation turns. The Site provides the rename editor, a return-to-original action and account-epoch fencing for stale responses. Migration, exact-head tests and two-device verification remain release gates, not checked-off production evidence.
