FROM node:24-bookworm-slim

# Link the image to the same source repository used by the pilot Gateway.
LABEL org.opencontainers.image.source="https://github.com/Baatiku/Masanawa"

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable && corepack prepare pnpm@12.8.2 --activate

WORKDIR /app

COPY package.json pnpm-lock.yaml pnpm-workspace.yaml tsconfig.json tsconfig.base.json vitest.config.ts ./
COPY packages ./packages
COPY adapters ./adapters
COPY infra ./infra
COPY services ./services
COPY apps ./apps
COPY scripts/flutterwave-railway-observation.mjs ./scripts/flutterwave-railway-observation.mjs

RUN pnpm install --frozen-lockfile
RUN pnpm --filter @masanawa/ops-service... build

ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3002

USER 1000:1000
EXPOSE 3002
CMD ["pnpm", "--filter", "@masanawa/ops-service", "start"]
