# WhatsApp AI Management Centre — architecture and release gates

**Owner scope:** `Baatiku/Masanawa` (Gateway, Ops, Worker, PostgreSQL) and `Baatiku/Masanawa-Web` (Cloudflare admin and account-linking UI). **Channel:** official Meta WhatsApp Business Platform / Cloud API; no WhatsApp Web automation, unofficial QR sessions or shared phone-password store. **Canonical source:** PostgreSQL on the existing DigitalOcean host. **Status:** implementation groundwork; do not advertise full production readiness until the checklist below is green.

## 1. Architecture

| Responsibility | Owner | Implementation |
| --- | --- | --- |
| Configure phone numbers and assistants | Ops service | `/v1/admin/whatsapp/*`, fresh privileged session, tenant scoping |
| Official onboarding | Meta Embedded Signup + Ops | One-time signed-in signup state; code exchange; verify WABA membership and phone ID; subscribe webhooks |
| Secrets | Ops + PostgreSQL | AES-256-GCM encrypted per-number access token; key only from private runtime environment; no token in web JSON |
| Webhook ingress | Caddy → Ops | `/webhooks/whatsapp`, HTTPS, exact raw-body HMAC `X-Hub-Signature-256`; bounded durable ingestion |
| Inbox and assistant policies | PostgreSQL | `security.whatsapp_*` channels, assistants, threads, messages, jobs, audit |
| Outbound sending and AI generation | Bounded Worker | SKIP LOCKED claims; Gemini text; Meta Cloud API send; uncertain outcomes never silently repeated |
| Customer account verification | Gateway | One-time link code plus actual authenticated Masanawa session; fresh authorization grants |
| Wallet and Buy Data authority | Canonical Gateway | Existing NGN wallet and purchase APIs; WhatsApp may not bypass quote, review, approval, receipt or idempotency |
| Operator interface | Cloudflare Web | WhatsApp AI tab, connection status, per-number profile, permissions, inbox/handoff, analytics, dry-run testing |

The Meta connection does **not** use the familiar WhatsApp Web QR session. Embedded Signup and Meta's supported phone verification/onboarding are the official path. Meta's Business App coexistence onboarding, if approved for a specific account, requires its separately documented Meta flow; do not show an invented QR code or promise a persistent Web session. The WhatsApp Business app and API may have supported coexistence use cases, but eligibility is Meta-controlled.

## 2. Permission levels and safety

Each number has an independent versioned assistant record. Levels are conveniences for default permission selection, never a substitute for a server allowlist.

| Level | Permitted tools by default | Additional gate |
| --- | --- | --- |
| 1 Receptionist | `greet`, `faq` | No private account data |
| 2 Support | + `customer_support`, `registration_guide` | Human escalation |
| 3 Account | + `account_link`, `funding_details`, `wallet_balance` | Session-authenticated link + expiring `account.read` grant |
| 4 Data Sales | + `data_catalog`, `data_purchase`, `transaction_status`, `receipts` | Gateway-authorized quote/purchase, transaction confirmation and idempotency |
| 5 Advanced | Prior tools; `advanced_actions` **not** default | Specific approval and restricted tool registry |

The `evaluateWhatsAppAction` policy denies operations for disconnected or paused numbers, human takeover, invalid/grant-exceeding permissions, missing authenticated account link, missing fresh verified grant, or missing per-transaction confirmation and original key. The deployed Worker currently implements public greetings, Gemini FAQ, link issuance and read-only wallet/funding responses after a 10-minute grant. **It never dispatches a data purchase or other debit.** Level 4/5 permission bits are configuration and tests, not a claim that money tools are live. This is deliberately fail-closed until a full purchase coordinator uses the Gateway's existing `ngn_data` reservation/journal/reconciliation service.

## 3. Data and API contracts

- `security.whatsapp_channels`: tenant-scoped WABA ID, phone ID, encrypted token, state, enabled flag, revision, webhook health.
- `security.whatsapp_assistants`: per-number instructions, persona, voice reference, language, reply preference, role, granular permissions, hours and escalation rules.
- `security.whatsapp_onboarding`: one-use 10-minute state, bound to authenticated operator and tenant.
- `security.whatsapp_threads` and `security.whatsapp_messages`: canonical inbound/outbound message journal, delivery states, human takeover and provider ID uniqueness.
- `security.whatsapp_jobs`: bounded SQL claims, one response per source message, Meta sends never automatically replayed after uncertain network outcome.
- `security.whatsapp_link_intents`, `security.whatsapp_account_links`, `security.whatsapp_access_grants`: WhatsApp contact is not a Masanawa identity. An authenticated existing account explicitly links and grants short read access; can revoke.
- `security.whatsapp_audit`: append-only operator and account-linking events, with a database mutation-rejection trigger.

Admin read/write API: `GET /v1/admin/whatsapp`, `/config`, `/threads`, `/messages`, `/analytics`; `POST /onboarding/start`, `/onboarding/finish`, `/channel`, `/handoff`, `/send`, `/test`; `PUT /config`. Cloudflare BFF `/api/admin/whatsapp` forwards only enumerated routes through the existing private Ops access-session boundary. All writes require `whatsapp.write` and an original login within 15 minutes; reads require `whatsapp.read`. Dynamic admin role grants are updated in `role_admin.ts`.

