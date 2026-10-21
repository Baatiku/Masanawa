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


## Shared Railway Gateway on Cloudflare Workers

The frontend now connects to the same public Railway Gateway origin used by the mobile application by default, through its secure server-side BFF. There is **no second backend** and no client-side Gateway bearer token. You can override the HTTPS Gateway with `MASANAWA_GATEWAY_URL` (Worker runtime variable).

Open `/api/backend/status` to see if the real Gateway `/readyz` endpoint is reachable, without exposing secrets. The login form displays this status and learns supported OTP channels; sessions, authenticated inbox and Masana history reuse the canonical Gateway. An unhealthy Railway Gateway returns HTTP 503 and blocks reliable login even if the Cloudflare Worker deploy is successful. Health and real-provider tests remain a separate operational gate. The web inbox quietly refreshes authorized Masana data about every 25 seconds while visible; no fabricated conversations or wallet values.

The UI uses Next.js 16 / React 19 with vinext Cloudflare Workers. Animated entrances, responsive hover/press feedback and real sync indicators enhance the live feel and respect `prefers-reduced-motion`. The `/preview` route intentionally remains a read-only design walkthrough with fictional sample data; **log in at `/login`**, not `/preview`, to see authorized backend data.
