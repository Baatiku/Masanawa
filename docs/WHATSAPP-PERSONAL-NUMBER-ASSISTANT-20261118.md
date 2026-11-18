# WhatsApp number identity and conversational quality — 18 November 2026

## Operational problem

The initial Worker concatenated a fixed `greeting`, an optional away notice, the
Gemini answer and an unsolicited account-registration link. For an inbound
"Salam", it also bypassed Gemini and sent the service welcome verbatim.
Consequently a personally linked founder number sounded like a corporate
hotline, with duplicate salutations and irrelevant signup invitations.

## Implemented behavior

- Each `security.whatsapp_assistants` row now has `number_purpose`, `owner_name`
  and `owner_title`. The admin centre exposes **Dedicated Masanawa service** and
  **Personal / founder / owner** choices; existing channels default to service
  until an administrator explicitly changes their identity.
- Gemini composes a single concise reply. No static greeting, away text or
  marketing invitation is automatically prepended. The greeting field is
  optional guidance for a first response. Service registration help remains
  available when explicitly requested or contextually relevant.
- The personal assistant identifies itself as assisting the named owner. It
  does not impersonate the owner, or present a personal number as the official
  service line. For away-mode replies after the configured grace period, it may
  explain the owner has not personally replied and may be unavailable; it must
  not claim certain online/offline status. An actual human response cancels a
  pending away reply under the existing server-side rule.
- Incoming WhatsApp `pushName` is self-asserted and may be a business alias,
  nickname or emoji. The assistant never treats it as a verified real name or
  infers a sender's gender. An authenticated WhatsApp administrator can confirm
  a preferred contact name in the inbox; only that `verified_contact_name`
  reaches the reply prompt.
- Existing per-contact conversation history and privacy-filtered long-term
  memory are retained. The first/returning distinction is derived from the
  thread's first assistant-response marker, not a guess based on phone digits.
  Conversation memories are informational only; account and wallet permission
  checks remain server-side and require authenticated grants.

## Release order and verification

1. Apply additive migration `packages/security/migrations/0124_whatsapp_number_identity.sql`.
   Do not delete QR/session keys, chat history or existing assistant settings.
2. Deploy the matching Ops and Worker revisions. The new Worker reads the new
   columns, so do not restart it before migration completes. A successful
   source merge alone does not install a live image.
3. Deploy the matching `Baatiku/Masanawa-Web` admin centre and API proxy.
4. In **WhatsApp AI → Assistant & permissions**, select **Personal / founder /
   owner**, fill in the owner's preferred public name/title and adjust the
   availability mode. **Only when I have not replied** with a two-minute delay
   is recommended for a personal owner account. Save and confirm the revision.
5. Send first-time `Salam` and a returning-topic follow-up from another number.
   Inspect the actual delivered text/voice and message queue. Verify a manual
   owner reply cancels pending away-mode responses; verify contact addressing
   only after an administrator-confirmed name; test human takeover separately.

No existing wallet-linking restrictions are relaxed by this change. No
provider/handset or live-delivery acceptance is inferred from unit tests.
