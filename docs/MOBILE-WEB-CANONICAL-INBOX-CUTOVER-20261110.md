# Flutter + web: account-scoped Masana inbox source checkpoint

Date: 10 November 2026. Issue #632. Host decision: DigitalOcean $12/month backend once billing is configured; Cloudflare CDN/web. No Railway prelaunch history migration.

## Shared canonical contract

- `GET /v1/chats?q=&limit=15` gives the signed-in user's active server conversations; `?archived=true` gives the owner's archive. Opaque cursors are tied to normalized search and active/archive view. Never infer a persona ID from a name.
- `PATCH /v1/chats/:characterId` pins/unpins; `PATCH /archive` archives/restores; `PATCH /title` sets a printable, maximum-80-character account-private title or null to use the original. All mutations use the server's `revision`, reject conflicts and preserve the source-of-truth identity.
- `POST /v1/chats/:characterId/read` acknowledges unread counts. The journal of user/assistant turns is unchanged and archiving is not deletion.
- Flutter's authenticated Dio adapter now requests the canonical default remote inbox, in addition to paginated remote searches. The archived view and remote-row menu use the same archive/title endpoints as the Cloudflare Site BFF. Optimistic acknowledgments are fenced by the signed-in user object and authorization epoch.

## Deliberate limits / follow-up

The Flutter UI still has a device-local conversation cache for drafts, old conversation tiles and local archive/rename operations. Those cache operations are **not** proof of a remote mutation. This source batch adds explicit remote actions for remote rows and does not silently rekey, merge or delete local history. Fully reconciling local chat actions, websocket streaming, and two-device acceptance is a separate unchecked gate.

The new migration `packages/masana/migrations/0016_chat_archive.sql` must be applied before the corresponding Gateway image is activated. A clean test account with mobile and web must prove owner isolation, archive/restore, rename, pinned order, unread counts, pagination, sign-out, and stale-response rejection. No provider billing, live calls or DigitalOcean activation is implied by this change.
