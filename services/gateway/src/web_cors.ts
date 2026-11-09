/**
 * Browser traffic is allowed only from reviewed Masanawa frontend origins.
 * Native Flutter clients omit the Origin header and use the same bearer API.
 * This is not cookie authentication or a substitute for server authorization.
 */
export function parseWebAllowedOrigins(raw: string | undefined): readonly string[] {
  if (!raw?.trim()) return Object.freeze([]);
  const entries = raw.split(",").map((entry) => entry.trim());
  const unique = new Set<string>();
  for (const entry of entries) {
    let url: URL;
    try {
      url = new URL(entry);
    } catch {
      throw new TypeError("web.allowed_origin_invalid");
    }
    if (
      url.protocol !== "https:" ||
      url.origin !== entry ||
      url.username || url.password ||
      entry.includes("*") ||
      unique.has(entry)
    ) {
      throw new TypeError("web.allowed_origin_invalid");
    }
    unique.add(entry);
  }
  return Object.freeze([...unique]);
}