Customer linking: `GET /v1/whatsapp/link`, `POST /v1/whatsapp/link`, `/access`, `/revoke`. Web UI `/whatsapp/link` requires existing Masanawa sign-in. Generated link code is 96-bit random, ten-minute lifetime, hashed at rest and limited by thread; the code only starts linking. Account read access expires after ten minutes and must be explicitly renewed from the authenticated app. These calls do not grant balance mutation.

## 4. Media, models and human support

The system can point to existing reviewed `agents.admin_voice_enrollments` records; an Ops save rejects a foreign/unconfirmed custom voice ID. The existing `VoiceEnrollment` UI handles recorded samples, speaker consent, audition, revocation and provider state for a canonical persona. Never activate voice-cloning without legitimate speaker permission and provider qualification. The current WhatsApp worker handles **text only**; audio notes are retained as media references for the human inbox, but **not** transcribed or synthesized as a fake result. Pending implementation must use private, expiring media fetch URLs; MIME/size/duration validation; opt-in audio retention; transcription to typed messages; Gemini speech renderer; voice preview; and consistent failover to text.

The human inbox supports takeover, close and release to AI. Queued AI generation consults current handoff state before replying. No autonomous assistant is allowed to override human takeover. Hours use Africa/Lagos local time; a number can specify greeting, escalation keywords and language (automatic, English or Hausa). The Gemini text path receives no financial tools, secrets or arbitrary SQL.

## 5. Meta and DigitalOcean prerequisites

Configure **only in** `/etc/masanawa/runtime.env` (not Git, frontend environment or Cloudflare `NEXT_PUBLIC_*`):

```text
MASANAWA_META_APP_ID=
MASANAWA_META_APP_SECRET=
MASANAWA_META_EMBEDDED_CONFIG_ID=
MASANAWA_META_WEBHOOK_VERIFY_TOKEN=
MASANAWA_WHATSAPP_TOKEN_KEY=
MASANAWA_GEMINI_API_KEY=
MASANAWA_WHATSAPP_GEMINI_MODEL=gemini-2.5-flash
```

`MASANAWA_WHATSAPP_TOKEN_KEY` is a *unique random 32-byte key encoded as base64* and must be backed up securely. Losing it prevents reading existing Meta access tokens. Rotate through a versioned re-encryption process before replacing it. Meta app permissions and business verification depend on the owned Meta Business Portfolio, WABA, phone registration, webhook subscription, reviewed `whatsapp_business_management` and `whatsapp_business_messaging` permissions, approved message templates for conversations outside the customer-service window, and valid Meta billing. API phone numbers are verified through the returned WABA phone listing, not caller-submitted labels. The 24-hour customer-service window is enforced before freeform sends; outside it only approved message templates can initiate communication.

**Existing $12 DigitalOcean capacity:** current runbook says the Worker is OFF due resource risk. The queued webhook design allows ingestion while processing is stopped, but replies are **not live** until the Worker is separately capacity-qualified, started, and monitored. Do not upgrade the Droplet, start additional containers or incur Meta/Gemini charges without the owner's operational authority. Caddy must route `/webhooks/whatsapp` to Ops. The Meta callback should be configured only after TLS, DNS, HMAC and test-number webhook verification succeed.

## 6. Acceptance gates

- [x] Source migrations and backend authorization policy.
- [x] Official multi-number onboarding code and secure token boundary, pending real Meta credential acceptance.
- [x] Signed webhook ingestion and deduplicated journal, pending live Meta delivery check.
- [x] Inbox, human takeover, message delivery state tracking, bounded text worker.
- [x] Account-link code, customer sign-in confirmation and short-lived read grants.
- [x] Per-number permission configuration and dry-run tests.
- [x] Web admin module, onboarding and account-link screens added in source.
- [ ] Production Meta app/WABA permissions, Embedded Signup, phone verification and approved templates tested against the owner's Meta Business account.
- [ ] End-to-end HTTPS webhook delivery, rate limits, actual Meta billing records, cost and sales reconciliation.
- [ ] Real outbound worker qualification on the 2-GiB pilot and host memory/queue lag measurements.
- [ ] Voice-note upload/download, consented transcription, synthesized replies and provider-qualified voice creation tested on WhatsApp.
- [ ] Buy Data tool: authenticated quote, explicit per-order review, price/version limits, reservation, idempotent provider dispatch, status/reversal and receipt readback.
- [ ] Managed knowledge base, approved templates, automation scheduling, role-specific QA conversations, privacy retention/export and audit/search expansion.
- [ ] Cross-service CI, PostgreSQL migration on staging, provider sandbox and rollback rehearsals.

**Recovery:** keep webhook events immutable by provider ID, return 200 only after database ingestion, keep ambiguous outbound sends in `uncertain` for operator reconciliation, do not replay a purchase or Meta send after an unknown outcome, and preserve the existing conversation/financial history. Disable a number to stop processing; disconnect removes its stored token while retaining required records. Back up PostgreSQL and the token encryption key separately with restricted access. Revert code deployments independently of forward-only migration: don't drop historic tables or reassign linked identities.
