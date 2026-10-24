#!/usr/bin/env node
// Inventory old branding in runtime web artifacts before and after migration.
// --strict exits 1 on any surviving legacy references. No exclusions for compiled assets.
import { readdir, readFile } from "node:fs/promises";
import { resolve, join, relative, extname } from "node:path";
import { fileURLToPath } from "node:url";

const args = process.argv.slice(2);
const rootArg = args.indexOf("--root");
const root = resolve(rootArg >= 0 && args[rootArg + 1] ? args[rootArg + 1] : fileURLToPath(new URL(".", import.meta.url)));
const strict = args.includes("--strict");
const asJson = args.includes("--json");
const extensions = new Set([".html", ".js", ".css", ".json", ".webmanifest", ".xml", ".txt", ".mjs", ".ts", ".tsx", ".jsx"]);
const patterns = Object.freeze({
  productNames: /nasfam(?:[ -]?pay|[ -]?enterprises)?/gi,
  oldDomainOrBackend: /nasfampay(?:-backend\.onrender)?\.com|nasfampay-backend\.onrender\.com/gi,
  oldLocalStorage: /\bnpay:/gi,
  oldBrandColors: /#1e90ff/gi,
});
const excludedDirectories = new Set(["node_modules", ".git", ".next", "dist", "coverage"]);
const records = [];
async function visit(dir) {
  for (const ent of await readdir(dir, { withFileTypes: true })) {
    const path = join(dir, ent.name);
    if (ent.isDirectory()) {
      if (!excludedDirectories.has(ent.name)) await visit(path);
      continue;
    }
    if (!ent.isFile() || !extensions.has(extname(ent.name)) || ent.name === "brand-audit.mjs") continue;
    const body = await readFile(path, "utf8");
    const findings = Object.fromEntries(Object.entries(patterns)
      .map(([key, pattern]) => [key, (body.match(pattern) || []).length])
      .filter(([, count]) => count > 0));
    if (Object.keys(findings).length) records.push({ path: relative(root, path).replaceAll("\\", "/"), findings });
  }
}
await visit(root);
records.sort((a,b) => a.path.localeCompare(b.path));
const totals = Object.fromEntries(Object.keys(patterns)
  .map(k=>[k,records.reduce((n,r)=>n+(r.findings[k]||0),0)]));
const report = { root, filesWithLegacyReferences: records.length, totals, records };
if (asJson) process.stdout.write(JSON.stringify(report, null, 2) + "\n");
else {
  process.stdout.write("Legacy web branding audit: " + records.length + " files\n");
  for (const [k,n] of Object.entries(totals)) process.stdout.write("  " + k + ": " + n + "\n");
  for (const item of records.slice(0, 30)) process.stdout.write("  " + item.path + " " + JSON.stringify(item.findings) + "\n");
  if (records.length > 30) process.stdout.write("  ... " + (records.length - 30) + " more files (--json for full list)\n");
}
if (strict && records.length) process.exitCode = 1;
