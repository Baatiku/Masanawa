# Masanawa web-only administration — execution register (2026-11-10)

## Decision and scope

Masanawa administration lives on the **web**. Both the Flutter and web client
share the same Gateway/PostgreSQL source of truth. Do not create a separate
admin-only wallet, user database or mobile navigation entry. The existing
`apps/admin_mobile` is historical; it is not a deployment target of this batch.

Primary public-facing admin route: the existing Masanawa web Site at `/admin`.
The `apps/ops` Next.js console is a separately deployable web control-plane
frontend using the same Ops API. No paid provider, session, financial or news
outcome is to be synthesized in either frontend.

## Security and architecture

```text
Web browser /admin
  -> same-origin web BFF, HttpOnly Masanawa Gateway session
  -> Ops service (/v1/admin/*, /v1/agents/*)
  -> tenant-bound capability grant, server-resolved PlatformSession
  -> canonical PostgreSQL and audited service commands

Flutter + ordinary web user flows -> canonical Gateway -> same PostgreSQL
```

- Auth: existing Gateway email OTP and refresh, no second password table or
  browser-accessible Ops token. `/v1/admin/me` checks an **explicit** grant;
  missing or malformed grants deny by default.
- Grants are configured server-side in `MASANAWA_OPS_ADMIN_GRANTS_JSON`, an array
  of `{tenantId, email|userId|phone, capabilities}`. Exactly one identity
  selector per grant; `tenantId` is *never* chosen by browser query parameters.
- Fine-grained read capabilities: `dashboard.read`, `users.read`, `runtime.read`,
  `operations.read`, `audit.read`, `news.read`, `wallet.read`, `data.read`,
  `calls.read`, `moderation.read`. Persona management also uses the existing
  `agents.presentation.read|write`, `agents.skills.read|write`, and
  `skills.catalog.read` capabilities. Grant `*` only to a deliberately
  privileged owner after review; staff roles should be narrowly scoped.
- Responses omit OTPs, provider keys, full chat messages, transcripts, audio,
  user contact details, private report descriptions and immutable audit payload.
  Pagination is bounded and every query contains the server-resolved tenant.
- Updates to persona presentation and skill assignments already use the
  existing server revision checks; no browser-only write authority.
- Cookies are HttpOnly, Secure in production and SameSite Strict. Mutations
  enforce same-origin checks. Calls from the web server to Ops require an
  HTTPS origin; Ops credentials never enter public JavaScript bundles.

## Work delivered in this batch

| Module | Web view | Data/commands | Status |
| --- | --- | --- | --- |
| Access | OTP sign-in, expired/denied/unavailable states | Canonical session + scoped Ops grant | Implemented; live deployment awaits Ops URL/grant |
| Overview | KPIs, recent operations, readiness | Real tenant counts + existing Ops health | Implemented |
| Users | Searchable-by-status paginated account roster | Canonical identity records | Read implemented; lifecycle write pending |
| Personas | Profile editor, visibility, order, greeting, skills | Existing agent presentation/skills revision commands | Implemented |
| Runtime | Agent run status, failure and trace | Canonical agent journal | Read implemented |
| News | Publisher roster, rights-review state, poll freshness/error | Canonical feed.news_publishers | Read implemented; editorial writes pending |
| Wallet | NGN entries in integer kobo, deposit/reversal type | Immutable gb_wallet.ngn_entries | Read implemented; money mutations not exposed |
| Buy Data | NGN order status and biller/product/cost | Canonical ngn_data_orders | Read implemented; provider intervention pending |
| Calls | Admission state, connected milliseconds, charge | Canonical ngn_call_admissions | Read implemented; provider controls pending |
| Moderation | Report queue and current visibility | Canonical safety reports/enforcement | Read implemented; reasoned actions pending |
| Operations | Provider and payment operation status | Canonical events.operations | Read implemented |
| Audit | Event type, trace, resource and time | Canonical events.audit_events metadata | Read implemented |
| Providers | Explicit unavailable state | No unsafe provider-key disclosure | Future verified health/config command |
| Settings | Explicit unavailable state | Server-only grants for now | Future versioned/admin-audited config command |

**This is not a claim that every management action is complete.** Reading a
wallet entry, a safety report or a news publisher is not equivalent to
reversing a payment, resolving a report or legally approving a publisher.
Those require separately verified domain commands with idempotency, audit
and proper provider/legal checks.

## Remaining implementation sequence

1. **Account lifecycle:** canonical `disable/restore` with explicit reason,
   revision conflict prevention, session revocation, immutable audit and
   protections against self-lockout. Never update only the UI label.
2. **Editorial newsroom:** rights evidence, publisher approval/suspension,
   article retract/correct, ingestion retry and source-health history; enforce
   license checks, provenance, idempotency and review attribution.
3. **Moderation:** queue assignment, reasoned hide/restore, appeals, abuse
   safeguards and complete audit, integrated with existing visibility rules.
4. **Wallet/payments:** immutable receipt drill-down, provider transaction
   reconciliation and support-case workflow, no arbitrary balance editing;
   dual-review for irreversible corrections/refunds.
5. **Data and voice:** catalogue revision/publish, provider delivery/readiness,
   time/charge disputes and authenticated reconciliation, with no false
   provider-success buttons.
6. **Provider/ops settings:** secret-safe health metadata, alerts, job status,
   release controls, admin grant onboarding/revocation and server-validated
   policy changes. Sensitive changes need fresh auth and independent review.
7. **Deployment/acceptance:** configure DigitalOcean Ops and Gateway behind
   HTTPS, apply migrations, set private service environment, publish Site
   `MASANAWA_OPS_BASE_URL`, test a real granted admin and a non-admin in both
   desktop/mobile web, verify permissions/revocation and inspect audit logs.

## Required environment (never commit live values)

Ops service:

```
DATABASE_URL=<the canonical PostgreSQL connection>
MASANAWA_OPS_ADMIN_GRANTS_JSON=[{"tenantId":"tenant_example","email":"admin@example.com","capabilities":["dashboard.read","users.read","runtime.read","operations.read","audit.read","news.read","wallet.read","data.read","calls.read","moderation.read","agents.presentation.read","agents.presentation.write","agents.skills.read","agents.skills.write","skills.catalog.read"]}]
```

Existing web Site: `MASANAWA_OPS_BASE_URL=https://<ops-service-host>` (server
side), plus its already configured Gateway base URL. The standalone `apps/ops`
web frontend uses `MASANAWA_OPS_API_URL` and `MASANAWA_GATEWAY_API_URL` as
server-only HTTPS origins. No `NEXT_PUBLIC_*` Ops base or provider key.

## Verification and checklist ownership

- Run Ops service typecheck, Ops Next typecheck, Ops admin authorization and
  route tests, Site parity/typecheck and full Site build.
- Exercises in the new test suite verify fail-closed grants, cross-tenant
  isolation, bounded reads, module-specific permissions, no sensitive columns
  and representative HTTP status codes.
- Existing `docs/WEB-PHASE-2-EXECUTION-REGISTER-20261110.md` remains the
  authoritative 189-ID customer-feature list. Admin work must not silently
  mark those unrelated user-feature tasks complete.
- Real OTP delivery, a live owner grant, persistent DO migrations, provider
  actions and mobile-device usage require real infrastructure or user accounts;
  passing isolated tests does not prove these live outcomes.
