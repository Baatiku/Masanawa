/**
 * The same Railway Gateway serves Masanawa mobile and web.
 * Public origin (never an API token); may be overridden at Worker runtime.
 * Keeping the default makes the Cloudflare GitHub preview operational without
 * requiring a separate backend deployment or copying mobile secrets.
 */
export const MASANAWA_GATEWAY_DEFAULT_ORIGIN =
  "https://masanawa-gateway-production-338f.up.railway.app";

export function resolveGatewayOrigin(configured: string | undefined, production = true): string | null {
  const raw = configured?.trim() || MASANAWA_GATEWAY_DEFAULT_ORIGIN;
  try {
    const url = new URL(raw);
    const localTest = !production && ["localhost", "127.0.0.1"].includes(url.hostname);
    if (url.username || url.password || url.search || url.hash ||
      (url.protocol !== "https:" && !(localTest && url.protocol === "http:")) ||
      (url.pathname !== "/" && url.pathname !== "")) return null;
    return url.origin;
  } catch { return null; }
}
