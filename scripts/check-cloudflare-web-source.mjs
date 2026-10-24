import { readFileSync, existsSync } from "node:fs";
import { execFileSync } from "node:child_process";

const pkgPath = "apps/web/package.json";
const workerConfig = "apps/web/cloudflare.config.ts";
const branchHint = "deploy/masanawa-cloudflare-preview";
if (!existsSync(pkgPath) || !existsSync(workerConfig)) {
  console.error("ERROR: Wrong Masanawa Git branch or repository. The Cloudflare Worker source is missing.");
  console.error("Select branch: " + branchHint + " (Cloudflare > Worker > Settings > Build > Branch control).");
  process.exit(1);
}
const pkg = JSON.parse(readFileSync(pkgPath, "utf8"));
if (pkg.scripts?.["build:cloudflare"] !== "vite build") {
  console.error("ERROR: The selected revision does not contain the verified Cloudflare build adapter.");
  console.error("Select branch: " + branchHint);
  process.exit(1);
}
let commit = "(unavailable)";
try { commit = execFileSync("git", ["rev-parse", "HEAD"], { encoding: "utf8" }).trim(); } catch {}
console.log("MASANAWA_CLOUDFLARE_SOURCE_OK");
console.log("Repository: Baatiku/Masanawa");
console.log("Web app: apps/web");
console.log("Git commit: " + commit);
console.log("Verified Cloudflare build script: " + pkg.scripts["build:cloudflare"]);
