/**
 * Non-authoritative, coarse UI description for session management.
 * No raw user agent, fingerprint, email or IP gets saved in the database.
 * The client hint is untrusted and never changes authentication decisions.
 */
export function authClientLabel(input: Readonly<{
  platformHeader: unknown;
  userAgent: unknown;
}>):string {
  const platform=typeof input.platformHeader==="string"?
    input.platformHeader.toLowerCase().trim():"";
  if(platform==="android")return "Android · Masanawa app";
  if(platform==="ios")return "iPhone/iPad · Masanawa app";
  if(platform==="web")return "Web · Masanawa";
  const agent=typeof input.userAgent==="string"?
    input.userAgent.slice(0,1024).toLowerCase():"";
  if(agent.includes("android"))return "Android device";
  if(agent.includes("iphone")||agent.includes("ipad"))return "iPhone/iPad";
  if(agent.includes("windows"))return "Windows browser";
  if(agent.includes("macintosh"))return "Mac browser";
  if(agent.includes("linux") && !agent.includes("dart"))return "Linux browser";
  if(agent.includes("dart/"))return "Masanawa app";
  return "Unknown device";
}
