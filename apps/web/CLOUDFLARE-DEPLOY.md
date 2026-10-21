# Masanawa Web — Cloudflare Workers preview deployment

This deploys the **editable Masanawa Next.js web source** using [vinext](https://vinext.dev/docs/deploying/cloudflare) and the Cloudflare Vite plugin. The historical NasfamPay HTML snapshot and cached `__api__` assets are outside `public/`; **do not** choose a static Pages build or publish the old `index.html`.

## Cloudflare GitHub integration (Workers, not static Pages)

| Cloudflare field | Set exactly |
| --- | --- |
| Repository | `Baatiku/Masanawa` |
| Branch | `feat/web-masanawa-rebrand-foundation-20261021` (until the PR is merged) |
| Root directory | `apps/web` |
| Worker name | `masanawa-web-preview` |
| Build command | `npm run build:cloudflare` |
| Deploy command | `npm run deploy:cloudflare` |
| Node version | `24` (`NODE_VERSION=24` in build variables if needed) |
| Publish/output directory | **None**: Workers are not Cloudflare Pages. Internally the build writes `.cloudflare/output/v0`, used by `cf deploy --prebuilt`. |

Cloudflare Dashboard → Workers & Pages → Create application → GitHub → choose repository and branch → select Workers and set the fields above. The Worker name must match `cloudflare.config.ts` exactly. Set build watch paths to `apps/web/**` and, where useful, `pnpm-lock.yaml`, so unrelated mobile commits do not trigger previews. Cloudflare's Git integration usually provisions a deployment API token automatically.

Cloudflare automatically issues a `*.workers.dev` URL **after** a successful deployment. Do not assume the URL exists before deployment. Visit `/` for the marketing page, `/login`, `/register`, `/recovery` for authentication layouts, and **`/preview`** to inspect all five navigation layouts and the Masana rail **without logging in**. The `/preview` data is deliberately fictional, read-only and visibly labeled as a visual demo. It performs no network requests to a Gateway, no messaging and no wallet operations.

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
