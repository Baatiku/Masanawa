# Masanawa Web — Cloudflare Workers preview deployment

This deploys the **editable Masanawa Next.js web source** using [vinext](https://vinext.dev/docs/deploying/cloudflare) and the Cloudflare Vite plugin. The historical NasfamPay HTML snapshot and cached `__api__` assets are outside `public/`; **do not** choose a static Pages build or publish the old `index.html`.

## Cloudflare GitHub integration (Workers, not static Pages)

**First select the correct Git branch.** The default `main` is **not** the Cloudflare-ready Next.js app and will cause `npm error Missing script: "build:cloudflare"` even if you `cd apps/web`. This is a code revision/branch problem, not an npm defect.

For an isolated visual-review Worker, use the explicit deploy branch `deploy/masanawa-cloudflare-preview`. It contains the same app as the draft web PR plus root-level command shims. GitHub link: https://github.com/Baatiku/Masanawa/tree/deploy/masanawa-cloudflare-preview

| Cloudflare field | Set exactly |
| --- | --- |
| Repository | `Baatiku/Masanawa` |
| Production / Git branch | `deploy/masanawa-cloudflare-preview` |
| Root directory | **Leave empty** (repository root) |
| Worker name | `masanawa-web-preview` |
| Build command | `npm run build:cloudflare` |
| Deploy command | `npm run deploy:cloudflare` |
| Node version | `24` |
| Publish/output directory | **None**: Workers are not Cloudflare Pages. Internally the build writes `apps/web/.cloudflare/output/v0`, used by `cf deploy --prebuilt`. |

On Cloudflare: **Workers & Pages → masanawa-web-preview → Settings → Build → Branch control** and change the **production branch** to `deploy/masanawa-cloudflare-preview`. Save that branch setting, verify the Git repository is actually `Baatiku/Masanawa`, then trigger a fresh deployment **of the new branch's HEAD**, rather than retrying the old `main` commit. Cloudflare initially selects the GitHub default branch (`main`) unless changed.

The root build command runs a source guard. A correct checkout prints `MASANAWA_CLOUDFLARE_SOURCE_OK`, followed by the exact Git commit, then builds `apps/web` through vinext. If that string is missing from the build output, Cloudflare has not checked out the intended new commit.

Cloudflare automatically issues a `*.workers.dev` URL **after** successful deployment. Visit `/`, `/login`, `/register`, `/recovery`, and **`/preview`** to inspect the website. The walkthrough data is fictional, read-only and visibly labeled, with no wallet or messaging requests.

If configuring the Worker with **root directory `apps/web`** instead, use the app-local versions of these commands, not the root scripts. Do not combine `apps/web` root and `cd apps/web`.

## Existing Masanawa mobile backend: connected by default

The Worker BFF now defaults to **the existing Masanawa Railway Gateway**, `https://masanawa-gateway-production-338f.up.railway.app`, if `MASANAWA_GATEWAY_URL` is not configured. This is the **public HTTPS Gateway origin**, not a credential, not a second backend or a new database. Auth, Masana history and authorized inbox traffic reuse the mobile application's shared Gateway, session store and PostgreSQL authority.

For a future custom Gateway domain or a staging service, set the **server-side** Worker runtime variable `MASANAWA_GATEWAY_URL` to that HTTPS origin (no path/query). Never set a `NEXT_PUBLIC_` Gateway secret; never copy tokens, Flutterwave credentials, database passwords or provider keys to Cloudflare. A deliberately malformed runtime URL fails closed.

You can check connection from any browser at **`/api/backend/status`**. It returns `connected: true` only when Railway answers `/readyz` successfully. On degraded Gateway releases it returns HTTP 503 with `connected: false` and no private details; this means **fix Railway Gateway readiness**, not the Cloudflare build or static preview. The sign-in screen also shows a real backend health status and the actually enabled OTP channels. Login POSTs remain same-origin and receive HttpOnly session cookies from the Worker; browser credentials never contact Railway directly.

**Operational blocker observed on 21 October 2026:** Multiple recent `masanawa-gateway` Railway deployments failed their `/readyz` health check. Railway still showed a previous version online, but an independent public health probe timed out. Do not claim that OTP/login is production-verified until `/api/backend/status` returns connected and an actual owned account completes sign-in. Investigate Railway service health, migrations, and recent deployment logs. The Cloudflare web deployment cannot repair a Gateway outage.

## Commands from `apps/web`

```bash
npm ci
npm test
npm run typecheck
npm run brand:check
npm run build:cloudflare
npm run start:vinext -- --host 127.0.0.1 --port 3001
# Once connected to Cloudflare, from the exact same build output:
npm run deploy:cloudflare
```

`npm run build` remains the independent Next.js build. `npm run build:cloudflare` compiles the Worker via vinext; **it is not equivalent to `next build`**. The Cloudflare deploy script uses `cf deploy --prebuilt`, so it **does not rebuild twice**. For a one-step CLI deploy outside Workers Builds use `npm run deploy:cloudflare:full`, which builds and publishes (Cloudflare authentication required). In Cloudflare Workers Builds enter both Build and Deploy commands separately as shown above.

## Rollout and limitations

- **Production Gateway is selected by default**: real-account login uses the shared Railway Gateway and its data. Keep private preview links controlled and production domains unchanged until credentials, sessions and service health are qualified.
- Live Masana conversation turns, human messaging, Status, Rooms, voice and Wallet operations remain separate feature acceptance work. The `/preview` route is a design walkthrough, not real product data or a bypass around sign-in.
- For private review, protect the Worker with Cloudflare Access if desired; an unprotected `workers.dev` preview is publicly reachable by anyone with the address.
- Verify login cookies, Origin checking, Gateway network access, image loading and any configured custom domain **after** Worker deployment. Check runtime logs in Cloudflare, and redeploy the previous Worker version if necessary.
- The GitHub PR remains a draft until live-account and provider integration tests are completed. A passing Cloudflare build proves packaging and rendering, not production wallet or AI behavior.
