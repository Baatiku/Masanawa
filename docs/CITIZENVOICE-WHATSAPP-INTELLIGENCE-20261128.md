# Citizenvoice WhatsApp intelligence rollout — 28 November 2026

Status: scoped source change; hosted CI, production, official channel eligibility and real provider acceptance outstanding.

## Existing foundations preserved
- Worker queue, inbound audio transcription, encrypted Gemini pool, conversation memory, owner takeover.
- Gateway secure account linking and ten-minute read grant, NGN ledger, approved data bundles, explicit purchase authorization and status routes.
- Web /whatsapp/link and public publisher feed /api/news.
- Existing public Forum and civic information are not authorized for publication through this pilot.

## This batch
Dedicated service channels can advertise a permission-filtered service catalogue and retrieve recent publisher headlines through the existing public feed. No new source database, user identity, wallet or direct mutation tool. Correct stale ChatMeUp branding, honor configured reply language, distinguish business registration from app signup, recognize ordinary data and link requests, remove full funding account numbers from chat. No changes to personal-number identity or financial settlement.
 
The pilot allowlist MASANAWA_CITIZENVOICE_WHATSAPP_PILOT_CHANNELS is empty by default. Do not populate in production until official WhatsApp Business eligibility and transport are independently verified. Linked-device transport is not a substitute for approval. This flag is a test gate, not a provider authorization.

## Remaining implementation / release gates
1. Official Business API onboarding, signed webhook and durable message transport, approved templates, opt-in/out and delivery state.
2. Full schema-backed tool registry, scoped role/admin management, durable task stack, account-specific authorization, context isolation, structured tool calls, evaluated multi-turn language intelligence.
3. Approved rights/civic/agency retrieval through canonical reviewed evidence, authorized forum reads and draft/review/moderation; political features remain gated pending entity-level eligibility.
4. Authenticated transfer, airtime and utility workflows only after supported product/provider verification; preserve original idempotency and exact review, no model execution.
5. Subscription scheduler, notification preferences, complaints/support, official calling capability, interactive renderer and admin monitoring. Reuse existing services and avoid extra infrastructure until load-tested.
6. Frontend secure review recovery and complete service control centre; end-to-end browser, PostgreSQL, provider, security, policy and handset acceptance.
7. Exact-head CI, review, merge, production deployment and independent readback before release claims.

## Financial recovery follow-up
An account-fenced recent-purchases endpoint returns only masked recipient details. Status recovers an interrupted approval from the original canonical operation key, without making a new payment. An approval with no canonical operation remains requested and must not be reported as failed or delivered. A dedicated receipt-dispatch gate validates the current linked customer, pilot scope, service permissions, canonical delivered approval, exact masked receipt content and original request hash. Focused tests were added; real receipt delivery remains unverified.
