# Masanawa web

Maintained **Next.js** site in `src/` using the canonical mobile brand tokens. The old NasfamPay HTML and compiled bundles in sibling directories are **read-only layout references**, not app source, and must never be copied into a public build.

## Run (from `apps/web`)

```bash
npm ci
cp .env.example .env.local
# Set MASANAWA_GATEWAY_URL to an authorized HTTPS Masanawa Gateway origin.
npm run dev
npm test
npm run typecheck
npm run brand:check
npm run build
```

`MASANAWA_GATEWAY_URL` is a **server-only** origin. Do not use the old NasfamPay backend. When absent, auth and private data fail closed; the public landing page still renders.

## Current scope

Marketing home, OTP login/register, phone password recovery, responsive Chats / Status / Wallet / Calls / Rooms shell and authenticated Masana directory/inbox, human-readable Masana profiles, profile-to-chat navigation, account-scoped conversation history and request-ID-safe text messaging. The web uses HTTP-only cookies and a same-origin BFF; provider secrets remain in Masanawa Gateway. Masana conversations use the canonical Gateway routes `/agent/directory`, `/agent/history`, `/agent/sessions/open`, `/agent/sessions/:id/turn` and `/agent/turns/:id/status`. A timed-out turn is NEVER retried automatically; a per-tab request ID is saved for explicit status recovery. The client sends no token to a model provider. Other user journeys display pending/permission states without fabricating balances or success.

The browser/PWA mark is copied by Git SHA from `apps/mobile/assets/brand/masanawa_launcher_foreground.png`. The app excludes the mirrored legacy static files from Next's public folder. **Do not publish the original `apps/web/index.html` via static-site hosting**. Use the Next server output after security, account and deployment verification. The current PR is not evidence of a production release.

Refer to `WEB-SCREEN-CONTRACT.md` and the single canonical roadmap `../../docs/PRODUCT-ROADMAP-20261019.md` for the remaining screen journeys and product authority.
