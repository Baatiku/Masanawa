ARG WORKER_BASE
FROM ${WORKER_BASE}

ENV PUPPETEER_SKIP_DOWNLOAD=true
RUN apt-get update \
    && apt-get install -y --no-install-recommends chromium pulseaudio pulseaudio-utils xvfb fonts-liberation tini \
    && rm -rf /var/lib/apt/lists/* \
    && install -d -m 0700 -o node -g node /data

WORKDIR /opt/masanawa-browser
COPY infra/deployment/worker/browser/package.json infra/deployment/worker/browser/package-lock.json ./
RUN npm ci --omit=dev --no-audit --no-fund
COPY infra/deployment/worker/browser/entrypoint.sh /usr/local/bin/masanawa-browser-start
WORKDIR /app
USER node
ENTRYPOINT ["tini","--","/bin/sh","/usr/local/bin/masanawa-browser-start"]
CMD ["node","--conditions=production","services/worker/dist/whatsapp_browser_gateway.js"]
