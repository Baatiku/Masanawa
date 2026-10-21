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

## Backend setup (later, when Gateway is qualified)

Set Worker **runtime** variable `MASANAWA_GATEWAY_URL` to the canonical publicly reachable **HTTPS origin** of the Masanawa Gateway (for example, `https://your-gateway-host.example`, without trailing path or credentials). This variable is server-side only; no `NEXT_PUBLIC_` prefix. Its absence is intentional for a design-only preview: public pages and `/preview` work, and authenticated endpoints fail closed. Do **not** configure the old NasfamPay backend, direct AI provider secrets, customer wallets, API tokens, or a personal email/password in Worker variables. Do not enable real financial actions without signed-off wallet and authorization tests.

The preview Worker uses `nodejs_compat` and an explicit compatibility date in `cloudflare.config.ts` so Cloudflare runtime bindings populate `process.env`. If deploying with CLI outside Git integration, authenticate using `cf auth login` and set `CLOUDFLARE_ACCOUNT_ID` or your Cloudflare profile as described in the vinext documentation. Never commit your Cloudflare API token.

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

- **Design preview first**: leave Gateway URL unset until real-account authentication is qualified, and keep your production domains unchanged.
- Live Masana conversation turns, human messaging, Status, Rooms, voice and Wallet operations remain separate feature acceptance work. The `/preview` route is a design walkthrough, not real product data or a bypass around sign-in.
- For private review, protect the Worker with Cloudflare Access if desired; an unprotected `workers.dev` preview is publicly reachable by anyone with the address.
- Verify login cookies, Origin checking, Gateway network access, image loading and any configured custom domain **after** Worker deployment. Check runtime logs in Cloudflare, and redeploy the previous Worker version if necessary.
- The GitHub PR remains a draft until live-account and provider integration tests are completed. A passing Cloudflare build proves packaging and rendering, not production wallet or AI behavior.
