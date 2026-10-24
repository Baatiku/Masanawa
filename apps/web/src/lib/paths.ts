/** Internal redirects only; never accept external or protocol-relative destinations. */
export function safeReturnPath(value: string | null | undefined): string {
  if (!value || !value.startsWith("/") || value.startsWith("//") || value.includes("\\") || /[\r\n]/.test(value)) return "/chats";
  try {
    const url = new URL(value, "https://local.masanawa.invalid");
    if (url.origin !== "https://local.masanawa.invalid") return "/chats";
    if (url.pathname.startsWith("/api/") || url.pathname.startsWith("/login") || url.pathname.startsWith("/register")) return "/chats";
    return url.pathname + url.search + url.hash;
  } catch { return "/chats"; }
}
export function maskAccountContact(value: string): string {
  const v = value.trim();
  const at = v.indexOf("@");
  if (at > 1) return v[0] + "•••" + v.slice(at);
  return v.length > 5 ? v.slice(0, 3) + "•••" + v.slice(-2) : "••••";
}
