# Connected customer feature implementation map — 17 November 2026

Owner scope: activate implemented qualified features and finish the nine listed
areas except item 7 (Hausa/Arabic localization). Preserve existing $12/2 GiB
Droplet, Worker-off capacity limit, NGN ledger/history and private credentials.

## Connected surfaces and authorities

- Canonical governed memory: packages/memory existing records/revisions/evidence,
  PostgreSQL memory repository/tombstone/projection cleanup, new customer ownership
  and consent migration/service/routes. Shared generation context for text/media/
  calls; customer Profile/persona memory controls and bounded export.
- Streaming: existing Gateway turn-stream routes/conversation stream, existing
  production inference/final grounding, browser BFF transport and original turn
  outbox. Partial text is transient; stop/cancel keeps canonical status recovery.
- Synced message controls: canonical completed turn keys, owner-scoped annotations,
  private hide state and events. Extend history projection; shared web/mobile API.
- Audio/history: existing private_chat_media slot 8 and quota/expiry, server-saved
  assistant replies, history media manifest, account-bound browser player and
  bounded sequential playback. No client authority over generated reply media.
- Offline: encrypted account/persona IndexedDB read cache and durable original
  turn intents, isolated from wallet authority; logout/account-switch invalidation.
- Browser push: canonical subscription/preferences/history and bounded delivery,
  VAPID private runtime keys, service worker/explicit user opt-in, logout revocation.
- Owner mailbox: canonical private PostgreSQL, verified inbound ingestion,
  owner/fresh-auth authorization, Resend outbound idempotency and status recovery,
  private attachment access and same-app admin inbox. Preserve Gmail forwarding.
- Admin payment reconciliation: shared strict original-reference data reconciler,
  fresh scoped authorization, atomic ledger/journal resolution and immutable audit;
  no purchases from reconciliation, synthetic deposits or forced success.
- Operational activation: verified immutable image installer, private current-key
  credential import, encrypted off-server backup/restore/monitoring composition,
  supported provider/DNS checks. External access failures remain explicit.

## Verification matrix

One combined backend type/unit/PostgreSQL migration/authorization/financial matrix,
web types/lint/build/unit and actual browser flows; grouped repair and same matrix.
Publish exact tested source, verify exact-head hosted CI and immutable images.
Source, synthetic HTTP, real local PostgreSQL and live provider acceptance are
reported separately. No feature is declared live from source tests alone.

## Implementation and operational boundary

The batch now includes customer memory consent/revisions/proposals/export and
governed forgetting; checked paragraph streaming and Stop/original recovery;
canonical reaction/hide manifests and stable history cursors; server-saved WAV
replies and encrypted device history/media/intents; VAPID push; an owner-pinned
private mailbox with signed queued MIME ingestion and idempotent Resend sends;
and strict, audited administrator reconciliation of original data orders.
The existing Gateway can poll one approved news source per tick; Worker stays off.

The production migration roots must include the memory package. Real PostgreSQL
acceptance caught its previous omission before deployment. Immutable money and
message journals remain intact; hiding is an owner annotation, never a ledger
erase. Mail deletion removes content/attachments while retaining a deduplication
receipt, so retries cannot resurrect deleted mail or repeat an unknown send.

Backups use a separate bucket-scoped R2 credential, an offline age identity and
standard signed uploads of bounded ciphertext. A real local PostgreSQL 18/vector
fixture was encrypted, uploaded to the existing R2 bucket, downloaded, decrypted
and restored on 17 November. This is transport/restore-tool evidence, not proof
of a backup of the actual Droplet. Private timers still require host installation.

Backend images, private settings, owner grants and host timers require the verified
Droplet console installer because TCP/22 still refuses this executor before SSH
authentication. Keep the new web UI staged until its required Gateway routes
respond. Change only the existing bello@masanawa.com email rule after the signed
receiver probe succeeds; retain its verified Gmail forwarding destination.

Live funded purchases/deposit receipts, actual background push on owner devices,
real email delivery/routing, the actual Droplet backup/restore, and real
Google/custom-voice account eligibility remain separate acceptance gates. No
financial/provider success or full 189-item parity completion is inferred from
local tests. Hausa/Arabic interface localization remains excluded by the owner.
